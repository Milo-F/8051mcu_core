/*----------------------------------------------------
	Name:指令译码器
	Function:译码指令
	Author:Milo
	Data:2021/9/27
	Version:2.0
----------------------------------------------------*/

module InsDecoder(
    input           clk, // 时钟
    input           rst_n, // 复位
    input [7:0]     instruction, // 指令
    input [2:0]     run_phase, // 执行阶段
    input [7:0]     psw,
    output reg[2:0] run_phase_init,
    output reg[2:0] data_from,
    output reg[7:0] addr_register_out,
    output reg[2:0] next_status // 下个状态标识
);

    // 下个状态标识定义
    parameter TO_NOP = 3'b000;
    parameter TO_RAM_READ= 3'b001;
    parameter TO_ROM_READ = 3'b010;
    parameter TO_PROCESS = 3'b011;
    parameter TO_RAM_WRITE = 3'b100;
    parameter NOT_DONE = 3'b111;

    // 数据来源标识
    parameter FROM_A = 3'b000;
    parameter FROM_data_register = 3'b001;


	always @(*) begin
        next_status = NOT_DONE;
        addr_register_out = 8'b0;
        run_phase_init = 3'b0;
        casez (instruction)
            8'h00: begin // NOP
                next_status = TO_NOP;
            end
            8'b1111_1???: begin // MOV RN, A
                next_status = TO_RAM_WRITE;
                data_from = FROM_A;
                run_phase_init = 3'b100;
                addr_register_out = {3'b0, psw[4:3], instruction[2:0]};
            end
            default: begin
            end
        endcase
    end

endmodule
