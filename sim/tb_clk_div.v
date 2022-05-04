`timescale 1ns/1ps

module tb_clk_div();
    
    reg                                                     clk_in;
    reg                                                     rst_n;
    wire                                                    clk_2;
    wire                                                    clk_5;
    
    ClkDiv #(
        .DIV_NUM(2)
    ) clk2(
        .clk_in(clk_in),
        .rst_n(rst_n),
        .clk_out(clk_2)
    );
    
    ClkDiv #(
        .DIV_NUM(5)
    ) clk5(
        .clk_in(clk_in),
        .rst_n(rst_n),
        .clk_out(clk_5)
    );
    
    initial begin
        rst_n     = 0;
        clk_in    = 0;
        #10 rst_n = 1;
        forever begin
            #5 clk_in = ~clk_in;
        end
    end
    
endmodule
