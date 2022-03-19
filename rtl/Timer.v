/*----------------------------------------
 *    File Name: Timer.v
 *    function: Counter and Timer, in counter mode detect the pin's pulse change and timer mode have three work type: 16bit timer,13bit timer, reload automatic timer.
 *    author: Milo
 *    Data: 2022-02-25
 *    Version: 1.0
 ----------------------------------------*/

module Timer(
    input                                                   clk,
    input                                                   rst_n,
    input                                                   cnt_sig, // 计数信号输入
    input                                                   t_s,     // 定时开始标识
    input                   [2:0]                           tmod,    // 模式控制器
    input                   [7:0]                           th,      // 高8位
    input                   [7:0]                           tl,      // 低8位
    output      reg         [7:0]                           th_nxt,
    output      reg         [7:0]                           tl_nxt,
    output                                                  t_o
);
    // counter
    wire         [7:0]       cnt_th_nxt, cnt_tl_nxt;
    reg                     cnt_sig_early;
    wire                    cnt_sig_early_nxt;
    assign cnt_tl_nxt = t_s & (~cnt_sig & cnt_sig_early) ? tl - 1 : tl;
    assign cnt_th_nxt = (t_s == 1'b1 && tl == 0 && th != 0 && (~cnt_sig & cnt_sig_early)) ? th - 1 : th;
    // 16bit timer
    wire        [7:0]       m0_th_nxt, m0_tl_nxt;
    assign m0_tl_nxt = t_s ? (tl - 1'b1) : tl;
    assign m0_th_nxt = (t_s == 1'b1 && tl == 0 && th != 0) ? th - 1 : th;
    // 13bit timer
    wire        [7:0]       m1_th_nxt;
    wire        [4:0]       m1_tl_nxt;
    assign m1_tl_nxt = t_s ? (tl - 1'b1) : tl;
    assign m1_th_nxt = (t_s == 1'b1 && tl[4:0] == 5'b0 && th != 0) ? th - 1 : th;
    // reload timer
    wire        [7:0]       m2_tl_nxt;
    reg         [7:0]       ini_val;
    wire        [7:0]       ini_val_nxt;
    reg                     t_s_early;
    wire                    t_s_early_nxt;
    assign m2_tl_nxt         = t_s ? ((tl == 0) ? ini_val : tl - 1) : tl;
    assign t_s_early_nxt     = t_s;
    assign ini_val_nxt       = (t_s & ~t_s_early) ? tl : ini_val;
    assign cnt_sig_early_nxt = cnt_sig;
    // mode 2 save initial value
    always @(posedge clk) begin
        if (!rst_n) begin
            t_s_early     <= 0;
            ini_val       <= 0;
            cnt_sig_early <= 0;
        end
        else begin
            t_s_early     <= t_s_early_nxt;
            ini_val       <= ini_val_nxt;
            cnt_sig_early <= cnt_sig_early_nxt;
        end
    end
    // timer run
    always @* begin
        if (!rst_n) begin
            th_nxt = th;
            tl_nxt = tl;
        end
        else begin
            if (tmod[2]) begin // counter
                tl_nxt = cnt_tl_nxt;
                th_nxt = cnt_th_nxt;
            end
            else begin // timer
                case (tmod[1:0])
                    2'b00: begin // m0
                        tl_nxt = m0_tl_nxt;
                        th_nxt = m0_th_nxt;
                    end
                    2'b01: begin // m1
                        tl_nxt = m1_tl_nxt;
                        th_nxt = m1_th_nxt;
                    end
                    2'b10: begin // m2
                        tl_nxt = m2_tl_nxt;
                    end
                    default:;
                endcase
            end
        end
    end
    // overflow interupt
    assign t_o = ~(tmod[1] | tmod[0]) ? ((th == 0) & (tl == 0)) : (tmod[0] ? ((th == 0) & (tl[4:0] == 0)) : (tl == 0));
endmodule
