module Uart #(
    FIFO_DEPTH              =        16,
    FIFO_WIDTH              =        8,
    ADDR_WIDTH              =        4
)(
    input                                                   fifo_w_clk,      // fifo写时钟
    input                                                   tx_clk,          // 发送时钟
    input                                                   rst_n,           // fifo写复位
    input                                                   fifo_w_en,       // fifo写使能
    input                   [FIFO_WIDTH-1:0]                fifo_w_data,     // fifo写入数据
    input                                                   rxd_int_in,
    input                                                   rxd,
    output                                                  is_full,         // fifo写满标志
    output                                                  rxd_int,         // 接收中断
    output                  [FIFO_WIDTH-1:0]                r_data,
    output                                                  txd
);
    
    wire                    [FIFO_WIDTH-1:0]                fifo_r_data;
    wire                                                    is_empty;
    wire                                                    fifo_r_en;
    // 串口FIFO
    UartFiFo #(
        .FIFO_WIDTH(FIFO_WIDTH),
        .FIFO_DEPTH(FIFO_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) UartFiFo_ins (
        .w_clk(fifo_w_clk),
        .w_rst_n(rst_n),
        .w_pt_reset(rst_n),
        .w_en(fifo_w_en),
        .w_data(fifo_w_data),
        .r_clk(tx_clk),
        .r_rst_n(rst_n),
        .r_pt_reset(rst_n),
        .r_en(fifo_r_en),
        .r_data(fifo_r_data),
        .is_empty(is_empty),
        .is_full(is_full)
    );
    // 串口接口
    UartIf UartIf_ins (
        .r_en(fifo_r_en),
        .txd_from_fifo(fifo_r_data),
        .fifo_empty(is_empty),
        .clk_uart(tx_clk),
        .rst_n(rst_n),
        .rxd_int_in(rxd_int_in),
        .txd(txd),
        .rxd(rxd),
        .r_data(r_data),
        .rxd_int(rxd_int)
    );
    
endmodule
