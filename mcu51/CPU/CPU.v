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
    input   [1:0]       timer,     // 计时器中断控制信号
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
    localparam NOP = 7'b000_0001; // NOP指令，空闲等待若干个时钟周期
    localparam GET_INS = 7'b000_0010; // 取指令
    localparam INS_DECODE = 7'b000_0100; // 译码
    localparam RAM_READ = 7'b000_1000; // 取ram中的操作数
    localparam ROM_READ = 7'b001_0000; // 取rom中的操作数
    localparam PROCESS = 7'b010_0000; // 执行指令
    localparam RAM_WRITE = 7'b100_0000; // 回写ram
    // localparam ROM_WRITE = 8'b1000_0000; // 回写rom

    localparam NOP_INDEX = 0;
    localparam GET_INS_INDEX = 1;
    localparam INS_DECODE_INDEX = 2;
    localparam RAM_READ_INDEX = 3;
    localparam ROM_READ_INDEX = 4;
    localparam PROCESS_INDEX = 5;
    localparam RAM_WRITE_INDEX = 6;
    // localparam ROM_WRITE_INDEX = 7;

    // 译码器跳转标识
    parameter DECODE_TO_NOP = 3'b000;
    parameter DECODE_TO_RAM_READ= 3'b001;
    parameter DECODE_TO_ROM_READ = 3'b010;
    parameter DECODE_TO_PROCESS = 3'b011;
    parameter DECODE_TO_RAM_WRITE = 3'b100;
    parameter DECODE_NOT_DONE = 3'b111;

    // 常量定义
    parameter NOP_DURATION = 6; // NOP指令空闲6个时钟周期
    
    // 指令处理线网定义
    reg[6:0]    status, status_nxt; // 状态
    reg[2:0]    nop_cnt, nop_cnt_nxt; // NOP指令空闲时钟计数器
    wire[2:0]   nop_cnt_minus1;
    wire[15:0]  program_counter_plus1;
    reg         get_ins_done, get_ins_done_nxt, ram_write_done, ram_write_done_nxt; // 状态完成标志
    reg         read_en_nxt, memory_select_nxt, write_en_nxt;
    reg[15:0]   addr_bus_nxt;
    // CPU内部寄存器
    reg[7:0]    psw, acc, b; // 程序状态字psw，累加器acc，辅助寄存器b
    reg[15:0]   program_counter, program_counter_nxt; // rom程序计数器
    reg[7:0]    addr_register, addr_register_nxt; // ram地址寄存器
    reg[7:0]    ins_register, ins_register_nxt; // 指令寄存器
    reg[7:0]    data_register, data_register_nxt; // 数据寄存器

    // data_bus双向端口设置
    reg[7:0]    data_out;
    wire[7:0]   data_in;
    assign data_bus = (write_en) ? data_out : 8'bz;
    assign data_in = (read_en) ? data_bus : data_in;

    // 计数器
    assign nop_cnt_minus1 = nop_cnt - 1'b1;
    assign program_counter_plus1 = program_counter + 1'b1;

    // 译码器
    wire[2:0]   decoder_next_status; // 下个状态标识
    reg[2:0]    run_phase, run_phase_nxt; // 当前指令所在的执行节点
    wire[2:0]   run_phase_init;
    wire[2:0]   data_from; // 写ram操作数据来源标识
    wire[2:0]   run_phase_minus1;
    wire[7:0]   addr_register_out;
    assign run_phase_minus1 = run_phase - 1;
    
    InsDecoder insdecoder(
        .clk(clk),
        .rst_n(rst_n),
        .instruction(ins_register),
        .run_phase(run_phase),
        .run_phase_init(run_phase_init),
        .psw(psw),
        .data_from(data_from),
        .addr_register_out(addr_register_out),
        .next_status(decoder_next_status)
    );

    // 写ram数据来源
    always @(*) begin
        data_register_nxt = data_register;
        if (write_en) begin
            case (data_from)
                3'b000: begin
                    data_register_nxt = 8'b1111_0000;
                end
                default: begin
                end
            endcase 
        end
    end

    // 状态转移逻辑，包含次态方程和相关线网的处理
    always @(*) begin
        // 状态机控制
        status_nxt = status;
        nop_cnt_nxt = nop_cnt;
        run_phase_nxt = run_phase;
        get_ins_done_nxt = 1'b0;
        ram_write_done_nxt = 1'b0;
        // IO控制
        read_en_nxt = 1'b0;
        write_en_nxt = 1'b0;
        memory_select_nxt = memory_select;
        //内部寄存器
        ins_register_nxt = ins_register;
        addr_bus_nxt = addr_bus;
        program_counter_nxt = program_counter;
        case (1'b1)
            status[GET_INS_INDEX]:begin // 取指，负责把ROM中的数据取出送入ins_register
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
                if (run_phase == 0) run_phase_nxt = run_phase_init;
                case (decoder_next_status)
                    DECODE_TO_NOP: begin
                        status_nxt = NOP;
                    end
                    DECODE_TO_PROCESS: begin
                        status_nxt = PROCESS;
                    end
                    DECODE_TO_RAM_READ: begin
                        status_nxt = RAM_READ;
                    end
                    DECODE_TO_ROM_READ: begin
                        status_nxt = ROM_READ;
                    end
                    DECODE_TO_RAM_WRITE: begin
                        status_nxt = RAM_WRITE;
                    end
                    default: begin
                        status_nxt = status;
                    end
                endcase
            end
            status[RAM_READ_INDEX]: begin
                
            end
            status[ROM_READ_INDEX]: begin
                
            end
            status[PROCESS_INDEX]: begin
                
            end
            status[RAM_WRITE_INDEX]: begin // RAM写操作，负责把data_register中的数据写入RAM
                memory_select_nxt = 1'b1; // 选中ram
                data_out = data_register; // 输出数据
                if (ram_write_done) begin
                    if (run_phase == 1) begin
                        status_nxt = GET_INS; // run_phase为0表示当前指令执行完毕
                    end
                    else begin
                        status_nxt = INS_DECODE; 
                        write_en_nxt = 1'b0;
                        ram_write_done_nxt = 1'b0;
                    end
                    run_phase_nxt = run_phase_minus1;
                end
                else begin
                    ram_write_done_nxt = 1'b1;
                    write_en_nxt = 1'b1;
                    addr_register_nxt = addr_register_out;
                end
            end
            status[NOP_INDEX]: begin // NOP命令空闲
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
            // 状态机控制相关寄存器
            status <= NOP;
            nop_cnt <= NOP_DURATION;
            run_phase <= 3'b0;
            get_ins_done <= 1'b0;
            ram_write_done <= 1'b0;
            // 外部总线读写控制相关寄存器
            read_en <= 1'b0;
            write_en <= 1'b0;
            addr_bus <= 16'b0;
            data_out <= 8'b0;
            memory_select <= 1'b1;
            // 内部寄存器
            ins_register <= 8'b0;
            addr_register <= 8'b0;
            data_register <= 8'b0;
            psw <= 8'b0;
            acc <= 8'b0;
            b <= 8'b0;
            program_counter <= 16'ha845;
        end
        else begin
            // 状态机控制
            status <= status_nxt;
            nop_cnt <= nop_cnt_nxt;
            run_phase <= run_phase_nxt;
            get_ins_done <= get_ins_done_nxt;
            ram_write_done <= ram_write_done_nxt;
            // IO读写
            addr_bus <= addr_bus_nxt;
            read_en <= read_en_nxt;
            write_en <= write_en_nxt;
            memory_select <= memory_select_nxt;
            // 内部寄存器
            addr_register <= addr_register_nxt;
            data_register <= data_register_nxt;
            ins_register <= ins_register_nxt;
            program_counter <= program_counter_nxt;
        end
    end

endmodule