/*-------------------------------------------------------------------
    Name: ALU
    Function: 实现8位算数逻辑运算单元
    Author: Milo
    Data: 2021/09/08
    Version: 2.0
--------------------------------------------------------------------*/
module ALU (
    input       [7:0]       psw_in, // 
    input       [7:0]       a_data, // 输入数据data1
    input       [7:0]       b_data, // 输入数据data2
    input       [2:0]       bit_location, // 位操作处理位置
    input       [3:0]       alu_op, // ALU运算模式选择
    output      reg[7:0]    ans, // 运算结果
    output      reg[7:0]    psw_out // 进位/借位
);

    always @(*) begin
        psw_out = psw_in;
        ans = 8'b0;
        case(alu_op)
            `add: {psw_out[7], ans} = a_data + b_data; // ADD 无进位加法
            `addc: {psw_out[7], ans} = a_data + b_data + psw_in[7]; // ADDC 带进位的加法
            `inc: begin
                ans = a_data + 8'b1; // INC 自加1运算
            end
            `dec: begin
                ans = a_data - 8'b1; // DEC 自减1运算
            end
            `subb: ans = a_data - b_data - {7'b0, psw_in[7]}; // SUBB 减法
            `mul: {psw_out[7], ans} = a_data * b_data; // MUL 乘法
            `div: ans = a_data / b_data; // DIV 除法
            `anl: ans = a_data & b_data; // ANL 与
            `orl: ans = a_data | b_data; // ORL 或
            `xrl: ans = a_data ^ b_data; // XRL 异或
            `setb: ans = 8'b1; // SETB置1
            `clr: ans = 8'b0; // CLR 清0
            `cpla: ans = ~a_data; // CPL 取反
            `cplb:;//TODO
            `mov: ans = b_data;
            default:;
        endcase
    end
endmodule