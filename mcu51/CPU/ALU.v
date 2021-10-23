/*-------------------------------------------------------------------
    Name: ALU
    Function: 实现8位算数逻辑运算单元
    Author: Milo
    Data: 2021/09/08
    Version: 1.0
--------------------------------------------------------------------*/
module ALU (
    input                   alu_clk,
    input       [7:0]       psw_in, // 
    input                   rst_n,
    input       [7:0]       a_data, // 输入数据data1
    input       [7:0]       b_data, // 输入数据data2
    input       [4:0]       alu_op, // ALU运算模式选择
    input                   alu_en,
    output      reg[7:0]    ans, // 运算结果
    output      reg[7:0]    psw_out // 进位/借位
);
    reg[7:0]        ans_nxt;
    reg[7:0]        psw_nxt;

    always @(*) begin
        psw_nxt = psw_in;
        ans_nxt = 8'b0;
        if (alu_en) begin
            case(alu_op)
                5'h0: {psw_nxt[7], ans_nxt} = a_data + b_data; // ADD 无进位加法
                5'h1: {psw_nxt[7], ans_nxt} = a_data + b_data + psw_in[7]; // ADDC 带进位的加法
                5'h2: begin
                    ans_nxt = a_data + 8'b1; // INC 自加1运算
                    if (ans_nxt == 0) psw_nxt[2] = 1;
                end
                5'h3: begin
                    ans_nxt = a_data - 8'b1; // DEC 自减1运算
                    if (ans_nxt == 8'hff) psw_nxt[2] = 1;
                end
                5'h4: ans_nxt = a_data - b_data - {7'b0, psw_in[7]}; // SUBB 减法
                5'h5: {psw_nxt[7], ans_nxt} = a_data * b_data; // MUL 乘法
                5'h6: ans_nxt = a_data / b_data; // DIV 除法
                5'h7: ans_nxt = 8'b0; // DA 十进制调整
                5'h8: ans_nxt = a_data & b_data; // ANL 与
                5'h9: ans_nxt = a_data | b_data; // ORL 或
                5'hA: ans_nxt = a_data ^ b_data; // XRL 异或
                5'hB: ans_nxt = 8'b1; // SETB置1
                5'hC: ans_nxt = 8'b0; // CLR 清0
                5'hD: ans_nxt = ~a_data; // CPL 取反
                5'hE: ans_nxt = {a_data[6:0], a_data[7]}; // RL 左移
                5'hF: begin
                    ans_nxt = {a_data[6:0], psw_in[7]};
                    psw_nxt[7] = a_data[7];
                end // RLC 进位左移
                5'h10: ans_nxt = {a_data[0], a_data[7:1]}; // RR 右移
                5'h11: begin
                    ans_nxt = {psw_in[7], a_data[7:1]};
                    psw_nxt[7] = a_data[0];
                end // RRC 进位右移
                5'h12: {ans_nxt[3:0], ans_nxt[7:4]} = a_data; // SWAP 半字节交换
                default:begin
                end
            endcase
            // 奇偶校验位
            psw_nxt[0] = ans_nxt[0]^ans_nxt[1]^ans_nxt[2]^ans_nxt[3]^ans_nxt[4]^ans_nxt[5]^ans_nxt[6]^ans_nxt[7];
        end
    end

    always @(posedge alu_clk, negedge rst_n) begin
        if (!rst_n) begin
            ans <= 8'b0;
            psw_out <= 8'b0;
        end
        else begin
            ans <= ans_nxt;
            psw_out <= psw_nxt;
        end
    end
endmodule