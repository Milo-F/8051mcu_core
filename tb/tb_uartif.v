`timescale 10ps/1ps
module tb_uartif;
    reg clk;
    reg rst_n;
    reg rxd_int_reg;
    wire rxd_int_nxt;
    reg rxd;
    reg man_set;
    wire [7:0] r_data;

    // clk
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    
    // reset
    initial begin
        rst_n = 1;
        #10 rst_n = 0;
        #5 rst_n = 1;
    end

    initial begin
        @(posedge clk);
        forever begin // 0011_1010+0
            rxd = 1;
            #64 rxd = 0;
            #32 rxd = 1;
            #64 rxd = 0;
            #32 rxd = 1;
            #96 rxd = 0;
            #64 rxd = 1;
        end
    end
    initial begin
        rxd_int_reg = 0;
        man_set = 1;
        #500 man_set = 0;
        // #128 rxd_int_reg = 1;
        // #64 rxd_int_reg = 0;
    end
    always @(posedge clk) rxd_int_reg <= rxd_int_nxt & man_set;

    UartIf  UartIf_ins (
        .clk_uart(clk),
        .rst_n(rst_n),
        .rxd_int_in(rxd_int_reg),
        .rxd(rxd),
        .r_data(r_data),
        .rxd_int(rxd_int_nxt)
    );
endmodule