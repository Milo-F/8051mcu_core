
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
    output      reg         [ADDR_WIDTH:0]                  avail_room, // room avaliable in fifo
    output      reg         [ADDR_WIDTH:0]                  avail_data, // data avaliable in fifo
    output      reg                                         is_empty,   // fifo is empty
    output      reg                                         is_full
);
    // 输出次态
    reg                     [FIFO_WIDTH-1:0]                r_data_nxt;
    reg                     [ADDR_WIDTH:0]                  avail_room_nxt;
    reg                     [ADDR_WIDTH:0]                  avail_data_nxt;
    reg                                                     is_empty_nxt;
    reg                                                     is_full_nxt;
    // 读写指针
    reg                     [ADDR_WIDTH:0]                  w_pt,w_pt_nxt;
    reg                     [ADDR_WIDTH:0]                  r_pt,rx_tmp_nxt;
    
    // 更新写指针
    always @* begin
        w_pt_nxt = w_pt;
        if (!w_pt_reset) begin
            w_pt_nxt = 0;
        end
        else begin
            if (w_en) begin
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
    reg                     [ADDR_WIDTH:0]                  w_pt_gray;
    wire                    [ADDR_WIDTH:0]                  w_pt_gray_nxt;
    bin2gray #(
        .BIT_WIDTH(ADDR_WIDTH+1)
    ) bin2gray_ins (
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
            w_pt_syn2 <= w_pt_syn2;
        end
    end
    
    
endmodule
