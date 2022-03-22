module Uart #(
    FIFO_DEPTH              =        16,
    FIFO_WIDTH              =        8,
    ADDR_WIDTH              =        4
)(
    input                                                   fifo_w_clk,      // fifo写时钟
    input                                                   fifo_W_rst_n,    // fifo写复位
    input                                                   fifo_w_pt_reset, // fifo指针重置
    input                                                   fifo_w_en,       // fifo写使能
    input                   [FIFO_WIDTH-1:0]                fifo_w_data,     // fifo写入数据
    output                                                  is_full,         // fifo写满标志
    output                                                  rxd_int,         // 接收中断
    output                  [FIFO_WIDTH-1:0]                r_data
);
    
endmodule
