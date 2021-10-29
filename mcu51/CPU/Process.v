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
    input[7:0] instruction,
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

    // 部分简单的运算操作
    always @(*) begin
        pro_psw = psw_in;
        if (alu_op == `no_alu) begin
            casez (instruction)
                8'b0000_0011: pro_ans = {a_data[0], a_data[7:1]}; // rr a;
                8'b1111_0100: pro_ans = ~a_data; //cpl a
                8'b0001_0011: begin
                    pro_ans = {psw_in[7], a_data[7:1]};
                    pro_psw[7] = a_data[0];
                end // RRC 进位右移
                8'b0010_0011: pro_ans = {a_data[6:0], a_data[7]}; // rl a
                8'b0011_0011:  begin
                    pro_ans = {a_data[6:0], psw_in[7]};
                    pro_psw[7] = a_data[7];
                end // RLC 进位左移
                8'b1100_0100: {pro_ans[3:0], pro_ans[7:4]} = a_data; // SWAP 半字节交换
                8'b????_0001: begin
                    pro_ans = {a_data[7:3], b_data[2:0]};
                end // AJUMP/ACALL 中高三字节
                default: ;
            endcase
        end
    end

    assign ans = (alu_op == `no_alu) ? pro_ans : alu_ans;
    assign psw_out = (alu_op == `no_alu) ? pro_psw : alu_psw_out;

endmodule