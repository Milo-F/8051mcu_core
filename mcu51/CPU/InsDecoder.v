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
    input [3:0]     run_phase, // 执行阶段
    input [7:0]     psw,
    input [7:0]     ram_data_register,
    input [7:0]     rom_data_register,
    output reg[3:0] run_phase_init,
    output reg[2:0] a_data_from,
    output reg[2:0] b_data_from,
    output reg[3:0] alu_op,
    output reg[2:0] a_bit_location,
    output reg[2:0] b_bit_location,
    output reg      bit_en, // 位运算标志
    output reg[7:0] addr_register_out,
    output reg[2:0] next_status // 下个状态标识
);

    // 下个状态标识定义
    parameter TO_NOP = 3'b000;
    parameter TO_RAM_READ= 3'b001;
    parameter TO_ROM_READ = 3'b010;
    parameter TO_PROCESS = 3'b011;
    parameter TO_RAM_WRITE = 3'b100;
    parameter TO_GET_INS = 3'b101;
    parameter NOT_DONE = 3'b111;

    // 数据来源标识
    parameter FROM_A = 3'b000;
    parameter FROM_RAM_DATA_REG = 3'b001;
    parameter FROM_ROM_DATA_REG = 3'b010;
    parameter FROM_ADDR_OUT = 3'b011;
    parameter FROM_PCH = 3'b100;
    parameter FROM_PCL = 3'b101;
    parameter FROM_B = 3'b110;
    parameter NO_USED = 3'b111;

    reg[7:0]   tmp, tmp_nxt; // 暂存器

	always @(*) begin
        next_status = NOT_DONE;
        addr_register_out = 8'b0;
        run_phase_init = 3'b0;
        tmp_nxt = tmp;
        a_bit_location = 3'b0;
        bit_en = 1'b0;
        alu_op = `no_alu;
        a_data_from = NO_USED;
        b_data_from = NO_USED;
        // bit2addr_tmp = 11'b0;
        casez (instruction)
            8'h00: begin // NOP
                next_status = TO_NOP;
            end
            8'b1111_1???: begin // MOV RN, A
                run_phase_init = 1;
                ram_write(FROM_A, `Rn);
            end
            8'b1111_011?: begin // MOV @Ri, A
                run_phase_init = 2;
                ram_read(`Ri);
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
                    3: ram_read(`Ri);
                    2: ram_read(ram_data_register);
                    1: ram_write(FROM_RAM_DATA_REG, rom_data_register);
                    default:;
                endcase
            end
            8'b1000_1???: begin // MOV DIRECT, Rn
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read(`Rn);
                    1: ram_write(FROM_RAM_DATA_REG, rom_data_register);
                    default:;
                endcase
            end
            8'b1010_011?: begin // MOV @Ri, DIRECT
                run_phase_init = 4;
                next_status = TO_RAM_READ;
                ram_read(`Ri);
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
                    1: ram_write(FROM_RAM_DATA_REG, `Rn);
                    default:;
                endcase
            end
            8'b0111_011?: begin // MOV @RI, #DATA
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read(`Ri); 
                    3: ram_write(FROM_ROM_DATA_REG, ram_data_register);
                    default:;
                endcase
            end
            8'b0111_1???: begin // MOV RN, #DATA
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) ram_write(FROM_ROM_DATA_REG, `Rn);
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
            8'b000?_1???: begin // inc/dec rn
                run_phase_init = 3;
                ram_read(`Rn);
                case (run_phase)
                    2: pro(FROM_RAM_DATA_REG, NO_USED, instruction[4] ? `dec : `inc);
                    1: ram_write(FROM_RAM_DATA_REG, `Rn);
                    default: ;
                endcase
            end
            8'b000?_0100: begin // inc/dec a
                run_phase_init = 1;
                pro(FROM_A, NO_USED, instruction[4] ? `dec : `inc);
            end
            8'b000?_0101: begin // inc/dec direct
                run_phase_init = 4;
                next_status = TO_ROM_READ;
                case (run_phase)
                    3: ram_read(rom_data_register);
                    2: pro(FROM_RAM_DATA_REG, NO_USED, instruction[4] ? `dec : `inc);
                    1: ram_write(FROM_RAM_DATA_REG, rom_data_register);
                    default: ;
                endcase
            end
            8'b000?_011?: begin // inc/dec @ri
                run_phase_init = 4;
                ram_read(`Ri);
                case (run_phase)
                    3: begin
                        tmp_nxt = ram_data_register;
                        ram_read(ram_data_register);
                    end
                    2: pro(FROM_RAM_DATA_REG, NO_USED, instruction[4] ? `dec : `inc);
                    1: ram_write(FROM_RAM_DATA_REG, tmp);
                    default: ;
                endcase
            end
            8'b001?_1???: begin // add/addc a, rn
                run_phase_init = 2;
                ram_read(`Rn);
                if (run_phase == 1) pro(FROM_A, FROM_RAM_DATA_REG, (instruction[4] ? `addc : `add));
            end
            8'b001?_011?: begin // add/addc a, @ri
                run_phase_init = 3;
                ram_read(`Ri);
                case (run_phase)
                    2: ram_read(ram_data_register);
                    1: pro(FROM_A, ram_data_register, (instruction[4] ? `addc : `add));
                    default: ;
                endcase
            end
            8'b001?_0100: begin // add/addc a, #data
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) pro(FROM_A, FROM_ROM_DATA_REG, (instruction[4] ? `addc : `add));
            end
            8'b001?_0101: begin // add/addc a, direct
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read(rom_data_register);
                    1: pro(FROM_A, ram_data_register, (instruction[4] ? `addc : `add));
                    default: ;
                endcase
            end
            8'b010?_1???: begin // orl/anl a, rn
                run_phase_init = 2;
                ram_read(`Rn);
                if (run_phase == 1) pro(FROM_A, FROM_RAM_DATA_REG, (instruction[4] ? `anl : `orl));
            end
            8'b010?_011?: begin // orl/anl a, @ri
                run_phase_init = 3;
                ram_read(`Ri);
                case (run_phase)
                    2: ram_read(ram_data_register);
                    1: pro(FROM_A, ram_data_register, (instruction[4] ? `anl : `orl));
                    default: ;
                endcase
            end
            8'b010?_0100: begin // orl/anl a, #data
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) pro(FROM_A, FROM_ROM_DATA_REG, (instruction[4] ? `anl : `orl));
            end
            8'b010?_0101: begin // orl/anl a, direct
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read(rom_data_register);
                    1: pro(FROM_A, FROM_RAM_DATA_REG, (instruction[4] ? `anl : `orl));
                    default: ;
                endcase
            end
            8'b0110_1???: begin // xrl a, rn
                run_phase_init = 2;
                ram_read(`Rn);
                if (run_phase == 1) pro(FROM_A, FROM_RAM_DATA_REG, `xrl);
            end
            8'b0110_011?: begin // xrl a, @ri
                run_phase_init = 3;
                ram_read(`Ri);
                case (run_phase)
                    2: ram_read(ram_data_register);
                    1: pro(FROM_A, FROM_RAM_DATA_REG, `xrl);
                    default: ;
                endcase
            end
            8'b0110_0100: begin // xrl a, #data
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) pro(FROM_A, rom_data_register, `xrl);
            end
            8'b0110_0101: begin // xrl a, direct
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read(rom_data_register);
                    1: pro(FROM_A, FROM_RAM_DATA_REG, `xrl);
                    default: ;
                endcase
            end
            8'b1001_1???: begin // subb a, rn
                run_phase_init = 2;
                ram_read(`Rn);
                if (run_phase == 1) pro(FROM_A, FROM_RAM_DATA_REG, `subb);
            end
            8'b1001_011?: begin // subb a, @ri
                run_phase_init = 3;
                ram_read(`Ri);
                case (run_phase)
                    2: ram_read(ram_data_register);
                    1: pro(FROM_A, FROM_RAM_DATA_REG, `subb);
                    default: ;
                endcase
            end
            8'b1001_0100: begin // subb a, #data
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) pro(FROM_A, rom_data_register, `subb);
            end
            8'b1001_0101: begin // subb a, direct
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read(rom_data_register);
                    1: pro(FROM_A, FROM_RAM_DATA_REG, `subb);
                    default: ;
                endcase
            end
            8'b1110_1???: begin // mov a, rn
                run_phase_init = 2;
                ram_read(`Rn);
                if (run_phase == 1) pro(FROM_A, FROM_RAM_DATA_REG, `mov);
            end
            8'b1110_011?: begin // mov a, @ri
                run_phase_init = 3;
                ram_read(`Ri);
                case (run_phase)
                    2: ram_read(ram_data_register);
                    1: pro(FROM_A, FROM_RAM_DATA_REG, `mov);
                    default: ;
                endcase
            end
            8'b1110_0101: begin // mov a, direct
                run_phase_init = 3;
                next_status = TO_ROM_READ;
                case (run_phase)
                    2: ram_read(rom_data_register);
                    1: pro(FROM_A, FROM_RAM_DATA_REG, `mov);
                    default: ;
                endcase
            end
            8'b0111_0100: begin // mov a, #data
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) pro(FROM_A, FROM_ROM_DATA_REG, `mov);
            end
            8'b1110_0100: begin // clr a
                run_phase_init = 1;
                pro(FROM_A, NO_USED, `clr); // A清零
            end
            8'b1111_0100: begin // cpl a
                run_phase_init = 1;
                pro(FROM_A, NO_USED, `cpl);
            end
            8'b0000_0011: begin // rr a
                run_phase_init = 1;
                pro(FROM_A, NO_USED, `no_alu);
            end
            8'b0001_0011: begin // rrc a
                run_phase_init = 1;
                pro(FROM_A, NO_USED, `no_alu);
            end
            8'b0010_0011: begin // rl a
                run_phase_init = 1;
                pro(FROM_A, NO_USED, `no_alu);
            end
            8'b0011_0011: begin // rlc a
                run_phase_init = 1;
                pro(FROM_A, NO_USED, `no_alu);
            end
            8'b1100_0100: begin // swap a
                run_phase_init = 1;
                pro(FROM_A, NO_USED, `no_alu);
            end
            8'b10?0_0100: begin // mul/div ab
                run_phase_init  = 2;
                ram_read(`b);
                if (run_phase == 1) pro(FROM_A, FROM_RAM_DATA_REG, (instruction[5] ? `mul : `div));
            end
            8'b???0_0001: begin // ajum addr11
                run_phase_init = 3;
                addr_register_out = {5'b0, instruction[7:5]};
                pro(FROM_PCH, FROM_ADDR_OUT, `no_alu);
                case (run_phase)
                    2: next_status = TO_ROM_READ;
                    1: pro(FROM_PCL, FROM_ROM_DATA_REG, `mov);
                    default: ;
                endcase
            end
            8'b0000_0010: begin // LJUMP addr16
                run_phase_init = 4;
                next_status = TO_ROM_READ;
                case (run_phase)
                    3: pro(FROM_PCH, FROM_ROM_DATA_REG, `mov);
                    2: next_status = TO_ROM_READ;
                    1: pro(FROM_PCL, FROM_ROM_DATA_REG, `mov);
                    default: ;
                endcase
            end
            8'b1000_0000: begin // SJUMP rel
                run_phase_init = 2;
                next_status = TO_ROM_READ;
                if (run_phase == 1) pro(FROM_PCL, FROM_ROM_DATA_REG, `add);
            end
            8'b1001_0000: begin // mov dptr, #data16
                run_phase_init = 4;
                next_status = TO_ROM_READ;
                case (run_phase)
                    3: ram_write(FROM_ROM_DATA_REG, `dph);
                    2: next_status = TO_ROM_READ;
                    1: ram_write(FROM_ROM_DATA_REG, `dpl);
                    default: ;
                endcase
            end
            8'b1010_0011: begin // inc dptr
                run_phase_init = 6;
                ram_read(`dpl);
                case (run_phase)
                    5: pro(FROM_RAM_DATA_REG, NO_USED, `inc);
                    4: ram_write(FROM_RAM_DATA_REG, `dpl);
                    3: begin
                        if (ram_data_register == 8'b0) begin
                            ram_read(`dph);
                        end
                        else begin
                            next_status = TO_GET_INS;
                        end
                    end
                    2: pro(FROM_RAM_DATA_REG, NO_USED, `inc);
                    1: ram_write(FROM_RAM_DATA_REG, `dph);
                    default: ;
                endcase
            end
            8'b1100_0000: begin // push direct
                run_phase_init = 6;
                ram_read(`sp);
                case (run_phase)
                    5: begin
                        tmp_nxt = ram_data_register;
                        pro(FROM_RAM_DATA_REG, NO_USED, `inc);
                    end
                    4: ram_write(FROM_RAM_DATA_REG, `sp);
                    3: next_status = TO_ROM_READ;
                    2: ram_read(rom_data_register);
                    1: ram_write(FROM_RAM_DATA_REG, tmp);
                    default: ;
                endcase
            end
            8'b1101_0000: begin // pop direct
                run_phase_init = 6;
                ram_read(`sp);
                case (run_phase)
                    5: begin
                        tmp_nxt = ram_data_register;
                        pro(FROM_RAM_DATA_REG, NO_USED, `dec);
                    end
                    4: ram_write(FROM_RAM_DATA_REG, `sp);
                    3: ram_read(tmp);
                    2: next_status = TO_ROM_READ;
                    1: ram_write(FROM_RAM_DATA_REG, rom_data_register);
                    default: ;
                endcase
            end
            8'b0110_0000: begin // jz rel
                run_phase_init = 3;
                ram_read(`acc);
                case (run_phase)
                    2: next_status = TO_ROM_READ;
                    1: begin
                        if (ram_data_register == 8'b0) pro(FROM_PCL, FROM_ROM_DATA_REG, `add);
                        else next_status = TO_GET_INS;
                    end
                    default: ;
                endcase
            end
            8'b0101_0000: begin // jnz rel
                run_phase_init = 3;
                ram_read(`acc);
                case (run_phase)
                    2: next_status = TO_ROM_READ;
                    1: begin
                        if (ram_data_register != 8'b0) pro(FROM_PCL, FROM_ROM_DATA_REG, `add);
                        else next_status = TO_GET_INS;
                    end
                    default: ;
                endcase
            end
            8'b0111_0011: begin // JMP @A+DPTR
                run_phase_init = 5;
                ram_read(`dph);
                case (run_phase)
                    4: pro(FROM_PCH, FROM_RAM_DATA_REG, `mov);
                    3: ram_read(`dpl);
                    2: pro(FROM_PCL, FROM_RAM_DATA_REG, `mov);
                    1: pro(FROM_PCL, FROM_A, `add);
                    default: ;
                endcase
            end
            8'b1101_1???: begin // djnz rn, rel
                run_phase_init = 4;
                ram_read(`Rn);
                case (run_phase)
                    3: pro(FROM_RAM_DATA_REG, NO_USED, `dec);
                    2: next_status = TO_ROM_READ;
                    1: begin
                        if (ram_data_register == 8'b0) next_status = TO_GET_INS;
                        else pro(FROM_PCL, FROM_ROM_DATA_REG, `add);
                    end
                    default: ;
                endcase
            end
            8'b1101_0101: begin // djnz direct, rel
                run_phase_init = 5;
                next_status = TO_ROM_READ;
                case (run_phase)
                    4: ram_read(rom_data_register);
                    3: pro(FROM_RAM_DATA_REG, NO_USED, `dec);
                    2: next_status = TO_ROM_READ;
                    1: begin
                        if (ram_data_register == 8'b0) next_status = TO_GET_INS;
                        else pro(FROM_PCL, FROM_ROM_DATA_REG, `add);
                    end
                    default: ;
                endcase
            end
            8'b0001_0010: begin // lcall addr16
                run_phase_init = 10;
                ram_read(`sp);
                case (run_phase)
                    9: ram_write(FROM_PCL, ram_data_register);
                    8: pro(FROM_RAM_DATA_REG, NO_USED, `inc);
                    7: ram_write(FROM_PCH, ram_data_register);
                    6: pro(FROM_RAM_DATA_REG, NO_USED, `inc);
                    5: ram_write(FROM_RAM_DATA_REG, `sp);
                    4: next_status = TO_ROM_READ;
                    3: pro(FROM_PCH, FROM_ROM_DATA_REG, `mov);
                    2: next_status = TO_ROM_READ;
                    1: pro(FROM_PCL, FROM_ROM_DATA_REG, `mov);
                    default: ;
                endcase
            end
            8'b???1_0001: begin // acall addr11
                run_phase_init = 9;
                ram_read(`sp);
                case (run_phase)
                    8: ram_write(FROM_PCL, ram_data_register);
                    7: pro(FROM_RAM_DATA_REG, NO_USED, `inc);
                    6: ram_write(FROM_PCH, ram_data_register);
                    5: pro(FROM_RAM_DATA_REG, NO_USED, `inc);
                    4: ram_write(FROM_RAM_DATA_REG, `sp);
                    3: begin
                        addr_register_out = {5'b0, instruction[7:5]};
                        pro(FROM_PCH, FROM_ADDR_OUT, `no_alu);
                    end
                    2: next_status = TO_ROM_READ;
                    1: pro(FROM_PCL, FROM_ROM_DATA_REG, `mov);
                    default: ;
                endcase
            end
            8'b001?_0010: begin // ret/reti
                run_phase_init = 7;
                ram_read(`sp);
                case (run_phase)
                    6: begin
                        tmp_nxt = ram_data_register;
                        ram_read(ram_data_register - 8'h1);
                    end
                    5: pro(FROM_PCH, FROM_RAM_DATA_REG, `mov);
                    4: ram_read(tmp - 8'h2);
                    3: pro(FROM_PCL, FROM_RAM_DATA_REG, `mov);
                    2: begin
                        addr_register_out = tmp - 8'h2;
                        pro(FROM_RAM_DATA_REG, FROM_ADDR_OUT, `mov);
                    end
                    1: ram_write(FROM_RAM_DATA_REG, `sp);
                    default: ;
                endcase
            end
            8'b0111_0010: begin // orl c, bit
                run_phase_init = 6;
                ram_read(`psw);
                case (run_phase)
                    5: pro(FROM_B, FROM_RAM_DATA_REG, `mov);
                    4: next_status = TO_ROM_READ;
                    3: begin
                        ram_read(bit2addr(rom_data_register));
                    end
                    2:begin
                        bit_en = 1;
                        a_bit_location = 7;
                        b_bit_location = rom_data_register[2:0];
                        pro(FROM_B, FROM_RAM_DATA_REG, `orl);
                    end
                    1: ram_write(FROM_B, `psw);
                    default: ;
                endcase
            end
            8'b1000_0010: begin // anl c, bit
                run_phase_init = 6;
                ram_read(`psw);
                case (run_phase)
                    5: pro(FROM_B, FROM_RAM_DATA_REG, `mov);
                    4: next_status = TO_ROM_READ;
                    3: begin
                        ram_read(bit2addr(rom_data_register));
                    end
                    2:begin
                        bit_en = 1;
                        a_bit_location = 7;
                        b_bit_location = rom_data_register[2:0];
                        pro(FROM_B, FROM_RAM_DATA_REG, `anl);
                    end
                    1: ram_write(FROM_B, `psw);
                    default: ;
                endcase
            end
            8'b110?_0011: begin // setb/clr c
                run_phase_init = 3;
                ram_read(`psw);
                case (run_phase)
                    2: begin
                        bit_en = 1;
                        a_bit_location = 7;
                        pro(FROM_RAM_DATA_REG, NO_USED, `setb);
                    end
                    1: ram_write(FROM_RAM_DATA_REG, `psw);
                    default: ;
                endcase
            end
            8'b1011_0011: begin // cpl c
                run_phase_init = 3;
                ram_read(`psw);
                case (run_phase)
                    2: begin
                        bit_en = 1;
                        a_bit_location = 7;
                        pro(FROM_RAM_DATA_REG, NO_USED, `cpl);
                    end
                    1: ram_write(FROM_RAM_DATA_REG, `psw);
                    default: ;
                endcase
            end
            default: begin // 错误指令无法译码，取下一条指令
                next_status = TO_GET_INS;
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
    // 位地址转ram地址，bit_location为位所在位置，addr_register_out为ram地址
    function reg[7:0] bit2addr(reg[7:0] bit_addr);
        begin
            reg[7:0] ram_addr;
            if ((bit_addr >> 3) < 8'h0f) begin
                ram_addr = {4'h2, bit_addr[6:3]};
            end
            else begin
                ram_addr = {bit_addr[7:3], 3'b0};
            end
            return ram_addr;
        end
    endfunction

endmodule
