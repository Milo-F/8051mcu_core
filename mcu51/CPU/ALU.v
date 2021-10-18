/*-------------------------------------------------------------------
    Name: ALU
    Function: 实现8位算数逻辑运算单元
    Author: Milo
    Data: 2021/09/08
    Version: 1.0
--------------------------------------------------------------------*/
module ALU (
    input c_in, // 减法进位
    input rst_n,
    input[7:0] a_data, // 输入数据data1
    input[7:0] b_data, // 输入数据data2
    input[4:0] alu_op, // ALU运算模式选择
    input alu_en,
    output reg[7:0] ans, // 运算结果
    output reg c_out // 进位/借位
);

    always @(*) begin
        if (!rst_n) begin
            ans <= 8'b0;
            c_out <= 1'b0;
        end
        else if (alu_en) begin
            case(alu_op)
                5'h0: {c_out, ans} = a_data + b_data; // ADD 无进位加法
                5'h1: {c_out, ans} = a_data + b_data + c_in; // ADDC 带进位的加法
                5'h2: ans = a_data + 8'b1; // INC 自加1运算
                5'h3: ans = a_data - 8'b1; // DEC 自减1运算
                5'h4: ans = a_data - b_data - {7'b0, c_in}; // SUBB 减法
                5'h5: {c_out, ans} = a_data * b_data; // MUL 乘法
                5'h6: ans = a_data / b_data; // DIV 除法
                5'h7: ans = 8'b0; // DA 十进制调整
                5'h8: ans = a_data & b_data; // ANL 与
                5'h9: ans = a_data | b_data; // ORL 或
                5'hA: ans = a_data ^ b_data; // XRL 异或
                5'hB: ans = 8'b1; // SETB置1
                5'hC: ans = 8'b0; // CLR 清0
                5'hD: ans = ~a_data; // CPL 取反
                5'hE: ans = {a_data[6:0], a_data[7]}; // RL 左移
                5'hF: begin
                    ans = {a_data[6:0], c_in};
                    c_out = a_data[7];
                end // RLC 进位左移
                5'h10: ans = {a_data[0], a_data[7:1]}; // RR 右移
                5'h11: begin
                    ans = {c_in, a_data[7:1]};
                    c_out = a_data[0];
                end // RRC 进位右移
                5'h12: {ans[3:0], ans[7:4]} = a_data; // SWAP 半字节交换
                default:begin
                    ans = 8'b0;
                    c_out = 8'b0;
                end
            endcase
        end
    end
endmodule