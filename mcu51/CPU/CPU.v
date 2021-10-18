/*-------------------------------------------------------------------
    Name: CPU
    Function: 8bit总线宽度cpu处理控制指令和实现运算
    Author: Milo
    Data: 2021/09/23
    Version: 1.0
---------------------------------------------------------------------*/

module CPU (
    input           clk,        // 振荡时钟12M
    input           reset,      // 复位信号，低电平有效
    inout   [7:0]   data_bus,   // 数据总线，16位寻址时用作高八位
    output  reg[7:0]   addr_bus,    // 地址总线，以及16位寻址中的低八位
    input           EA,         // 内/外部程序存储器选择使能，1：内部；0：外部
    input   [1:0]   interupt,   // 中断控制信号
    input   [1:0]   timing,     // 计时器中断控制信号
    output  reg     read_en,    // 读数据使能
    output          write_en,   // 写数据使能
    output          clk_1M,     // 机器周期
    output          clk_6M,    // 时钟周期
    output          ALE,        // 输出锁存控制信号
    output          PSEN        // 外部程序存储器访问控制信号
);

    // CPU内部寄存器定义
    wire [7:0] data_in;
    reg [7:0] data_out = 8'b0;
    reg [3:0] cnt_rst = 4'b0; // 复位信号计数器 
    reg rst_n = 1'b1; // 有效复位信号
    reg [15:0]  program_counter; // 程序计数器
    reg [15:0]  addr_register; // 地址寄存器
    reg [7:0]   data_register; // 数据输入寄存器
    reg [7:0]   temp_register; // 暂存器
    reg [7:0]   instruction_register; // 指令寄存器
    reg [7:0]   psw; // 程序状态字寄存器
    reg [7:0]   accumulator; // 累加器A

    // 系统复位
    always @(negedge rst_n) begin
        addr_bus <= 8'b0;
        read_en <= 1'b1;
        addr_register <= 16'b0;
        data_register <= 8'b0;
        temp_register <= 8'b0;
        instruction_register <= 8'b0;
        psw <= 8'b0;
        accumulator <= 8'b0;
    end   

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

    // 工作周期6M
    ClkDiv #(.DIV_NUM(2)) clk_6(
        .clk_in(clk),
        .rst_n(rst_n),
        .clk_out(clk_6M)
    );
    // 机器周期1M
    ClkDiv #(.DIV_NUM(12)) clk_1(
        .clk_in(clk),
        .rst_n(rst_n),
        .clk_out(clk_1M)
    );
    // ALE信号产生
    ALEGen ale(
        .clk(clk),
        .rst_n(rst_n),
        .ALE(ALE)
    );

    // 读写控制信号
    assign write_en = ~read_en;

    // inout端口
    assign data_bus = (write_en) ? data_out : 8'bz;
    assign data_in = data_bus;

    // 取指
    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            read_en <= 1'b1;
            instruction_register <= 8'b0;
        end
        else begin
            get_instruction();
        end
    end

    // 取指任务
    task get_instruction;
        begin
            addr_bus <= program_counter[7:0]; // 寻址地址送给地址总线
            read_en <= 1'b1;  // 读使能
            if (read_en) begin
                instruction_register <= data_in; // 读指令
                read_en <= 1'b0;
            end
        end
    endtask

    wire ID_ready;
    wire [15:0] program_counter_next;
    wire alu_en;
    wire [5:0] alu_op;

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            program_counter <= 16'b0;
        end
        else begin
            program_counter <= program_counter_next;
        end
    end
    // 译码
    InsDecoder ID(
        .clk(clk),
        .rst_n(rst_n),
        .read_en(read_en),
        .instruction(instruction_register),
        .pc_in(program_counter),
        .pc_out(program_counter_next),
        .ready(ID_ready),
        .alu_en(alu_en),
        .alu_op(alu_op)
    );

endmodule