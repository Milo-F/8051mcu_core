/*----------------------------------------------------
	Name:指令译码器
	Function:译码指令
	Author:Milo
	Data:2021/9/27
	Version:1.0
----------------------------------------------------*/

module InsDecoder(
	input clk,
	input rst_n,
	input read_en, // 其上升沿为译码开始标志
	input [7:0] instruction, // 需要译码的指令
	input [15:0] pc_in, // 输入程序计数器
	output reg[15:0] pc_out, // 输出程序计数器
	output ready, // 该次译码完成标志位
	output reg alu_en, // alu enable
	output reg[4:0] alu_op // alu_op
);

	reg init_cnt = 1'b0;
	// 延迟一个流水线时隙
	always @(posedge clk, negedge rst_n) begin
		if (!rst_n) begin
			init_cnt <= 1'b0;
		end
		else begin
			@(posedge read_en);
			init_cnt <= 1'b1;
		end
	end
	assign ready = (init_cnt) ? read_en : 1'b1;

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			pc_out <= 16'b0;
			alu_en <= 1'b0;
			alu_op <= 5'b0;
		end
		else begin
			@(posedge ready);
			case (instruction)
				8'h00: begin // NOP: do nothing but program counter + 1
					pc_out <= pc_in + 1'b1;
				end
				8'h01: begin // AJUMP
					
				end
				8'h02: begin // LJUMP
					
				end
				8'h03: begin // RR A
					
				end
				8'h04: begin // INC A; A = A + 1;
					pc_out <= pc_in + 1'b1;
					alu_en <= 1'b1;
					alu_op <= 5'h2;
				end	
				default: begin
					
				end																														
			endcase
		end
	end
	// ALU使能关闭
	always @(posedge clk) begin
		@(negedge ready);
		alu_en <= 1'b0;
	end
	

	
endmodule
