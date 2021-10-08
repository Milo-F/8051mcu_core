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
    inout   [7:0]   data_bus,   // 数据总线，16位寻址时用作低八位
    output  [7:0]   addr_bus,    // 地址总线，以及16位寻址中的高八位
    input           EA,         // 内/外部程序存储器选择使能，1：内部；0：外部
    input   [1:0]   interupt,   // 中断控制信号
    input   [1:0]   timing,     // 计时器中断控制信号
    output          read_en,    // 读数据使能
    output          write_en,   // 写数据使能
    output          clk_1M,     // 机器周期
    output          clk_6M,    // 时钟周期
    output          ALE,        // 输出锁存控制信号
    output          PSEN        // 外部程序存储器访问控制信号
);

    // CPU内部寄存器定义
    reg [3:0] cnt_rst = 4'b0; // 复位信号计数器 
    reg rst_n = 1'b1; // 有效复位信号
    reg [15:0]  program_counter; // 程序计数器
    reg [15:0]  addr_register; // 地址寄存器
    reg [7:0]   data_register; // 数据输入寄存器
    reg [7:0]   temp_register; // 暂存器
    reg [7:0]   instruction_register; // 指令寄存器
    reg [7:0]   psw; // 程序状态字寄存器
    reg [7:0]   accumulator; // 累加器A
    reg [7:0]   b; // 辅助寄存器B

    // 寄存器复位
    always @(negedge rst_n) begin
        program_counter <= 16'b0;
        addr_register <= 16'b0;
        data_register <= 8'b0;
        temp_register <= 8'b0;
        instruction_register <= 8'b0;
        psw <= 8'b0;
        accumulator <= 8'b0;
        b <= 8'b0;
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

    // 从数据总线读取数据
    always @(read_en) begin
        if (read_en) begin
            data_register <= data_bus; // 读数据使有效时把数据写入数据寄存器
        end
    end

    // 将数据写入数据总线
    assign data_bus = (write_en) ? temp_register : 8'bz;

endmodule