`timescale 10ps/1ps

module tb_int_ctl;
    reg                     clk;
    reg                     rst_n;
    // drive signal
    reg         [7:0]       IE;
    reg         [7:0]       TCON;
    reg         [1:0]       SCON;
    // out signal
    wire        [4:0]       interupt;
    wire        [7:0]       TCON_out;
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
    // enable interupt
    initial begin
        repeat(20) #({$random}%10+5) IE = {$random}%256;
    end
    // set interupt flag
    initial begin
        repeat(20) begin
            #({$random}%10+5) TCON = {$random}%32;
            SCON = {$random}%4;
        end
    end
    IntControl  IntControl_ins (
        .clk(clk),
        .rst_n(rst_n),

        .IE(IE),
        .TCON(TCON),
        .SCON(SCON),

        .interupt(interupt),
        .TCON_out(TCON_out)
    );
endmodule