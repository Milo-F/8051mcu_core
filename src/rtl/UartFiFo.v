/*----------------------------------------
 *    File Name: rtl/UartFiFo.v
 *    function: 串口异步FIFO，用于同步可能不同步的MCU时钟和串口发送时钟
 *    author: Milo
 *    Data: 2022-03-22
 *    Version: 1.0
----------------------------------------*/


module UartFiFo #(
    FIFO_WIDTH              =        8,
    FIFO_DEPTH              =        16,
    ADDR_WIDTH              =        4
) (
    input                                                   w_clk,      // write clock
    input                                                   w_rst_n,    // write reset
    input                                                   w_pt_reset, // write pointer reset
    input                                                   w_en,       // write enable
    input                   [FIFO_WIDTH-1:0]                w_data,     // write data
    input                                                   r_clk,      // read clock
    input                                                   r_rst_n,    // read reset
    input                                                   r_pt_reset, // read pointer reset
    input                                                   r_en,       // read enable
    output      reg         [FIFO_WIDTH-1:0]                r_data,     // read data
    output      reg                                         is_empty,   // fifo is empty
    output      reg                                         is_full
);
    // 输出次态
    wire                    [FIFO_WIDTH-1:0]                r_data_nxt;
    // reg                     [ADDR_WIDTH:0]                  avail_room_nxt;
    // reg                     [ADDR_WIDTH:0]                  avail_data_nxt;
    reg                                                     is_empty_nxt;
    reg                                                     is_full_nxt;
    always @(posedge r_clk) begin
        if (!r_rst_n) begin
            r_data <= 0;
        end
        else begin
            r_data <= r_data_nxt;
        end
    end
    // 读写指针
    reg                     [ADDR_WIDTH:0]                  w_pt,w_pt_nxt;
    reg                     [ADDR_WIDTH:0]                  r_pt,r_pt_nxt;
    /*
     * 写指针控制
     */
    // 写指针累加
    wire w_en_real;
    assign w_en_real = (~is_full) & w_en; // 满了禁止写入
    always @* begin
        w_pt_nxt = w_pt;
        if (!w_pt_reset) begin
            w_pt_nxt = 0;
        end
        else begin
            if (w_en_real) begin
                w_pt_nxt = w_pt + 1'b1;
            end
        end
    end
    // 更新写指针
    always @(posedge w_clk) begin
        if (!w_rst_n) begin
            w_pt <= 0;
        end
        else begin
            w_pt <= w_pt_nxt;
        end
    end
    // 写指针转格雷码
    reg                     [ADDR_WIDTH:0]                  w_pt_gray;    // 将写指针保持一拍
    wire                    [ADDR_WIDTH:0]                  w_pt_gray_nxt;
    bin2gray #(
        .BIT_WIDTH(ADDR_WIDTH+1)
    ) bin2gray_ins_w (
        .bin_data(w_pt_nxt),
        .gray_data(w_pt_gray_nxt)
    );
    always @(posedge w_clk) begin
        if (!w_rst_n) begin
            w_pt_gray <= 0;
        end
        else begin
            w_pt_gray <= w_pt_gray_nxt;
        end
    end
    // 写指针传播到读时钟域
    reg                     [ADDR_WIDTH:0]                  w_pt_syn1;
    reg                     [ADDR_WIDTH:0]                  w_pt_syn2;
    always @(posedge r_clk) begin
        if (!r_rst_n) begin
            w_pt_syn1 <= 0;
            w_pt_syn2 <= 0;
        end
        else begin
            w_pt_syn1 <= w_pt_gray;
            w_pt_syn2 <= w_pt_syn1;
        end
    end
    // 从格雷码恢复写指针
    reg                     [ADDR_WIDTH:0]                  w_pt_rdomain;
    wire                    [ADDR_WIDTH:0]                  w_pt_rdomain_nxt;
    gray2bin #(
        .BIT_WIDTH(ADDR_WIDTH+1)
    ) gray2bin_ins_w (
        .gray_data(w_pt_syn2),
        .bin_data(w_pt_rdomain_nxt)
    );
    always @(posedge r_clk) begin
        if (!r_rst_n) begin
            w_pt_rdomain <= 0;
        end
        else begin
            w_pt_rdomain <= w_pt_rdomain_nxt;
        end
    end
    /*
     * 读指针控制
     */
    // 读指针累加
    always @* begin
        r_pt_nxt = r_pt;
        if (!r_pt_reset) begin
            r_pt_nxt = 0;
        end
        else begin
            if (r_en) begin
                r_pt_nxt = r_pt + 1'b1;
            end
        end
    end
    // 更新读指针
    always @(posedge r_clk) begin
        if (!r_rst_n) begin
            r_pt <= 0;
        end
        else begin
            r_pt <= r_pt_nxt;
        end
    end
    // 读指针转格雷码
    reg                     [ADDR_WIDTH:0]                  r_pt_gray;
    wire                    [ADDR_WIDTH:0]                  r_pt_gray_nxt;
    bin2gray #(
        .BIT_WIDTH(ADDR_WIDTH+1)
    ) bin2gray_ins_r (
        .bin_data(r_pt),
        .gray_data(r_pt_gray_nxt)
    );
    always @(posedge r_clk) begin
        if (!r_rst_n) begin
            r_pt_gray <= 0;
        end
        else begin
            r_pt_gray <= r_pt_gray_nxt;
        end
    end
    // 读指针传播到写时钟域
    reg                     [ADDR_WIDTH:0]                  r_pt_syn1;
    reg                     [ADDR_WIDTH:0]                  r_pt_syn2;
    always @(posedge w_clk) begin
        if (!w_rst_n) begin
            r_pt_syn1 <= 0;
            r_pt_syn2 <= 0;
        end
        else begin
            r_pt_syn1 <= r_pt_gray;
            r_pt_syn2 <= r_pt_syn1;
        end
    end
    // 从格雷码恢复读指针
    reg                     [ADDR_WIDTH:0]                  r_pt_wdomain;
    wire                    [ADDR_WIDTH:0]                  r_pt_wdomain_nxt;
    gray2bin #(
        .BIT_WIDTH(ADDR_WIDTH+1)
    ) gray2bin_ins_r (
        .gray_data(r_pt_syn2),
        .bin_data(r_pt_wdomain_nxt)
    );
    always @(posedge w_clk) begin
        if (!w_rst_n) begin
            r_pt_wdomain <= 0;
        end
        else begin
            r_pt_wdomain <= r_pt_wdomain_nxt;
        end
    end
    /*
     * 空满标志产生
     */
    // 在写时钟域产生满标志
    always @* begin
        is_full_nxt = is_full;
        if (w_pt[ADDR_WIDTH-1:0] == r_pt_wdomain[ADDR_WIDTH-1:0]) begin // 如果指针在同一处内存地址
            is_full_nxt = w_pt[ADDR_WIDTH]^r_pt_wdomain[ADDR_WIDTH]; // 根据指针高位判断是否写指针与读指针追逐情况
        end
        else begin
            is_full_nxt = 0;
        end
    end
    always @(w_clk) begin
        if (!w_rst_n) begin
            is_full <= 0;
        end
        else begin
            is_full <= is_full_nxt;
        end
    end
    // 在读时钟域产生空标志
    always @* begin
        is_empty_nxt = is_empty;
        if (r_pt[ADDR_WIDTH-1:0] == w_pt_rdomain[ADDR_WIDTH-1:0]) begin
            is_empty_nxt = ~(r_pt[ADDR_WIDTH] ^ w_pt_rdomain[ADDR_WIDTH]);
        end
        else begin
            is_empty_nxt = 0;
        end
    end
    always @(posedge r_clk) begin
        if (!r_rst_n) begin
            is_empty <= 1;
        end
        else begin
            is_empty <= is_empty_nxt;
        end
    end
    /*
     * ram
     */
    fifo_ram #(
        .DATA_WIDTH(FIFO_WIDTH),
        .RAM_DEPTH(FIFO_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) fifo_ram_ins (
        .w_clk(w_clk),
        .r_clk(r_clk),
        .rst_n(r_rst_n),
        .w_en(w_en),
        .r_en(r_en),
        .w_addr(w_pt[ADDR_WIDTH-1:0]),
        .r_addr(r_pt[ADDR_WIDTH-1:0]),
        .w_data(w_data),
        .r_data(r_data_nxt)
    );
    
endmodule
