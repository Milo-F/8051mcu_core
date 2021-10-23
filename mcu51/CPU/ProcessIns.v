/* -------------------------------------------------
    Name 处理指令
    Function 处理指令
----------------------------------------------------*/

module ProcessIns (
    input clk,
    input rst_n,

    input [1:0] process_type, // 指令处理类型，空、算术、数据转移
    input ID_ready, // 控制时钟
    input alu_en, // alu使能
    input [4:0] alu_op, // alu功能选择

    input [7:0] acc, // 累加器A
    input [7:0] b, // 暂存器B
    input [7:0] psw, // 程序状态字

    output reg[7:0] psw_out,
    output reg[7:0] ans, // alu运算结果返回A

    output reg pro_ready // 工作状态
);

    parameter WAITE= 2'b00;
    parameter ALU_CAL = 2'b01;
    parameter MOV = 2'b10;
    parameter CODE_CON = 2'b11;

    // 两级寄存器缓冲一个流水线间隙
    reg ready = 1'b1;
    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            ready <= 1'b1;
            pro_ready <= 1'b1;
        end
        else begin
            ready <= ID_ready;
            pro_ready <= ready;
        end
    end

    wire [7:0] ans_nxt;
    wire [7:0] psw_nxt;
    ALU alu(
        .rst_n(rst_n),
        .psw(psw),
        .a_data(acc),
        .b_data(b),
        .alu_op(alu_op),
        .alu_en(alu_en),
        .ans(ans_nxt),
        .psw_nxt(psw_nxt)
    );

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            psw_out <= 8'b0;
            ans <= 8'b0;
        end
        else begin
            @(posedge ID_ready);
            case (process_type)
                WAITE: begin
                    // 空闲
                end 
                ALU_CAL: begin
                    ans <= ans_nxt; // 取一次alu运算结果输出
                    psw_out <= psw_nxt;
                end
                MOV: begin
                    
                end
                CODE_CON:begin
                    
                end
                default: begin
                    
                end
            endcase
        end
    end
endmodule