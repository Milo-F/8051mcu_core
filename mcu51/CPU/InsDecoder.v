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
    output reg[2:0] next_status // 下个状态标识
);

    // 下个状态标识定义
    parameter TO_NOP = 3'b000;
    parameter TO_RAM_READ= 3'b001;
    parameter TO_ROM_READ = 3'b010;
    parameter TO_PROCESS = 3'b011;
    parameter TO_RAM_WRITE = 3'b100;
    parameter NOT_DONE = 3'b111;

    reg[2:0] next_status_nxt;

	always @(*) begin
        next_status_nxt = NOT_DONE;
        casez (instruction)
            8'h00: begin // NOP
                next_status_nxt = TO_NOP;
            end
            8'b1110_1???: begin // MOV A, Rn
                next_status_nxt = TO_RAM_READ;
            end
            8'b1110_0101: begin // MOV A, direct
                next_status_nxt = TO_ROM_READ;
            end
            8'b1110_101?: begin // MOV A, @Ri
                next_status_nxt = TO_RAM_READ;
            end
            8'b0111_0100: begin // MOV A, #data
                next_status_nxt = TO_ROM_READ;
            end
            8'b1111_1???: begin // MOV Rn, A
                next_status_nxt = TO_RAM_WRITE;
            end
            8'b1010_1???: begin // MOV Rn, direct
                next_status_nxt = TO_ROM_READ;
            end
            8'b0111_1???: begin // MOV Rn, #data
                next_status_nxt = TO_ROM_READ;
            end
            8'b1111_0101: begin // MOV direct, A
                next_status_nxt = TO_ROM_READ;
            end
            8'b1000_1???: begin // MOV direct, Rn
                next_status_nxt = TO_RAM_READ;
            end
            8'b1000_0101: begin // MOV direct, direct
                next_status_nxt = TO_ROM_READ;
            end
            default: begin
            end
        endcase
    end

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            next_status <= NOT_DONE;
        end
        else begin
            next_status <= next_status_nxt;
        end
    end

endmodule
