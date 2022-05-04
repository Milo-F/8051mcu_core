/*----------------------------------------
 *    File Name: IntArbiter.v
 *    function: Interupt arbiter to orgnize the priority of interupt
 *    author: Milo
 *    Data: 2022-02-24
 *    Version: 1.0
 ----------------------------------------*/

module IntArbiter(
    input                   [7:0]                           IE,
    input                   [7:0]                           TCON,
    input                   [1:0]                           SCON,
    output                  [4:0]                           int_early,
    output                  [7:0]                           TCON_nxt
);
    wire                    [4:0]                           int_tmp;
    assign int_early = int_tmp;
    // int priority
    assign int_tmp[0]    = IE[7] & IE[0] & TCON[1];
    assign int_tmp[1]    = IE[7] & IE[1] & TCON[0] & ~int_tmp[0];
    assign int_tmp[2]    = IE[7] & IE[2] & TCON[3] & ~int_tmp[0] & ~int_tmp[1];
    assign int_tmp[3]    = IE[7] & IE[3] & TCON[2] & ~int_tmp[0] & ~int_tmp[1] & ~int_tmp[2];
    // assign int_tmp[3] = IE[7] & IE[3] & TCON[2] & ~int_tmp[0] & ~int_tmp[1] & ~int_tmp[2];
    assign int_tmp[4]    = IE[7] & IE[4] & (SCON[0]|SCON[1]) & ~int_tmp[0] & ~int_tmp[1] & ~int_tmp[2] & ~int_tmp[3];
    // int0/1 t0/1 interupt flag reset automatically
    assign TCON_nxt[3:0]  = 0;
    assign TCON_nxt[7:4]  = TCON[7:4];
    // assign TCON_nxt[1] = ~(TCON[1] & int_tmp[0]);
    // assign TCON_nxt[0] = ~(TCON[0] & int_tmp[1]);
    // assign TCON_nxt[3] = ~(TCON[3] & int_tmp[2]);
    // assign TCON_nxt[2] = ~(TCON[2] & int_tmp[3]);
endmodule
