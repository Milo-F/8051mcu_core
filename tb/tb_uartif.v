`timescale 10ps/1ps
module tb_uartif();
    reg clk;
    reg rst_n;
    reg rxd_int_reg;
    wire rxd_int_nxt;
    // reg rxd;
    wire txd;
    wire r_en;
    reg man_set;
    wire [7:0] r_data;
    reg [7:0] txd_fifo;
    
    // clk
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    
    // reset
    initial begin
        rst_n     = 1;
        #10 rst_n = 0;
        #5 rst_n  = 1;
    end
    initial begin
        rxd_int_reg = 0;
        man_set     = 1;
        txd_fifo    = 8'b11011001;
        forever begin // 在空闲位传输的时候要及时清除接收中断
            #24 man_set = 1;
            @(posedge rxd_int_nxt);
            #24 man_set = 0;
        end
        // @(posedge r_en) man_set = 0;
        // #128 rxd_int_reg        = 1;
        // #64 rxd_int_reg         = 0;
    end
    always @(posedge clk) rxd_int_reg <= rxd_int_nxt & man_set;
    always @(posedge r_en) begin
        txd_fifo <= txd_fifo + 1;
    end
    
    UartIf UartIf_ins (
        .r_en(r_en),
        .txd_from_fifo(txd_fifo),
        .fifo_empty(1'b0),
        .clk_uart(clk),
        .rst_n(rst_n),
        .rxd_int_in(rxd_int_reg),
        .txd(txd),
        .rxd(txd),
        .r_data(r_data),
        .rxd_int(rxd_int_nxt)
    );
endmodule
