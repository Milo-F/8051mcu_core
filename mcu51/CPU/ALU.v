/*-------------------------------------------------------------------
    Name: ALU
    Function: 实现8位算数逻辑运算单元
    Author: Milo
    Data: 2021/09/08
    Version: 1.0
--------------------------------------------------------------------*/
module ALU (
    input [7:0] psw, // 减法进位
    input rst_n,
    input[7:0] a_data, // 输入数据data1
    input[7:0] b_data, // 输入数据data2
    input[4:0] alu_op, // ALU运算模式选择
    input alu_en,
    output reg[7:0] ans, // 运算结果
    output reg[7:0] psw_nxt // 进位/借位
);

    always @(*) begin
        if (!rst_n) begin
            ans <= 8'b0;
            psw_nxt <= 8'b0;
        end
        else if (alu_en) begin
            case(alu_op)
                5'h0: {psw_nxt[7], ans} = a_data + b_data; // ADD 无进位加法
                5'h1: {psw_nxt[7], ans} = a_data + b_data + psw[7]; // ADDC 带进位的加法
                5'h2: begin
                    ans = a_data + 8'b1; // INC 自加1运算
                    if (ans == 0) psw_nxt[2] = 1;
                end
                5'h3: begin
                    ans = a_data - 8'b1; // DEC 自减1运算
                    if (ans == 8'hff) psw_nxt[2] = 1;
                end
                5'h4: ans = a_data - b_data - {7'b0, psw[7]}; // SUBB 减法
                5'h5: {psw_nxt[7], ans} = a_data * b_data; // MUL 乘法
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
                    ans = {a_data[6:0], psw[7]};
                    psw_nxt[7] = a_data[7];
                end // RLC 进位左移
                5'h10: ans = {a_data[0], a_data[7:1]}; // RR 右移
                5'h11: begin
                    ans = {psw[7], a_data[7:1]};
                    psw_nxt[7] = a_data[0];
                end // RRC 进位右移
                5'h12: {ans[3:0], ans[7:4]} = a_data; // SWAP 半字节交换
                default:begin
                    ans = 8'b0;
                    psw_nxt = 8'b0;
                end
            endcase
            // 奇偶校验位
            psw_nxt[0] = ans[0]^ans[1]^ans[2]^ans[3]^ans[4]^ans[5]^ans[6]^ans[7];
        end
    end
endmodule