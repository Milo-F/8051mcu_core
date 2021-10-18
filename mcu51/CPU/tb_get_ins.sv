`timescale 1ns/1ps

module tb_get_ins;

    reg clk;
    reg rst_n;
    reg [7:0] instruction;
    wire [7:0] data_bus;
    wire read_en;
    wire [7:0] addr_bus;
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
        @(posedge clk);
        instruction = 8'h04;
        #70 instruction = 8'h0;
        // forever begin
        //     #2 instruction = instruction;
        // end
    end
    assign data_bus = (read_en) ? instruction : 8'bz;
    assign data_out = data_bus;

    CPU cpu(
        .clk(clk),
        .reset(rst_n),
        .data_bus(data_bus),
        .addr_bus(addr_bus),
        .read_en(read_en)
    );

endmodule