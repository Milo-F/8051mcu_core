/*----------------------------------------
 *    File Name: rtl/UartIf.v
 *    function: Uart interface, transmite the data from fifo, and receive the data to fifo.
 *    author: Milo
 *    Data: 2022-03-10
 *    Version: 1.0
----------------------------------------*/

module UartIf (
    input                   clk_uart,
    input                   rst_n,

    // uart transmission
    input       [7:0]       txd_from_fifo,
    input                   fifo_empty, // if fifo is empty, stop transimiting
    output                  r_en,
    output                  txd,

    // uart receive
    input                   rxd_int_in, // 接收中断标志位
    input                   rxd,
    output      [7:0]       r_data,
    output                  rxd_int //
);
    /*
    *   串口发送
    */
    wire                    clk_tx; // 发送时钟，波特率9600
    // 读fifo时钟，发送时钟的12分频，包括1起始位+8数据位+1校验位+2空闲位
    wire                    clk_rd; 
    reg         [3:0]       tx_bit_cnt, tx_bit_cnt_nxt; // 发送数据计数，记录已经发了几个bit
    reg                     txd_out, txd_out_nxt;
    reg                     tx_status, ts_status_nxt;
    wire                    odd_bit;
    wire        [3:0]       tx_bit_cnt_minus_1;
    
    assign tx_bit_cnt_minus_1 = tx_bit_cnt - 1;
    assign odd_bit = ^txd_from_fifo;
    // wire clk_tx;
    ClkDiv #(
        .DIV_NUM(16)
    )  ClkDiv_tx (
        .clk_in(clk_uart),
        .rst_n(rst_n),
        .clk_out(clk_tx)
    );
    ClkDiv #(
        .DIV_NUM(12)
    )  ClkDiv_rd (
        .clk_in(clk_tx),
        .rst_n(rst_n),
        .clk_out(clk_rd)
    );
    
    assign r_en = clk_rd & fifo_empty; // 如果fifo非空，则按照读时钟去读数据
    // reg                     txd_out, txd_out_nxt;
    // reg                     r_en_out, r_en_out_nxt;

    /*
    *   串口接收：串口接收16倍波特率采样，波特率9600
    */
    // 计数器等寄存器声明
    reg                     int_hold, int_hold_nxt; // 中断保持
    reg         [7:0]       r_data_out, r_data_out_nxt;
    reg                     rxd_int_out, rxd_int_out_nxt;
    reg         [8:0]       rx_tmp, rx_tmp_nxt;
    reg                     rx_status, rx_status_nxt; // 0 : wait  1 : busy
    reg         [2:0]       start_cnt, start_cnt_nxt;
    reg         [3:0]       sample_cnt, sample_cnt_nxt;
    reg         [3:0]       bit_cnt, bit_cnt_nxt;
    wire        [2:0]       start_cnt_minus_1;
    wire        [3:0]       sample_cnt_minus_1;
    wire        [3:0]       bit_cnt_minus_1;
    // counter
    assign start_cnt_minus_1 = start_cnt - 1;
    assign sample_cnt_minus_1 = sample_cnt - 1;
    assign bit_cnt_minus_1 = bit_cnt - 1;
    // receive out
    assign rxd_int = rxd_int_out;
    assign r_data = r_data_out;

    // 串口接收组合逻辑
    always @* begin
        int_hold_nxt = rxd_int_in ? 1'b0 : int_hold; // 等到中断标志为1再取消保持
        r_data_out_nxt = r_data_out;
        rxd_int_out_nxt = (int_hold) ? rxd_int_out : rxd_int_in; // 接收中断需要持续大于等于两个周期
        start_cnt_nxt = start_cnt;
        sample_cnt_nxt = sample_cnt;
        rx_status_nxt = rx_status;
        bit_cnt_nxt = bit_cnt;
        rx_tmp_nxt = rx_tmp;
        if (!rx_status) begin // when bus is empty : detecting 0
            if (!rxd) begin
                if (start_cnt == 3'b0) begin
                    rx_status_nxt = 1;
                    bit_cnt_nxt = 4'b1010;
                    sample_cnt_nxt = 3'b1111;
                end
                start_cnt_nxt = start_cnt_minus_1;
            end 
            else begin
                start_cnt_nxt = 4'b1111;    
            end
        end
        else begin
            sample_cnt_nxt = sample_cnt_minus_1;
            if (sample_cnt == 4'b0) begin // sample
                rx_tmp_nxt = {rxd, rx_tmp[8:1]};
                bit_cnt_nxt = bit_cnt_minus_1;
            end
            if (bit_cnt == 4'b0) begin
                rx_status_nxt = 0;
                rxd_int_out_nxt = 1'b1;
                rx_tmp_nxt = 9'b0;
                int_hold_nxt = ~rxd_int;
                // 奇校验
                r_data_out_nxt = rx_tmp[8] == (^rx_tmp[7:0]) ? rx_tmp[7:0] : 8'b0;
            end
        end
    end
    // 次态传递
    always @(posedge clk_uart) begin
        if (!rst_n) begin
            r_data_out <= 0;
            rxd_int_out <= 0;
            start_cnt <= 3'b111;
            sample_cnt <= 4'b1111;
            bit_cnt <= 4'b1010;
            rx_status <= 0;
            rx_tmp <= 0;
            int_hold <= 0;
        end
        else begin
            int_hold <= int_hold_nxt;
            r_data_out <= r_data_out_nxt;
            rxd_int_out <= rxd_int_out_nxt;
            start_cnt <= start_cnt_nxt;
            sample_cnt <= sample_cnt_nxt;
            bit_cnt <= bit_cnt_nxt;
            rx_status <= !rxd_int_in & rx_status_nxt; // must solve the interupt to continue receiv data
            rx_tmp <= rx_tmp_nxt;
        end
    end
endmodule