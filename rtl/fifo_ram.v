/*----------------------------------------
 *    File Name: rtl/fifo_ram.v
 *    function: fifo ram
 *    author: milo
 *    Data: 2022-03-17
 *    Version: 1.0
----------------------------------------*/

module fifo_ram #(
    DATA_WIDTH      =       8,
    RAM_DEPTH       =       16,
    ADDR_WIDTH      =       4
)(
    input                                   clk,
    // read ports
    input                                   r_en,
    input       [ADDR_WIDTH - 1 : 0]        r_addr,
    output      [DATA_WIDTH - 1 : 0]        r_data,
    // wirte ports
    input                                   w_en,
    input       [ADDR_WIDTH - 1 : 0]        w_addr,
    input       [DATA_WIDTH - 1 : 0]        w_data
);
    reg         [DATA_WIDTH - 1 : 0]        mem[RAM_DEPTH - 1 : 0];
    reg         [DATA_WIDTH - 1 : 0]        r_data_out;
    always @(posedge clk) begin
        if (r_addr !== w_addr) begin // 读写地址冲突选择只读
            if (w_en) begin
                mem[w_addr] <= w_data;
            end
        end
        if (r_en) begin
            r_data_out <= mem[r_addr];
        end
    end
    assign r_data = r_data_out;
endmodule