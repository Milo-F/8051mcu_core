`resetall
`timescale 1ns/1ns

module tb_timer;
    reg ;                   clk;
    reg                     rst_n;
    // input 
    reg                     cnt_sig;
    reg                     t_s;
    reg         [3:0]       tmod;
    reg         [7:0]       th;
    reg         [7:0]       tl;
    //output
    wire        [7:0]       th_nxt;
    wire        [7:0]       tl_nxt;
    wire                    t_o;
    // clk generator
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    // reset generator
    initial begin
        rst_n = 1'b1;
        #5 rst_n = 1'b0;
        #15 rst_n = 1'b1;
    end
    Timer Timer_ins (
        .clk(clk),
        .rst_n(rst_n),

        .cnt_sig(cnt_sig),
        .t_s(t_s),
        .tmod(tmod),
        .th(th),
        .tl(tl),

        .th_nxt(th_nxt),
        .tl_nxt(tl_nxt),
        .t_o(t_o)
    );
endmodule
`resetall