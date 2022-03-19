`include "para.vh"

module Mcu(
    input                                                   reset,
    input                                                   clk,
    input                                                   cnt_0,
    input                                                   cnt_1,
    input                                                   inti0,
    input                                                   inti1
);
    
    
    // 复位控制---------------------------------------------------
    reg[3:0]    cnt_rst; // 复位信号计数器
    reg         rst_n; // 有效复位信号
    // 复位信号持续10个时钟周期有效
    always @(posedge clk) begin
        if (!reset) begin
            if (cnt_rst == 10) begin
                rst_n <= 1'b0;
            end
            else begin
                cnt_rst <= cnt_rst + 1'b1;
            end
        end
        else begin
            rst_n   <= 1'b1;
            cnt_rst <= 4'b0;
        end
    end
    // -------------------------------------------------------
    
    // SFR特殊寄存器定义
    reg[7:0] p0, sp, dpl, dph, pcon, tcon, tmod, tl0, tl1, th0, th1, p1, scon, sbuf, p2, ie, p3, ip;
    reg[7:0] p0_nxt, sp_nxt, dpl_nxt, dph_nxt, pcon_nxt, tcon_nxt, tmod_nxt, tl0_nxt, tl1_nxt, th0_nxt, th1_nxt, p1_nxt, scon_nxt, sbuf_nxt, p2_nxt, ie_nxt, p3_nxt, ip_nxt;
    reg [7:0] tcon_reg;
    reg[7:0] data_to_cpu, data_to_ram;
    wire[4:0] interupt;
    wire[15:0] addr_bus;
    reg[15:0] rom_addr;
    reg[7:0] ram_addr;
    wire[7:0] data_bus, data_from_cpu, data_from_ram, data_from_rom;
    wire read_en, write_en, clk_1M, clk_6M, memory_select;
    reg ram_en, rom_en, ram_write, ram_read, rom_read;
    
    // timer/counter 0
    wire [7:0] th0_out, tl0_out;
    wire to0;
    Timer Timer_ins_0 (
        .clk(clk),
        .rst_n(rst_n),
        .cnt_sig(cnt_0),
        .t_s(tcon[6]),
        .tmod(tmod[2:0]),
        .th(th0),
        .tl(tl0),
        .th_nxt(th0_out),
        .tl_nxt(tl0_out),
        .t_o(to0)
    );
    // timer/counter 1
    wire [7:0] th1_out, tl1_out;
    wire to1;
    Timer Timer_ins_1 (
        .clk(clk),
        .rst_n(rst_n),
        .cnt_sig(cnt_1),
        .t_s(tcon[7]),
        .tmod(tmod[6:4]),
        .th(th1),
        .tl(tl1),
        .th_nxt(th1_out),
        .tl_nxt(tl1_out),
        .t_o(to1)
    );
    
    // SFR 复位与状态更新
    always @(posedge clk) begin
        if (!rst_n) begin
            p0   <= 8'hff;
            p1   <= 8'hff;
            p2   <= 8'hff;
            p3   <= 8'hff;
            sp   <= 8'h07;
            dpl  <= 0;
            dph  <= 0;
            ie   <= 0;
            pcon <= 0;
            tcon <= 0;
            tmod <= 0;
            tl0  <= 0;
            tl1  <= 0;
            th0  <= 0;
            th1  <= 0;
            scon <= 0;
            sbuf <= 0;
            ip   <= 0;
        end
        else begin
            p0   <= p0_nxt;
            p1   <= p1_nxt;
            p2   <= p2_nxt;
            p3   <= p3_nxt;
            sp   <= sp_nxt;
            dpl  <= dpl_nxt;
            dph  <= dph_nxt;
            ie   <= ie_nxt;
            pcon <= pcon_nxt;
            tcon <= tcon_reg;
            tmod <= tmod_nxt;
            tl0  <= tl0_nxt;
            tl1  <= tl1_nxt;
            th0  <= th0_nxt;
            th1  <= th1_nxt;
            scon <= scon_nxt;
            sbuf <= sbuf_nxt;
            ip   <= ip_nxt;
        end
    end
    
    // 内部存储器访问控制-------------------------------------------------------
    always @(*) begin
        ram_en    = 1'b0;
        ram_read  = 1'b0;
        ram_write = 1'b0;
        rom_en    = 1'b0;
        rom_read  = 1'b0;
        if (memory_select) begin // 选中ram
            ram_en = 1'b1;
            if (addr_bus[7:0] < 8'h80) begin // 低127位寻址片内ram
                ram_addr    = addr_bus[7:0];
                ram_read    = read_en;
                ram_write   = write_en;
                data_to_cpu = (read_en) ? data_from_ram : 8'b0;
                data_to_ram = (write_en) ? data_from_cpu : 8'b0;
            end
            else begin // 高127位寻址SFR
                case (addr_bus[7:0])
                    `p0:begin
                        data_to_cpu = (read_en) ? p0 : 8'b0;
                        p0_nxt      = (write_en) ? data_from_cpu : p0;
                    end
                    `sp:begin
                        data_to_cpu = (read_en) ? sp : 8'b0;
                        sp_nxt      = (write_en) ? data_from_cpu : sp;
                    end
                    `dpl:begin
                        data_to_cpu = (read_en) ? dpl : 8'b0;
                        dpl_nxt     = (write_en) ? data_from_cpu : dpl;
                    end
                    `dph:begin
                        data_to_cpu = (read_en) ? dph : 8'b0;
                        dph_nxt     = (write_en) ? data_from_cpu : dph;
                    end
                    `pcon:begin
                        data_to_cpu = (read_en) ? pcon : 8'b0;
                        pcon_nxt    = (write_en) ? data_from_cpu : pcon;
                    end
                    `tcon:begin
                        data_to_cpu = (read_en) ? tcon : 8'b0;
                        tcon_reg    = (write_en) ? data_from_cpu : tcon_nxt;
                    end
                    `tmod:begin
                        data_to_cpu = (read_en) ? tmod : 8'b0;
                        tmod_nxt    = (write_en) ? data_from_cpu : tmod;
                    end
                    `tl0:begin
                        data_to_cpu = (read_en) ? tl0 : 8'b0;
                        tl0_nxt     = (write_en) ? data_from_cpu : tl0_out;
                    end
                    `tl1:begin
                        data_to_cpu = (read_en) ? tl1 : 8'b0;
                        tl1_nxt     = (write_en) ? data_from_cpu : tl1_out;
                    end
                    `th0:begin
                        data_to_cpu = (read_en) ? th0 : 8'b0;
                        th0_nxt     = (write_en) ? data_from_cpu : th0_out;
                    end
                    `th1:begin
                        data_to_cpu = (read_en) ? th1 : 8'b0;
                        th1_nxt     = (write_en) ? data_from_cpu : th1_out;
                    end
                    `p1:begin
                        data_to_cpu = (read_en) ? p1 : 8'b0;
                        p1_nxt      = (write_en) ? data_from_cpu : p1;
                    end
                    `scon:begin
                        data_to_cpu = (read_en) ? scon : 8'b0;
                        scon_nxt    = (write_en) ? data_from_cpu : scon;
                    end
                    `sbuf:begin
                        data_to_cpu = (read_en) ? sbuf : 8'b0;
                        sbuf_nxt    = (write_en) ? data_from_cpu : sbuf;
                    end
                    `p2:begin
                        data_to_cpu = (read_en) ? p2 : 8'b0;
                        p2_nxt      = (write_en) ? data_from_cpu : p2;
                    end
                    `ie:begin
                        data_to_cpu = (read_en) ? ie : 8'b0;
                        ie_nxt      = (write_en) ? data_from_cpu : ie;
                    end
                    `p3:begin
                        data_to_cpu = (read_en) ? p3 : 8'b0;
                        p3_nxt      = (write_en) ? data_from_cpu : p3;
                    end
                    `ip:begin
                        data_to_cpu = (read_en) ? ip : 8'b0;
                        ip_nxt      = (write_en) ? data_from_cpu : ip;
                    end
                    default:;
                endcase
            end
        end
        else begin  // 选中rom
            rom_en      = 1'b1;
            rom_addr    = addr_bus;
            rom_read    = read_en;
            data_to_cpu = (read_en) ? data_from_rom : 8'b0;
        end
    end
    // -------------------------------------------------------
    
    // IO port set-------------------------------------------------------
    // wire[7:0] p0_out_nxt, p1_out_nxt, p2_out_nxt,p3_out_nxt;
    // assign p0_out_nxt = p0;
    // assign p1_out_nxt = p1;
    // assign p2_out_nxt = p2;
    // assign p3_out_nxt = p3;
    
    // int_ctl_ins
    wire [7:0] tcon_out;
    IntControl IntControl_ins (
        .clk(clk),
        .rst_n(rst_n),
        .IE(ie),
        .TCON(tcon),
        .SCON(scon[1:0]),
        .interupt(interupt),
        .TCON_out(tcon_out)
    );
    // 中断标志更新
    always @* begin
        tcon_nxt[7]   = tcon[7] ? ~to1 : tcon[7];
        tcon_nxt[6]   = tcon[6] ? ~to0 : tcon[6];
        tcon_nxt[5:4] = tcon_out[5:4];
        tcon_nxt[3]   = to1 | tcon_out[3];
        tcon_nxt[2]   = inti0 | tcon_out[2];
        tcon_nxt[1]   = to0 | tcon_out[1];
        tcon_nxt[0]   = inti1 | tcon_out[0];
    end
    // CPU inst-------------------------------------------------------
    // 双向端口配置
    assign data_bus      = (read_en) ? data_to_cpu : 8'bz;
    assign data_from_cpu = (write_en) ? data_bus : data_from_cpu;
    // 实例
    CPU cpu(
        .clk(clk),
        .rst_n(rst_n),
        .data_bus(data_bus),
        .addr_bus(addr_bus),
        .interupt(interupt),
        .read_en(read_en),
        .write_en(write_en),
        .memory_select(memory_select),
        .clk_1M(clk_1M),
        .clk_6M(clk_6M)
    );
    // -------------------------------------------------------
endmodule
