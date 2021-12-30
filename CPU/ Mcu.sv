module Mcu(
    input reset,
    input clk,
    
    inout[7:0] p0,
    inout[7:0] p1,
    inout[7:0] p2,
    inout[7:0] p3
);


    // 复位控制---------------------------------------------------
    reg[3:0]    cnt_rst = 4'b0; // 复位信号计数器 
    reg         rst_n = 1'b1; // 有效复位信号
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
            rst_n <= 1'b1;
            cnt_rst <= 4'b0;
        end
    end
    // -------------------------------------------------------

    // SFR特殊寄存器定义
    reg[7:0] p0, sp, dpl, dph, pcon, tcon, tmod, tl0, tl1, th0, th1, p1, scon, sbuf, p2, ie, p3, ip;
    reg[7:0] p0_nxt, sp_nxt, dpl_nxt, dph_nxt, pcon_nxt, tcon_nxt, tmod_nxt, tl0_nxt, tl1_nxt, th0_nxt, th1_nxt, p1_nxt, scon_nxt, sbuf_nxt, p2_nxt, ie_nxt, p3_nxt, ip_nxt;

    // 内部存储器访问控制-------------------------------------------------------
    always @(*) begin
        ram_en = 1'b0;
        ram_read = 1'b0;
        ram_write = 1'b0;
        
        rom_en = 1'b0;
        rom_read = 1'b0;

        if (memory_select) begin // 选中ram
            ram_en = 1'b1;
            if (addr_bus[7:0] < 8'h80) begin // 低127位寻址片内ram
                ram_addr = addr_bus;
                ram_read = read_en;
                ram_write = write_en;
                data_to_cpu = (read_en) ? data_from_ram : 8'b0;
                data_to_ram = (write_en) ? data_from_cpu : 8'b0;
            end
            else begin // 高127位寻址SFR
                case (addr_bus[7:0])
                    `p0:begin
                        data_to_cpu = (read_en) ? p0 : 8'b0;
                        p0_nxt = (write_en) ? data_from_cpu : p0;
                    end
                    `sp:begin
                        data_to_cpu = (read_en) ? sp : 8'b0;
                        sp_nxt = (write_en) ? data_from_cpu : sp;
                    end
                    `dpl:begin
                        data_to_cpu = (read_en) ? dpl : 8'b0;
                        dpl_nxt = (write_en) ? data_from_cpu : dpl;
                    end
                    `dph:begin
                        data_to_cpu = (read_en) ? dph : 8'b0;
                        dph_nxt = (write_en) ? data_from_cpu : dph;
                    end
                    `pcon:begin
                        data_to_cpu = (read_en) ? pcon : 8'b0;
                        pcon_nxt = (write_en) ? data_from_cpu : pcon;
                    end
                    `tcon:begin
                        data_to_cpu = (read_en) ? tcon : 8'b0;
                        tcon_nxt = (write_en) ? data_from_cpu : tcon;
                    end
                    `tmod:begin
                        data_to_cpu = (read_en) ? tmod : 8'b0;
                        tmod_nxt = (write_en) ? data_from_cpu : tmod;
                    end
                    `tl0:begin
                        data_to_cpu = (read_en) ? tl0 : 8'b0;
                        tl0_nxt = (write_en) ? data_from_cpu : tl0;
                    end
                    `tl1:begin
                        data_to_cpu = (read_en) ? tl1 : 8'b0;
                        tl1_nxt = (write_en) ? data_from_cpu : tl1;
                    end
                    `th0:begin
                        data_to_cpu = (read_en) ? th0 : 8'b0;
                        th0_nxt = (write_en) ? data_from_cpu : th0;
                    end
                    `th1:begin
                        data_to_cpu = (read_en) ? th1 : 8'b0;
                        th1_nxt = (write_en) ? data_from_cpu : th1;
                    end
                    `p1:begin
                        data_to_cpu = (read_en) ? p1 : 8'b0;
                        p1_nxt = (write_en) ? data_from_cpu : p1;
                    end
                    `scon:begin
                        data_to_cpu = (read_en) ? scon : 8'b0;
                        scon_nxt = (write_en) ? data_from_cpu : scon;
                    end
                    `sbuf:begin
                        data_to_cpu = (read_en) ? sbuf : 8'b0;
                        sbuf_nxt = (write_en) ? data_from_cpu : sbuf;
                    end
                    `p2:begin
                        data_to_cpu = (read_en) ? p2 : 8'b0;
                        p2_nxt = (write_en) ? data_from_cpu : p2;
                    end
                    `ie:begin
                        data_to_cpu = (read_en) ? ie : 8'b0;
                        ie_nxt = (write_en) ? data_from_cpu : ie;
                    end
                    `p3:begin
                        data_to_cpu = (read_en) ? p3 : 8'b0;
                        p3_nxt = (write_en) ? data_from_cpu : p3;
                    end
                    `ip:begin
                        data_to_cpu = (read_en) ? ip : 8'b0;
                        ip_nxt = (write_en) ? data_from_cpu : ip;
                    end
                    default:;
                endcase
            end
        end
        else begin  // 选中rom
            rom_en = 1'b1;
        end
    end


    // -------------------------------------------------------

    // ram inst-------------------------------------------------------\
    reg ram_en, ram_read, ram_write;
    reg[7:0] ram_addr, data_to_ram;
    wire[7:0] data_from_ram;
    Ram ram(
        .clk(clk),
        .ram_en(ram_en),
        .read_en(ram_read),
        .write_en(ram_write),
        .addr(ram_addr[6:0]),
        .data_out(data_from_ram),
        .data_in(data_to_ram)
    );
    // -------------------------------------------------------
    
    // rom inst-------------------------------------------------------
    Rom rom(

    );
    // -------------------------------------------------------


    // CPU inst-------------------------------------------------------
    reg[7:0] data_to_cpu;
    reg[4:0] interupt;
    wire[15:0] addr_bus;
    wire[7:0] data_bus, data_from_cpu;
    wire read_en, write_en, clk_1M, clk_6M, memory_select;
    // 双向端口配置
    assign data_bus = (read_en) ? data_to_cpu : 8'bz;
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