/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Mar  1 09:59:09 2022
/////////////////////////////////////////////////////////////


module IntArbiter ( IE, TCON, SCON, int_early, TCON_nxt );
  input [7:0] IE;
  input [7:0] TCON;
  input [1:0] SCON;
  output [4:0] int_early;
  output [7:0] TCON_nxt;
  wire   IE_7, \TCON[7] , \TCON[6] , \TCON[5] , \TCON[4] , n3, n6, n7, n8, n9,
         n10, n11;
  assign TCON_nxt[0] = 1'b0;
  assign TCON_nxt[1] = 1'b0;
  assign TCON_nxt[2] = 1'b0;
  assign TCON_nxt[3] = 1'b0;
  assign IE_7 = IE[7];
  assign TCON_nxt[7] = \TCON[7] ;
  assign \TCON[7]  = TCON[7];
  assign TCON_nxt[6] = \TCON[6] ;
  assign \TCON[6]  = TCON[6];
  assign TCON_nxt[5] = \TCON[5] ;
  assign \TCON[5]  = TCON[5];
  assign TCON_nxt[4] = \TCON[4] ;
  assign \TCON[4]  = TCON[4];

  NOR3BX4 U2 ( .AN(IE[4]), .B(n6), .C(n7), .Y(int_early[4]) );
  INVX4 U3 ( .A(n7), .Y(n3) );
  NAND3X4 U4 ( .A(IE_7), .B(IE[0]), .C(TCON[1]), .Y(n10) );
  NAND3X4 U5 ( .A(IE[2]), .B(n3), .C(TCON[3]), .Y(n8) );
  INVX2 U6 ( .A(n8), .Y(int_early[2]) );
  INVX2 U7 ( .A(n9), .Y(int_early[3]) );
  INVX2 U8 ( .A(n11), .Y(int_early[1]) );
  INVX2 U9 ( .A(n10), .Y(int_early[0]) );
  OAI211X2 U10 ( .A0(SCON[0]), .A1(SCON[1]), .B0(n8), .C0(n9), .Y(n6) );
  NAND4X4 U11 ( .A(TCON[0]), .B(IE[1]), .C(IE_7), .D(n10), .Y(n11) );
  NAND4X4 U12 ( .A(TCON[2]), .B(IE[3]), .C(n3), .D(n8), .Y(n9) );
  NAND3X4 U13 ( .A(n10), .B(n11), .C(IE_7), .Y(n7) );
endmodule


module IntControl ( clk, rst_n, IE, TCON, SCON, interupt, TCON_out );
  input [7:0] IE;
  input [7:0] TCON;
  input [1:0] SCON;
  output [4:0] interupt;
  output [7:0] TCON_out;
  input clk, rst_n;
  wire   N7, N8, N9, N10;
  wire   [7:0] TCON_nxt;
  assign TCON_out[3] = 1'b0;
  assign TCON_out[2] = 1'b0;
  assign TCON_out[1] = 1'b0;
  assign TCON_out[0] = 1'b0;

  IntArbiter IntArbiter_ins ( .IE(IE), .TCON(TCON), .SCON(SCON), .int_early(
        interupt), .TCON_nxt(TCON_nxt) );
  DFFQX2 \TCON_reg_reg[7]  ( .D(N10), .CK(clk), .Q(TCON_out[7]) );
  DFFQX2 \TCON_reg_reg[6]  ( .D(N9), .CK(clk), .Q(TCON_out[6]) );
  DFFQX2 \TCON_reg_reg[5]  ( .D(N8), .CK(clk), .Q(TCON_out[5]) );
  DFFQX2 \TCON_reg_reg[4]  ( .D(N7), .CK(clk), .Q(TCON_out[4]) );
  AND2X2 U11 ( .A(TCON_nxt[4]), .B(rst_n), .Y(N7) );
  AND2X2 U12 ( .A(TCON_nxt[5]), .B(rst_n), .Y(N8) );
  AND2X2 U13 ( .A(rst_n), .B(TCON_nxt[6]), .Y(N9) );
  AND2X2 U14 ( .A(TCON_nxt[7]), .B(rst_n), .Y(N10) );
endmodule

