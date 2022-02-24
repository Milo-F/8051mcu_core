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
    input       [7:0]       IE,
    input       [7:0]       TCON,
    input       [1:0]       SCON,
    // output interupt info
    output      [4:0]       interupt,
    output      [7:0]       TCON_out
);

    reg         [7:0]       TCON_reg;
    reg         [1:0]       SCON_reg;
    wire        [7:0]       TCON_nxt;

    assign TCON_out = TCON_reg;

    IntArbiter IntArbiter_ins (
        .IE(IE),
        .TCON(TCON),
        .SCON(SCON),
        .int_early(interupt),
        .TCON_nxt(TCON_nxt)
    );
    
    always @(posedge clk) begin
        if (!rst_n) begin
            TCON_reg <= 0;
        end
        else begin
            TCON_reg <= TCON_nxt;
        end
    end
endmodule