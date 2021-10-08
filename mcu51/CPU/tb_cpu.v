`timescale 1ns/1ps

module tb_cpu;

    reg clk;
    reg reset;
    reg [7:0] data_bus_in;
    reg EA;
    reg [1:0] interupt;
    reg [1:0] timing;
    wire [7:0] data_bus;
    wire [7:0] addr_bus;
    wire read_en;
    wire write_en;
    wire clk_1M;
    wire clk_6M;
    wire ALE;
    wire PSEN;

    initial begin
        clk = 1'b0;
        forever begin
            #1 clk = ~clk;
        end
    end

    initial begin
        reset = 1'b1;
        #5 reset = 1'b0;
        #30 reset = 1'b1;
    end

    CPU cpu(
        .clk(clk),
        .reset(reset),
        .data_bus(data_bus),
        .EA(EA),
        .interupt(interupt),
        .timing(timing),
        .addr_bus(addr_bus),
        .read_en(read_en),
        .write_en(write_en),
        .clk_1M(clk_1M),
        .clk_6M(clk_6M),
        .ALE(ALE),
        .PSEN(PSEN)
    );

endmodule