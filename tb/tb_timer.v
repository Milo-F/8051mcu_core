// `resetall
`timescale 1ns/1ns
// `define DEBUG 1
module tb_timer();
    reg                     clk;
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
        clk            = 0;
        forever #1 clk = ~clk;
    end
    // reset generator
    initial begin
        rst_n     = 1'b1;
        #5 rst_n  = 1'b0;
        #15 rst_n = 1'b1;
    end
    // function test
    `ifdef DEBUG
    string test_type;
    initial begin
        if ($value$plusargs("test_type = %s", test_type)) begin
            $display(test_type);
        end
        else $display(test_type);
    end
    `else
    // random input test
    initial begin
        // tmod            = 4'b1 << {$random}%4;
        tmod               = 0;
        cnt_sig            = 0;
        forever #2 cnt_sig = ~cnt_sig;
        // t_s             = 0;
    end
    `endif
    
    always @* begin
        t_s = ~t_o;
    end
    
    always @(posedge clk) begin
        if (!rst_n) begin
            // th       <= {$random}%2;
            // tl       <= {$random}%256;
            // {th, tl} <= 'o500;
            th          <= 0;
            tl          <= 'd200;
        end
        else begin
            th <= th_nxt;
            tl <= tl_nxt;
        end
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
    // `resetall
