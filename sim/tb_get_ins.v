`timescale 1ns/1ps

module tb_get_ins();
    
    
    reg                                                     clk;
    reg                                                     rst_n;
    reg                     [7:0]                           instruction;
    reg                     [4:0]                           interupt;
    reg                     [7:0]                           ram_data;
    wire                    [7:0]                           data_bus;
    wire                                                    read_en;
    wire                                                    write_en;
    wire                                                    clk_1M;
    wire                                                    clk_6M;
    wire                                                    memory_select;
    wire                                                    psen;
    wire                    [15:0]                          addr_bus;
    wire                    [7:0]                           data_out;
    
    initial begin
        clk      = 0;
        interupt = 1;
        forever begin
            #1 clk = ~clk;
        end
    end
    
    initial begin
        rst_n     = 0;
        #30 rst_n = 1;
    end
    initial begin
        instruction = 8'b110?_0011;
        ram_data    = 8'h50;
        @(posedge clk);
        forever begin
            #50 instruction = 8'b1011_0100;
        end
    end
    assign data_bus = (read_en) ? (memory_select ? ram_data : instruction) : 8'bz;
    assign data_out = (write_en)? data_bus : data_out;
    
    CPU cpu(
        .clk(clk),
        .rst_n(rst_n),
        .data_bus(data_bus),
        .addr_bus(addr_bus),
        .read_en(read_en),
        .write_en(write_en),
        .interupt(interupt),
        .clk_1M(clk_1M),
        .clk_6M(clk_6M),
        .memory_select(memory_select)
    );
    
endmodule
