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
    inout   [7:0]       data_bus,   // 数据总线，16位寻址时用作高八位
    output  reg[7:0]    addr_bus,    // 地址总线，以及16位寻址中的低八位
    input               EA,         // 内/外部程序存储器选择使能，1：内部；0：外部
    input   [1:0]       interupt,   // 中断控制信号
    input   [1:0]       timing,     // 计时器中断控制信号
    output  reg         read_en,    // 读数据使能
    output  reg         write_en,   // 写数据使能
    output              clk_1M,     // 机器周期
    output              clk_6M,    // 时钟周期
    output              ALE,        // 输出锁存控制信号
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
    // ALE信号产生
    ALEGen ale(
        .clk(clk),
        .rst_n(rst_n),
        .ALE(ALE)
    );
    //--------------------------------------------------------------------------------------------

    /**********************************************指令处理***************************************/
    // 状态机状态定义
    localparam NOP = 8'b0000_0001; // NOP指令，空闲等待若干个时钟周期
    localparam GET_INS = 8'b0000_0010; // 取指令
    localparam INS_DECODE = 8'b0000_0100; // 译码
    localparam RAM_READ = 8'b0000_1000; // 取ram中的操作数
    localparam ROM_READ = 8'b0001_0000; // 取rom中的操作数
    localparam PROCESS = 8'b0010_0000; // 执行指令
    localparam RAM_WRITE = 8'b0100_0000; // 回写ram
    localparam ROM_WRITE = 8'b1000_0000; // 回写rom

    // 常量定义
    parameter NOP_DURATION = 6; // NOP指令空闲6个时钟周期
    
    // 指令处理线网定义
    reg[7:0]    status, status_nxt; // 状态
    reg[2:0]    nop_cnt, nop_cnt_nxt; // NOP指令空闲时钟计数器
    wire[2:0]   nop_cnt_minus1;

    // 计数器
    assign nop_cnt_minus1 = nop_cnt - 1;

    // 状态转移逻辑，包含次态方程和相关线网的处理
    always @(*) begin
        status_nxt = status;
        nop_cnt_nxt = nop_cnt;
        case (status)
            GET_INS:begin
                
            end 
            INS_DECODE: begin
                
            end
            RAM_READ: begin
                
            end
            ROM_READ: begin
                
            end
            PROCESS: begin
                
            end
            RAM_WRITE: begin
                
            end
            ROM_WRITE: begin
                
            end
            NOP: begin
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

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            status <= 8'b0;
            nop_cnt <= NOP_DURATION;
        end
        else begin
            status <= status_nxt;
            nop_cnt <= nop_cnt_nxt;
        end
    end









    wire[7:0]   data_in;
    reg[7:0]    data_out;
    wire        read_en_nxt, write_en_nxt;


    // io端口读写控制
    assign write_en_nxt = ~read_en_nxt;
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

    // 取指任务/取数任务
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
    wire [4:0] alu_op;
    wire [1:0] process_type;

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
        .ID_ready(ID_ready),
        .alu_en(alu_en),
        .alu_op(alu_op),
        .process_type(process_type)
    );

    wire [7:0] psw_nxt;
    wire [7:0] accumulator_nxt;
    wire pro_ready;
    // 处理指令
    ProcessIns pro_ins(
        .clk(clk),
        .rst_n(rst_n),
        .process_type(process_type),
        .ID_ready(ID_ready),
        .alu_en(alu_en),
        .alu_op(alu_op),
        .acc(accumulator),
        .b(temp_register),
        .psw(psw),
        .psw_out(psw_nxt),
        .ans(accumulator_nxt),
        .pro_ready(pro_ready)
    );
    
    always @(posedge clk) begin
        accumulator <= accumulator_nxt;
        psw <= psw_nxt;
    end

endmodule