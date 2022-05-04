/*-------------------------------------------------------------------
 Name: CPU
 Function: 8bit总线宽度cpu处理控制指令和实现运算，基于8051指令集，有限状态机实现指令状态转移控制
 Author: Milo
 Data: 2021/09/23
 Version: 1.1
 ---------------------------------------------------------------------*/


module CPU (
    input                                                   clk,             // 振荡时钟12M
    input                                                   rst_n,           // 复位信号，低电平有效
    output                  [7:0]                           data_bus,        // 数据总线
    output      reg         [15:0]                          addr_bus,        // 地址总线
    input                   [4:0]                           interupt,        // 中断控制信号
    output      reg                                         read_en,         // 读数据使能
    output      reg                                         write_en,        // 写数据使能
    output                                                  clk_1M,          // 机器周期
    output                                                  clk_6M,          // 时钟周期
    output      reg                                         memory_select
);
    
    
    //-------------------------------------------------------------------------------------------
    
    
    // 工作周期6M
    
    ClkDiv #(
        .DIV_NUM(2)
    ) clk_6(
        .clk_in(clk),
        .rst_n(rst_n),
        .clk_out(clk_6M)
    );
    // 机器周期1M
    ClkDiv #(
        .DIV_NUM(12)
    ) clk_1(
        .clk_in(clk),
        .rst_n(rst_n),
        .clk_out(clk_1M)
    );
    
    
    // 独热码状态机状态定义
    localparam NOP          = 7'b000_0001; // NOP指令，空闲等待若干个时钟周期
    localparam GET_INS      = 7'b000_0010; // 取指令
    localparam INS_DECODE   = 7'b000_0100; // 译码
    localparam RAM_READ     = 7'b000_1000; // 取ram中的操作数
    localparam ROM_READ     = 7'b001_0000; // 取rom中的操作数
    localparam PROCESS      = 7'b010_0000; // 执行指令
    localparam RAM_WRITE    = 7'b100_0000; // 回写ram
    // localparam ROM_WRITE = 8'b1000_0000;                                        // 回写rom
    
    localparam NOP_INDEX          = 0;
    localparam GET_INS_INDEX      = 1;
    localparam INS_DECODE_INDEX   = 2;
    localparam RAM_READ_INDEX     = 3;
    localparam ROM_READ_INDEX     = 4;
    localparam PROCESS_INDEX      = 5;
    localparam RAM_WRITE_INDEX    = 6;
    // localparam ROM_WRITE_INDEX = 7;
    
    // 译码器跳转标识
    parameter DECODE_TO_NOP       = 3'b000;
    parameter DECODE_TO_RAM_READ  = 3'b001;
    parameter DECODE_TO_ROM_READ  = 3'b010;
    parameter DECODE_TO_PROCESS   = 3'b011;
    parameter DECODE_TO_RAM_WRITE = 3'b100;
    parameter DECODE_TO_GET_INS   = 3'b101;
    parameter DECODE_NOT_DONE     = 3'b111;
    
    // 写ram数据来源
    parameter FROM_A            = 4'b0000;
    parameter FROM_RAM_DATA_REG = 4'b0001;
    parameter FROM_ROM_DATA_REG = 4'b0010;
    parameter FROM_ADDR_OUT     = 4'b0011;
    parameter FROM_PCH          = 4'b0100;
    parameter FROM_PCL          = 4'b0101;
    parameter FROM_B            = 4'b0110;
    parameter FROM_INT_ADDRL    = 4'b1000;
    parameter FROM_INT_ADDRH    = 4'b1001;
    parameter NO_USED           = 4'b0111;
    
    // 常量定义
    parameter NOP_DURATION = 6; // NOP指令空闲6个时钟周期
    
    // 指令处理线网定义
    reg                     [6:0]                           status,status_nxt;    // 状态
    reg                     [2:0]                           nop_cnt,nop_cnt_nxt;    // NOP指令空闲时钟计数器
    wire                    [2:0]                           nop_cnt_minus1;
    wire                    [15:0]                          program_counter_plus1;
    reg                                                     get_ins_done,get_ins_done_nxt,ram_write_done,ram_write_done_nxt;    // 状态完成标志
    reg                                                     ram_read_done,ram_read_done_nxt,rom_read_done,rom_read_done_nxt;
    reg                                                     read_en_nxt,memory_select_nxt,write_en_nxt;
    reg                     [15:0]                          addr_bus_nxt;
    assign nop_cnt_minus1 = nop_cnt - 1'b1;
    // CPU内部寄存器
    reg                     [7:0]                           psw,acc,b,b_nxt,psw_nxt,acc_nxt;    // 程序状态字psw，累加器acc，辅助寄存器b
    reg                     [15:0]                          program_counter,program_counter_nxt;    // rom程序计数器
    reg                     [7:0]                           ins_register,ins_register_nxt;    // 指令寄存器
    reg                     [7:0]                           ram_data_register,ram_data_register_nxt;    // ram数据寄存器
    reg                     [7:0]                           rom_data_register,rom_data_register_nxt;
    assign program_counter_plus1 = program_counter + 1'b1;
    
    // data_bus双向端口设置
    reg                     [7:0]                           data_out,data_out_nxt;
    wire                    [7:0]                           data_in;
    assign data_bus = (write_en) ? data_out : 8'bz;
    assign data_in  = (read_en) ? data_bus : data_in;
    
    // 译码器
    wire                    [2:0]                           decoder_next_status;    // 下个状态标识
    reg                     [3:0]                           run_phase,run_phase_nxt;    // 当前指令所在的执行节点
    wire                    [3:0]                           run_phase_init;    // 指令初始执行需要的步骤数
    wire                    [3:0]                           a_data_from,b_data_from;    // 写ram操作数据来源标识
    wire                    [3:0]                           alu_op;
    wire                    [3:0]                           run_phase_minus1;    // 步骤减一
    wire                    [7:0]                           addr_register_out;    // 译码器输出地址
    wire                    [2:0]                           a_bit_location,b_bit_location;
    wire                                                    bit_en;
    assign run_phase_minus1 = run_phase - 1;
    
    // 中断
    reg                     [15:0]                          int_addr,int_addr_nxt;
    reg                                                     interupt_en,interupt_en_nxt;
    
    
    InsDecoder insdecoder (
        .clk(clk),
        .rst_n(rst_n),
        .instruction(ins_register),
        .run_phase(run_phase),
        .run_phase_init(run_phase_init),
        .psw(psw),
        .ram_data_register(ram_data_register),
        .rom_data_register(rom_data_register),
        .interupt_en(interupt_en),
        .a_data_from(a_data_from),
        .b_data_from(b_data_from),
        .alu_op(alu_op),
        .a_bit_location(a_bit_location),
        .b_bit_location(b_bit_location),
        .bit_en(bit_en),
        .addr_register_out(addr_register_out),
        .next_status(decoder_next_status)
    );
    
    
    // 运算处理相关定义
    reg                     [7:0]                           pro_psw_in;
    reg                     [7:0]                           pro_a,pro_b;
    wire                    [7:0]                           pro_ans,pro_psw_out;
    // 运算处理
    
    
    Process pro(
        .psw_in(pro_psw_in),
        .a_data(pro_a),
        .b_data(pro_b),
        .a_bit_location(a_bit_location),
        .b_bit_location(b_bit_location),
        .bit_en(bit_en),
        .alu_op(alu_op),
        .instruction(ins_register),
        .ans(pro_ans),
        .psw_out(pro_psw_out)
    );
    
    
    // 中断程序入口地址选择
    always @(*) begin
        int_addr_nxt    = int_addr;
        interupt_en_nxt = interupt_en;
        if (interupt != 0) begin
            interupt_en_nxt = ~interupt_en;
        end
            case (1'b1)
                interupt[0]: int_addr_nxt = 16'h0003; // INT0中断
                interupt[1]: int_addr_nxt = 16'h000b; // T0
                interupt[2]: int_addr_nxt = 16'h0013; // INT1
                interupt[3]: int_addr_nxt = 16'h001B; // T1
                interupt[4]: int_addr_nxt = 16'h0023; // urt
                default: ;
            endcase
    end
    // 中断次态传递
    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            interupt_en <= 1'b0;
            int_addr    <= 16'b0;
        end
        else begin
            interupt_en <= interupt_en_nxt;
            int_addr    <= int_addr_nxt;
        end
    end
    
    // 状态转移逻辑，包含次态方程和相关线网的处理
    always @(*) begin
        // 状态机控制
        status_nxt         = status;
        nop_cnt_nxt        = nop_cnt;
        run_phase_nxt      = run_phase;
        get_ins_done_nxt   = 1'b0;
        ram_write_done_nxt = 1'b0;
        ram_read_done_nxt  = 1'b0;
        rom_read_done_nxt  = 1'b0;
        // IO控制
        read_en_nxt       = 1'b0;
        write_en_nxt      = 1'b0;
        data_out_nxt      = data_out;
        memory_select_nxt = memory_select;
        addr_bus_nxt      = addr_bus;
        // process运算相关
        pro_psw_in = psw;
        pro_a      = 8'b0;
        pro_b      = 8'b0;
        //内部寄存器
        acc_nxt               = acc;
        psw_nxt               = psw;
        b_nxt                 = b;
        ins_register_nxt      = ins_register;
        program_counter_nxt   = program_counter;
        ram_data_register_nxt = ram_data_register;
        rom_data_register_nxt = rom_data_register;
        case (1'b1)
            status[GET_INS_INDEX]:begin // 取指，负责把ROM中的数据取出送入ins_register
                run_phase_nxt = 0;
                if (interupt_en) begin               // 取指之前判断是否响应中断
                    // interupt_en_nxt = 1'b0;
                    ins_register_nxt   = 8'b1111_0000; // 利用长跳转指令跳转到中断程序入口
                    status_nxt         = INS_DECODE;
                end
                else begin
                    memory_select_nxt = 1'b0; // 选中rom
                    ins_register_nxt  = data_in;
                    if (get_ins_done) begin // 当取指完成转移到下个状态
                        status_nxt          = INS_DECODE;
                        read_en_nxt         = 1'b0;
                        get_ins_done_nxt    = 1'b0;
                        program_counter_nxt = program_counter_plus1; // 完成取指程序计数器+1
                    end
                    else begin
                        addr_bus_nxt     = program_counter;
                        read_en_nxt      = 1'b1;
                        get_ins_done_nxt = 1'b1;
                    end
                end
            end
            status[INS_DECODE_INDEX]: begin // 译码，根据指令输出控制信号
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
                    DECODE_TO_GET_INS: begin
                        status_nxt = GET_INS;
                    end
                    default: begin
                        status_nxt = status;
                    end
                endcase
            end
            status[RAM_READ_INDEX]: begin // RAM读取状态，根据译码获得的ram地址读取ram
                memory_select_nxt = 1'b1;   // 选中ram
                case (addr_register_out)
                    `acc: ram_data_register_nxt    = acc;
                    `b: ram_data_register_nxt      = b;
                    `psw: ram_data_register_nxt    = psw;
                    default: ram_data_register_nxt = data_in;
                endcase
                if (ram_read_done) begin
                    if (run_phase == 1) begin
                        status_nxt = GET_INS; // run_phase为0表示当前指令执行完毕
                    end
                    else begin
                        status_nxt        = INS_DECODE; // 回译码器取下一个状态
                        read_en_nxt       = 1'b0;
                        ram_read_done_nxt = 1'b0;
                    end
                    run_phase_nxt = run_phase_minus1; // 执行步骤减一
                end
                else begin
                    ram_read_done_nxt = 1'b1;
                    read_en_nxt       = 1'b1;
                    addr_bus_nxt[7:0] = addr_register_out;
                end
            end
            status[ROM_READ_INDEX]: begin      // ROM读取
                memory_select_nxt     = 1'b0;    // 选中rom
                rom_data_register_nxt = data_in; // 输出数据
                if (rom_read_done) begin
                    if (run_phase == 1) begin
                        status_nxt = GET_INS; // run_phase为0表示当前指令执行完毕
                    end
                    else begin
                        status_nxt        = INS_DECODE; // 回译码器取下一个状态
                        read_en_nxt       = 1'b0;
                        rom_read_done_nxt = 1'b0;
                    end
                    run_phase_nxt       = run_phase_minus1;      // 执行节点减一
                    program_counter_nxt = program_counter_plus1; // 程序计数器+1
                end
                else begin
                    rom_read_done_nxt = 1'b1;
                    read_en_nxt       = 1'b1;
                    addr_bus_nxt      = program_counter;
                end
            end
            status[PROCESS_INDEX]: begin // 运算处理，通过ALU进行算数/逻辑运算的处理与赋值
                run_phase_nxt = run_phase_minus1;
                if (run_phase == 1) begin
                    status_nxt = GET_INS;
                end
                else begin
                    status_nxt = INS_DECODE;
                end
                pro_psw_in = (a_data_from == FROM_A) ? psw : 8'b0;
                case (a_data_from)
                    FROM_A: begin
                        pro_a   = acc;
                        acc_nxt = pro_ans;
                        psw_nxt = {pro_psw_out[7:1], acc_nxt[0]^acc_nxt[1]^acc_nxt[2]^acc_nxt[3]^acc_nxt[4]^acc_nxt[5]^acc_nxt[6]^acc_nxt[7]}; // 对A操作时更新PSW
                    end
                    FROM_ROM_DATA_REG: begin
                        pro_a                 = rom_data_register;
                        rom_data_register_nxt = pro_ans;
                    end
                    FROM_RAM_DATA_REG: begin
                        pro_a                 = ram_data_register;
                        ram_data_register_nxt = pro_ans;
                    end
                    FROM_ADDR_OUT: begin
                        pro_a = addr_register_out;
                    end
                    FROM_PCL: begin
                        pro_a               = program_counter[7:0];
                        program_counter_nxt = {pro_psw_out[7] ? (program_counter[15:8] + 8'b1) : program_counter[15:8], pro_ans};
                    end
                    FROM_PCH: begin
                        pro_a               = program_counter[15:8];
                        program_counter_nxt = {pro_ans, program_counter[7:0]};
                    end
                    FROM_B: begin
                        pro_a = b;
                        b_nxt = pro_ans;
                    end
                    NO_USED: pro_a = 8'b0;
                    default: ;
                endcase
                case (b_data_from)
                    FROM_A: pro_b            = acc;
                    FROM_ROM_DATA_REG: pro_b = rom_data_register;
                    FROM_RAM_DATA_REG: pro_b = ram_data_register;
                    FROM_ADDR_OUT: pro_b     = addr_register_out;
                    FROM_PCH: pro_b          = program_counter[15:8];
                    FROM_PCL: pro_b          = program_counter[7:0];
                    FROM_B: pro_b            = b;
                    FROM_INT_ADDRL: pro_b    = int_addr[7:0];
                    FROM_INT_ADDRH: pro_b    = int_addr[15:8];
                    NO_USED: pro_b           = 8'b0;
                    default: ;
                endcase
            end
            status[RAM_WRITE_INDEX]: begin // RAM写操作，负责把ram_data_register中的数据写入RAM
                memory_select_nxt = 1'b1;    // 选中ram
                // 选择数据来源
                case (a_data_from)
                    FROM_A: data_out_nxt            = acc;
                    FROM_RAM_DATA_REG: data_out_nxt = ram_data_register;
                    FROM_ROM_DATA_REG: data_out_nxt = rom_data_register;
                    FROM_ADDR_OUT: data_out_nxt     = addr_register_out;
                    FROM_PCL: data_out_nxt          = program_counter[7:0];
                    FROM_PCH: data_out_nxt          = program_counter[15:8];
                    FROM_B: data_out_nxt            = b;
                    NO_USED: data_out_nxt           = 8'b0;
                    // TODO
                    default: ;
                endcase
                if (ram_write_done) begin
                    if (run_phase == 1) begin
                        status_nxt = GET_INS; // run_phase为0表示当前指令执行完毕
                    end
                    else begin
                        status_nxt         = INS_DECODE; // 回译码器取下一个状态
                        write_en_nxt       = 1'b0;
                        ram_write_done_nxt = 1'b0;
                    end
                    run_phase_nxt = run_phase_minus1; // 执行步骤减一
                end
                else begin
                    ram_write_done_nxt = 1'b1;
                    write_en_nxt       = 1'b1;
                    addr_bus_nxt[7:0]  = addr_register_out;
                    case (addr_register_out)
                        `acc: acc_nxt = data_out_nxt;
                        `b: b_nxt     = data_out_nxt;
                        `psw: psw_nxt = data_out_nxt;
                        default: ;
                    endcase
                end
            end
            status[NOP_INDEX]: begin // NOP命令空闲
                if (nop_cnt == 0) begin
                    status_nxt  = GET_INS;      // 空闲6个时钟周期之后，跳回取指状态
                    nop_cnt_nxt = NOP_DURATION; // 空闲计数器复位
                end
                else begin
                    nop_cnt_nxt = nop_cnt_minus1; // 空闲时钟-1
                end
            end
            default: ;
        endcase
    end
    
    // 次态传递
    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            // 状态机控制相关寄存器
            status         <= NOP;
            nop_cnt        <= NOP_DURATION;
            run_phase      <= 3'b0;
            get_ins_done   <= 1'b0;
            ram_write_done <= 1'b0;
            ram_read_done  <= 1'b0;
            rom_read_done  <= 1'b0;
            // 外部总线读写控制相关寄存器
            read_en       <= 1'b0;
            write_en      <= 1'b0;
            addr_bus      <= 16'b0;
            data_out      <= 8'b0;
            memory_select <= 1'b1;
            // 内部寄存器
            ins_register      <= 8'b0;
            ram_data_register <= 8'b0;
            rom_data_register <= 8'b0;
            psw               <= 8'b0;
            acc               <= 8'b0;
            b                 <= 8'b0;
            program_counter   <= 16'h0;
        end
        else begin
            // 状态机控制
            status         <= status_nxt;
            nop_cnt        <= nop_cnt_nxt;
            run_phase      <= run_phase_nxt;
            get_ins_done   <= get_ins_done_nxt;
            ram_write_done <= ram_write_done_nxt;
            ram_read_done  <= ram_read_done_nxt;
            rom_read_done  <= rom_read_done_nxt;
            // IO读写
            addr_bus      <= addr_bus_nxt;
            read_en       <= read_en_nxt;
            write_en      <= write_en_nxt;
            data_out      <= data_out_nxt;
            memory_select <= memory_select_nxt;
            // 内部寄存器
            acc               <= acc_nxt;
            psw               <= psw_nxt;
            b                 <= b_nxt;
            ram_data_register <= ram_data_register_nxt;
            rom_data_register <= rom_data_register_nxt;
            ins_register      <= ins_register_nxt;
            program_counter   <= program_counter_nxt;
        end
    end
    
endmodule
