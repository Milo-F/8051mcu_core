/*----------------------------------------
 *    File Name: IntControl.v
 *    function: Interupt controller, control the timer interupt and outsides interupt and uart interupt
 *    author: Milo
 *    Data: 2022-02-24
 *    Version: 1.0
----------------------------------------*/

module IntControl (
    input                   clk,
    input                   rst_n,
    // input interupt source
    input                   int0,
    input                   int1,
    input                   t0,
    input                   t1,
    input                   uart,
    // output interupt info
    output      [4:0]       interupt
);
    reg         [4:0]       int_early, int_reg;
    wire        [4:0]       int_early_nxt;

    assign interupt = int_reg;

    IntArbiter IntArbiter_ins (
    .int0(int0),
    .int1(int1),
    .t0(t0),
    .t1(t1),
    .uart(uart),
    .int_early(int_early_nxt)
    );
    
    always @(posedge clk) begin
        if (!rst_n) begin
            int_reg <= 0;
        end
        else begin
            int_reg <= int_early;
            int_early <= int_early_nxt;
        end
    end
endmodule