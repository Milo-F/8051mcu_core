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
	output reg ID_ready, // 该次译码完成标志位
	output reg alu_en, // alu enable
	output reg[4:0] alu_op, // alu_op
    output reg[1:0] process_type // 下级处理类型，alu运算、控制转移还是mov赋值
);
    parameter WAITE= 2'b00;
    parameter ALU_CAL = 2'b01;
    parameter MOV = 2'b10;
    parameter CODE_CON = 2'b11;

    // reg[1:0] ins_epoch = 2'b0; // 指令周期，当前表示指令需要几个额外执行周期
    reg ready = 1'b1;
	// 两级寄存器缓冲一个流水线初始化间隙
    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            ready <= 1'b1;
            ID_ready <= 1'b1;
        end
        else begin
            ready <= read_en;  
            ID_ready <= ready;  
        end
    end

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			pc_out <= 16'b0;
			alu_en <= 1'b0;
			alu_op <= 5'b0;
            process_type <= 2'b0;
		end
		else begin
			@(posedge read_en);
			// if (ins_epoch == 0)) begin // 当前字节是指令字节
                case (instruction)
                    8'h00: begin // NOP: do nothing but program counter + 1
                        pc_out <= pc_in + 1'b1;
                        process_type <= WAITE;
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
                        process_type <= ALU_CAL;
                    end	
                    8'h14: begin // DEC A; A = A - 1;
                        pc_out <= pc_in + 1'b1;
                        alu_en <= 1'b1;
                        alu_op <= 5'h3;
                        process_type <= ALU_CAL;
                    end
                    default: begin
                    end																														
			    endcase
            // end
            // else begin // 当前字节是操作数字节
                
            // end
		end
	end
	// ALU使能关闭
	always @(posedge clk) begin
		@(negedge read_en);
		alu_en <= 1'b0;
	end
	

	
endmodule
