`timescale 1ns/1ps

module tb_get_ins;

    reg clk;
    reg rst_n;
    reg [7:0] instruction;
    reg EA;
    reg[1:0]    interupt;
    reg[1:0]    timer;
    wire [7:0] data_bus;
    wire read_en;
    wire write_en;
    wire clk_1M;
    wire clk_6M;
    wire memory_select;
    wire psen;
    wire [15:0] addr_bus;
    wire [7:0] data_out;

    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end

    initial begin
        rst_n = 0;
        #30 rst_n = 1;
    end
    initial begin
        instruction = 0;
        @(posedge clk);
        forever begin
           #8 instruction = 8'b0000_1011;
           #8 instruction = 8'b0001_1010;
        end
        // forever begin
        //     #2 instruction = instruction;
        // end
    end
    assign data_bus = (read_en) ? instruction : 8'bz;
    assign data_out = (write_en)? data_bus : data_out;

    CPU cpu(
        .clk(clk),
        .reset(rst_n),
        .data_bus(data_bus),
        .addr_bus(addr_bus),
        .read_en(read_en),
        .write_en(write_en),
        .EA(EA),
        .interupt(interupt),
        .timer(timer),
        .clk_1M(clk_1M),
        .clk_6M(clk_6M),
        .memory_select(memory_select),
        .PSEN(psen)
    );

endmodule