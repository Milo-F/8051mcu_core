`timescale 1ns/1ps

module tb_ale_gen;

    reg clk;
    reg rst_n;
    wire ALE;

    initial begin
        clk = 0;
        rst_n = 0;
        #5 rst_n = 1;
        forever begin
            #1 clk = ~clk;
        end
    end

    ALEGen ale(
        .clk(clk),
        .rst_n(rst_n),
        .ALE(ALE)
    );

endmodule