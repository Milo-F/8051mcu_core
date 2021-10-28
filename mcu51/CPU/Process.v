/* -------------------------------------------------
    Name 处理指令
    Function 处理指令
    Version: 2.0
----------------------------------------------------*/

module Process (
    // alu
    input [7:0] psw_in,
    input [7:0] a_data,
    input [7:0] b_data,
    input [2:0] bit_location,
    input [3:0] alu_op,
    // output
    output [7:0] ans,
    output [7:0] psw_out
);

    wire[7:0] alu_ans, alu_psw_out;

    ALU alu(
        .psw_in(psw_in),
        .a_data(a_data),
        .b_data(b_data),
        .bit_location(bit_location),
        .alu_op(alu_op),
        .ans(alu_ans),
        .psw_out(alu_psw_out)
    );
    reg[7:0] pro_ans = 0;
    reg[7:0] pro_psw = 0;

    assign ans = (alu_op == 4'hf) ? pro_ans : alu_ans;
    assign psw_out = (alu_op == 4'hf) ? pro_psw : alu_psw_out;

endmodule