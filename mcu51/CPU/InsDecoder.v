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
    input [7:0]     ram_data_register,
    input [7:0]     rom_data_register,
    output reg[2:0] run_phase_init,
    output reg[2:0] a_data_from,
    output reg[2:0] b_data_from,
    output reg[3:0] alu_op,
    output reg[2:0] bit_location,
    output reg[7:0] addr_register_out,
    output reg[2:0] next_status // 下个状态标识
);

    // 下个状态标识定义
    parameter TO_NOP = 3'b000;
    parameter TO_RAM_READ= 3'b001;
    parameter TO_ROM_READ = 3'b010;
    parameter TO_PROCESS = 3'b011;
    parameter TO_RAM_WRITE = 3'b100;
    parameter TO_INS_DECODE = 3'b101;
    parameter NOT_DONE = 3'b111;

    // 数据来源标识
    parameter FROM_A = 3'b000;
    parameter FROM_RAM_DATA_REG = 3'b001;
    parameter FROM_ROM_DATA_REG = 3'b010;
    parameter NO_USED = 3'b111;

    reg[7:0]   tmp, tmp_nxt;

	always @(*) begin
        next_status = NOT_DONE;
        addr_register_out = 8'b0;
        run_phase_init = 3'b0;
        tmp_nxt = tmp;
        // bit2addr_tmp = 11'b0;
        casez (instruction)
            8'h00: begin // NOP
                next_status = TO_NOP;
            end
            8'b1111_1???: begin // MOV RN, A
                run_phase_init = 1;
                ram_write(FROM_A, {3'b0, psw[4:3], instruction[2:0]});
            end
            8'b1111_011?: begin // MOV @Ri, A
                run_phase_init = 2;
                ram_read({3'b0, psw[4:3], 2'b0, instruction[0]});
                if (run_phase == 1) begin
                    ram_write(FROM_A, ram_data_register);
                end
            end
            8'b1111_0101: begin // MOV DIRECT, A
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) begin
                    ram_write(FROM_A, rom_data_register);
                end
            end
            8'b1000_011?: begin // MOV DIRECT, @Ri
                run_phase_init = 4;
                next_status = TO_ROM_READ;
                case (run_phase)
                    3: ram_read({3'b0, psw[4:3], 2'b0, instruction[0]});
                    2: ram_read(ram_data_register);
                    1: ram_write(FROM_RAM_DATA_REG, rom_data_register);
                    default:;
                endcase
            end
            8'b1000_1???: begin // MOV DIRECT, Rn
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read({3'b0, psw[4:3], instruction[2:0]});
                    1: ram_write(FROM_RAM_DATA_REG, rom_data_register);
                    default:;
                endcase
            end
            8'b1010_011?: begin // MOV @Ri, DIRECT
                run_phase_init = 4;
                next_status = TO_RAM_READ;
                ram_read({3'b0, psw[4:3], 2'b0, instruction[0]});
                case (run_phase)
                    3: begin
                        tmp_nxt = ram_data_register; // 缓存要写入的地址
                        next_status = TO_ROM_READ;
                    end
                    2: ram_read(rom_data_register);
                    1: ram_write(FROM_RAM_DATA_REG, tmp);
                    default:;
                endcase
            end
            8'b1010_1???: begin // MOV RN, DIRECT
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read(rom_data_register);
                    1: ram_write(FROM_RAM_DATA_REG, {3'b0, psw[4:3], instruction[2:0]});
                    default:;
                endcase
            end
            8'b0111_011?: begin // MOV @RI, #DATA
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read({3'b0, psw[4:3], 2'b0, instruction[0]}); 
                    3: ram_write(FROM_ROM_DATA_REG, ram_data_register);
                    default:;
                endcase
            end
            8'b0111_1???: begin // MOV RN, #DATA
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) ram_write(FROM_ROM_DATA_REG, {3'b0, psw[4:3], instruction[2:0]});
            end
            8'b1000_0101: begin // MOV DIRECT, DIRECT
                run_phase_init = 4;
                next_status = TO_ROM_READ;
                case (run_phase)
                    3:begin
                        tmp_nxt = rom_data_register;
                        next_status = TO_ROM_READ;
                    end 
                    2: ram_read(rom_data_register);
                    1: ram_write(FROM_RAM_DATA_REG, tmp);
                    default:;
                endcase
            end
            8'b0111_0101: begin // MOV ADDR, #DATA
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: begin
                        tmp_nxt = rom_data_register;
                        next_status = TO_ROM_READ;
                    end 
                    1: ram_write(FROM_ROM_DATA_REG, tmp);
                    default: ;
                endcase
            end
            8'b0000_1???: begin // inc rn
                run_phase_init = 3;
                ram_read({3'b0, psw[4:3], instruction[2:0]});
                case (run_phase)
                    2: pro(FROM_RAM_DATA_REG, NO_USED, `inc);
                    1: ram_write(FROM_RAM_DATA_REG, {3'b0, psw[4:3], instruction[2:0]});
                    default: ;
                endcase
            end
            default: begin // 错误指令无法译码，取下一条指令
                next_status = TO_INS_DECODE;
            end
        endcase
    end

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            tmp <= 8'b0;
        end
        else begin
            tmp <= tmp_nxt;
        end
    end

    // 写ram任务
    task automatic ram_write(reg[2:0] data_from_val, reg[7:0] addr);
        begin
            next_status = TO_RAM_WRITE;
            a_data_from = data_from_val;
            addr_register_out = addr; 
        end
    endtask
    // 读ram任务
    task automatic ram_read(reg[7:0] addr);
        begin
            next_status = TO_RAM_READ;
            addr_register_out = addr;
        end
    endtask
    // process运算任务
    task automatic pro(reg[2:0] a_from, b_from, reg[3:0] op);
        begin
            next_status = TO_PROCESS;
            a_data_from = a_from;
            b_data_from = b_from;
            alu_op = op;
        end
    endtask
    // 位地址转ram地址，10：8为位所在位置，7：0为ram地址
    function automatic reg[10:0] bit2addr(reg[7:0] bit_addr);
        begin
            reg[10:0] addr = 11'b0;
            // TODO
            return addr;
        end
    endfunction

endmodule
