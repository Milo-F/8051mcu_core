module Ram (
    input clk,
    input ram_en,
    input read_en,
    input write_en,
    input[6:0] addr,
    input[7:0] data_in,
    output[7:0] data_out
);
    reg[7:0]  ele[6:0];  
    wire[7:0] ele_nxt;
    assign data_out = (read_en) ? ele[addr] : 8'b0;
    assign ele_nxt = (write_en) ? data_in : ele[addr];

    always @(posedge clk) begin
        ele[addr] <= ele_nxt;
    end
endmodule