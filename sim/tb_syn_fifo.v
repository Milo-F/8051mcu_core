
`timescale 1ns/1ps
module tb_syn_fifo();
    
    parameter DATA_WIDTH = 8;
    parameter FIFO_DEPTH = 16;
    parameter ADDR_WIDTH = 4;
    /* ports defination  */
    
    reg                                                     clk,rst_n;
    // read signal
    reg                                                     r_en;
    wire                    [DATA_WIDTH - 1 : 0]            r_data;
    wire                    [ADDR_WIDTH : 0]                data_avail;
    wire                                                    is_empty;
    // write signal
    reg                                                     w_en;
    reg                     [DATA_WIDTH - 1 : 0]            w_data;
    wire                    [ADDR_WIDTH : 0]                room_avail;
    wire                                                    is_full;
    
    /* initial blocks */
    // generate clock and reset signal
    
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    initial begin
        rst_n     = 1;
        #10 rst_n = 0;
        #20 rst_n = 1;
    end
    // generate motivation
    initial begin
        w_en   = 0;
        r_en   = 0;
        w_data = 0;
    end
    initial begin
        forever begin
            repeat(2) @(posedge clk);
            w_en = !is_full;
            @(posedge clk);
            w_en = 0;
        end
    end
    initial begin
        forever begin
            repeat(2) @(posedge clk);
            r_en = !is_empty;
            @(posedge clk);
            r_en = 0;
        end
    end
    initial begin
        forever begin
            @(posedge w_en);
            w_data = ($random)%256;
        end
    end
    syn_fifo #(
        .DATA_WIDTH(DATA_WIDTH),
        .FIFO_DEPTH(FIFO_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) syn_fifo_ins (
        .clk(clk),
        .rst_n(rst_n),
        .w_en(w_en),
        .w_data(w_data),
        .r_en(r_en),
        .r_data(r_data),
        .is_empty(is_empty),
        .is_full(is_full),
        .room_avail(room_avail),
        .data_avail(data_avail)
    );
    
endmodule
