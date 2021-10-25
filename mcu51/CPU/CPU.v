/*-------------------------------------------------------------------
    Name: CPU
    Function: 8bit总线宽度cpu处理控制指令和实现运算，基于8051指令集，有限状态机实现指令控制
    Author: Milo
    Data: 2021/09/23
    Version: 1.1
---------------------------------------------------------------------*/

module CPU (
    input               clk,        // 振荡时钟12M
    input               reset,      // 复位信号，低电平有效
    inout   [7:0]       data_bus,   // 数据总线
    output  reg[15:0]   addr_bus,    // 地址总线
    input               EA,         // 内/外部程序存储器选择使能，1：内部；0：外部
    input   [1:0]       interupt,   // 中断控制信号
    input   [1:0]       timing,     // 计时器中断控制信号
    output  reg         read_en,    // 读数据使能
    output  reg         write_en,   // 写数据使能
    output              clk_1M,     // 机器周期
    output              clk_6M,    // 时钟周期
    output  reg         memory_select, // 片选，1为ram，0为rom
    // output              ALE,        // 输出锁存控制信号
    output              PSEN        // 外部程序存储器访问控制信号
);

    /*****************************************复位信号*********************************************/
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
    //-------------------------------------------------------------------------------------------

    /********************************************时钟分频******************************************/
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
    // // ALE信号产生
    // ALEGen ale(
    //     .clk(clk),
    //     .rst_n(rst_n),
    //     .ALE(ALE)
    // );
    //--------------------------------------------------------------------------------------------

    /**********************************************指令处理***************************************/
    // 独热码状态机状态定义
    localparam NOP = 8'b0000_0001; // NOP指令，空闲等待若干个时钟周期
    localparam GET_INS = 8'b0000_0010; // 取指令
    localparam INS_DECODE = 8'b0000_0100; // 译码
    localparam RAM_READ = 8'b0000_1000; // 取ram中的操作数
    localparam ROM_READ = 8'b0001_0000; // 取rom中的操作数
    localparam PROCESS = 8'b0010_0000; // 执行指令
    localparam RAM_WRITE = 8'b0100_0000; // 回写ram
    localparam ROM_WRITE = 8'b1000_0000; // 回写rom

    localparam NOP_INDEX = 0;
    localparam GET_INS_INDEX = 1;
    localparam INS_DECODE_INDEX = 2;
    localparam RAM_READ_INDEX = 3;
    localparam ROM_READ_INDEX = 4;
    localparam PROCESS_INDEX = 5;
    localparam RAM_WRITE_INDEX = 6;
    localparam ROM_WRITE_INDEX = 7;

    // 常量定义
    parameter NOP_DURATION = 6; // NOP指令空闲6个时钟周期
    
    // 指令处理线网定义
    reg[7:0]    status, status_nxt; // 状态
    reg[2:0]    nop_cnt, nop_cnt_nxt; // NOP指令空闲时钟计数器
    wire[2:0]   nop_cnt_minus1;
    reg[15:0]   program_counter, program_counter_nxt; // 程序计数器
    wire[15:0]  program_counter_plus1;
    reg         get_ins_done, get_ins_done_nxt; // 状态完成标志
    reg[7:0]    ins_register, ins_register_nxt;
    reg         read_en_nxt, memory_select_nxt;
    reg[15:0]   addr_bus_nxt;

    // data_bus双向端口设置
    reg[7:0]    data_out;
    wire[7:0]   data_in;
    assign data_bus = (!read_en) ? data_out : 8'bz;
    assign data_in = data_bus;

    // 计数器
    assign nop_cnt_minus1 = nop_cnt - 1'b1;
    assign program_counter_plus1 = program_counter + 1'b1;

    // 状态转移逻辑，包含次态方程和相关线网的处理
    always @(*) begin
        status_nxt = status;
        nop_cnt_nxt = nop_cnt;
        program_counter_nxt = program_counter;
        read_en_nxt = 1'b0;
        get_ins_done_nxt = 1'b0;
        ins_register_nxt = ins_register;
        addr_bus_nxt = addr_bus;
        memory_select_nxt = memory_select;
        case (1'b1)
            status[GET_INS_INDEX]:begin
                memory_select_nxt = 1'b0; // 选中rom
                ins_register_nxt = data_in;
                if (get_ins_done) begin // 当取指完成转移到下个状态
                    status_nxt = INS_DECODE;
                    read_en_nxt = 1'b0;
                    get_ins_done_nxt = 1'b0;
                    program_counter_nxt = program_counter_plus1; // 完成取指程序计数器+1
                end
                else begin
                    addr_bus_nxt = program_counter;
                    read_en_nxt = 1'b1;
                    get_ins_done_nxt = 1'b1;
                end
            end 
            status[INS_DECODE_INDEX]: begin
                
            end
            status[RAM_READ_INDEX]: begin
                
            end
            status[ROM_READ_INDEX]: begin
                
            end
            status[PROCESS_INDEX]: begin
                
            end
            status[RAM_WRITE_INDEX]: begin
                
            end
            status[ROM_WRITE_INDEX]: begin
                
            end
            status[NOP_INDEX]: begin
                if (nop_cnt == 0) begin
                    status_nxt = GET_INS; // 空闲6个时钟周期之后，跳回取指状态
                    nop_cnt_nxt = NOP_DURATION; // 空闲计数器复位
                end
                else begin
                    nop_cnt_nxt = nop_cnt_minus1; // 空闲时钟-1
                end
            end
            default: begin
            end 
        endcase
    end
    
    // 次态传递
    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            status <= NOP;
            nop_cnt <= NOP_DURATION;
            program_counter <= 16'ha845;
            ins_register <= 8'b0;
            read_en <= 1'b0;
            addr_bus <= 16'b0;
            get_ins_done <= 1'b0;
            data_out <= 8'b0;
            memory_select <= 1'b1;
        end
        else begin
            status <= status_nxt;
            nop_cnt <= nop_cnt_nxt;
            program_counter <= program_counter_nxt;
            addr_bus <= addr_bus_nxt;
            ins_register <= ins_register_nxt;
            read_en <= read_en_nxt;
            get_ins_done <= get_ins_done_nxt;
            memory_select <= memory_select_nxt;
        end
    end

endmodule