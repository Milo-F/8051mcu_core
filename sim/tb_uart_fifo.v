`timescale 1ns/1ps
module tb_uart_fifo();
    parameter DATA_WIDTH = 8;
    parameter FIFO_DEPTH = 16;
    parameter ADDR_WIDTH = 4;
    /* ports defination  */
    
    // read signal
    
    reg                                                     r_pt_reset;
    reg                                                     r_clk;
    reg                                                     r_rst_n;
    reg                                                     r_en;
    wire                    [DATA_WIDTH - 1 : 0]            r_data;
    // wire                    [ADDR_WIDTH : 0]                data_avail;
    wire                                                    is_empty;
    // write signal
    reg                                                     w_pt_reset;
    reg                                                     w_clk;
    reg                                                     w_rst_n;
    reg                                                     w_en;
    reg                     [DATA_WIDTH - 1 : 0]            w_data;
    // wire                    [ADDR_WIDTH : 0]                room_avail;
    wire                                                    is_full;
    
    /* initial blocks */
    // generate clock and reset signal
    
    initial begin
        w_clk = 0;
        forever begin
            #3 w_clk = ~w_clk;
        end
    end
    initial begin
        r_clk = 0;
        forever begin
            #2 r_clk = ~r_clk;
        end
    end
    
    initial begin
        w_pt_reset  = 1;
        r_pt_reset  = 1;
        w_rst_n     = 1;
        r_rst_n     = 1;
        #10 w_rst_n = 0;
        r_rst_n     = 0;
        #10 w_rst_n = 1;
        r_rst_n     = 1;
    end
    // generate motivation
    initial begin
        w_en   = 0;
        r_en   = 0;
        w_data = 0;
    end
    initial begin
        forever begin
            repeat(2) @(posedge w_clk);
            w_en = !is_full;
            @(posedge w_clk);
            w_en = 0;
        end
    end
    initial begin
        forever begin
            repeat(2) @(posedge r_clk);
            r_en = !is_empty;
            @(posedge r_clk);
            r_en = 0;
        end
    end
    initial begin
        forever begin
            @(posedge w_en);
            w_data = ($random)%256;
        end
    end
    
    UartFiFo #(
        .FIFO_WIDTH(DATA_WIDTH),
        .FIFO_DEPTH(FIFO_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) UartFiFo_ins (
        .w_clk(w_clk),
        .w_rst_n(w_rst_n),
        .w_pt_reset(w_pt_reset),
        .w_en(w_en),
        .w_data(w_data),
        .r_clk(r_clk),
        .r_rst_n(r_rst_n),
        .r_pt_reset(r_pt_reset),
        .r_en(r_en),
        .r_data(r_data),
        .is_empty(is_empty),
        .is_full(is_full)
    );
endmodule
