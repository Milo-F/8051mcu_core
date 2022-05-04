`timescale 1ps/1ps
module tb_bin_gray();
    parameter BIT_WIDTH = 4;
    reg                                                     clk;
    reg                     [BIT_WIDTH-1:0]                 bin_data;
    wire                    [BIT_WIDTH-1:0]                 gray_data;
    wire                    [BIT_WIDTH-1:0]                 out_data;
    
    initial begin
        clk      = 0;
        bin_data = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    
    always @(posedge clk) begin
        bin_data <= bin_data + 1;
    end
    
    bin2gray #(
        .BIT_WIDTH(BIT_WIDTH)
    ) bin2gray_ins (
        .bin_data(bin_data),
        .gray_data(gray_data)
    );
    gray2bin #(
        .BIT_WIDTH(BIT_WIDTH)
    ) gray2bin_ins (
        .gray_data(gray_data),
        .bin_data(out_data)
    );
endmodule
