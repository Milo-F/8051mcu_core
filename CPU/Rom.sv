module Rom(
    input rom_en,
    input read_en,
    input[15:0] addr,
    output[7:0] data_out
);
    reg [15:0] rom_ele [7:0];
    assign data_out = (rom_en & read_en) rom_ele[addr] : 8'b0;
endmodule