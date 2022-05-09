/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sat May  7 18:30:32 2022
/////////////////////////////////////////////////////////////


module bin2gray_BIT_WIDTH5_0 ( bin_data, gray_data );
  input [4:0] bin_data;
  output [4:0] gray_data;
  wire   \bin_data[4] ;
  assign gray_data[4] = \bin_data[4] ;
  assign \bin_data[4]  = bin_data[4];

  XOR2X1 U1 ( .A(\bin_data[4] ), .B(bin_data[3]), .Y(gray_data[3]) );
  XOR2X1 U2 ( .A(bin_data[2]), .B(bin_data[1]), .Y(gray_data[1]) );
  XOR2X1 U3 ( .A(bin_data[3]), .B(bin_data[2]), .Y(gray_data[2]) );
  XOR2X1 U4 ( .A(bin_data[1]), .B(bin_data[0]), .Y(gray_data[0]) );
endmodule


module gray2bin_BIT_WIDTH5_0 ( gray_data, bin_data );
  input [4:0] gray_data;
  output [4:0] bin_data;
  wire   \gray_data[4] ;
  assign bin_data[4] = \gray_data[4] ;
  assign \gray_data[4]  = gray_data[4];

  CLKXOR2X2 U1 ( .A(bin_data[2]), .B(gray_data[1]), .Y(bin_data[1]) );
  CLKXOR2X2 U2 ( .A(bin_data[3]), .B(gray_data[2]), .Y(bin_data[2]) );
  CLKXOR2X2 U3 ( .A(\gray_data[4] ), .B(gray_data[3]), .Y(bin_data[3]) );
  XOR2X1 U4 ( .A(gray_data[0]), .B(bin_data[1]), .Y(bin_data[0]) );
endmodule


module bin2gray_BIT_WIDTH5_1 ( bin_data, gray_data );
  input [4:0] bin_data;
  output [4:0] gray_data;
  wire   \bin_data[4] ;
  assign gray_data[4] = \bin_data[4] ;
  assign \bin_data[4]  = bin_data[4];

  XOR2X1 U1 ( .A(bin_data[2]), .B(bin_data[1]), .Y(gray_data[1]) );
  XOR2X1 U2 ( .A(bin_data[1]), .B(bin_data[0]), .Y(gray_data[0]) );
  XOR2X1 U3 ( .A(bin_data[3]), .B(bin_data[2]), .Y(gray_data[2]) );
  XOR2X1 U4 ( .A(\bin_data[4] ), .B(bin_data[3]), .Y(gray_data[3]) );
endmodule


module gray2bin_BIT_WIDTH5_1 ( gray_data, bin_data );
  input [4:0] gray_data;
  output [4:0] bin_data;
  wire   \gray_data[4] ;
  assign bin_data[4] = \gray_data[4] ;
  assign \gray_data[4]  = gray_data[4];

  CLKXOR2X2 U1 ( .A(bin_data[2]), .B(gray_data[1]), .Y(bin_data[1]) );
  CLKXOR2X2 U2 ( .A(bin_data[3]), .B(gray_data[2]), .Y(bin_data[2]) );
  CLKXOR2X2 U3 ( .A(\gray_data[4] ), .B(gray_data[3]), .Y(bin_data[3]) );
  XOR2X1 U4 ( .A(gray_data[0]), .B(bin_data[1]), .Y(bin_data[0]) );
endmodule


module fifo_ram_DATA_WIDTH8_RAM_DEPTH16_ADDR_WIDTH4 ( w_clk, r_clk, rst_n, 
        r_en, r_addr, r_data, w_en, w_addr, w_data );
  input [3:0] r_addr;
  output [7:0] r_data;
  input [3:0] w_addr;
  input [7:0] w_data;
  input w_clk, r_clk, rst_n, r_en, w_en;
  wire   N11, N12, N13, N14, \mem[15][7] , \mem[15][6] , \mem[15][5] ,
         \mem[15][4] , \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] ,
         \mem[14][7] , \mem[14][6] , \mem[14][5] , \mem[14][4] , \mem[14][3] ,
         \mem[14][2] , \mem[14][1] , \mem[14][0] , \mem[13][7] , \mem[13][6] ,
         \mem[13][5] , \mem[13][4] , \mem[13][3] , \mem[13][2] , \mem[13][1] ,
         \mem[13][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] , \mem[12][4] ,
         \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] , \mem[11][7] ,
         \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] ,
         \mem[11][1] , \mem[11][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] ,
         \mem[10][4] , \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] ,
         \mem[9][7] , \mem[9][6] , \mem[9][5] , \mem[9][4] , \mem[9][3] ,
         \mem[9][2] , \mem[9][1] , \mem[9][0] , \mem[8][7] , \mem[8][6] ,
         \mem[8][5] , \mem[8][4] , \mem[8][3] , \mem[8][2] , \mem[8][1] ,
         \mem[8][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] ,
         \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] ,
         \mem[3][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] ,
         \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , N26,
         N27, N28, N29, N30, N31, N32, N33, N34, n145, n146, n147, n148, n149,
         n150, n151, n152, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n188, n201, n214, n227, n240, n253, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350;
  assign N11 = r_addr[0];
  assign N12 = r_addr[1];
  assign N13 = r_addr[2];
  assign N14 = r_addr[3];

  EDFFX2 \mem_reg[8][3]  ( .D(n293), .E(n297), .CK(w_clk), .Q(\mem[8][3] ) );
  EDFFX2 \mem_reg[8][2]  ( .D(n287), .E(n297), .CK(w_clk), .Q(\mem[8][2] ) );
  EDFFX2 \mem_reg[8][1]  ( .D(n284), .E(n297), .CK(w_clk), .Q(\mem[8][1] ) );
  EDFFX2 \mem_reg[8][0]  ( .D(n296), .E(n297), .CK(w_clk), .Q(\mem[8][0] ) );
  EDFFX2 \mem_reg[10][4]  ( .D(n290), .E(n301), .CK(w_clk), .Q(\mem[10][4] )
         );
  EDFFX2 \mem_reg[8][4]  ( .D(n290), .E(n297), .CK(w_clk), .Q(\mem[8][4] ) );
  EDFFX2 \mem_reg[3][4]  ( .D(n290), .E(n307), .CK(w_clk), .Q(\mem[3][4] ) );
  EDFFX2 \mem_reg[2][4]  ( .D(n289), .E(n304), .CK(w_clk), .Q(\mem[2][4] ) );
  EDFFX2 \mem_reg[1][4]  ( .D(n289), .E(n308), .CK(w_clk), .Q(\mem[1][4] ) );
  EDFFX2 \mem_reg[0][4]  ( .D(n289), .E(n298), .CK(w_clk), .Q(\mem[0][4] ) );
  EDFFX2 \mem_reg[11][0]  ( .D(n296), .E(n311), .CK(w_clk), .Q(\mem[11][0] )
         );
  EDFFX2 \mem_reg[10][0]  ( .D(n296), .E(n301), .CK(w_clk), .Q(\mem[10][0] )
         );
  EDFFX2 \mem_reg[9][0]  ( .D(n296), .E(n312), .CK(w_clk), .Q(\mem[9][0] ) );
  EDFFX2 \mem_reg[3][0]  ( .D(n295), .E(n307), .CK(w_clk), .Q(\mem[3][0] ) );
  EDFFX2 \mem_reg[2][0]  ( .D(n295), .E(n304), .CK(w_clk), .Q(\mem[2][0] ) );
  EDFFX2 \mem_reg[1][0]  ( .D(n295), .E(n308), .CK(w_clk), .Q(\mem[1][0] ) );
  EDFFX2 \mem_reg[0][0]  ( .D(n295), .E(n298), .CK(w_clk), .Q(\mem[0][0] ) );
  EDFFX2 \mem_reg[10][1]  ( .D(n284), .E(n301), .CK(w_clk), .Q(\mem[10][1] )
         );
  EDFFX2 \mem_reg[3][1]  ( .D(n284), .E(n307), .CK(w_clk), .Q(\mem[3][1] ) );
  EDFFX2 \mem_reg[2][1]  ( .D(n283), .E(n304), .CK(w_clk), .Q(\mem[2][1] ) );
  EDFFX2 \mem_reg[1][1]  ( .D(n283), .E(n308), .CK(w_clk), .Q(\mem[1][1] ) );
  EDFFX2 \mem_reg[0][1]  ( .D(n283), .E(n298), .CK(w_clk), .Q(\mem[0][1] ) );
  EDFFX2 \mem_reg[11][2]  ( .D(n286), .E(n311), .CK(w_clk), .Q(\mem[11][2] )
         );
  EDFFX2 \mem_reg[10][2]  ( .D(n287), .E(n301), .CK(w_clk), .Q(\mem[10][2] )
         );
  EDFFX2 \mem_reg[9][2]  ( .D(n287), .E(n312), .CK(w_clk), .Q(\mem[9][2] ) );
  EDFFX2 \mem_reg[3][2]  ( .D(n287), .E(n307), .CK(w_clk), .Q(\mem[3][2] ) );
  EDFFX2 \mem_reg[2][2]  ( .D(n286), .E(n304), .CK(w_clk), .Q(\mem[2][2] ) );
  EDFFX2 \mem_reg[1][2]  ( .D(n286), .E(n308), .CK(w_clk), .Q(\mem[1][2] ) );
  EDFFX2 \mem_reg[0][2]  ( .D(n286), .E(n298), .CK(w_clk), .Q(\mem[0][2] ) );
  EDFFX2 \mem_reg[11][3]  ( .D(n292), .E(n311), .CK(w_clk), .Q(\mem[11][3] )
         );
  EDFFX2 \mem_reg[10][3]  ( .D(n293), .E(n301), .CK(w_clk), .Q(\mem[10][3] )
         );
  EDFFX2 \mem_reg[9][3]  ( .D(n293), .E(n312), .CK(w_clk), .Q(\mem[9][3] ) );
  EDFFX2 \mem_reg[3][3]  ( .D(n293), .E(n307), .CK(w_clk), .Q(\mem[3][3] ) );
  EDFFX2 \mem_reg[2][3]  ( .D(n292), .E(n304), .CK(w_clk), .Q(\mem[2][3] ) );
  EDFFX2 \mem_reg[1][3]  ( .D(n292), .E(n308), .CK(w_clk), .Q(\mem[1][3] ) );
  EDFFX2 \mem_reg[0][3]  ( .D(n292), .E(n298), .CK(w_clk), .Q(\mem[0][3] ) );
  EDFFX2 \mem_reg[11][4]  ( .D(n289), .E(n311), .CK(w_clk), .Q(\mem[11][4] )
         );
  EDFFX2 \mem_reg[11][1]  ( .D(n283), .E(n311), .CK(w_clk), .Q(\mem[11][1] )
         );
  EDFFX2 \mem_reg[9][4]  ( .D(n290), .E(n312), .CK(w_clk), .Q(\mem[9][4] ) );
  EDFFX2 \mem_reg[9][1]  ( .D(n284), .E(n312), .CK(w_clk), .Q(\mem[9][1] ) );
  EDFFX2 \mem_reg[15][4]  ( .D(n289), .E(n299), .CK(w_clk), .Q(\mem[15][4] )
         );
  EDFFX2 \mem_reg[14][4]  ( .D(n289), .E(n309), .CK(w_clk), .Q(\mem[14][4] )
         );
  EDFFX2 \mem_reg[13][4]  ( .D(n289), .E(n310), .CK(w_clk), .Q(\mem[13][4] )
         );
  EDFFX2 \mem_reg[12][4]  ( .D(n289), .E(n302), .CK(w_clk), .Q(\mem[12][4] )
         );
  EDFFX2 \mem_reg[7][4]  ( .D(n290), .E(n303), .CK(w_clk), .Q(\mem[7][4] ) );
  EDFFX2 \mem_reg[6][4]  ( .D(n290), .E(n305), .CK(w_clk), .Q(\mem[6][4] ) );
  EDFFX2 \mem_reg[5][4]  ( .D(n290), .E(n306), .CK(w_clk), .Q(\mem[5][4] ) );
  EDFFX2 \mem_reg[4][4]  ( .D(n290), .E(n300), .CK(w_clk), .Q(\mem[4][4] ) );
  EDFFX2 \mem_reg[15][0]  ( .D(n295), .E(n299), .CK(w_clk), .Q(\mem[15][0] )
         );
  EDFFX2 \mem_reg[14][0]  ( .D(n295), .E(n309), .CK(w_clk), .Q(\mem[14][0] )
         );
  EDFFX2 \mem_reg[13][0]  ( .D(n295), .E(n310), .CK(w_clk), .Q(\mem[13][0] )
         );
  EDFFX2 \mem_reg[12][0]  ( .D(n295), .E(n302), .CK(w_clk), .Q(\mem[12][0] )
         );
  EDFFX2 \mem_reg[7][0]  ( .D(n296), .E(n303), .CK(w_clk), .Q(\mem[7][0] ) );
  EDFFX2 \mem_reg[6][0]  ( .D(n296), .E(n305), .CK(w_clk), .Q(\mem[6][0] ) );
  EDFFX2 \mem_reg[4][0]  ( .D(n296), .E(n300), .CK(w_clk), .Q(\mem[4][0] ) );
  EDFFX2 \mem_reg[14][1]  ( .D(n283), .E(n309), .CK(w_clk), .Q(\mem[14][1] )
         );
  EDFFX2 \mem_reg[12][1]  ( .D(n283), .E(n302), .CK(w_clk), .Q(\mem[12][1] )
         );
  EDFFX2 \mem_reg[7][1]  ( .D(n284), .E(n303), .CK(w_clk), .Q(\mem[7][1] ) );
  EDFFX2 \mem_reg[6][1]  ( .D(n284), .E(n305), .CK(w_clk), .Q(\mem[6][1] ) );
  EDFFX2 \mem_reg[5][1]  ( .D(n284), .E(n306), .CK(w_clk), .Q(\mem[5][1] ) );
  EDFFX2 \mem_reg[4][1]  ( .D(n284), .E(n300), .CK(w_clk), .Q(\mem[4][1] ) );
  EDFFX2 \mem_reg[14][2]  ( .D(n286), .E(n309), .CK(w_clk), .Q(\mem[14][2] )
         );
  EDFFX2 \mem_reg[12][2]  ( .D(n286), .E(n302), .CK(w_clk), .Q(\mem[12][2] )
         );
  EDFFX2 \mem_reg[7][2]  ( .D(n287), .E(n303), .CK(w_clk), .Q(\mem[7][2] ) );
  EDFFX2 \mem_reg[6][2]  ( .D(n287), .E(n305), .CK(w_clk), .Q(\mem[6][2] ) );
  EDFFX2 \mem_reg[5][2]  ( .D(n287), .E(n306), .CK(w_clk), .Q(\mem[5][2] ) );
  EDFFX2 \mem_reg[4][2]  ( .D(n287), .E(n300), .CK(w_clk), .Q(\mem[4][2] ) );
  EDFFX2 \mem_reg[14][3]  ( .D(n292), .E(n309), .CK(w_clk), .Q(\mem[14][3] )
         );
  EDFFX2 \mem_reg[12][3]  ( .D(n292), .E(n302), .CK(w_clk), .Q(\mem[12][3] )
         );
  EDFFX2 \mem_reg[7][3]  ( .D(n293), .E(n303), .CK(w_clk), .Q(\mem[7][3] ) );
  EDFFX2 \mem_reg[6][3]  ( .D(n293), .E(n305), .CK(w_clk), .Q(\mem[6][3] ) );
  EDFFX2 \mem_reg[5][3]  ( .D(n293), .E(n306), .CK(w_clk), .Q(\mem[5][3] ) );
  EDFFX2 \mem_reg[4][3]  ( .D(n293), .E(n300), .CK(w_clk), .Q(\mem[4][3] ) );
  EDFFX2 \mem_reg[15][3]  ( .D(n292), .E(n299), .CK(w_clk), .Q(\mem[15][3] )
         );
  EDFFX2 \mem_reg[15][2]  ( .D(n286), .E(n299), .CK(w_clk), .Q(\mem[15][2] )
         );
  EDFFX2 \mem_reg[15][1]  ( .D(n283), .E(n299), .CK(w_clk), .Q(\mem[15][1] )
         );
  EDFFX2 \mem_reg[13][3]  ( .D(n292), .E(n310), .CK(w_clk), .Q(\mem[13][3] )
         );
  EDFFX2 \mem_reg[13][2]  ( .D(n286), .E(n310), .CK(w_clk), .Q(\mem[13][2] )
         );
  EDFFX2 \mem_reg[13][1]  ( .D(n283), .E(n310), .CK(w_clk), .Q(\mem[13][1] )
         );
  EDFFX2 \mem_reg[5][0]  ( .D(n296), .E(n306), .CK(w_clk), .Q(\mem[5][0] ) );
  EDFFX2 \r_data_out_reg[7]  ( .D(N34), .E(N26), .CK(r_clk), .Q(r_data[7]) );
  EDFFX2 \r_data_out_reg[6]  ( .D(N33), .E(N26), .CK(r_clk), .Q(r_data[6]) );
  EDFFX2 \r_data_out_reg[5]  ( .D(N32), .E(N26), .CK(r_clk), .Q(r_data[5]) );
  EDFFX2 \r_data_out_reg[4]  ( .D(N31), .E(N26), .CK(r_clk), .Q(r_data[4]) );
  EDFFX2 \r_data_out_reg[3]  ( .D(N30), .E(N26), .CK(r_clk), .Q(r_data[3]) );
  EDFFX2 \r_data_out_reg[2]  ( .D(N29), .E(N26), .CK(r_clk), .Q(r_data[2]) );
  EDFFX2 \r_data_out_reg[1]  ( .D(N28), .E(N26), .CK(r_clk), .Q(r_data[1]) );
  EDFFX2 \r_data_out_reg[0]  ( .D(N27), .E(N26), .CK(r_clk), .Q(r_data[0]) );
  EDFFX1 \mem_reg[15][7]  ( .D(n253), .E(n299), .CK(w_clk), .Q(\mem[15][7] )
         );
  EDFFX1 \mem_reg[15][6]  ( .D(n227), .E(n299), .CK(w_clk), .Q(\mem[15][6] )
         );
  EDFFX1 \mem_reg[15][5]  ( .D(n201), .E(n299), .CK(w_clk), .Q(\mem[15][5] )
         );
  EDFFX1 \mem_reg[14][7]  ( .D(n253), .E(n309), .CK(w_clk), .Q(\mem[14][7] )
         );
  EDFFX1 \mem_reg[14][6]  ( .D(n227), .E(n309), .CK(w_clk), .Q(\mem[14][6] )
         );
  EDFFX1 \mem_reg[14][5]  ( .D(n201), .E(n309), .CK(w_clk), .Q(\mem[14][5] )
         );
  EDFFX1 \mem_reg[13][7]  ( .D(n253), .E(n310), .CK(w_clk), .Q(\mem[13][7] )
         );
  EDFFX1 \mem_reg[13][6]  ( .D(n227), .E(n310), .CK(w_clk), .Q(\mem[13][6] )
         );
  EDFFX1 \mem_reg[13][5]  ( .D(n201), .E(n310), .CK(w_clk), .Q(\mem[13][5] )
         );
  EDFFX1 \mem_reg[12][7]  ( .D(n253), .E(n302), .CK(w_clk), .Q(\mem[12][7] )
         );
  EDFFX1 \mem_reg[12][6]  ( .D(n227), .E(n302), .CK(w_clk), .Q(\mem[12][6] )
         );
  EDFFX1 \mem_reg[12][5]  ( .D(n201), .E(n302), .CK(w_clk), .Q(\mem[12][5] )
         );
  EDFFX1 \mem_reg[11][7]  ( .D(n253), .E(n311), .CK(w_clk), .Q(\mem[11][7] )
         );
  EDFFX1 \mem_reg[11][6]  ( .D(n227), .E(n311), .CK(w_clk), .Q(\mem[11][6] )
         );
  EDFFX1 \mem_reg[11][5]  ( .D(n201), .E(n311), .CK(w_clk), .Q(\mem[11][5] )
         );
  EDFFX1 \mem_reg[10][7]  ( .D(n253), .E(n301), .CK(w_clk), .Q(\mem[10][7] )
         );
  EDFFX1 \mem_reg[10][6]  ( .D(n227), .E(n301), .CK(w_clk), .Q(\mem[10][6] )
         );
  EDFFX1 \mem_reg[10][5]  ( .D(n201), .E(n301), .CK(w_clk), .Q(\mem[10][5] )
         );
  EDFFX1 \mem_reg[9][7]  ( .D(n253), .E(n312), .CK(w_clk), .Q(\mem[9][7] ) );
  EDFFX1 \mem_reg[9][6]  ( .D(n227), .E(n312), .CK(w_clk), .Q(\mem[9][6] ) );
  EDFFX1 \mem_reg[9][5]  ( .D(n201), .E(n312), .CK(w_clk), .Q(\mem[9][5] ) );
  EDFFX1 \mem_reg[8][7]  ( .D(n253), .E(n297), .CK(w_clk), .Q(\mem[8][7] ) );
  EDFFX1 \mem_reg[8][6]  ( .D(n227), .E(n297), .CK(w_clk), .Q(\mem[8][6] ) );
  EDFFX1 \mem_reg[8][5]  ( .D(n201), .E(n297), .CK(w_clk), .Q(\mem[8][5] ) );
  EDFFX1 \mem_reg[7][7]  ( .D(n240), .E(n303), .CK(w_clk), .Q(\mem[7][7] ) );
  EDFFX1 \mem_reg[7][6]  ( .D(n214), .E(n303), .CK(w_clk), .Q(\mem[7][6] ) );
  EDFFX1 \mem_reg[7][5]  ( .D(n188), .E(n303), .CK(w_clk), .Q(\mem[7][5] ) );
  EDFFX1 \mem_reg[6][7]  ( .D(n240), .E(n305), .CK(w_clk), .Q(\mem[6][7] ) );
  EDFFX1 \mem_reg[6][6]  ( .D(n214), .E(n305), .CK(w_clk), .Q(\mem[6][6] ) );
  EDFFX1 \mem_reg[6][5]  ( .D(n188), .E(n305), .CK(w_clk), .Q(\mem[6][5] ) );
  EDFFX1 \mem_reg[5][7]  ( .D(n240), .E(n306), .CK(w_clk), .Q(\mem[5][7] ) );
  EDFFX1 \mem_reg[5][6]  ( .D(n214), .E(n306), .CK(w_clk), .Q(\mem[5][6] ) );
  EDFFX1 \mem_reg[5][5]  ( .D(n188), .E(n306), .CK(w_clk), .Q(\mem[5][5] ) );
  EDFFX1 \mem_reg[4][7]  ( .D(n240), .E(n300), .CK(w_clk), .Q(\mem[4][7] ) );
  EDFFX1 \mem_reg[4][6]  ( .D(n214), .E(n300), .CK(w_clk), .Q(\mem[4][6] ) );
  EDFFX1 \mem_reg[4][5]  ( .D(n188), .E(n300), .CK(w_clk), .Q(\mem[4][5] ) );
  EDFFX1 \mem_reg[3][7]  ( .D(n240), .E(n307), .CK(w_clk), .Q(\mem[3][7] ) );
  EDFFX1 \mem_reg[3][6]  ( .D(n214), .E(n307), .CK(w_clk), .Q(\mem[3][6] ) );
  EDFFX1 \mem_reg[3][5]  ( .D(n188), .E(n307), .CK(w_clk), .Q(\mem[3][5] ) );
  EDFFX1 \mem_reg[2][7]  ( .D(n240), .E(n304), .CK(w_clk), .Q(\mem[2][7] ) );
  EDFFX1 \mem_reg[2][6]  ( .D(n214), .E(n304), .CK(w_clk), .Q(\mem[2][6] ) );
  EDFFX1 \mem_reg[2][5]  ( .D(n188), .E(n304), .CK(w_clk), .Q(\mem[2][5] ) );
  EDFFX1 \mem_reg[1][7]  ( .D(n240), .E(n308), .CK(w_clk), .Q(\mem[1][7] ) );
  EDFFX1 \mem_reg[1][6]  ( .D(n214), .E(n308), .CK(w_clk), .Q(\mem[1][6] ) );
  EDFFX1 \mem_reg[1][5]  ( .D(n188), .E(n308), .CK(w_clk), .Q(\mem[1][5] ) );
  EDFFX1 \mem_reg[0][7]  ( .D(n240), .E(n298), .CK(w_clk), .Q(\mem[0][7] ) );
  EDFFX1 \mem_reg[0][6]  ( .D(n214), .E(n298), .CK(w_clk), .Q(\mem[0][6] ) );
  EDFFX1 \mem_reg[0][5]  ( .D(n188), .E(n298), .CK(w_clk), .Q(\mem[0][5] ) );
  NAND3X4 U3 ( .A(n343), .B(n346), .C(n342), .Y(n145) );
  BUFX5 U4 ( .A(w_data[5]), .Y(n188) );
  BUFX5 U5 ( .A(w_data[5]), .Y(n201) );
  BUFX5 U6 ( .A(w_data[6]), .Y(n214) );
  BUFX5 U7 ( .A(w_data[6]), .Y(n227) );
  BUFX5 U8 ( .A(w_data[7]), .Y(n240) );
  BUFX5 U9 ( .A(w_data[7]), .Y(n253) );
  CLKINVX2 U10 ( .A(w_data[1]), .Y(n282) );
  INVX5 U11 ( .A(n282), .Y(n283) );
  INVX5 U12 ( .A(n282), .Y(n284) );
  CLKINVX2 U13 ( .A(w_data[2]), .Y(n285) );
  INVX5 U14 ( .A(n285), .Y(n286) );
  INVX5 U15 ( .A(n285), .Y(n287) );
  CLKINVX2 U16 ( .A(w_data[4]), .Y(n288) );
  INVX5 U17 ( .A(n288), .Y(n289) );
  INVX5 U18 ( .A(n288), .Y(n290) );
  CLKINVX2 U19 ( .A(w_data[3]), .Y(n291) );
  INVX5 U20 ( .A(n291), .Y(n292) );
  INVX5 U21 ( .A(n291), .Y(n293) );
  CLKINVX2 U22 ( .A(w_data[0]), .Y(n294) );
  INVX5 U23 ( .A(n294), .Y(n295) );
  INVX5 U24 ( .A(n294), .Y(n296) );
  NAND3X4 U25 ( .A(n342), .B(n346), .C(w_addr[0]), .Y(n150) );
  NAND3X3 U26 ( .A(w_addr[0]), .B(n342), .C(w_addr[3]), .Y(n151) );
  NAND3X4 U27 ( .A(n342), .B(n343), .C(w_addr[3]), .Y(n152) );
  NAND2X3 U28 ( .A(w_addr[2]), .B(w_addr[1]), .Y(n146) );
  OR2X2 U29 ( .A(n149), .B(n152), .Y(n280) );
  INVX5 U30 ( .A(n280), .Y(n297) );
  OR2X2 U31 ( .A(n145), .B(n149), .Y(n269) );
  INVX5 U32 ( .A(n269), .Y(n298) );
  OR2X2 U33 ( .A(n146), .B(n151), .Y(n275) );
  INVX5 U34 ( .A(n275), .Y(n299) );
  OR2X2 U35 ( .A(n145), .B(n147), .Y(n267) );
  INVX5 U36 ( .A(n267), .Y(n300) );
  OR2X2 U37 ( .A(n148), .B(n152), .Y(n279) );
  INVX5 U38 ( .A(n279), .Y(n301) );
  OR2X2 U39 ( .A(n147), .B(n152), .Y(n278) );
  INVX5 U40 ( .A(n278), .Y(n302) );
  OR2X2 U41 ( .A(n146), .B(n150), .Y(n272) );
  INVX5 U42 ( .A(n272), .Y(n303) );
  OR2X2 U43 ( .A(n145), .B(n148), .Y(n268) );
  INVX5 U44 ( .A(n268), .Y(n304) );
  NAND2X2 U45 ( .A(rst_n), .B(r_en), .Y(n154) );
  OR2X2 U46 ( .A(n145), .B(n146), .Y(n266) );
  INVX5 U47 ( .A(n266), .Y(n305) );
  OR2X2 U48 ( .A(n147), .B(n150), .Y(n273) );
  INVX5 U49 ( .A(n273), .Y(n306) );
  OR2X2 U50 ( .A(n148), .B(n150), .Y(n270) );
  INVX5 U51 ( .A(n270), .Y(n307) );
  OR2X2 U52 ( .A(n149), .B(n150), .Y(n271) );
  INVX5 U53 ( .A(n271), .Y(n308) );
  OR2X2 U54 ( .A(n146), .B(n152), .Y(n281) );
  INVX5 U55 ( .A(n281), .Y(n309) );
  OR2X2 U56 ( .A(n147), .B(n151), .Y(n276) );
  INVX5 U57 ( .A(n276), .Y(n310) );
  OR2X2 U58 ( .A(n148), .B(n151), .Y(n277) );
  INVX5 U59 ( .A(n277), .Y(n311) );
  OR2X2 U60 ( .A(n149), .B(n151), .Y(n274) );
  INVX5 U61 ( .A(n274), .Y(n312) );
  NOR2X2 U62 ( .A(n349), .B(n350), .Y(n164) );
  NOR2BX1 U63 ( .AN(n313), .B(n321), .Y(N27) );
  OR4X2 U64 ( .A(n254), .B(n255), .C(n256), .D(n257), .Y(n313) );
  NOR2BX1 U65 ( .AN(n314), .B(n321), .Y(N28) );
  OR4X2 U66 ( .A(n241), .B(n242), .C(n243), .D(n244), .Y(n314) );
  NOR2BX1 U67 ( .AN(n315), .B(n321), .Y(N29) );
  OR4X2 U68 ( .A(n228), .B(n229), .C(n230), .D(n231), .Y(n315) );
  NOR2BX1 U69 ( .AN(n316), .B(n321), .Y(N30) );
  OR4X2 U70 ( .A(n215), .B(n216), .C(n217), .D(n218), .Y(n316) );
  NOR2BX1 U71 ( .AN(n317), .B(n321), .Y(N31) );
  OR4X2 U72 ( .A(n202), .B(n203), .C(n204), .D(n205), .Y(n317) );
  NOR2BX1 U73 ( .AN(n318), .B(n321), .Y(N32) );
  OR4X2 U74 ( .A(n189), .B(n190), .C(n191), .D(n192), .Y(n318) );
  NOR2BX1 U75 ( .AN(n319), .B(n321), .Y(N33) );
  OR4X2 U76 ( .A(n176), .B(n177), .C(n178), .D(n179), .Y(n319) );
  NOR2BX1 U77 ( .AN(n320), .B(n321), .Y(N34) );
  OR4X2 U78 ( .A(n155), .B(n156), .C(n157), .D(n158), .Y(n320) );
  NOR2X2 U79 ( .A(n350), .B(N14), .Y(n162) );
  NOR2X2 U80 ( .A(N14), .B(N13), .Y(n163) );
  NOR2X2 U81 ( .A(n349), .B(N13), .Y(n165) );
  CLKBUFX4 U82 ( .A(w_en), .Y(n342) );
  BUFX5 U83 ( .A(n327), .Y(n328) );
  BUFX5 U84 ( .A(n327), .Y(n329) );
  BUFX5 U85 ( .A(n327), .Y(n330) );
  BUFX5 U86 ( .A(n164), .Y(n331) );
  BUFX5 U87 ( .A(n322), .Y(n323) );
  BUFX5 U88 ( .A(n332), .Y(n333) );
  BUFX5 U89 ( .A(n322), .Y(n324) );
  BUFX5 U90 ( .A(n332), .Y(n334) );
  BUFX5 U91 ( .A(n322), .Y(n325) );
  BUFX5 U92 ( .A(n332), .Y(n335) );
  BUFX5 U93 ( .A(n165), .Y(n326) );
  BUFX5 U94 ( .A(n163), .Y(n336) );
  BUFX5 U95 ( .A(n337), .Y(n338) );
  BUFX5 U96 ( .A(n337), .Y(n339) );
  BUFX5 U97 ( .A(n337), .Y(n340) );
  BUFX5 U98 ( .A(n162), .Y(n341) );
  BUFX2 U99 ( .A(n164), .Y(n327) );
  NAND2X5 U100 ( .A(n348), .B(n347), .Y(n171) );
  NAND2X5 U101 ( .A(rst_n), .B(n154), .Y(N26) );
  BUFX2 U102 ( .A(n165), .Y(n322) );
  BUFX2 U103 ( .A(n163), .Y(n332) );
  BUFX2 U104 ( .A(n162), .Y(n337) );
  NAND2X4 U105 ( .A(n344), .B(n345), .Y(n149) );
  NAND2X5 U106 ( .A(N12), .B(n348), .Y(n161) );
  NAND2X5 U107 ( .A(N12), .B(N11), .Y(n168) );
  NAND2X5 U108 ( .A(N11), .B(n347), .Y(n174) );
  INVX2 U109 ( .A(N12), .Y(n347) );
  INVX2 U110 ( .A(N11), .Y(n348) );
  INVX2 U111 ( .A(N13), .Y(n350) );
  CLKBUFX6 U112 ( .A(n154), .Y(n321) );
  INVX2 U113 ( .A(N14), .Y(n349) );
  AOI21X1 U114 ( .A0(n264), .A1(n265), .B0(n174), .Y(n254) );
  AOI21X1 U115 ( .A0(n262), .A1(n263), .B0(n171), .Y(n255) );
  AOI21X1 U116 ( .A0(n251), .A1(n252), .B0(n174), .Y(n241) );
  AOI21X1 U117 ( .A0(n249), .A1(n250), .B0(n171), .Y(n242) );
  AOI21X1 U118 ( .A0(n238), .A1(n239), .B0(n174), .Y(n228) );
  AOI21X1 U119 ( .A0(n236), .A1(n237), .B0(n171), .Y(n229) );
  AOI21X1 U120 ( .A0(n225), .A1(n226), .B0(n174), .Y(n215) );
  AOI21X1 U121 ( .A0(n223), .A1(n224), .B0(n171), .Y(n216) );
  AOI21X1 U122 ( .A0(n212), .A1(n213), .B0(n174), .Y(n202) );
  AOI21X1 U123 ( .A0(n210), .A1(n211), .B0(n171), .Y(n203) );
  AOI21X1 U124 ( .A0(n199), .A1(n200), .B0(n174), .Y(n189) );
  AOI21X1 U125 ( .A0(n197), .A1(n198), .B0(n171), .Y(n190) );
  AOI21X1 U126 ( .A0(n186), .A1(n187), .B0(n174), .Y(n176) );
  AOI21X1 U127 ( .A0(n184), .A1(n185), .B0(n171), .Y(n177) );
  AOI21X1 U128 ( .A0(n172), .A1(n173), .B0(n174), .Y(n155) );
  AOI21X1 U129 ( .A0(n169), .A1(n170), .B0(n171), .Y(n156) );
  NAND2X4 U130 ( .A(w_addr[2]), .B(n344), .Y(n147) );
  NAND2X4 U131 ( .A(w_addr[1]), .B(n345), .Y(n148) );
  INVX2 U132 ( .A(w_addr[2]), .Y(n345) );
  CLKINVX2 U133 ( .A(w_addr[1]), .Y(n344) );
  INVX2 U134 ( .A(w_addr[3]), .Y(n346) );
  INVX2 U135 ( .A(w_addr[0]), .Y(n343) );
  AOI22X2 U136 ( .A0(\mem[4][0] ), .A1(n338), .B0(\mem[0][0] ), .B1(n333), .Y(
        n263) );
  AOI22X2 U137 ( .A0(\mem[5][0] ), .A1(n338), .B0(\mem[1][0] ), .B1(n333), .Y(
        n265) );
  AOI22X2 U138 ( .A0(\mem[4][1] ), .A1(n338), .B0(\mem[0][1] ), .B1(n333), .Y(
        n250) );
  AOI22X2 U139 ( .A0(\mem[5][1] ), .A1(n338), .B0(\mem[1][1] ), .B1(n333), .Y(
        n252) );
  AOI22X2 U140 ( .A0(\mem[4][2] ), .A1(n339), .B0(\mem[0][2] ), .B1(n334), .Y(
        n237) );
  AOI22X2 U141 ( .A0(\mem[5][2] ), .A1(n339), .B0(\mem[1][2] ), .B1(n334), .Y(
        n239) );
  AOI22X2 U142 ( .A0(\mem[4][3] ), .A1(n339), .B0(\mem[0][3] ), .B1(n334), .Y(
        n224) );
  AOI22X2 U143 ( .A0(\mem[5][3] ), .A1(n339), .B0(\mem[1][3] ), .B1(n334), .Y(
        n226) );
  AOI22X2 U144 ( .A0(\mem[4][4] ), .A1(n340), .B0(\mem[0][4] ), .B1(n335), .Y(
        n211) );
  AOI22X2 U145 ( .A0(\mem[5][4] ), .A1(n340), .B0(\mem[1][4] ), .B1(n335), .Y(
        n213) );
  AOI22X2 U146 ( .A0(\mem[4][5] ), .A1(n340), .B0(\mem[0][5] ), .B1(n335), .Y(
        n198) );
  AOI22X2 U147 ( .A0(\mem[5][5] ), .A1(n340), .B0(\mem[1][5] ), .B1(n335), .Y(
        n200) );
  AOI22X2 U148 ( .A0(\mem[4][6] ), .A1(n341), .B0(\mem[0][6] ), .B1(n336), .Y(
        n185) );
  AOI22X2 U149 ( .A0(\mem[5][6] ), .A1(n341), .B0(\mem[1][6] ), .B1(n336), .Y(
        n187) );
  AOI22X2 U150 ( .A0(\mem[4][7] ), .A1(n341), .B0(\mem[0][7] ), .B1(n336), .Y(
        n170) );
  AOI22X2 U151 ( .A0(\mem[5][7] ), .A1(n341), .B0(\mem[1][7] ), .B1(n336), .Y(
        n173) );
  AOI22X2 U152 ( .A0(\mem[12][0] ), .A1(n328), .B0(\mem[8][0] ), .B1(n323), 
        .Y(n262) );
  AOI22X2 U153 ( .A0(\mem[13][0] ), .A1(n328), .B0(\mem[9][0] ), .B1(n323), 
        .Y(n264) );
  AOI22X2 U154 ( .A0(\mem[12][1] ), .A1(n328), .B0(\mem[8][1] ), .B1(n323), 
        .Y(n249) );
  AOI22X2 U155 ( .A0(\mem[13][1] ), .A1(n328), .B0(\mem[9][1] ), .B1(n323), 
        .Y(n251) );
  AOI22X2 U156 ( .A0(\mem[12][2] ), .A1(n329), .B0(\mem[8][2] ), .B1(n324), 
        .Y(n236) );
  AOI22X2 U157 ( .A0(\mem[13][2] ), .A1(n329), .B0(\mem[9][2] ), .B1(n324), 
        .Y(n238) );
  AOI22X2 U158 ( .A0(\mem[12][3] ), .A1(n329), .B0(\mem[8][3] ), .B1(n324), 
        .Y(n223) );
  AOI22X2 U159 ( .A0(\mem[13][3] ), .A1(n329), .B0(\mem[9][3] ), .B1(n324), 
        .Y(n225) );
  AOI22X2 U160 ( .A0(\mem[12][4] ), .A1(n330), .B0(\mem[8][4] ), .B1(n325), 
        .Y(n210) );
  AOI22X2 U161 ( .A0(\mem[13][4] ), .A1(n330), .B0(\mem[9][4] ), .B1(n325), 
        .Y(n212) );
  AOI22X2 U162 ( .A0(\mem[12][5] ), .A1(n330), .B0(\mem[8][5] ), .B1(n325), 
        .Y(n197) );
  AOI22X2 U163 ( .A0(\mem[13][5] ), .A1(n330), .B0(\mem[9][5] ), .B1(n325), 
        .Y(n199) );
  AOI22X2 U164 ( .A0(\mem[12][6] ), .A1(n331), .B0(\mem[8][6] ), .B1(n326), 
        .Y(n184) );
  AOI22X2 U165 ( .A0(\mem[13][6] ), .A1(n331), .B0(\mem[9][6] ), .B1(n326), 
        .Y(n186) );
  AOI22X2 U166 ( .A0(\mem[12][7] ), .A1(n331), .B0(\mem[8][7] ), .B1(n326), 
        .Y(n169) );
  AOI22X2 U167 ( .A0(\mem[13][7] ), .A1(n331), .B0(\mem[9][7] ), .B1(n326), 
        .Y(n172) );
  AOI21X1 U168 ( .A0(n260), .A1(n261), .B0(n168), .Y(n256) );
  AOI22X2 U169 ( .A0(\mem[7][0] ), .A1(n338), .B0(\mem[3][0] ), .B1(n333), .Y(
        n261) );
  AOI22X2 U170 ( .A0(\mem[15][0] ), .A1(n328), .B0(\mem[11][0] ), .B1(n323), 
        .Y(n260) );
  AOI21X1 U171 ( .A0(n247), .A1(n248), .B0(n168), .Y(n243) );
  AOI22X2 U172 ( .A0(\mem[7][1] ), .A1(n338), .B0(\mem[3][1] ), .B1(n333), .Y(
        n248) );
  AOI22X2 U173 ( .A0(\mem[15][1] ), .A1(n328), .B0(\mem[11][1] ), .B1(n323), 
        .Y(n247) );
  AOI21X1 U174 ( .A0(n234), .A1(n235), .B0(n168), .Y(n230) );
  AOI22X2 U175 ( .A0(\mem[7][2] ), .A1(n339), .B0(\mem[3][2] ), .B1(n334), .Y(
        n235) );
  AOI22X2 U176 ( .A0(\mem[15][2] ), .A1(n329), .B0(\mem[11][2] ), .B1(n324), 
        .Y(n234) );
  AOI21X1 U177 ( .A0(n221), .A1(n222), .B0(n168), .Y(n217) );
  AOI22X2 U178 ( .A0(\mem[7][3] ), .A1(n339), .B0(\mem[3][3] ), .B1(n334), .Y(
        n222) );
  AOI22X2 U179 ( .A0(\mem[15][3] ), .A1(n329), .B0(\mem[11][3] ), .B1(n324), 
        .Y(n221) );
  AOI21X1 U180 ( .A0(n208), .A1(n209), .B0(n168), .Y(n204) );
  AOI22X2 U181 ( .A0(\mem[7][4] ), .A1(n340), .B0(\mem[3][4] ), .B1(n335), .Y(
        n209) );
  AOI22X2 U182 ( .A0(\mem[15][4] ), .A1(n330), .B0(\mem[11][4] ), .B1(n325), 
        .Y(n208) );
  AOI21X1 U183 ( .A0(n195), .A1(n196), .B0(n168), .Y(n191) );
  AOI22X2 U184 ( .A0(\mem[7][5] ), .A1(n340), .B0(\mem[3][5] ), .B1(n335), .Y(
        n196) );
  AOI22X2 U185 ( .A0(\mem[15][5] ), .A1(n330), .B0(\mem[11][5] ), .B1(n325), 
        .Y(n195) );
  AOI21X1 U186 ( .A0(n182), .A1(n183), .B0(n168), .Y(n178) );
  AOI22X2 U187 ( .A0(\mem[7][6] ), .A1(n341), .B0(\mem[3][6] ), .B1(n336), .Y(
        n183) );
  AOI22X2 U188 ( .A0(\mem[15][6] ), .A1(n331), .B0(\mem[11][6] ), .B1(n326), 
        .Y(n182) );
  AOI21X1 U189 ( .A0(n166), .A1(n167), .B0(n168), .Y(n157) );
  AOI22X2 U190 ( .A0(\mem[7][7] ), .A1(n341), .B0(\mem[3][7] ), .B1(n336), .Y(
        n167) );
  AOI22X2 U191 ( .A0(\mem[15][7] ), .A1(n331), .B0(\mem[11][7] ), .B1(n326), 
        .Y(n166) );
  AOI21X1 U192 ( .A0(n258), .A1(n259), .B0(n161), .Y(n257) );
  AOI22X2 U193 ( .A0(\mem[6][0] ), .A1(n338), .B0(\mem[2][0] ), .B1(n333), .Y(
        n259) );
  AOI22X2 U194 ( .A0(\mem[14][0] ), .A1(n328), .B0(\mem[10][0] ), .B1(n323), 
        .Y(n258) );
  AOI21X1 U195 ( .A0(n245), .A1(n246), .B0(n161), .Y(n244) );
  AOI22X2 U196 ( .A0(\mem[6][1] ), .A1(n338), .B0(\mem[2][1] ), .B1(n333), .Y(
        n246) );
  AOI22X2 U197 ( .A0(\mem[14][1] ), .A1(n328), .B0(\mem[10][1] ), .B1(n323), 
        .Y(n245) );
  AOI21X1 U198 ( .A0(n232), .A1(n233), .B0(n161), .Y(n231) );
  AOI22X2 U199 ( .A0(\mem[6][2] ), .A1(n339), .B0(\mem[2][2] ), .B1(n334), .Y(
        n233) );
  AOI22X2 U200 ( .A0(\mem[14][2] ), .A1(n329), .B0(\mem[10][2] ), .B1(n324), 
        .Y(n232) );
  AOI21X1 U201 ( .A0(n219), .A1(n220), .B0(n161), .Y(n218) );
  AOI22X2 U202 ( .A0(\mem[6][3] ), .A1(n339), .B0(\mem[2][3] ), .B1(n334), .Y(
        n220) );
  AOI22X2 U203 ( .A0(\mem[14][3] ), .A1(n329), .B0(\mem[10][3] ), .B1(n324), 
        .Y(n219) );
  AOI21X1 U204 ( .A0(n206), .A1(n207), .B0(n161), .Y(n205) );
  AOI22X2 U205 ( .A0(\mem[6][4] ), .A1(n340), .B0(\mem[2][4] ), .B1(n335), .Y(
        n207) );
  AOI22X2 U206 ( .A0(\mem[14][4] ), .A1(n330), .B0(\mem[10][4] ), .B1(n325), 
        .Y(n206) );
  AOI21X1 U207 ( .A0(n193), .A1(n194), .B0(n161), .Y(n192) );
  AOI22X2 U208 ( .A0(\mem[6][5] ), .A1(n340), .B0(\mem[2][5] ), .B1(n335), .Y(
        n194) );
  AOI22X2 U209 ( .A0(\mem[14][5] ), .A1(n330), .B0(\mem[10][5] ), .B1(n325), 
        .Y(n193) );
  AOI21X1 U210 ( .A0(n180), .A1(n181), .B0(n161), .Y(n179) );
  AOI22X2 U211 ( .A0(\mem[6][6] ), .A1(n341), .B0(\mem[2][6] ), .B1(n336), .Y(
        n181) );
  AOI22X2 U212 ( .A0(\mem[14][6] ), .A1(n331), .B0(\mem[10][6] ), .B1(n326), 
        .Y(n180) );
  AOI21X1 U213 ( .A0(n159), .A1(n160), .B0(n161), .Y(n158) );
  AOI22X2 U214 ( .A0(\mem[6][7] ), .A1(n341), .B0(\mem[2][7] ), .B1(n336), .Y(
        n160) );
  AOI22X2 U215 ( .A0(\mem[14][7] ), .A1(n331), .B0(\mem[10][7] ), .B1(n326), 
        .Y(n159) );
endmodule


module UartFiFo_FIFO_WIDTH8_FIFO_DEPTH16_ADDR_WIDTH4 ( w_clk, w_rst_n, 
        w_pt_reset, w_en, w_data, r_clk, r_rst_n, r_pt_reset, r_en, r_data, 
        is_empty, is_full );
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_rst_n, w_pt_reset, w_en, r_clk, r_rst_n, r_pt_reset, r_en;
  output is_empty, is_full;
  wire   N33, N34, N35, \r_pt[4] , N74, N75, N76, N81, N82, N83, N84, N116,
         N118, \add_129/carry[4] , \add_129/carry[3] , \add_129/carry[2] ,
         \add_58/carry[4] , \add_58/carry[3] , \add_58/carry[2] , n1, n2, n3,
         n4, n5, n7, n8, n9, n19, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n68, n69, n70, n71, n72, n73, n74;
  wire   [7:0] r_data_nxt;
  wire   [4:0] w_pt;
  wire   [4:0] w_pt_gray_nxt;
  wire   [4:0] w_pt_gray;
  wire   [4:0] w_pt_syn2;
  wire   [4:0] w_pt_syn1;
  wire   [4:0] w_pt_rdomain_nxt;
  wire   [4:0] w_pt_rdomain;
  wire   [4:0] r_pt_gray_nxt;
  wire   [4:0] r_pt_gray;
  wire   [4:0] r_pt_syn2;
  wire   [4:0] r_pt_syn1;
  wire   [4:0] r_pt_wdomain_nxt;
  wire   [4:0] r_pt_wdomain;

  OAI2B2X4 U3 ( .A1N(n64), .A0(n78), .B0(n64), .B1(n79), .Y(n7) );
  OAI2B2X4 U8 ( .A1N(w_pt[1]), .A0(n79), .B0(n66), .B1(n78), .Y(n2) );
  OAI2BB1X4 U10 ( .A0N(n77), .A1N(w_en), .B0(n56), .Y(n79) );
  NAND3BX4 U25 ( .AN(r_en), .B(r_pt_reset), .C(n57), .Y(N118) );
  bin2gray_BIT_WIDTH5_0 bin2gray_ins_w ( .bin_data({n44, n3, n5, n2, n7}), 
        .gray_data(w_pt_gray_nxt) );
  gray2bin_BIT_WIDTH5_0 gray2bin_ins_w ( .gray_data(w_pt_syn2), .bin_data(
        w_pt_rdomain_nxt) );
  bin2gray_BIT_WIDTH5_1 bin2gray_ins_r ( .bin_data({\r_pt[4] , n71, n72, n69, 
        n70}), .gray_data(r_pt_gray_nxt) );
  gray2bin_BIT_WIDTH5_1 gray2bin_ins_r ( .gray_data(r_pt_syn2), .bin_data(
        r_pt_wdomain_nxt) );
  fifo_ram_DATA_WIDTH8_RAM_DEPTH16_ADDR_WIDTH4 fifo_ram_ins ( .w_clk(w_clk), 
        .r_clk(r_clk), .rst_n(n57), .r_en(r_en), .r_addr({n71, n72, n69, n70}), 
        .r_data(r_data_nxt), .w_en(w_en), .w_addr(w_pt[3:0]), .w_data(w_data)
         );
  EDFFX2 \r_pt_reg[1]  ( .D(N82), .E(N118), .CK(r_clk), .QN(n1) );
  EDFFX2 \r_pt_reg[0]  ( .D(N81), .E(N118), .CK(r_clk), .QN(n8) );
  EDFFX2 \r_pt_reg[2]  ( .D(N83), .E(N118), .CK(r_clk), .QN(n9) );
  EDFFX2 \r_pt_reg[3]  ( .D(N84), .E(N118), .CK(r_clk), .QN(n4) );
  ADDHX1 U45 ( .A(w_pt[2]), .B(\add_58/carry[2] ), .CO(\add_58/carry[3] ), .S(
        N34) );
  ADDHX2 U46 ( .A(w_pt[3]), .B(\add_58/carry[3] ), .CO(\add_58/carry[4] ), .S(
        N35) );
  ADDHX1 U51 ( .A(n72), .B(\add_129/carry[2] ), .CO(\add_129/carry[3] ), .S(
        N75) );
  ADDHX1 U50 ( .A(n69), .B(n70), .CO(\add_129/carry[2] ), .S(N74) );
  ADDHX2 U52 ( .A(n71), .B(\add_129/carry[3] ), .CO(\add_129/carry[4] ), .S(
        N76) );
  DFFTRX2 \w_pt_syn1_reg[4]  ( .D(w_pt_gray[4]), .RN(n58), .CK(r_clk), .Q(
        w_pt_syn1[4]) );
  ADDHX1 U44 ( .A(w_pt[1]), .B(w_pt[0]), .CO(\add_58/carry[2] ), .S(N33) );
  DFFTRX4 \w_pt_reg[1]  ( .D(n2), .RN(n46), .CK(w_clk), .Q(w_pt[1]) );
  DFFTRX4 \w_pt_reg[3]  ( .D(n3), .RN(n47), .CK(w_clk), .Q(w_pt[3]), .QN(n53)
         );
  DFFTRX4 \w_pt_reg[2]  ( .D(n5), .RN(n48), .CK(w_clk), .Q(w_pt[2]), .QN(n51)
         );
  DFFTRX4 \w_pt_reg[0]  ( .D(n7), .RN(n63), .CK(w_clk), .Q(w_pt[0]), .QN(n64)
         );
  DFFQX4 \r_pt_reg[4]  ( .D(n19), .CK(r_clk), .Q(\r_pt[4] ) );
  DFFTRX2 \r_pt_gray_reg[4]  ( .D(n57), .RN(r_pt_gray_nxt[4]), .CK(r_clk), .Q(
        r_pt_gray[4]) );
  DFFQX2 is_empty_reg ( .D(N116), .CK(r_clk), .Q(is_empty) );
  DFFTRX2 \r_pt_syn2_reg[4]  ( .D(r_pt_syn1[4]), .RN(n48), .CK(w_clk), .Q(
        r_pt_syn2[4]) );
  DFFTRX2 \r_pt_wdomain_reg[4]  ( .D(r_pt_wdomain_nxt[4]), .RN(n47), .CK(w_clk), .Q(r_pt_wdomain[4]) );
  DFFTRX2 \w_pt_syn2_reg[4]  ( .D(w_pt_syn1[4]), .RN(n60), .CK(r_clk), .Q(
        w_pt_syn2[4]) );
  DFFTRX2 \w_pt_rdomain_reg[4]  ( .D(w_pt_rdomain_nxt[4]), .RN(n60), .CK(r_clk), .Q(w_pt_rdomain[4]) );
  DFFTRX2 \w_pt_reg[4]  ( .D(n44), .RN(n63), .CK(w_clk), .Q(w_pt[4]), .QN(n74)
         );
  DFFTRX2 \r_data_reg[7]  ( .D(r_data_nxt[7]), .RN(n60), .CK(r_clk), .Q(
        r_data[7]) );
  DFFTRX2 \r_data_reg[5]  ( .D(r_data_nxt[5]), .RN(n57), .CK(r_clk), .Q(
        r_data[5]) );
  DFFTRX2 \r_data_reg[3]  ( .D(r_data_nxt[3]), .RN(n62), .CK(r_clk), .Q(
        r_data[3]) );
  DFFTRX2 \r_data_reg[1]  ( .D(r_data_nxt[1]), .RN(n60), .CK(r_clk), .Q(
        r_data[1]) );
  DFFTRX2 \r_data_reg[6]  ( .D(r_data_nxt[6]), .RN(n60), .CK(r_clk), .Q(
        r_data[6]) );
  DFFTRX2 \r_data_reg[4]  ( .D(r_data_nxt[4]), .RN(n60), .CK(r_clk), .Q(
        r_data[4]) );
  DFFTRX2 \r_data_reg[2]  ( .D(r_data_nxt[2]), .RN(n60), .CK(r_clk), .Q(
        r_data[2]) );
  DFFTRX2 \r_data_reg[0]  ( .D(r_data_nxt[0]), .RN(n60), .CK(r_clk), .Q(
        r_data[0]) );
  DFFTRX1 \r_pt_syn2_reg[0]  ( .D(r_pt_syn1[0]), .RN(n46), .CK(w_clk), .Q(
        r_pt_syn2[0]) );
  DFFTRX1 \r_pt_syn1_reg[0]  ( .D(r_pt_gray[0]), .RN(n63), .CK(w_clk), .Q(
        r_pt_syn1[0]) );
  DFFTRX2 \w_pt_syn2_reg[0]  ( .D(w_pt_syn1[0]), .RN(n59), .CK(r_clk), .Q(
        w_pt_syn2[0]) );
  DFFTRX1 \w_pt_syn1_reg[0]  ( .D(w_pt_gray[0]), .RN(n59), .CK(r_clk), .Q(
        w_pt_syn1[0]) );
  DFFTRX2 \w_pt_rdomain_reg[2]  ( .D(w_pt_rdomain_nxt[2]), .RN(n58), .CK(r_clk), .Q(w_pt_rdomain[2]) );
  DFFTRX2 \w_pt_rdomain_reg[1]  ( .D(w_pt_rdomain_nxt[1]), .RN(n59), .CK(r_clk), .Q(w_pt_rdomain[1]) );
  DFFTRX2 \w_pt_rdomain_reg[0]  ( .D(w_pt_rdomain_nxt[0]), .RN(n59), .CK(r_clk), .Q(w_pt_rdomain[0]) );
  DFFTRX1 \r_pt_syn2_reg[3]  ( .D(r_pt_syn1[3]), .RN(n47), .CK(w_clk), .Q(
        r_pt_syn2[3]) );
  DFFTRX1 \r_pt_syn1_reg[3]  ( .D(r_pt_gray[3]), .RN(n47), .CK(w_clk), .Q(
        r_pt_syn1[3]) );
  DFFTRX1 \r_pt_syn2_reg[2]  ( .D(r_pt_syn1[2]), .RN(n48), .CK(w_clk), .Q(
        r_pt_syn2[2]) );
  DFFTRX1 \r_pt_syn1_reg[2]  ( .D(r_pt_gray[2]), .RN(n46), .CK(w_clk), .Q(
        r_pt_syn1[2]) );
  DFFTRX1 \r_pt_syn2_reg[1]  ( .D(r_pt_syn1[1]), .RN(n46), .CK(w_clk), .Q(
        r_pt_syn2[1]) );
  DFFTRX1 \r_pt_syn1_reg[1]  ( .D(r_pt_gray[1]), .RN(n47), .CK(w_clk), .Q(
        r_pt_syn1[1]) );
  DFFTRX2 \w_pt_syn2_reg[3]  ( .D(w_pt_syn1[3]), .RN(n59), .CK(r_clk), .Q(
        w_pt_syn2[3]) );
  DFFTRX1 \w_pt_syn1_reg[3]  ( .D(w_pt_gray[3]), .RN(n59), .CK(r_clk), .Q(
        w_pt_syn1[3]) );
  DFFTRX2 \w_pt_syn2_reg[2]  ( .D(w_pt_syn1[2]), .RN(n58), .CK(r_clk), .Q(
        w_pt_syn2[2]) );
  DFFTRX1 \w_pt_syn1_reg[2]  ( .D(w_pt_gray[2]), .RN(n58), .CK(r_clk), .Q(
        w_pt_syn1[2]) );
  DFFTRX2 \w_pt_syn2_reg[1]  ( .D(w_pt_syn1[1]), .RN(n58), .CK(r_clk), .Q(
        w_pt_syn2[1]) );
  DFFTRX1 \w_pt_syn1_reg[1]  ( .D(w_pt_gray[1]), .RN(n59), .CK(r_clk), .Q(
        w_pt_syn1[1]) );
  DFFTRX2 \r_pt_wdomain_reg[3]  ( .D(r_pt_wdomain_nxt[3]), .RN(n46), .CK(w_clk), .QN(n54) );
  DFFTRX2 \r_pt_wdomain_reg[2]  ( .D(r_pt_wdomain_nxt[2]), .RN(n47), .CK(w_clk), .QN(n52) );
  DFFTRX2 \r_pt_wdomain_reg[0]  ( .D(r_pt_wdomain_nxt[0]), .RN(n48), .CK(w_clk), .QN(n55) );
  DFFTRX2 \r_pt_wdomain_reg[1]  ( .D(r_pt_wdomain_nxt[1]), .RN(n46), .CK(w_clk), .Q(r_pt_wdomain[1]) );
  DFFTRX2 \w_pt_rdomain_reg[3]  ( .D(w_pt_rdomain_nxt[3]), .RN(n59), .CK(r_clk), .Q(w_pt_rdomain[3]) );
  DFFTRX2 \r_pt_syn1_reg[4]  ( .D(r_pt_gray[4]), .RN(n48), .CK(w_clk), .Q(
        r_pt_syn1[4]) );
  DFFTRX2 \w_pt_gray_reg[4]  ( .D(w_pt_gray_nxt[4]), .RN(n47), .CK(w_clk), .Q(
        w_pt_gray[4]) );
  DFFTRX2 \w_pt_gray_reg[0]  ( .D(w_pt_gray_nxt[0]), .RN(n48), .CK(w_clk), .Q(
        w_pt_gray[0]) );
  DFFTRX2 \w_pt_gray_reg[1]  ( .D(w_pt_gray_nxt[1]), .RN(n46), .CK(w_clk), .Q(
        w_pt_gray[1]) );
  DFFTRX2 \w_pt_gray_reg[2]  ( .D(w_pt_gray_nxt[2]), .RN(n47), .CK(w_clk), .Q(
        w_pt_gray[2]) );
  DFFTRX2 \w_pt_gray_reg[3]  ( .D(w_pt_gray_nxt[3]), .RN(n48), .CK(w_clk), .Q(
        w_pt_gray[3]) );
  DFFTRX2 \r_pt_gray_reg[1]  ( .D(r_pt_gray_nxt[1]), .RN(n58), .CK(r_clk), .Q(
        r_pt_gray[1]) );
  DFFTRX2 \r_pt_gray_reg[0]  ( .D(r_pt_gray_nxt[0]), .RN(n58), .CK(r_clk), .Q(
        r_pt_gray[0]) );
  DFFTRX2 \r_pt_gray_reg[2]  ( .D(r_pt_gray_nxt[2]), .RN(n58), .CK(r_clk), .Q(
        r_pt_gray[2]) );
  DFFTRX2 \r_pt_gray_reg[3]  ( .D(r_pt_gray_nxt[3]), .RN(n57), .CK(r_clk), .Q(
        r_pt_gray[3]) );
  OR2X2 U4 ( .A(n49), .B(n50), .Y(n44) );
  OR2X2 U5 ( .A(n65), .B(w_pt[4]), .Y(n45) );
  CLKBUFX4 U6 ( .A(w_rst_n), .Y(n48) );
  CLKBUFX4 U7 ( .A(w_rst_n), .Y(n46) );
  BUFX5 U9 ( .A(w_rst_n), .Y(n47) );
  NOR2X1 U11 ( .A(n78), .B(n45), .Y(n49) );
  NOR2X2 U12 ( .A(n80), .B(n74), .Y(n50) );
  INVX2 U13 ( .A(\add_58/carry[4] ), .Y(n65) );
  OA21X1 U14 ( .A0(n78), .A1(\add_58/carry[4] ), .B0(n79), .Y(n80) );
  BUFX2 U15 ( .A(r_rst_n), .Y(n62) );
  INVX4 U16 ( .A(n4), .Y(n71) );
  INVX5 U17 ( .A(n1), .Y(n69) );
  BUFX5 U18 ( .A(n62), .Y(n58) );
  BUFX5 U19 ( .A(n61), .Y(n59) );
  BUFX5 U20 ( .A(n61), .Y(n60) );
  BUFX2 U21 ( .A(w_rst_n), .Y(n63) );
  BUFX5 U22 ( .A(n61), .Y(n57) );
  BUFX2 U23 ( .A(n62), .Y(n61) );
  BUFX2 U24 ( .A(w_pt_reset), .Y(n56) );
  NOR2BX1 U26 ( .AN(N75), .B(n87), .Y(N83) );
  NOR2BX1 U27 ( .AN(N76), .B(n87), .Y(N84) );
  NOR2BX1 U28 ( .AN(N74), .B(n87), .Y(N82) );
  NAND3X4 U29 ( .A(w_en), .B(n77), .C(n56), .Y(n78) );
  NAND3X4 U30 ( .A(r_pt_reset), .B(r_en), .C(n57), .Y(n87) );
  NOR2X2 U31 ( .A(n70), .B(n87), .Y(N81) );
  INVX2 U32 ( .A(n77), .Y(is_full) );
  AO2B2BX2 U33 ( .A0(N35), .A1N(n78), .B0(w_pt[3]), .B1N(n79), .Y(n3) );
  AO2B2BX2 U34 ( .A0(N34), .A1N(n78), .B0(w_pt[2]), .B1N(n79), .Y(n5) );
  INVX2 U35 ( .A(N33), .Y(n66) );
  NAND4X4 U36 ( .A(w_rst_n), .B(n81), .C(n82), .D(n83), .Y(n77) );
  XNOR2X1 U37 ( .A(n74), .B(r_pt_wdomain[4]), .Y(n81) );
  XNOR2X1 U38 ( .A(w_pt[1]), .B(r_pt_wdomain[1]), .Y(n82) );
  NOR3X2 U39 ( .A(n84), .B(n85), .C(n86), .Y(n83) );
  XOR2X1 U40 ( .A(n51), .B(n52), .Y(n85) );
  XOR2X1 U41 ( .A(n53), .B(n54), .Y(n84) );
  XOR2X1 U42 ( .A(n64), .B(n55), .Y(n86) );
  OAI32X2 U43 ( .A0(n68), .A1(\r_pt[4] ), .A2(n87), .B0(n88), .B1(n73), .Y(n19) );
  INVX2 U47 ( .A(\add_129/carry[4] ), .Y(n68) );
  OA21X1 U48 ( .A0(n87), .A1(\add_129/carry[4] ), .B0(N118), .Y(n88) );
  OAI31X2 U49 ( .A0(n89), .A1(n90), .A2(n91), .B0(n57), .Y(N116) );
  XNOR2X1 U53 ( .A(n4), .B(w_pt_rdomain[3]), .Y(n90) );
  XNOR2X1 U54 ( .A(w_pt_rdomain[4]), .B(n73), .Y(n91) );
  NAND3X2 U55 ( .A(n92), .B(n93), .C(n94), .Y(n89) );
  INVX5 U56 ( .A(n8), .Y(n70) );
  INVX5 U57 ( .A(n9), .Y(n72) );
  XNOR2X1 U58 ( .A(w_pt_rdomain[0]), .B(n70), .Y(n94) );
  XNOR2X1 U59 ( .A(w_pt_rdomain[1]), .B(n69), .Y(n93) );
  XNOR2X1 U60 ( .A(w_pt_rdomain[2]), .B(n72), .Y(n92) );
  INVX2 U61 ( .A(\r_pt[4] ), .Y(n73) );
endmodule


module ClkDiv_DIV_NUM16 ( clk_in, rst_n, clk_out );
  input clk_in, rst_n;
  output clk_out;
  wire   N6, N7, N8, N11, N12, N13, N14, n1, n3, \add_34/carry[4] ,
         \add_34/carry[3] , \add_34/carry[2] , n4, n5, n6, n7;
  wire   [4:0] cnt_p;

  DFFSHQX8 clk_o_reg ( .D(n3), .CK(clk_in), .SN(n6), .Q(clk_out) );
  DFFRQX2 \cnt_p_reg[4]  ( .D(N14), .CK(clk_in), .RN(n6), .Q(cnt_p[4]) );
  DFFRQX2 \cnt_p_reg[0]  ( .D(n7), .CK(clk_in), .RN(n6), .Q(cnt_p[0]) );
  DFFRQX2 \cnt_p_reg[2]  ( .D(N12), .CK(clk_in), .RN(n6), .Q(cnt_p[2]) );
  DFFRQX2 \cnt_p_reg[1]  ( .D(N11), .CK(clk_in), .RN(n6), .Q(cnt_p[1]) );
  DFFRQX2 \cnt_p_reg[3]  ( .D(N13), .CK(clk_in), .RN(n6), .Q(cnt_p[3]) );
  ADDHX1 U14 ( .A(cnt_p[2]), .B(\add_34/carry[2] ), .CO(\add_34/carry[3] ), 
        .S(N7) );
  ADDHX1 U13 ( .A(cnt_p[1]), .B(cnt_p[0]), .CO(\add_34/carry[2] ), .S(N6) );
  ADDHX1 U15 ( .A(cnt_p[3]), .B(\add_34/carry[3] ), .CO(\add_34/carry[4] ), 
        .S(N8) );
  XOR2X1 U3 ( .A(clk_out), .B(n1), .Y(n3) );
  CLKBUFX4 U4 ( .A(rst_n), .Y(n6) );
  NOR2BX1 U5 ( .AN(N8), .B(n1), .Y(N13) );
  NOR2BX1 U6 ( .AN(N7), .B(n1), .Y(N12) );
  NOR2BX1 U7 ( .AN(N6), .B(n1), .Y(N11) );
  AND3X4 U8 ( .A(cnt_p[2]), .B(cnt_p[1]), .C(n5), .Y(n1) );
  NOR3X2 U9 ( .A(n7), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n5) );
  NOR2X2 U10 ( .A(n1), .B(n4), .Y(N14) );
  XNOR2X1 U11 ( .A(cnt_p[4]), .B(\add_34/carry[4] ), .Y(n4) );
  INVX2 U12 ( .A(cnt_p[0]), .Y(n7) );
endmodule


module UartIf ( clk_uart, rst_n, txd_from_fifo, fifo_empty, r_en, txd, 
        rxd_int_in, rxd, r_data, rxd_int );
  input [7:0] txd_from_fifo;
  output [7:0] r_data;
  input clk_uart, rst_n, fifo_empty, rxd_int_in, rxd;
  output r_en, txd, rxd_int;
  wire   n144, n93, clk_tx, tx_status, N47, N48, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, N59, N60, N61, N62, N63, N64, int_hold, rx_status,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N117, N118, N119, N120, N122, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N139, N141, N147, N150, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n88, n90, n91, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n89, n92, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143;
  wire   [3:0] tx_bit_cnt;
  wire   [11:0] tx_tmp;
  wire   [2:0] start_cnt;
  wire   [3:0] sample_cnt;
  wire   [3:0] bit_cnt;
  wire   [8:0] rx_tmp;

  DFFTRX4 rx_status_reg ( .D(n143), .RN(n133), .CK(clk_uart), .Q(rx_status), 
        .QN(n88) );
  NOR2X8 U88 ( .A(n128), .B(n88), .Y(n57) );
  ClkDiv_DIV_NUM16 ClkDiv_tx ( .clk_in(clk_uart), .rst_n(n125), .clk_out(
        clk_tx) );
  EDFFX2 \rx_tmp_reg[6]  ( .D(N130), .E(n122), .CK(clk_uart), .Q(rx_tmp[6]), 
        .QN(n8) );
  EDFFX2 \rx_tmp_reg[2]  ( .D(N126), .E(n122), .CK(clk_uart), .Q(rx_tmp[2]), 
        .QN(n6) );
  EDFFX2 \rx_tmp_reg[4]  ( .D(N128), .E(n122), .CK(clk_uart), .Q(rx_tmp[4]), 
        .QN(n7) );
  EDFFX2 \rx_tmp_reg[1]  ( .D(N125), .E(n122), .CK(clk_uart), .Q(rx_tmp[1]), 
        .QN(n5) );
  EDFFX2 \bit_cnt_reg[1]  ( .D(N120), .E(N150), .CK(clk_uart), .QN(n9) );
  EDFFX2 \sample_cnt_reg[2]  ( .D(N117), .E(n114), .CK(clk_uart), .QN(n110) );
  DFFTRX2 int_hold_reg ( .D(1'b1), .RN(N133), .CK(clk_uart), .Q(int_hold), 
        .QN(n91) );
  EDFFX2 \rx_tmp_reg[0]  ( .D(N124), .E(n122), .CK(clk_uart), .Q(rx_tmp[0]) );
  EDFFX2 \rx_tmp_reg[8]  ( .D(N132), .E(N139), .CK(clk_uart), .Q(rx_tmp[8]) );
  EDFFX2 \start_cnt_reg[2]  ( .D(N114), .E(n135), .CK(clk_uart), .Q(
        start_cnt[2]) );
  EDFFX2 \sample_cnt_reg[1]  ( .D(n134), .E(n114), .CK(clk_uart), .Q(
        sample_cnt[1]) );
  EDFFX2 \sample_cnt_reg[3]  ( .D(N118), .E(n114), .CK(clk_uart), .Q(
        sample_cnt[3]) );
  EDFFX2 \bit_cnt_reg[3]  ( .D(N122), .E(N150), .CK(clk_uart), .QN(n4) );
  EDFFX2 \bit_cnt_reg[2]  ( .D(n109), .E(N150), .CK(clk_uart), .Q(bit_cnt[2]), 
        .QN(n90) );
  EDFFX2 \r_data_out_reg[7]  ( .D(N110), .E(n112), .CK(clk_uart), .Q(r_data[7]) );
  EDFFX2 \r_data_out_reg[6]  ( .D(N109), .E(n112), .CK(clk_uart), .Q(r_data[6]) );
  EDFFX2 \r_data_out_reg[5]  ( .D(N108), .E(n112), .CK(clk_uart), .Q(r_data[5]) );
  EDFFX2 \r_data_out_reg[4]  ( .D(N107), .E(n121), .CK(clk_uart), .Q(r_data[4]) );
  EDFFX2 \r_data_out_reg[3]  ( .D(N106), .E(n121), .CK(clk_uart), .Q(r_data[3]) );
  EDFFX2 \r_data_out_reg[2]  ( .D(N105), .E(n121), .CK(clk_uart), .Q(r_data[2]) );
  EDFFX2 \r_data_out_reg[1]  ( .D(N104), .E(n121), .CK(clk_uart), .Q(r_data[1]) );
  EDFFX2 \r_data_out_reg[0]  ( .D(N103), .E(n121), .CK(clk_uart), .Q(r_data[0]) );
  EDFFX2 \sample_cnt_reg[0]  ( .D(N115), .E(n114), .CK(clk_uart), .Q(
        sample_cnt[0]) );
  EDFFX2 \rx_tmp_reg[7]  ( .D(N131), .E(n122), .CK(clk_uart), .QN(n2) );
  EDFFX2 \rx_tmp_reg[5]  ( .D(N129), .E(n122), .CK(clk_uart), .QN(n3) );
  EDFFX2 \rx_tmp_reg[3]  ( .D(N127), .E(n122), .CK(clk_uart), .QN(n1) );
  EDFFX2 \start_cnt_reg[1]  ( .D(N113), .E(n135), .CK(clk_uart), .Q(
        start_cnt[1]) );
  DFFQX4 tx_status_reg ( .D(N47), .CK(clk_tx), .Q(tx_status) );
  DFFQX2 \tx_bit_cnt_reg[3]  ( .D(N64), .CK(clk_tx), .Q(tx_bit_cnt[3]) );
  DFFQX2 \tx_bit_cnt_reg[0]  ( .D(N61), .CK(clk_tx), .Q(tx_bit_cnt[0]) );
  DFFQX2 rxd_int_out_reg ( .D(N111), .CK(clk_uart), .Q(rxd_int) );
  DFFQX2 \tx_bit_cnt_reg[1]  ( .D(N62), .CK(clk_tx), .Q(tx_bit_cnt[1]) );
  EDFFX4 \start_cnt_reg[0]  ( .D(N112), .E(n135), .CK(clk_uart), .Q(
        start_cnt[0]) );
  DFFQX2 \tx_bit_cnt_reg[2]  ( .D(N63), .CK(clk_tx), .Q(tx_bit_cnt[2]) );
  DFFQX2 \tx_tmp_reg[6]  ( .D(N55), .CK(clk_tx), .Q(tx_tmp[6]) );
  DFFQX2 \tx_tmp_reg[4]  ( .D(N53), .CK(clk_tx), .Q(tx_tmp[4]) );
  DFFQX2 \tx_tmp_reg[2]  ( .D(N51), .CK(clk_tx), .Q(tx_tmp[2]) );
  DFFQX2 \tx_tmp_reg[8]  ( .D(N57), .CK(clk_tx), .Q(tx_tmp[8]) );
  DFFQX2 \tx_tmp_reg[0]  ( .D(n137), .CK(clk_tx), .Q(tx_tmp[0]) );
  DFFQX2 \tx_tmp_reg[10]  ( .D(N59), .CK(clk_tx), .Q(tx_tmp[10]) );
  DFFQX2 \tx_tmp_reg[11]  ( .D(N60), .CK(clk_tx), .Q(tx_tmp[11]) );
  DFFQX2 \tx_tmp_reg[5]  ( .D(N54), .CK(clk_tx), .Q(tx_tmp[5]) );
  DFFQX2 \tx_tmp_reg[3]  ( .D(N52), .CK(clk_tx), .Q(tx_tmp[3]) );
  DFFQX2 \tx_tmp_reg[7]  ( .D(N56), .CK(clk_tx), .Q(tx_tmp[7]) );
  DFFQX2 \tx_tmp_reg[1]  ( .D(N50), .CK(clk_tx), .Q(tx_tmp[1]) );
  DFFQX2 \tx_tmp_reg[9]  ( .D(N58), .CK(clk_tx), .Q(tx_tmp[9]) );
  DFFQX2 txd_out_reg ( .D(N48), .CK(clk_tx), .Q(n93) );
  EDFFX2 \bit_cnt_reg[0]  ( .D(N119), .E(N150), .CK(clk_uart), .Q(bit_cnt[0]), 
        .QN(n118) );
  OAI2B11X1 U3 ( .A1N(txd_from_fifo[0]), .A0(n119), .B0(n126), .C0(n86), .Y(
        N50) );
  OAI2B11X1 U4 ( .A1N(txd_from_fifo[6]), .A0(n140), .B0(n125), .C0(n80), .Y(
        N56) );
  OAI2B11X1 U5 ( .A1N(txd_from_fifo[2]), .A0(n119), .B0(n126), .C0(n84), .Y(
        N52) );
  OAI2B11X1 U6 ( .A1N(txd_from_fifo[4]), .A0(n119), .B0(n126), .C0(n82), .Y(
        N54) );
  AOI221X1 U7 ( .A0(n123), .A1(tx_tmp[1]), .B0(n124), .B1(tx_tmp[0]), .C0(n130), .Y(n63) );
  AOI22X1 U8 ( .A0(tx_tmp[9]), .A1(n123), .B0(tx_tmp[8]), .B1(n124), .Y(n79)
         );
  AOI22X1 U9 ( .A0(tx_tmp[8]), .A1(n123), .B0(tx_tmp[7]), .B1(n124), .Y(n80)
         );
  AOI22X1 U10 ( .A0(tx_tmp[3]), .A1(n111), .B0(tx_tmp[2]), .B1(n113), .Y(n85)
         );
  AOI22X1 U11 ( .A0(tx_tmp[2]), .A1(n111), .B0(n113), .B1(tx_tmp[1]), .Y(n86)
         );
  AOI22X1 U12 ( .A0(tx_tmp[5]), .A1(n111), .B0(tx_tmp[4]), .B1(n113), .Y(n83)
         );
  AOI22X1 U13 ( .A0(tx_tmp[4]), .A1(n123), .B0(tx_tmp[3]), .B1(n124), .Y(n84)
         );
  AOI22X1 U14 ( .A0(tx_tmp[7]), .A1(n111), .B0(tx_tmp[6]), .B1(n113), .Y(n81)
         );
  AOI22X1 U15 ( .A0(tx_tmp[6]), .A1(n111), .B0(tx_tmp[5]), .B1(n124), .Y(n82)
         );
  NOR2X4 U16 ( .A(n128), .B(fifo_empty), .Y(N47) );
  NOR3X8 U17 ( .A(fifo_empty), .B(tx_bit_cnt[3]), .C(n66), .Y(n144) );
  AOI32X2 U18 ( .A0(n88), .A1(n55), .A2(n56), .B0(n57), .B1(n58), .Y(n54) );
  BUFX3 U19 ( .A(n64), .Y(n111) );
  AOI22X2 U20 ( .A0(n144), .A1(n72), .B0(tx_tmp[10]), .B1(n123), .Y(n71) );
  CLKBUFX4 U21 ( .A(n64), .Y(n123) );
  NOR2X2 U23 ( .A(n138), .B(n144), .Y(n64) );
  BUFX2 U24 ( .A(n121), .Y(n112) );
  INVX4 U25 ( .A(n139), .Y(n113) );
  CLKBUFX4 U26 ( .A(n65), .Y(n124) );
  CLKBUFX4 U27 ( .A(N147), .Y(n114) );
  OAI211X2 U28 ( .A0(rxd), .A1(n132), .B0(n126), .C0(n88), .Y(N147) );
  CLKBUFX20 U29 ( .A(n93), .Y(txd) );
  CLKINVX2 U30 ( .A(n140), .Y(r_en) );
  INVX2 U31 ( .A(n144), .Y(n140) );
  CLKINVX1 U32 ( .A(n54), .Y(n133) );
  INVX5 U33 ( .A(n127), .Y(n125) );
  CLKBUFX6 U34 ( .A(N141), .Y(n121) );
  INVX5 U35 ( .A(n127), .Y(n126) );
  BUFX2 U36 ( .A(n131), .Y(n127) );
  BUFX2 U37 ( .A(n131), .Y(n128) );
  BUFX2 U38 ( .A(n128), .Y(n129) );
  BUFX2 U39 ( .A(n127), .Y(n130) );
  INVX2 U40 ( .A(rst_n), .Y(n131) );
  NOR2X2 U41 ( .A(n120), .B(n142), .Y(N132) );
  INVX4 U42 ( .A(n68), .Y(n141) );
  INVX5 U43 ( .A(n57), .Y(n135) );
  OAI211X2 U44 ( .A0(n60), .A1(n110), .B0(n96), .C0(n57), .Y(N117) );
  NAND2X2 U45 ( .A(n60), .B(n110), .Y(n96) );
  INVX2 U46 ( .A(n56), .Y(n132) );
  CLKBUFX6 U47 ( .A(n92), .Y(n120) );
  NAND2X2 U48 ( .A(n125), .B(n58), .Y(n92) );
  INVX2 U49 ( .A(n61), .Y(n136) );
  CLKBUFX6 U50 ( .A(n140), .Y(n119) );
  CLKBUFX6 U51 ( .A(N139), .Y(n122) );
  OR2X2 U52 ( .A(n89), .B(n121), .Y(N139) );
  INVX2 U53 ( .A(n124), .Y(n139) );
  NOR2X6 U54 ( .A(n129), .B(rxd), .Y(n55) );
  INVX2 U55 ( .A(rxd), .Y(n142) );
  OAI21X4 U56 ( .A0(tx_bit_cnt[3]), .A1(n66), .B0(N47), .Y(n68) );
  OAI2B11X2 U57 ( .A1N(tx_tmp[9]), .A0(n139), .B0(n126), .C0(n71), .Y(N58) );
  XOR2X1 U58 ( .A(n73), .B(n74), .Y(n72) );
  XOR2X1 U59 ( .A(n77), .B(n78), .Y(n73) );
  OAI2B11X2 U60 ( .A1N(txd_from_fifo[7]), .A0(n119), .B0(n125), .C0(n79), .Y(
        N57) );
  OAI2B11X2 U61 ( .A1N(txd_from_fifo[3]), .A0(n119), .B0(n126), .C0(n83), .Y(
        N53) );
  OAI2B11X2 U62 ( .A1N(txd_from_fifo[5]), .A0(n119), .B0(n126), .C0(n81), .Y(
        N55) );
  OAI2B11X2 U63 ( .A1N(txd_from_fifo[1]), .A0(n119), .B0(n126), .C0(n85), .Y(
        N51) );
  OAI2B11X2 U64 ( .A1N(tx_tmp[10]), .A0(tx_status), .B0(n119), .C0(n70), .Y(
        N59) );
  AOI21X1 U65 ( .A0(tx_tmp[11]), .A1(tx_status), .B0(n129), .Y(n70) );
  OAI2BB1X1 U66 ( .A0N(n66), .A1N(tx_bit_cnt[3]), .B0(n141), .Y(N64) );
  OAI2BB2X2 U67 ( .B0(n66), .B1(n68), .A0N(tx_bit_cnt[2]), .A1N(n117), .Y(N63)
         );
  OAI2BB1X1 U68 ( .A0N(tx_bit_cnt[1]), .A1N(n141), .B0(N61), .Y(n117) );
  NAND2X2 U69 ( .A(tx_bit_cnt[0]), .B(n141), .Y(N61) );
  INVX2 U70 ( .A(n63), .Y(n137) );
  NAND2X2 U71 ( .A(n141), .B(n69), .Y(N62) );
  XOR2X1 U72 ( .A(tx_bit_cnt[1]), .B(tx_bit_cnt[0]), .Y(n69) );
  OR3X2 U73 ( .A(n130), .B(tx_tmp[0]), .C(n138), .Y(N48) );
  OR3X2 U74 ( .A(n130), .B(tx_tmp[11]), .C(n139), .Y(N60) );
  OR3X4 U75 ( .A(tx_bit_cnt[1]), .B(tx_bit_cnt[2]), .C(tx_bit_cnt[0]), .Y(n66)
         );
  NOR3X6 U76 ( .A(start_cnt[1]), .B(start_cnt[2]), .C(start_cnt[0]), .Y(n56)
         );
  NOR3X6 U77 ( .A(n88), .B(sample_cnt[3]), .C(n96), .Y(n89) );
  OAI33X2 U78 ( .A0(n121), .A1(rxd_int_in), .A2(n91), .B0(n58), .B1(rxd_int), 
        .B2(n135), .Y(N133) );
  NAND2X5 U79 ( .A(n125), .B(n101), .Y(n100) );
  XOR2X1 U80 ( .A(rx_tmp[8]), .B(n102), .Y(n101) );
  XOR2X1 U81 ( .A(n103), .B(n104), .Y(n102) );
  XOR2X1 U82 ( .A(n107), .B(n108), .Y(n103) );
  NOR2X4 U83 ( .A(sample_cnt[0]), .B(sample_cnt[1]), .Y(n60) );
  NAND2X4 U84 ( .A(n4), .B(n94), .Y(n58) );
  NOR2X2 U85 ( .A(n135), .B(bit_cnt[0]), .Y(N119) );
  NOR2X4 U86 ( .A(n136), .B(bit_cnt[2]), .Y(n94) );
  AND2X2 U87 ( .A(n9), .B(n118), .Y(n61) );
  OAI211X2 U89 ( .A0(n4), .A1(n94), .B0(n58), .C0(n57), .Y(N122) );
  OAI22X1 U90 ( .A0(n135), .A1(n58), .B0(n99), .B1(n131), .Y(N111) );
  AOI22X2 U91 ( .A0(rxd_int), .A1(int_hold), .B0(n91), .B1(rxd_int_in), .Y(n99) );
  OAI2B11X2 U92 ( .A1N(bit_cnt[0]), .A0(n9), .B0(n136), .C0(n57), .Y(N120) );
  OAI2B11X2 U93 ( .A1N(start_cnt[2]), .A0(n97), .B0(n132), .C0(n55), .Y(N114)
         );
  NOR2X2 U94 ( .A(start_cnt[0]), .B(start_cnt[1]), .Y(n97) );
  NAND2X4 U95 ( .A(n87), .B(n125), .Y(N150) );
  AOI31X1 U96 ( .A0(n56), .A1(n142), .A2(n88), .B0(n89), .Y(n87) );
  XOR2X1 U97 ( .A(n105), .B(n106), .Y(n104) );
  XOR2X1 U98 ( .A(rx_tmp[0]), .B(n3), .Y(n105) );
  XOR2X1 U99 ( .A(n2), .B(n1), .Y(n106) );
  XOR2X1 U100 ( .A(txd_from_fifo[5]), .B(txd_from_fifo[4]), .Y(n78) );
  XOR2X1 U101 ( .A(n75), .B(n76), .Y(n74) );
  XOR2X1 U102 ( .A(txd_from_fifo[3]), .B(txd_from_fifo[2]), .Y(n75) );
  XOR2X1 U103 ( .A(txd_from_fifo[1]), .B(txd_from_fifo[0]), .Y(n76) );
  XOR2X1 U104 ( .A(rx_tmp[2]), .B(rx_tmp[1]), .Y(n108) );
  XOR2X1 U105 ( .A(txd_from_fifo[7]), .B(txd_from_fifo[6]), .Y(n77) );
  XOR2X1 U106 ( .A(rx_tmp[6]), .B(rx_tmp[4]), .Y(n107) );
  NOR2X2 U107 ( .A(n5), .B(n100), .Y(N104) );
  NOR2X2 U108 ( .A(n6), .B(n100), .Y(N105) );
  NOR2X2 U109 ( .A(n1), .B(n100), .Y(N106) );
  NOR2X2 U110 ( .A(n7), .B(n100), .Y(N107) );
  NOR2X2 U111 ( .A(n3), .B(n100), .Y(N108) );
  NOR2X2 U112 ( .A(n8), .B(n100), .Y(N109) );
  NOR2X2 U113 ( .A(n2), .B(n100), .Y(N110) );
  NOR2BX1 U114 ( .AN(rx_tmp[0]), .B(n100), .Y(N103) );
  NAND2X2 U115 ( .A(sample_cnt[0]), .B(n57), .Y(N115) );
  NAND2X2 U116 ( .A(start_cnt[0]), .B(n55), .Y(N112) );
  NAND2X2 U117 ( .A(n55), .B(n98), .Y(N113) );
  XOR2X1 U118 ( .A(start_cnt[1]), .B(start_cnt[0]), .Y(n98) );
  NOR2X2 U119 ( .A(n1), .B(n120), .Y(N126) );
  NOR2X2 U120 ( .A(n3), .B(n120), .Y(N128) );
  NOR2X2 U121 ( .A(n2), .B(n120), .Y(N130) );
  NOR2X1 U122 ( .A(n144), .B(tx_status), .Y(n65) );
  NOR2X2 U123 ( .A(n6), .B(n120), .Y(N125) );
  NOR2X2 U124 ( .A(n5), .B(n120), .Y(N124) );
  NOR2X2 U125 ( .A(n7), .B(n120), .Y(N127) );
  NOR2X2 U126 ( .A(n8), .B(n120), .Y(N129) );
  NOR2BX1 U127 ( .AN(rx_tmp[8]), .B(n92), .Y(N131) );
  OAI21X1 U128 ( .A0(n88), .A1(n58), .B0(n125), .Y(N141) );
  INVX2 U129 ( .A(n59), .Y(n134) );
  AOI211X2 U130 ( .A0(sample_cnt[0]), .A1(sample_cnt[1]), .B0(n60), .C0(n135), 
        .Y(n59) );
  OAI31X2 U131 ( .A0(n90), .A1(n135), .A2(n61), .B0(n62), .Y(n109) );
  NAND3X2 U132 ( .A(n9), .B(N119), .C(n90), .Y(n62) );
  NAND2X2 U133 ( .A(n95), .B(n125), .Y(N118) );
  AOI31X1 U134 ( .A0(rx_status), .A1(n96), .A2(sample_cnt[3]), .B0(n89), .Y(
        n95) );
  INVX2 U135 ( .A(tx_status), .Y(n138) );
  INVX2 U136 ( .A(rxd_int_in), .Y(n143) );
endmodule


module Uart_FIFO_DEPTH16_FIFO_WIDTH8_ADDR_WIDTH4 ( fifo_w_clk, tx_clk, rst_n, 
        fifo_w_en, fifo_w_data, rxd_int_in, rxd, is_full, rxd_int, r_data, txd
 );
  input [7:0] fifo_w_data;
  output [7:0] r_data;
  input fifo_w_clk, tx_clk, rst_n, fifo_w_en, rxd_int_in, rxd;
  output is_full, rxd_int, txd;
  wire   fifo_r_en, is_empty, n7, n8, n9, n10, n11;
  wire   [7:0] fifo_r_data;

  UartFiFo_FIFO_WIDTH8_FIFO_DEPTH16_ADDR_WIDTH4 UartFiFo_ins ( .w_clk(
        fifo_w_clk), .w_rst_n(n7), .w_pt_reset(n10), .w_en(n11), .w_data(
        fifo_w_data), .r_clk(tx_clk), .r_rst_n(n7), .r_pt_reset(n10), .r_en(
        fifo_r_en), .r_data(fifo_r_data), .is_empty(is_empty), .is_full(
        is_full) );
  UartIf UartIf_ins ( .clk_uart(tx_clk), .rst_n(n9), .txd_from_fifo(
        fifo_r_data), .fifo_empty(is_empty), .r_en(fifo_r_en), .txd(txd), 
        .rxd_int_in(rxd_int_in), .rxd(rxd), .r_data(r_data), .rxd_int(rxd_int)
         );
  INVX4 U1 ( .A(n8), .Y(n7) );
  INVX2 U2 ( .A(rst_n), .Y(n8) );
  INVX2 U3 ( .A(n8), .Y(n9) );
  INVX2 U4 ( .A(n8), .Y(n10) );
  BUFX2 U5 ( .A(fifo_w_en), .Y(n11) );
endmodule


module Timer_0 ( clk, rst_n, cnt_sig, t_s, tmod, th, tl, th_nxt, tl_nxt, t_o
 );
  input [2:0] tmod;
  input [7:0] th;
  input [7:0] tl;
  output [7:0] th_nxt;
  output [7:0] tl_nxt;
  input clk, rst_n, cnt_sig, t_s;
  output t_o;
  wire   cnt_sig_early, t_s_early, N46, N47, N48, N49, N50, N51, N52, N53, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154;
  wire   [7:0] ini_val;

  OAI211X4 U9 ( .A0(n45), .A1(n138), .B0(n46), .C0(n47), .Y(n40) );
  AOI2BB1X4 U12 ( .A0N(n49), .A1N(n136), .B0(n38), .Y(n44) );
  OAI2BB2X4 U13 ( .B0(n51), .B1(n137), .A0N(n45), .A1N(n124), .Y(n38) );
  NOR3BX4 U14 ( .AN(n55), .B(tl[4]), .C(tl[5]), .Y(n45) );
  OAI2B11X4 U32 ( .A1N(n68), .A0(n138), .B0(n145), .C0(n46), .Y(n70) );
  OAI2BB2X4 U35 ( .B0(n68), .B1(n138), .A0N(n66), .A1N(n145), .Y(n72) );
  OAI211X4 U42 ( .A0(n77), .A1(n138), .B0(n123), .C0(n46), .Y(n78) );
  OA21X4 U43 ( .A0(n123), .A1(n81), .B0(n82), .Y(n46) );
  NOR3X8 U45 ( .A(n144), .B(n83), .C(n81), .Y(n48) );
  NOR3BX4 U50 ( .AN(n86), .B(n87), .C(n88), .Y(n85) );
  AOI222X4 U62 ( .A0(n96), .A1(n139), .B0(n125), .B1(n95), .C0(n121), .C1(n93), 
        .Y(n98) );
  AOI31X4 U81 ( .A0(tmod[1]), .A1(n147), .A2(tmod[0]), .B0(n127), .Y(n82) );
  EDFFX2 \ini_val_reg[6]  ( .D(N52), .E(n122), .CK(clk), .Q(ini_val[6]) );
  EDFFX2 \ini_val_reg[7]  ( .D(N53), .E(n122), .CK(clk), .Q(ini_val[7]) );
  EDFFX2 \ini_val_reg[2]  ( .D(N48), .E(n122), .CK(clk), .Q(ini_val[2]) );
  EDFFX2 \ini_val_reg[4]  ( .D(N50), .E(n122), .CK(clk), .Q(ini_val[4]) );
  EDFFX2 \ini_val_reg[0]  ( .D(N46), .E(n122), .CK(clk), .Q(ini_val[0]) );
  EDFFX2 \ini_val_reg[5]  ( .D(N51), .E(n122), .CK(clk), .Q(ini_val[5]) );
  EDFFX1 \ini_val_reg[3]  ( .D(N49), .E(n119), .CK(clk), .Q(ini_val[3]) );
  EDFFX1 \ini_val_reg[1]  ( .D(N47), .E(n119), .CK(clk), .Q(ini_val[1]) );
  DFFTRX2 cnt_sig_early_reg ( .D(n128), .RN(cnt_sig), .CK(clk), .Q(
        cnt_sig_early) );
  DFFTRX1 t_s_early_reg ( .D(rst_n), .RN(t_s), .CK(clk), .Q(t_s_early) );
  OAI21X4 U3 ( .A0(t_s_early), .A1(n144), .B0(n129), .Y(n119) );
  NOR2X6 U4 ( .A(n63), .B(tl[4]), .Y(n59) );
  CLKBUFX4 U5 ( .A(n119), .Y(n122) );
  BUFX2 U6 ( .A(rst_n), .Y(n130) );
  NOR3BX2 U7 ( .AN(n109), .B(th[7]), .C(th[6]), .Y(n118) );
  NOR2X6 U8 ( .A(th[5]), .B(th[4]), .Y(n94) );
  NOR2X6 U10 ( .A(th[3]), .B(th[2]), .Y(n101) );
  NOR3X8 U11 ( .A(tl[6]), .B(tl[7]), .C(n49), .Y(n83) );
  NOR2X6 U15 ( .A(th[1]), .B(th[0]), .Y(n109) );
  NOR2X6 U16 ( .A(tl[1]), .B(tl[0]), .Y(n74) );
  NOR4X6 U17 ( .A(n126), .B(tmod[0]), .C(tmod[1]), .D(tmod[2]), .Y(n50) );
  NOR3X6 U18 ( .A(tl[2]), .B(tl[3]), .C(n67), .Y(n56) );
  NOR3X6 U19 ( .A(tl[2]), .B(tl[3]), .C(n68), .Y(n55) );
  OAI2BB1X1 U20 ( .A0N(ini_val[7]), .A1N(n120), .B0(n37), .Y(tl_nxt[7]) );
  OAI221X1 U21 ( .A0(tl[0]), .A1(n79), .B0(n135), .B1(n152), .C0(n80), .Y(
        tl_nxt[0]) );
  NAND2X2 U22 ( .A(ini_val[0]), .B(n120), .Y(n80) );
  OAI2BB1X1 U23 ( .A0N(ini_val[6]), .A1N(n120), .B0(n43), .Y(tl_nxt[6]) );
  NAND2X2 U24 ( .A(ini_val[5]), .B(n120), .Y(n53) );
  INVX2 U25 ( .A(n123), .Y(n144) );
  OAI211X1 U26 ( .A0(tl[4]), .A1(n60), .B0(n61), .C0(n62), .Y(tl_nxt[4]) );
  AOI22X2 U27 ( .A0(n48), .A1(n59), .B0(ini_val[4]), .B1(n120), .Y(n62) );
  OR3X2 U28 ( .A(n81), .B(n144), .C(n141), .Y(n36) );
  INVX5 U29 ( .A(n36), .Y(n120) );
  BUFX2 U30 ( .A(n124), .Y(n121) );
  BUFX5 U31 ( .A(n54), .Y(n124) );
  INVX5 U33 ( .A(n124), .Y(n138) );
  NOR2X2 U34 ( .A(n124), .B(n125), .Y(n42) );
  AND3X2 U36 ( .A(n123), .B(n116), .C(n59), .Y(n110) );
  AND3X2 U37 ( .A(cnt_sig_early), .B(n123), .C(n148), .Y(n77) );
  INVX2 U38 ( .A(cnt_sig), .Y(n148) );
  INVX2 U39 ( .A(tl[2]), .Y(n153) );
  NAND3X2 U40 ( .A(n94), .B(n101), .C(n118), .Y(n116) );
  INVX2 U41 ( .A(tmod[2]), .Y(n147) );
  INVX2 U44 ( .A(tmod[1]), .Y(n143) );
  INVX2 U46 ( .A(tl[4]), .Y(n154) );
  INVX5 U47 ( .A(n128), .Y(n126) );
  BUFX2 U48 ( .A(n130), .Y(n128) );
  BUFX2 U49 ( .A(n130), .Y(n129) );
  INVX2 U51 ( .A(n130), .Y(n127) );
  NOR2BX4 U52 ( .AN(n101), .B(n102), .Y(n93) );
  INVX2 U53 ( .A(n92), .Y(n133) );
  OAI222X1 U54 ( .A0(n87), .A1(n84), .B0(n137), .B1(n89), .C0(n138), .C1(n90), 
        .Y(n92) );
  INVX2 U55 ( .A(n108), .Y(n132) );
  OAI222X1 U56 ( .A0(n104), .A1(n84), .B0(n137), .B1(n103), .C0(n138), .C1(
        n102), .Y(n108) );
  NAND3BX2 U57 ( .AN(n99), .B(n86), .C(n96), .Y(n97) );
  OAI22X1 U58 ( .A0(n137), .A1(n95), .B0(n138), .B1(n93), .Y(n99) );
  NAND2X2 U59 ( .A(n134), .B(n109), .Y(n102) );
  NAND2X2 U60 ( .A(n93), .B(n94), .Y(n90) );
  INVX2 U61 ( .A(n78), .Y(n135) );
  NOR2BX4 U63 ( .AN(n101), .B(n104), .Y(n96) );
  NOR2BX4 U64 ( .AN(n101), .B(n103), .Y(n95) );
  INVX4 U65 ( .A(n48), .Y(n136) );
  NAND2X2 U66 ( .A(n142), .B(n109), .Y(n103) );
  NAND2X2 U67 ( .A(n110), .B(n109), .Y(n104) );
  NAND2X2 U68 ( .A(n96), .B(n94), .Y(n87) );
  NAND2X2 U69 ( .A(n95), .B(n94), .Y(n89) );
  INVX2 U70 ( .A(n114), .Y(n142) );
  NAND2X2 U71 ( .A(n84), .B(n137), .Y(n66) );
  INVX2 U72 ( .A(n84), .Y(n139) );
  INVX2 U73 ( .A(n67), .Y(n145) );
  AOI22X2 U74 ( .A0(n48), .A1(n49), .B0(n125), .B1(n51), .Y(n47) );
  OAI2BB2X2 U75 ( .B0(th[4]), .B1(n98), .A0N(n97), .A1N(th[4]), .Y(th_nxt[4])
         );
  OAI2B1X1 U76 ( .A1N(th[3]), .A0(n100), .B0(n98), .Y(th_nxt[3]) );
  NOR2X2 U77 ( .A(th[2]), .B(n105), .Y(n100) );
  OAI2BB2X2 U78 ( .B0(th[0]), .B1(n112), .A0N(n111), .A1N(th[0]), .Y(th_nxt[0]) );
  AOI222X2 U79 ( .A0(n134), .A1(n121), .B0(n142), .B1(n125), .C0(n139), .C1(
        n110), .Y(n112) );
  AOI211X2 U80 ( .A0(n125), .A1(n146), .B0(n57), .C0(n58), .Y(n52) );
  OAI22X1 U82 ( .A0(n59), .A1(n136), .B0(n42), .B1(n154), .Y(n57) );
  AOI22X2 U83 ( .A0(n55), .A1(n124), .B0(n66), .B1(n56), .Y(n60) );
  AOI221X2 U84 ( .A0(n121), .A1(n77), .B0(n123), .B1(n66), .C0(n48), .Y(n79)
         );
  OAI21X4 U85 ( .A0(n55), .A1(n138), .B0(n46), .Y(n58) );
  OAI22X1 U86 ( .A0(th[6]), .A1(n133), .B0(n85), .B1(n149), .Y(th_nxt[6]) );
  OAI2BB2X2 U87 ( .B0(th[2]), .B1(n132), .A0N(n105), .A1N(th[2]), .Y(th_nxt[2]) );
  OAI2B1X1 U88 ( .A1N(th[1]), .A0(n107), .B0(n132), .Y(th_nxt[1]) );
  NOR2X2 U89 ( .A(th[0]), .B(n111), .Y(n107) );
  NAND3X2 U90 ( .A(n86), .B(n110), .C(n113), .Y(n111) );
  AOI22X2 U91 ( .A0(n125), .A1(n114), .B0(n124), .B1(n115), .Y(n113) );
  NAND3BX2 U92 ( .AN(n104), .B(n86), .C(n106), .Y(n105) );
  AOI22X2 U93 ( .A0(n125), .A1(n103), .B0(n124), .B1(n102), .Y(n106) );
  NAND2X2 U94 ( .A(n77), .B(n74), .Y(n68) );
  OAI2B1X1 U95 ( .A1N(th[5]), .A0(n91), .B0(n133), .Y(th_nxt[5]) );
  NOR2X2 U96 ( .A(th[4]), .B(n97), .Y(n91) );
  AO22X2 U97 ( .A0(n125), .A1(n89), .B0(n124), .B1(n90), .Y(n88) );
  INVX2 U98 ( .A(n115), .Y(n134) );
  OAI32X2 U99 ( .A0(n141), .A1(tmod[0]), .A2(n143), .B0(n117), .B1(n116), .Y(
        t_o) );
  AOI21X1 U100 ( .A0(n59), .A1(tmod[0]), .B0(n83), .Y(n117) );
  NAND2X2 U101 ( .A(n59), .B(n151), .Y(n49) );
  NAND3X2 U102 ( .A(t_s), .B(n116), .C(n83), .Y(n114) );
  NAND2X2 U103 ( .A(n74), .B(n153), .Y(n69) );
  INVX2 U104 ( .A(n83), .Y(n141) );
  NAND4X4 U105 ( .A(tmod[0]), .B(n129), .C(n143), .D(n147), .Y(n84) );
  INVX4 U106 ( .A(n50), .Y(n137) );
  NAND3X2 U107 ( .A(n154), .B(n151), .C(n56), .Y(n51) );
  INVX2 U108 ( .A(n56), .Y(n146) );
  NAND2X2 U109 ( .A(n123), .B(n74), .Y(n67) );
  CLKAND2X3 U110 ( .A(n82), .B(n81), .Y(n86) );
  NOR2X2 U111 ( .A(n126), .B(n154), .Y(N50) );
  NOR2X2 U112 ( .A(n126), .B(n153), .Y(N48) );
  NOR2X2 U113 ( .A(n126), .B(n150), .Y(N52) );
  NOR2X2 U114 ( .A(n126), .B(n151), .Y(N51) );
  NOR2X2 U115 ( .A(n126), .B(n152), .Y(N46) );
  NOR2X2 U116 ( .A(n147), .B(n127), .Y(n54) );
  NOR2X2 U117 ( .A(n126), .B(n140), .Y(N53) );
  INVX2 U118 ( .A(th[6]), .Y(n149) );
  OAI211X2 U119 ( .A0(n63), .A1(n136), .B0(n64), .C0(n65), .Y(tl_nxt[3]) );
  OAI2B11X2 U120 ( .A1N(n74), .A0(n136), .B0(n75), .C0(n76), .Y(tl_nxt[1]) );
  OAI21X1 U121 ( .A0(tl[0]), .A1(n78), .B0(tl[1]), .Y(n75) );
  INVX2 U122 ( .A(n71), .Y(tl_nxt[2]) );
  AOI221X2 U123 ( .A0(n70), .A1(tl[2]), .B0(n153), .B1(n72), .C0(n73), .Y(n71)
         );
  OAI211X2 U124 ( .A0(n52), .A1(n151), .B0(n53), .C0(n44), .Y(tl_nxt[5]) );
  AOI21X1 U125 ( .A0(ini_val[1]), .A1(n120), .B0(n72), .Y(n76) );
  AOI2BB2X1 U126 ( .B0(tl[6]), .B1(n40), .A0N(n44), .A1N(tl[6]), .Y(n43) );
  AOI31X1 U127 ( .A0(n150), .A1(n140), .A2(n38), .B0(n39), .Y(n37) );
  AOI2B1X1 U128 ( .A1N(n40), .A0(n41), .B0(n140), .Y(n39) );
  OAI2BB1X1 U129 ( .A0N(n136), .A1N(n42), .B0(tl[6]), .Y(n41) );
  OAI21X1 U130 ( .A0(n69), .A1(n70), .B0(tl[3]), .Y(n64) );
  NAND3X2 U131 ( .A(cnt_sig_early), .B(n148), .C(n142), .Y(n115) );
  OAI21X1 U132 ( .A0(n146), .A1(n58), .B0(tl[4]), .Y(n61) );
  AOI21BX1 U133 ( .A0(ini_val[3]), .A1(n120), .B0N(n60), .Y(n65) );
  AOI21BX2 U134 ( .A0(n85), .A1(n149), .B0N(th[7]), .Y(th_nxt[7]) );
  OAI2BB2X1 U135 ( .B0(n136), .B1(n69), .A0N(ini_val[2]), .A1N(n120), .Y(n73)
         );
  INVX4 U136 ( .A(tl[5]), .Y(n151) );
  OR2X2 U137 ( .A(tl[3]), .B(n69), .Y(n63) );
  OR4X4 U138 ( .A(tmod[0]), .B(n143), .C(n127), .D(tmod[2]), .Y(n81) );
  CLKINVX2 U139 ( .A(tl[6]), .Y(n150) );
  INVX2 U140 ( .A(tl[0]), .Y(n152) );
  INVX2 U141 ( .A(tl[7]), .Y(n140) );
  CLKBUFX6 U142 ( .A(n50), .Y(n125) );
  CLKBUFX6 U143 ( .A(t_s), .Y(n123) );
  AND2X2 U144 ( .A(tl[3]), .B(n129), .Y(N49) );
  AND2X2 U145 ( .A(tl[1]), .B(n128), .Y(N47) );
endmodule


module Timer_1 ( clk, rst_n, cnt_sig, t_s, tmod, th, tl, th_nxt, tl_nxt, t_o
 );
  input [2:0] tmod;
  input [7:0] th;
  input [7:0] tl;
  output [7:0] th_nxt;
  output [7:0] tl_nxt;
  input clk, rst_n, cnt_sig, t_s;
  output t_o;
  wire   cnt_sig_early, t_s_early, N46, N47, N48, N49, N50, N51, N52, N53, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185;
  wire   [7:0] ini_val;

  OAI211X4 U9 ( .A0(n45), .A1(n169), .B0(n46), .C0(n47), .Y(n40) );
  AOI2BB1X4 U12 ( .A0N(n49), .A1N(n167), .B0(n38), .Y(n44) );
  OAI2BB2X4 U13 ( .B0(n51), .B1(n168), .A0N(n45), .A1N(n156), .Y(n38) );
  NOR3BX4 U14 ( .AN(n55), .B(tl[4]), .C(tl[5]), .Y(n45) );
  OAI2B11X4 U32 ( .A1N(n68), .A0(n169), .B0(n175), .C0(n46), .Y(n70) );
  OAI2BB2X4 U35 ( .B0(n68), .B1(n169), .A0N(n66), .A1N(n175), .Y(n72) );
  OAI211X4 U42 ( .A0(n77), .A1(n169), .B0(n155), .C0(n46), .Y(n78) );
  OA21X4 U43 ( .A0(n155), .A1(n81), .B0(n82), .Y(n46) );
  NOR3X8 U45 ( .A(n174), .B(n83), .C(n81), .Y(n48) );
  NOR3BX4 U50 ( .AN(n86), .B(n87), .C(n88), .Y(n85) );
  AOI222X4 U62 ( .A0(n96), .A1(n170), .B0(n157), .B1(n95), .C0(n153), .C1(n93), 
        .Y(n98) );
  AOI31X4 U81 ( .A0(tmod[1]), .A1(n178), .A2(tmod[0]), .B0(n159), .Y(n82) );
  EDFFX2 \ini_val_reg[6]  ( .D(N52), .E(n152), .CK(clk), .Q(ini_val[6]) );
  EDFFX2 \ini_val_reg[7]  ( .D(N53), .E(n152), .CK(clk), .Q(ini_val[7]) );
  EDFFX2 \ini_val_reg[2]  ( .D(N48), .E(n152), .CK(clk), .Q(ini_val[2]) );
  EDFFX2 \ini_val_reg[4]  ( .D(N50), .E(n152), .CK(clk), .Q(ini_val[4]) );
  EDFFX2 \ini_val_reg[0]  ( .D(N46), .E(n152), .CK(clk), .Q(ini_val[0]) );
  EDFFX2 \ini_val_reg[5]  ( .D(N51), .E(n152), .CK(clk), .Q(ini_val[5]) );
  EDFFX1 \ini_val_reg[3]  ( .D(N49), .E(n151), .CK(clk), .Q(ini_val[3]) );
  EDFFX1 \ini_val_reg[1]  ( .D(N47), .E(n151), .CK(clk), .Q(ini_val[1]) );
  DFFTRX2 cnt_sig_early_reg ( .D(n160), .RN(cnt_sig), .CK(clk), .Q(
        cnt_sig_early) );
  DFFTRX2 t_s_early_reg ( .D(n161), .RN(n155), .CK(clk), .Q(t_s_early) );
  OAI21X4 U3 ( .A0(t_s_early), .A1(n174), .B0(n161), .Y(n151) );
  NOR2X6 U4 ( .A(n63), .B(tl[4]), .Y(n59) );
  CLKBUFX4 U5 ( .A(n151), .Y(n152) );
  NOR3X8 U6 ( .A(tl[6]), .B(tl[7]), .C(n49), .Y(n83) );
  NOR3BX2 U7 ( .AN(n109), .B(th[7]), .C(th[6]), .Y(n118) );
  NOR2X6 U8 ( .A(th[5]), .B(th[4]), .Y(n94) );
  NOR2X6 U10 ( .A(th[3]), .B(th[2]), .Y(n101) );
  NOR4X6 U11 ( .A(n158), .B(tmod[0]), .C(tmod[1]), .D(tmod[2]), .Y(n50) );
  NOR2X6 U15 ( .A(th[1]), .B(th[0]), .Y(n109) );
  NOR3X6 U16 ( .A(tl[2]), .B(tl[3]), .C(n68), .Y(n55) );
  NOR3X6 U17 ( .A(tl[2]), .B(tl[3]), .C(n67), .Y(n56) );
  NOR2X6 U18 ( .A(tl[1]), .B(tl[0]), .Y(n74) );
  OAI2BB1X1 U19 ( .A0N(ini_val[7]), .A1N(n154), .B0(n37), .Y(tl_nxt[7]) );
  OAI2BB1X1 U20 ( .A0N(ini_val[6]), .A1N(n154), .B0(n43), .Y(tl_nxt[6]) );
  NAND2X2 U21 ( .A(ini_val[5]), .B(n154), .Y(n53) );
  NAND2X2 U22 ( .A(ini_val[0]), .B(n154), .Y(n80) );
  AOI22X2 U23 ( .A0(n48), .A1(n59), .B0(ini_val[4]), .B1(n154), .Y(n62) );
  INVX2 U24 ( .A(n155), .Y(n174) );
  BUFX2 U25 ( .A(n156), .Y(n153) );
  BUFX5 U26 ( .A(n54), .Y(n156) );
  OR3X2 U27 ( .A(n81), .B(n174), .C(n172), .Y(n36) );
  INVX5 U28 ( .A(n36), .Y(n154) );
  INVX5 U29 ( .A(n156), .Y(n169) );
  NOR2X2 U30 ( .A(n156), .B(n157), .Y(n42) );
  AND3X2 U31 ( .A(n155), .B(n116), .C(n59), .Y(n110) );
  AND3X2 U33 ( .A(cnt_sig_early), .B(n155), .C(n179), .Y(n77) );
  INVX2 U34 ( .A(cnt_sig), .Y(n179) );
  INVX2 U36 ( .A(tl[2]), .Y(n185) );
  NAND3X2 U37 ( .A(n94), .B(n101), .C(n118), .Y(n116) );
  INVX2 U38 ( .A(tmod[2]), .Y(n178) );
  INVX2 U39 ( .A(tmod[1]), .Y(n177) );
  INVX2 U40 ( .A(tl[4]), .Y(n182) );
  INVX5 U41 ( .A(n160), .Y(n158) );
  BUFX2 U44 ( .A(n161), .Y(n160) );
  INVX2 U46 ( .A(n161), .Y(n159) );
  NOR2BX4 U47 ( .AN(n101), .B(n102), .Y(n93) );
  INVX2 U48 ( .A(n92), .Y(n164) );
  OAI222X1 U49 ( .A0(n87), .A1(n84), .B0(n168), .B1(n89), .C0(n169), .C1(n90), 
        .Y(n92) );
  INVX2 U51 ( .A(n108), .Y(n163) );
  OAI222X1 U52 ( .A0(n104), .A1(n84), .B0(n168), .B1(n103), .C0(n169), .C1(
        n102), .Y(n108) );
  NAND3BX2 U53 ( .AN(n99), .B(n86), .C(n96), .Y(n97) );
  OAI22X1 U54 ( .A0(n168), .A1(n95), .B0(n169), .B1(n93), .Y(n99) );
  NAND2X2 U55 ( .A(n165), .B(n109), .Y(n102) );
  NAND2X2 U56 ( .A(n93), .B(n94), .Y(n90) );
  INVX2 U57 ( .A(n78), .Y(n166) );
  NOR2BX4 U58 ( .AN(n101), .B(n104), .Y(n96) );
  NOR2BX4 U59 ( .AN(n101), .B(n103), .Y(n95) );
  INVX4 U60 ( .A(n48), .Y(n167) );
  NAND2X2 U61 ( .A(n173), .B(n109), .Y(n103) );
  NAND2X2 U63 ( .A(n110), .B(n109), .Y(n104) );
  NAND2X2 U64 ( .A(n96), .B(n94), .Y(n87) );
  NAND2X2 U65 ( .A(n95), .B(n94), .Y(n89) );
  INVX2 U66 ( .A(n114), .Y(n173) );
  NAND2X2 U67 ( .A(n84), .B(n168), .Y(n66) );
  INVX2 U68 ( .A(n84), .Y(n170) );
  INVX2 U69 ( .A(n67), .Y(n175) );
  CLKBUFX4 U70 ( .A(rst_n), .Y(n161) );
  AOI22X2 U71 ( .A0(n48), .A1(n49), .B0(n157), .B1(n51), .Y(n47) );
  OAI2BB2X2 U72 ( .B0(th[4]), .B1(n98), .A0N(n97), .A1N(th[4]), .Y(th_nxt[4])
         );
  OAI2B1X1 U73 ( .A1N(th[3]), .A0(n100), .B0(n98), .Y(th_nxt[3]) );
  NOR2X2 U74 ( .A(th[2]), .B(n105), .Y(n100) );
  OAI2BB2X2 U75 ( .B0(th[0]), .B1(n112), .A0N(n111), .A1N(th[0]), .Y(th_nxt[0]) );
  AOI222X2 U76 ( .A0(n165), .A1(n153), .B0(n173), .B1(n157), .C0(n170), .C1(
        n110), .Y(n112) );
  AOI211X2 U77 ( .A0(n157), .A1(n176), .B0(n57), .C0(n58), .Y(n52) );
  OAI22X1 U78 ( .A0(n59), .A1(n167), .B0(n42), .B1(n182), .Y(n57) );
  AOI22X2 U79 ( .A0(n55), .A1(n156), .B0(n66), .B1(n56), .Y(n60) );
  AOI221X2 U80 ( .A0(n153), .A1(n77), .B0(n155), .B1(n66), .C0(n48), .Y(n79)
         );
  OAI21X4 U82 ( .A0(n55), .A1(n169), .B0(n46), .Y(n58) );
  OAI22X1 U83 ( .A0(th[6]), .A1(n164), .B0(n85), .B1(n180), .Y(th_nxt[6]) );
  OAI2BB2X2 U84 ( .B0(th[2]), .B1(n163), .A0N(n105), .A1N(th[2]), .Y(th_nxt[2]) );
  OAI2B1X1 U85 ( .A1N(th[1]), .A0(n107), .B0(n163), .Y(th_nxt[1]) );
  NOR2X2 U86 ( .A(th[0]), .B(n111), .Y(n107) );
  NAND3X2 U87 ( .A(n86), .B(n110), .C(n113), .Y(n111) );
  AOI22X2 U88 ( .A0(n157), .A1(n114), .B0(n156), .B1(n115), .Y(n113) );
  NAND3BX2 U89 ( .AN(n104), .B(n86), .C(n106), .Y(n105) );
  AOI22X2 U90 ( .A0(n157), .A1(n103), .B0(n156), .B1(n102), .Y(n106) );
  NAND2X2 U91 ( .A(n77), .B(n74), .Y(n68) );
  OAI2B1X1 U92 ( .A1N(th[5]), .A0(n91), .B0(n164), .Y(th_nxt[5]) );
  NOR2X2 U93 ( .A(th[4]), .B(n97), .Y(n91) );
  AO22X2 U94 ( .A0(n157), .A1(n89), .B0(n156), .B1(n90), .Y(n88) );
  INVX2 U95 ( .A(n115), .Y(n165) );
  NAND2X2 U96 ( .A(n59), .B(n183), .Y(n49) );
  NAND3X2 U97 ( .A(t_s), .B(n116), .C(n83), .Y(n114) );
  NAND2X2 U98 ( .A(n74), .B(n185), .Y(n69) );
  INVX2 U99 ( .A(n83), .Y(n172) );
  OAI32X2 U100 ( .A0(n172), .A1(tmod[0]), .A2(n177), .B0(n117), .B1(n116), .Y(
        t_o) );
  AOI21X1 U101 ( .A0(n59), .A1(tmod[0]), .B0(n83), .Y(n117) );
  NAND4X4 U102 ( .A(tmod[0]), .B(n161), .C(n177), .D(n178), .Y(n84) );
  INVX4 U103 ( .A(n50), .Y(n168) );
  NAND3X2 U104 ( .A(n182), .B(n183), .C(n56), .Y(n51) );
  INVX2 U105 ( .A(n56), .Y(n176) );
  NAND2X2 U106 ( .A(n155), .B(n74), .Y(n67) );
  CLKAND2X3 U107 ( .A(n82), .B(n81), .Y(n86) );
  NOR2X2 U108 ( .A(n158), .B(n182), .Y(N50) );
  NOR2X2 U109 ( .A(n158), .B(n185), .Y(N48) );
  NOR2X2 U110 ( .A(n158), .B(n184), .Y(N52) );
  NOR2X2 U111 ( .A(n158), .B(n183), .Y(N51) );
  NOR2X2 U112 ( .A(n158), .B(n181), .Y(N46) );
  NOR2X2 U113 ( .A(n178), .B(n159), .Y(n54) );
  NOR2X2 U114 ( .A(n158), .B(n171), .Y(N53) );
  INVX2 U115 ( .A(th[6]), .Y(n180) );
  INVX2 U116 ( .A(n71), .Y(tl_nxt[2]) );
  AOI221X2 U117 ( .A0(n70), .A1(tl[2]), .B0(n185), .B1(n72), .C0(n73), .Y(n71)
         );
  OAI221X2 U118 ( .A0(tl[0]), .A1(n79), .B0(n166), .B1(n181), .C0(n80), .Y(
        tl_nxt[0]) );
  OAI211X2 U119 ( .A0(n63), .A1(n167), .B0(n64), .C0(n65), .Y(tl_nxt[3]) );
  OAI21X1 U120 ( .A0(n69), .A1(n70), .B0(tl[3]), .Y(n64) );
  AOI21X1 U121 ( .A0(ini_val[1]), .A1(n154), .B0(n72), .Y(n76) );
  AOI31X1 U122 ( .A0(n184), .A1(n171), .A2(n38), .B0(n39), .Y(n37) );
  AOI2BB2X1 U123 ( .B0(tl[6]), .B1(n40), .A0N(n44), .A1N(tl[6]), .Y(n43) );
  AOI2B1X1 U124 ( .A1N(n40), .A0(n41), .B0(n171), .Y(n39) );
  OAI2BB1X1 U125 ( .A0N(n167), .A1N(n42), .B0(tl[6]), .Y(n41) );
  OAI2B11X2 U126 ( .A1N(n74), .A0(n167), .B0(n75), .C0(n76), .Y(tl_nxt[1]) );
  OAI21X1 U127 ( .A0(tl[0]), .A1(n78), .B0(tl[1]), .Y(n75) );
  NAND3X2 U128 ( .A(cnt_sig_early), .B(n179), .C(n173), .Y(n115) );
  OAI21X1 U129 ( .A0(n176), .A1(n58), .B0(tl[4]), .Y(n61) );
  OAI211X2 U130 ( .A0(n52), .A1(n183), .B0(n53), .C0(n44), .Y(tl_nxt[5]) );
  OAI211X2 U131 ( .A0(tl[4]), .A1(n60), .B0(n61), .C0(n62), .Y(tl_nxt[4]) );
  AOI21BX1 U132 ( .A0(ini_val[3]), .A1(n154), .B0N(n60), .Y(n65) );
  AOI21BX2 U133 ( .A0(n85), .A1(n180), .B0N(th[7]), .Y(th_nxt[7]) );
  OAI2BB2X1 U134 ( .B0(n167), .B1(n69), .A0N(ini_val[2]), .A1N(n154), .Y(n73)
         );
  INVX4 U135 ( .A(tl[5]), .Y(n183) );
  OR2X2 U136 ( .A(tl[3]), .B(n69), .Y(n63) );
  OR4X4 U137 ( .A(tmod[0]), .B(n177), .C(n159), .D(tmod[2]), .Y(n81) );
  CLKINVX2 U138 ( .A(tl[6]), .Y(n184) );
  INVX2 U139 ( .A(tl[0]), .Y(n181) );
  INVX2 U140 ( .A(tl[7]), .Y(n171) );
  CLKBUFX6 U141 ( .A(n50), .Y(n157) );
  CLKBUFX6 U142 ( .A(t_s), .Y(n155) );
  AND2X2 U143 ( .A(tl[3]), .B(n160), .Y(N49) );
  AND2X2 U144 ( .A(tl[1]), .B(n161), .Y(N47) );
endmodule


module IntArbiter ( IE, TCON, SCON, int_early, TCON_nxt );
  input [7:0] IE;
  input [7:0] TCON;
  input [1:0] SCON;
  output [4:0] int_early;
  output [7:0] TCON_nxt;
  wire   IE_7, \TCON[7] , \TCON[6] , \TCON[5] , \TCON[4] , n4, n5, n6, n7, n8,
         n9, n10;
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

  OAI211X1 U2 ( .A0(SCON[1]), .A1(SCON[0]), .B0(n6), .C0(n5), .Y(n7) );
  NAND2X2 U3 ( .A(n10), .B(n4), .Y(n8) );
  INVX2 U4 ( .A(n5), .Y(int_early[2]) );
  INVX2 U5 ( .A(n4), .Y(int_early[1]) );
  INVX2 U6 ( .A(n6), .Y(int_early[3]) );
  NOR3BX2 U7 ( .AN(IE[4]), .B(n7), .C(n8), .Y(int_early[4]) );
  NAND3BX2 U8 ( .AN(n8), .B(IE[2]), .C(TCON[3]), .Y(n5) );
  AOI21BX2 U9 ( .A0(IE[0]), .A1(TCON[1]), .B0N(IE_7), .Y(n10) );
  NAND3X2 U10 ( .A(IE[1]), .B(n10), .C(TCON[0]), .Y(n4) );
  AND3X2 U11 ( .A(TCON[1]), .B(IE[0]), .C(IE_7), .Y(int_early[0]) );
  NAND3X2 U12 ( .A(TCON[2]), .B(IE[3]), .C(n9), .Y(n6) );
  AOI21X1 U13 ( .A0(TCON[3]), .A1(IE[2]), .B0(n8), .Y(n9) );
endmodule


module IntControl ( clk, rst_n, IE, TCON, SCON, interupt, TCON_out );
  input [7:0] IE;
  input [7:0] TCON;
  input [1:0] SCON;
  output [4:0] interupt;
  output [3:0] TCON_out;
  input clk, rst_n;

  assign TCON_out[3] = 1'b0;
  assign TCON_out[2] = 1'b0;
  assign TCON_out[1] = 1'b0;
  assign TCON_out[0] = 1'b0;

  IntArbiter IntArbiter_ins ( .IE(IE), .TCON(TCON), .SCON(SCON), .int_early(
        interupt) );
endmodule


module ClkDiv_DIV_NUM2 ( clk_in, rst_n, clk_out );
  input clk_in, rst_n;
  output clk_out;
  wire   N6, N7, N8, N10, N11, N12, N13, N14, n3, \add_34/carry[4] ,
         \add_34/carry[3] , \add_34/carry[2] , n1, n2, n4, n7, n8;
  wire   [4:0] cnt_p;

  DFFRQX2 \cnt_p_reg[4]  ( .D(N14), .CK(clk_in), .RN(n8), .Q(cnt_p[4]) );
  DFFRQX2 \cnt_p_reg[1]  ( .D(N11), .CK(clk_in), .RN(n8), .Q(cnt_p[1]) );
  DFFRQX2 \cnt_p_reg[2]  ( .D(N12), .CK(clk_in), .RN(n8), .Q(cnt_p[2]) );
  DFFRQX2 \cnt_p_reg[3]  ( .D(N13), .CK(clk_in), .RN(n8), .Q(cnt_p[3]) );
  DFFRQX2 \cnt_p_reg[0]  ( .D(N10), .CK(clk_in), .RN(n8), .Q(cnt_p[0]) );
  ADDHX1 U15 ( .A(cnt_p[2]), .B(\add_34/carry[2] ), .CO(\add_34/carry[3] ), 
        .S(N7) );
  ADDHX1 U14 ( .A(cnt_p[1]), .B(cnt_p[0]), .CO(\add_34/carry[2] ), .S(N6) );
  ADDHX1 U16 ( .A(cnt_p[3]), .B(\add_34/carry[3] ), .CO(\add_34/carry[4] ), 
        .S(N8) );
  DFFSQX2 clk_o_reg ( .D(n3), .CK(clk_in), .SN(n8), .Q(clk_out) );
  NOR2X2 U3 ( .A(n7), .B(n2), .Y(N14) );
  NOR2BX1 U4 ( .AN(N7), .B(n7), .Y(N12) );
  NOR2BX1 U5 ( .AN(N8), .B(n7), .Y(N13) );
  NOR2BX1 U6 ( .AN(N6), .B(n7), .Y(N11) );
  NOR2X2 U7 ( .A(cnt_p[0]), .B(n7), .Y(N10) );
  CLKBUFX4 U8 ( .A(n1), .Y(n7) );
  NOR3BX2 U9 ( .AN(n4), .B(cnt_p[1]), .C(cnt_p[0]), .Y(n1) );
  CLKBUFX4 U10 ( .A(rst_n), .Y(n8) );
  XOR2X1 U11 ( .A(clk_out), .B(n7), .Y(n3) );
  XNOR2X1 U12 ( .A(cnt_p[4]), .B(\add_34/carry[4] ), .Y(n2) );
  NOR3X2 U13 ( .A(cnt_p[2]), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n4) );
endmodule


module ClkDiv_DIV_NUM12 ( clk_in, rst_n, clk_out );
  input clk_in, rst_n;
  output clk_out;
  wire   N6, N7, N8, N11, N12, N13, N14, n3, \add_34/carry[4] ,
         \add_34/carry[3] , \add_34/carry[2] , n2, n4, n5, n6, n7;
  wire   [4:0] cnt_p;

  DFFRQX2 \cnt_p_reg[4]  ( .D(N14), .CK(clk_in), .RN(n6), .Q(cnt_p[4]) );
  DFFRQX2 \cnt_p_reg[2]  ( .D(N12), .CK(clk_in), .RN(n6), .Q(cnt_p[2]) );
  DFFRQX2 \cnt_p_reg[1]  ( .D(N11), .CK(clk_in), .RN(n6), .Q(cnt_p[1]) );
  DFFRQX2 \cnt_p_reg[3]  ( .D(N13), .CK(clk_in), .RN(n6), .Q(cnt_p[3]) );
  DFFRQX2 \cnt_p_reg[0]  ( .D(n7), .CK(clk_in), .RN(n6), .Q(cnt_p[0]) );
  ADDHX1 U11 ( .A(cnt_p[2]), .B(\add_34/carry[2] ), .CO(\add_34/carry[3] ), 
        .S(N7) );
  ADDHX1 U10 ( .A(cnt_p[1]), .B(cnt_p[0]), .CO(\add_34/carry[2] ), .S(N6) );
  ADDHX1 U12 ( .A(cnt_p[3]), .B(\add_34/carry[3] ), .CO(\add_34/carry[4] ), 
        .S(N8) );
  DFFSQX2 clk_o_reg ( .D(n3), .CK(clk_in), .SN(rst_n), .Q(clk_out) );
  CLKBUFX4 U3 ( .A(rst_n), .Y(n6) );
  NOR2BX1 U4 ( .AN(N6), .B(n2), .Y(N11) );
  NOR2BX1 U5 ( .AN(N8), .B(n2), .Y(N13) );
  NOR2BX1 U6 ( .AN(N7), .B(n2), .Y(N12) );
  AND3X4 U7 ( .A(cnt_p[2]), .B(cnt_p[0]), .C(n5), .Y(n2) );
  NOR3X2 U8 ( .A(cnt_p[1]), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n5) );
  XOR2X1 U9 ( .A(clk_out), .B(n2), .Y(n3) );
  NOR2X2 U13 ( .A(n2), .B(n4), .Y(N14) );
  XNOR2X1 U14 ( .A(cnt_p[4]), .B(\add_34/carry[4] ), .Y(n4) );
  INVX2 U15 ( .A(cnt_p[0]), .Y(n7) );
endmodule


module InsDecoder ( clk, rst_n, instruction, run_phase, psw, ram_data_register, 
        rom_data_register, interupt_en, run_phase_init, a_data_from, 
        b_data_from, alu_op, a_bit_location, b_bit_location, bit_en, 
        addr_register_out, next_status );
  input [7:0] instruction;
  input [3:0] run_phase;
  input [7:0] psw;
  input [7:0] ram_data_register;
  input [7:0] rom_data_register;
  output [3:0] run_phase_init;
  output [3:0] a_data_from;
  output [3:0] b_data_from;
  output [3:0] alu_op;
  output [2:0] a_bit_location;
  output [2:0] b_bit_location;
  output [7:0] addr_register_out;
  output [2:0] next_status;
  input clk, rst_n, interupt_en;
  output bit_en;
  wire   N54, N55, n809, N1141, n720, n721, n722, n723, n724, n725, n726, n727,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n215, n216, n217, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n346, n347, n348,
         n349, n350, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n812, n813,
         n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, n824,
         n825, n826, n827, n828, n831, n832, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058;
  wire   [7:0] tmp;
  assign a_data_from[3] = 1'b0;
  assign a_data_from[1] = n809;

  NOR4BX4 U26 ( .AN(n201), .B(n202), .C(n203), .D(n204), .Y(n200) );
  AOI2B1X4 U46 ( .A1N(n152), .A0(n242), .B0(n913), .Y(n186) );
  NOR4BX4 U70 ( .AN(n289), .B(n290), .C(n291), .D(n292), .Y(n255) );
  NOR3BX4 U74 ( .AN(n297), .B(n298), .C(n860), .Y(n209) );
  NOR4BX4 U98 ( .AN(n335), .B(n992), .C(n336), .D(n337), .Y(n334) );
  NAND4BBX4 U120 ( .AN(n364), .BN(n365), .C(n366), .D(n367), .Y(b_data_from[1]) );
  NOR4BX4 U128 ( .AN(n382), .B(n383), .C(n384), .D(n997), .Y(n381) );
  NOR4BX4 U147 ( .AN(n400), .B(n401), .C(n402), .D(n403), .Y(n393) );
  OAI211X4 U150 ( .A0(n390), .A1(n410), .B0(n411), .C0(n412), .Y(n401) );
  OAI2B11X4 U153 ( .A1N(n399), .A0(n985), .B0(n929), .C0(n415), .Y(n316) );
  NOR4BBX4 U165 ( .AN(n366), .BN(n414), .C(n814), .D(n429), .Y(n424) );
  OAI211X4 U168 ( .A0(n916), .A1(n398), .B0(n400), .C0(n431), .Y(n408) );
  OAI2B11X4 U176 ( .A1N(n341), .A0(n974), .B0(n264), .C0(n443), .Y(n349) );
  OAI31X4 U178 ( .A0(n444), .A1(n916), .A2(n825), .B0(n446), .Y(n402) );
  OAI22X4 U184 ( .A0(n304), .A1(n816), .B0(n456), .B1(n271), .Y(n363) );
  NOR4BBX4 U190 ( .AN(n462), .BN(n463), .C(n387), .D(n940), .Y(n369) );
  OAI222X4 U192 ( .A0(n941), .A1(n465), .B0(n916), .B1(n466), .C0(n410), .C1(
        n441), .Y(n429) );
  NOR4BX4 U197 ( .AN(n470), .B(n860), .C(n195), .D(n315), .Y(n468) );
  OAI22X4 U206 ( .A0(n235), .A1(n148), .B0(n428), .B1(n1001), .Y(n311) );
  NOR3BX4 U207 ( .AN(n481), .B(n294), .C(n904), .Y(n428) );
  OAI31X4 U219 ( .A0(n944), .A1(n1032), .A2(n482), .B0(n930), .Y(n455) );
  AOI222X4 U221 ( .A0(n1051), .A1(n1019), .B0(n245), .B1(n998), .C0(n240), 
        .C1(n251), .Y(n188) );
  XNOR2X4 U222 ( .A(n418), .B(n908), .Y(n245) );
  OAI22X4 U223 ( .A0(n495), .A1(n924), .B0(N55), .B1(n496), .Y(n418) );
  OAI211X4 U236 ( .A0(n825), .A1(n444), .B0(n465), .C0(n466), .Y(n409) );
  AOI21X8 U238 ( .A0(n475), .A1(n505), .B0(n506), .Y(n339) );
  NAND4BX4 U242 ( .AN(n509), .B(n510), .C(n511), .D(n512), .Y(
        addr_register_out[7]) );
  NOR4BX4 U246 ( .AN(n520), .B(tmp[7]), .C(tmp[6]), .D(n335), .Y(n519) );
  NAND4BX4 U267 ( .AN(n531), .B(n549), .C(n550), .D(n551), .Y(
        addr_register_out[4]) );
  OAI211X4 U276 ( .A0(n243), .A1(n857), .B0(n559), .C0(n560), .Y(n531) );
  AOI2B1X4 U284 ( .A1N(n570), .A0(n522), .B0(n962), .Y(n537) );
  OAI2B11X4 U301 ( .A1N(n299), .A0(n902), .B0(n935), .C0(n587), .Y(n196) );
  AOI221X4 U305 ( .A0(n852), .A1(n870), .B0(n917), .B1(n976), .C0(n588), .Y(
        n548) );
  OAI211X4 U309 ( .A0(n964), .A1(n473), .B0(n183), .C0(n148), .Y(n515) );
  AOI221X4 U316 ( .A0(n900), .A1(n870), .B0(n968), .B1(n976), .C0(n177), .Y(
        n524) );
  AOI2BB1X4 U317 ( .A0N(n1015), .A1N(n151), .B0(n913), .Y(n177) );
  AOI31X4 U322 ( .A0(n598), .A1(tmp[4]), .A2(tmp[3]), .B0(tmp[7]), .Y(n570) );
  AOI221X4 U324 ( .A0(n955), .A1(n870), .B0(n900), .B1(n976), .C0(n588), .Y(
        n525) );
  OAI221X4 U325 ( .A0(n182), .A1(n276), .B0(n207), .B1(n146), .C0(n599), .Y(
        n588) );
  AOI221X4 U347 ( .A0(n916), .A1(n192), .B0(n959), .B1(n983), .C0(n928), .Y(
        n586) );
  NOR3BX4 U351 ( .AN(n612), .B(n957), .C(n471), .Y(n176) );
  NOR3BX4 U369 ( .AN(n268), .B(n944), .C(n900), .Y(n272) );
  NOR4BX4 U376 ( .AN(n636), .B(n637), .C(n437), .D(n430), .Y(n635) );
  OAI211X4 U377 ( .A0(n873), .A1(n161), .B0(n148), .C0(n638), .Y(n430) );
  AOI2BB1X4 U387 ( .A0N(n914), .A1N(n640), .B0(n486), .Y(n587) );
  NOR2BX8 U415 ( .AN(n639), .B(n905), .Y(n288) );
  NOR2X8 U456 ( .A(n212), .B(n956), .Y(n230) );
  NOR2BX8 U461 ( .AN(n242), .B(n251), .Y(n216) );
  OAI22X4 U479 ( .A0(n410), .A1(n682), .B0(n620), .B1(n825), .Y(n368) );
  NOR2X8 U515 ( .A(n390), .B(n662), .Y(n319) );
  NOR3X8 U551 ( .A(ram_data_register[1]), .B(ram_data_register[2]), .C(
        ram_data_register[0]), .Y(n565) );
  NOR2X8 U555 ( .A(n660), .B(n827), .Y(n155) );
  AOI22X4 U576 ( .A0(n986), .A1(n1044), .B0(n844), .B1(n338), .Y(n559) );
  OA21X4 U578 ( .A0(n623), .A1(n857), .B0(n392), .Y(n309) );
  AOI22X4 U583 ( .A0(n986), .A1(n1043), .B0(n1056), .B1(n338), .Y(n623) );
  NOR2BX8 U586 ( .AN(n693), .B(n846), .Y(n663) );
  NOR2X8 U589 ( .A(n1012), .B(instruction[6]), .Y(n680) );
  DFFRQX4 \tmp_reg[7]  ( .D(n727), .CK(clk), .RN(n918), .Q(tmp[7]) );
  DFFRQX4 \tmp_reg[4]  ( .D(n724), .CK(clk), .RN(n918), .Q(tmp[4]) );
  DFFRQX4 \tmp_reg[3]  ( .D(n723), .CK(clk), .RN(n918), .Q(tmp[3]) );
  DFFRQX4 \tmp_reg[1]  ( .D(n721), .CK(clk), .RN(n918), .Q(N54) );
  DFFRQX4 \tmp_reg[2]  ( .D(n722), .CK(clk), .RN(n918), .Q(N55) );
  DFFRQX4 \tmp_reg[0]  ( .D(n720), .CK(clk), .RN(n918), .Q(N1141) );
  DFFRQX2 \tmp_reg[5]  ( .D(n725), .CK(clk), .RN(n918), .Q(tmp[5]) );
  DFFRQX2 \tmp_reg[6]  ( .D(n726), .CK(clk), .RN(n918), .Q(tmp[6]) );
  INVX16 U3 ( .A(n419), .Y(n944) );
  BUFX5 U4 ( .A(n896), .Y(n916) );
  INVX2 U5 ( .A(n616), .Y(n928) );
  AOI211X4 U6 ( .A0(n1006), .A1(n858), .B0(n176), .C0(n617), .Y(n616) );
  OAI211X2 U7 ( .A0(n527), .A1(n923), .B0(n528), .C0(n529), .Y(
        addr_register_out[6]) );
  AOI221X2 U8 ( .A0(n951), .A1(n823), .B0(rom_data_register[6]), .B1(n530), 
        .C0(n517), .Y(n529) );
  BUFX5 U9 ( .A(n1055), .Y(n877) );
  CLKINVX8 U10 ( .A(n508), .Y(n812) );
  INVX6 U11 ( .A(n812), .Y(n813) );
  CLKNAND2X2 U12 ( .A(n937), .B(n945), .Y(n508) );
  BUFX20 U13 ( .A(n421), .Y(n814) );
  CLKNAND2X12 U14 ( .A(n669), .B(n1042), .Y(n662) );
  CLKBUFX6 U15 ( .A(instruction[4]), .Y(n908) );
  CLKAND2X6 U16 ( .A(n699), .B(n680), .Y(n448) );
  NOR2X8 U17 ( .A(n1023), .B(n909), .Y(n699) );
  NAND3X8 U18 ( .A(n538), .B(n539), .C(n540), .Y(addr_register_out[5]) );
  NAND3X3 U19 ( .A(n1036), .B(n908), .C(n663), .Y(n307) );
  NAND2X4 U20 ( .A(n993), .B(n1036), .Y(n287) );
  INVX10 U21 ( .A(n662), .Y(n1036) );
  NOR2X8 U22 ( .A(n814), .B(n404), .Y(n355) );
  NAND3X2 U23 ( .A(n1056), .B(n1053), .C(instruction[2]), .Y(n445) );
  INVX5 U24 ( .A(instruction[1]), .Y(n1053) );
  AOI2BB1X4 U25 ( .A0N(n869), .A1N(n155), .B0(n856), .Y(n617) );
  CLKNAND2X12 U27 ( .A(n448), .B(n907), .Y(n601) );
  NAND2X8 U28 ( .A(n911), .B(n224), .Y(n184) );
  OAI21X8 U29 ( .A0(n224), .A1(n266), .B0(n876), .Y(n567) );
  CLKNAND2X12 U30 ( .A(n968), .B(n1052), .Y(n224) );
  NOR4X8 U31 ( .A(n298), .B(n363), .C(n387), .D(n388), .Y(n379) );
  CLKINVX16 U32 ( .A(n363), .Y(n929) );
  NAND2X4 U33 ( .A(n1039), .B(n986), .Y(n271) );
  INVX16 U34 ( .A(n827), .Y(n1039) );
  INVX20 U35 ( .A(n661), .Y(n1041) );
  NAND2X6 U36 ( .A(n868), .B(n1042), .Y(n661) );
  BUFX20 U37 ( .A(n952), .Y(n815) );
  INVX10 U38 ( .A(n207), .Y(n952) );
  NAND3X6 U39 ( .A(n602), .B(n465), .C(n697), .Y(n169) );
  BUFX20 U40 ( .A(n455), .Y(n816) );
  INVX4 U41 ( .A(n305), .Y(n973) );
  NAND2X5 U42 ( .A(n974), .B(n183), .Y(n305) );
  CLKINVX40 U43 ( .A(n303), .Y(n965) );
  NOR2X8 U44 ( .A(n1012), .B(n1022), .Y(n693) );
  INVX20 U45 ( .A(instruction[7]), .Y(n1012) );
  INVX16 U47 ( .A(n873), .Y(n930) );
  CLKINVX40 U48 ( .A(n240), .Y(n1032) );
  NOR2BX4 U49 ( .AN(n418), .B(n487), .Y(n396) );
  OR3X8 U50 ( .A(n850), .B(n901), .C(n213), .Y(n487) );
  BUFX20 U51 ( .A(n692), .Y(n817) );
  NOR2X8 U52 ( .A(n657), .B(n907), .Y(n692) );
  NAND2X3 U53 ( .A(n1021), .B(n868), .Y(n465) );
  CLKAND2X2 U54 ( .A(n868), .B(n1000), .Y(n604) );
  INVX14 U55 ( .A(n837), .Y(n868) );
  CLKBUFX8 U56 ( .A(n910), .Y(n846) );
  BUFX18 U57 ( .A(instruction[5]), .Y(n910) );
  AOI211X4 U58 ( .A0(n336), .A1(n184), .B0(n963), .C0(n600), .Y(n599) );
  AOI31X2 U59 ( .A0(n470), .A1(n601), .A2(n980), .B0(n857), .Y(n600) );
  OAI31X2 U60 ( .A0(n155), .A1(n606), .A2(n191), .B0(n917), .Y(n605) );
  OAI21X1 U61 ( .A0(n417), .A1(n418), .B0(n288), .Y(n416) );
  AOI22X1 U62 ( .A0(n983), .A1(n487), .B0(n977), .B1(n346), .Y(n638) );
  OAI21X3 U63 ( .A0(n978), .A1(n234), .B0(n587), .Y(n437) );
  OAI21X6 U64 ( .A0(n281), .A1(n978), .B0(n352), .Y(b_data_from[3]) );
  INVX10 U65 ( .A(run_phase[2]), .Y(n1054) );
  BUFX14 U66 ( .A(n445), .Y(n825) );
  NOR2X4 U67 ( .A(n444), .B(n621), .Y(n404) );
  CLKBUFX6 U68 ( .A(n896), .Y(n917) );
  NOR2X2 U69 ( .A(n507), .B(n915), .Y(n442) );
  INVX4 U71 ( .A(n286), .Y(n1006) );
  CLKNAND2X4 U72 ( .A(n1039), .B(n1010), .Y(n286) );
  BUFX16 U73 ( .A(n494), .Y(n872) );
  CLKBUFX32 U75 ( .A(n226), .Y(n914) );
  AOI21X1 U76 ( .A0(n270), .A1(n303), .B0(n264), .Y(n478) );
  NAND2X4 U77 ( .A(n468), .B(n469), .Y(n387) );
  NOR4X4 U78 ( .A(n337), .B(n191), .C(n192), .D(n164), .Y(n469) );
  NOR2X4 U79 ( .A(n299), .B(n237), .Y(n488) );
  AND3X4 U80 ( .A(n489), .B(n188), .C(n490), .Y(n411) );
  NOR4X6 U81 ( .A(n294), .B(n849), .C(n968), .D(n905), .Y(n629) );
  NAND2X5 U82 ( .A(run_phase[1]), .B(n957), .Y(n700) );
  BUFX10 U83 ( .A(n449), .Y(n824) );
  AO22X2 U84 ( .A0(n903), .A1(n422), .B0(n267), .B1(n350), .Y(n898) );
  NAND4X4 U85 ( .A(n324), .B(n471), .C(n472), .D(n473), .Y(n315) );
  AOI211X2 U86 ( .A0(n1045), .A1(n667), .B0(n668), .C0(n998), .Y(n666) );
  NAND2X4 U87 ( .A(n969), .B(n1054), .Y(n417) );
  NAND2X6 U88 ( .A(n288), .B(n417), .Y(n648) );
  INVX6 U89 ( .A(run_phase[1]), .Y(n1057) );
  AOI22X2 U90 ( .A0(n499), .A1(n927), .B0(N54), .B1(n500), .Y(n495) );
  AOI22X2 U91 ( .A0(n497), .A1(n927), .B0(N54), .B1(n498), .Y(n496) );
  BUFX8 U92 ( .A(run_phase[3]), .Y(n904) );
  INVX5 U93 ( .A(n417), .Y(n968) );
  NOR3X6 U94 ( .A(instruction[1]), .B(instruction[2]), .C(n906), .Y(n669) );
  NOR2X6 U95 ( .A(n1022), .B(instruction[7]), .Y(n675) );
  NAND2X4 U96 ( .A(n688), .B(n908), .Y(n434) );
  AND2X2 U97 ( .A(n818), .B(n819), .Y(n400) );
  NOR2X2 U99 ( .A(n437), .B(n866), .Y(n818) );
  NOR2X2 U100 ( .A(n839), .B(n881), .Y(n819) );
  INVX4 U101 ( .A(n464), .Y(n940) );
  INVX2 U102 ( .A(n265), .Y(n849) );
  NAND3X2 U103 ( .A(n846), .B(n908), .C(n675), .Y(n682) );
  NAND2X5 U104 ( .A(n663), .B(n886), .Y(n694) );
  BUFX2 U105 ( .A(n571), .Y(n874) );
  AOI221X2 U106 ( .A0(n858), .A1(n976), .B0(n917), .B1(n870), .C0(n177), .Y(
        n571) );
  INVX4 U107 ( .A(n234), .Y(n955) );
  OR2X2 U108 ( .A(n531), .B(n532), .Y(n517) );
  NOR2X4 U109 ( .A(n681), .B(n981), .Y(n618) );
  NAND2X2 U110 ( .A(n683), .B(n675), .Y(n466) );
  INVX10 U111 ( .A(n385), .Y(n990) );
  INVX6 U112 ( .A(n910), .Y(n1023) );
  INVX14 U113 ( .A(n906), .Y(n1056) );
  BUFX2 U114 ( .A(n632), .Y(n873) );
  NAND2X4 U115 ( .A(n966), .B(n1054), .Y(n303) );
  BUFX8 U116 ( .A(n248), .Y(n871) );
  NAND4X2 U117 ( .A(n909), .B(n621), .C(n1010), .D(n705), .Y(n248) );
  INVX2 U118 ( .A(n348), .Y(n980) );
  NAND2X2 U119 ( .A(n956), .B(run_phase[2]), .Y(n205) );
  NOR2BX4 U121 ( .AN(n586), .B(n196), .Y(n545) );
  BUFX12 U122 ( .A(instruction[3]), .Y(n907) );
  INVX4 U123 ( .A(n441), .Y(n981) );
  NAND2X4 U124 ( .A(n699), .B(n675), .Y(n674) );
  INVX10 U125 ( .A(n825), .Y(n1049) );
  INVX4 U126 ( .A(n848), .Y(n1055) );
  NAND2X2 U127 ( .A(n907), .B(n986), .Y(n304) );
  INVX2 U129 ( .A(n229), .Y(n853) );
  NOR2BX1 U130 ( .AN(n405), .B(n404), .Y(n841) );
  OA21X1 U131 ( .A0(n1001), .A1(n344), .B0(n820), .Y(n343) );
  OAI21X1 U132 ( .A0(n151), .A1(n998), .B0(n346), .Y(n820) );
  INVX2 U133 ( .A(n350), .Y(n974) );
  INVX5 U134 ( .A(n244), .Y(n998) );
  INVX4 U135 ( .A(n475), .Y(n1044) );
  NAND2X4 U136 ( .A(n470), .B(n286), .Y(n151) );
  INVX14 U137 ( .A(n506), .Y(n986) );
  INVX4 U138 ( .A(n1053), .Y(n847) );
  BUFX2 U139 ( .A(n526), .Y(n876) );
  AOI211X2 U140 ( .A0(n859), .A1(n998), .B0(n292), .C0(n622), .Y(n526) );
  OAI21BX1 U141 ( .A0(n964), .A1(n623), .B0N(n180), .Y(n622) );
  INVX2 U142 ( .A(n524), .Y(n961) );
  INVX4 U143 ( .A(n205), .Y(n953) );
  CLKBUFX4 U144 ( .A(n159), .Y(n826) );
  NAND2X2 U145 ( .A(n625), .B(n626), .Y(n516) );
  AOI211X2 U146 ( .A0(n850), .A1(n350), .B0(n630), .C0(n631), .Y(n625) );
  OAI21X1 U148 ( .A0(n996), .A1(n869), .B0(n939), .Y(n607) );
  INVX6 U149 ( .A(n872), .Y(n966) );
  CLKBUFX6 U151 ( .A(n896), .Y(n915) );
  NAND3X4 U152 ( .A(n909), .B(n693), .C(n846), .Y(n390) );
  NAND2BX4 U154 ( .AN(n606), .B(n601), .Y(n170) );
  NAND2X4 U155 ( .A(n663), .B(n1055), .Y(n476) );
  INVX4 U156 ( .A(ram_data_register[7]), .Y(n1051) );
  INVX4 U157 ( .A(n914), .Y(n1007) );
  NAND2X4 U158 ( .A(n817), .B(n906), .Y(n475) );
  NOR2X6 U159 ( .A(n864), .B(n958), .Y(n546) );
  CLKAND2X3 U160 ( .A(n955), .B(n1052), .Y(n821) );
  INVX4 U161 ( .A(n354), .Y(n959) );
  OA22X2 U162 ( .A0(n474), .A1(n475), .B0(n410), .B1(n476), .Y(n822) );
  CLKAND2X4 U163 ( .A(n965), .B(n1052), .Y(n896) );
  AND2X2 U164 ( .A(n882), .B(n838), .Y(n823) );
  OAI21X3 U166 ( .A0(n985), .A1(n228), .B0(n216), .Y(n532) );
  INVX6 U167 ( .A(n194), .Y(n985) );
  AOI221X1 U169 ( .A0(n966), .A1(n238), .B0(n239), .B1(n240), .C0(n241), .Y(
        n198) );
  CLKNAND2X12 U170 ( .A(n823), .B(n1051), .Y(n240) );
  NOR3X4 U171 ( .A(n192), .B(n997), .C(n191), .Y(n679) );
  INVX20 U172 ( .A(n398), .Y(n997) );
  NOR3X4 U173 ( .A(n657), .B(n906), .C(n658), .Y(n229) );
  CLKINVX24 U174 ( .A(n274), .Y(n941) );
  NOR2X4 U175 ( .A(n813), .B(n965), .Y(n449) );
  AOI222X4 U177 ( .A0(n680), .A1(n1036), .B0(n691), .B1(n1055), .C0(n817), 
        .C1(n693), .Y(n690) );
  OAI2B2X1 U179 ( .A1N(n817), .A0(n1022), .B0(n1012), .B1(n662), .Y(n691) );
  NAND2X8 U180 ( .A(n817), .B(n1056), .Y(n505) );
  INVX20 U181 ( .A(n389), .Y(n1010) );
  NOR2X8 U182 ( .A(n368), .B(n990), .Y(n201) );
  NAND3X8 U183 ( .A(n1042), .B(n1023), .C(n675), .Y(n444) );
  CLKNAND2X4 U185 ( .A(n849), .B(n1052), .Y(n354) );
  OAI21X8 U186 ( .A0(n915), .A1(n457), .B0(n467), .Y(n433) );
  AOI211X4 U187 ( .A0(n915), .A1(n869), .B0(n580), .C0(n291), .Y(n610) );
  NAND3X8 U188 ( .A(n910), .B(n886), .C(n1011), .Y(n658) );
  AOI221X4 U189 ( .A0(instruction[2]), .A1(n687), .B0(n1044), .B1(n688), .C0(
        n689), .Y(n686) );
  INVX18 U191 ( .A(n621), .Y(n1048) );
  OAI21BX4 U193 ( .A0(n621), .A1(n658), .B0N(n604), .Y(n421) );
  AOI2BB2X4 U194 ( .B0(n448), .B1(n1041), .A0N(n621), .A1N(n694), .Y(n684) );
  CLKNAND2X12 U195 ( .A(instruction[1]), .B(instruction[2]), .Y(n621) );
  NAND2X8 U196 ( .A(n228), .B(n182), .Y(n507) );
  NOR3X8 U198 ( .A(n1006), .B(n336), .C(n1004), .Y(n370) );
  NAND3X8 U199 ( .A(n633), .B(n634), .C(n635), .Y(a_data_from[2]) );
  NAND2X8 U200 ( .A(n307), .B(n975), .Y(n350) );
  NOR2X8 U201 ( .A(n597), .B(n904), .Y(n419) );
  OAI22X4 U202 ( .A0(n916), .A1(n287), .B0(n276), .B1(n816), .Y(n492) );
  NAND3X2 U203 ( .A(n1001), .B(n266), .C(n973), .Y(n159) );
  AOI22X1 U204 ( .A0(n852), .A1(n300), .B0(n319), .B1(n320), .Y(n313) );
  CLKINVX2 U205 ( .A(n320), .Y(n934) );
  AOI21X6 U208 ( .A0(n320), .A1(n904), .B0(n815), .Y(n362) );
  CLKBUFX40 U209 ( .A(n619), .Y(n827) );
  NAND2X1 U210 ( .A(n1048), .B(n1042), .Y(n619) );
  CLKNAND2X2 U211 ( .A(n661), .B(n827), .Y(n458) );
  NOR2X8 U212 ( .A(n665), .B(n1054), .Y(n655) );
  AOI21X8 U213 ( .A0(run_phase[2]), .A1(run_phase[1]), .B0(n320), .Y(n639) );
  NOR2X8 U214 ( .A(n665), .B(run_phase[2]), .Y(n320) );
  CLKNAND2X8 U215 ( .A(n450), .B(n891), .Y(n890) );
  INVX6 U216 ( .A(n567), .Y(n958) );
  BUFX8 U217 ( .A(n1042), .Y(n886) );
  AOI21X1 U218 ( .A0(n520), .A1(n923), .B0(n335), .Y(n523) );
  NOR2X6 U220 ( .A(n543), .B(tmp[5]), .Y(n520) );
  OAI21X4 U224 ( .A0(n354), .A1(n146), .B0(n355), .Y(n378) );
  AOI31X1 U225 ( .A0(n559), .A1(n623), .A2(n370), .B0(n504), .Y(n645) );
  NAND3X2 U226 ( .A(n276), .B(n871), .C(n704), .Y(n365) );
  OAI21X4 U227 ( .A0(n1026), .A1(n391), .B0(n392), .Y(b_bit_location[2]) );
  NAND2X2 U228 ( .A(n265), .B(n945), .Y(n422) );
  NOR2X4 U229 ( .A(n941), .B(n355), .Y(n386) );
  AND3X2 U230 ( .A(n483), .B(n312), .C(n484), .Y(n357) );
  AOI211X2 U231 ( .A0(n1007), .A1(n948), .B0(n485), .C0(n486), .Y(n484) );
  OAI2B2X1 U232 ( .A1N(n368), .A0(n916), .B0(n396), .B1(n871), .Y(n485) );
  BUFX2 U233 ( .A(n369), .Y(n878) );
  NOR4X4 U234 ( .A(n477), .B(n478), .C(n338), .D(n976), .Y(n463) );
  NOR2X4 U235 ( .A(n170), .B(n155), .Y(n480) );
  INVX4 U237 ( .A(n474), .Y(n1011) );
  NAND2X2 U239 ( .A(n234), .B(n945), .Y(n597) );
  NOR2X4 U240 ( .A(n1017), .B(n993), .Y(n450) );
  NOR2X2 U241 ( .A(n320), .B(n953), .Y(n268) );
  NAND2X4 U243 ( .A(n1007), .B(n696), .Y(n647) );
  INVX12 U244 ( .A(n505), .Y(n1043) );
  INVX4 U245 ( .A(n700), .Y(n956) );
  INVX2 U247 ( .A(n674), .Y(n1018) );
  INVX2 U248 ( .A(n444), .Y(n1021) );
  NAND2X4 U249 ( .A(n354), .B(n640), .Y(n299) );
  CLKBUFX4 U250 ( .A(n1009), .Y(n903) );
  NOR2X6 U251 ( .A(n250), .B(n996), .Y(n470) );
  NOR2X2 U252 ( .A(n926), .B(n923), .Y(n598) );
  INVX2 U253 ( .A(n874), .Y(n962) );
  INVX2 U254 ( .A(n660), .Y(n993) );
  NAND2X4 U255 ( .A(n665), .B(n836), .Y(n212) );
  INVX2 U256 ( .A(n223), .Y(n996) );
  NOR3X2 U257 ( .A(n482), .B(n965), .C(n944), .Y(n632) );
  BUFX5 U258 ( .A(n374), .Y(n870) );
  OAI22X1 U259 ( .A0(n344), .A1(n1001), .B0(n272), .B1(n902), .Y(n627) );
  INVX5 U260 ( .A(n854), .Y(n1001) );
  OAI21X6 U261 ( .A0(n1054), .A1(n671), .B0(n934), .Y(n294) );
  AOI32X2 U262 ( .A0(n612), .A1(n957), .A2(n1016), .B0(n155), .B1(n858), .Y(
        n611) );
  INVX6 U263 ( .A(n655), .Y(n945) );
  NAND3X4 U264 ( .A(n909), .B(n693), .C(n683), .Y(n227) );
  INVX4 U265 ( .A(n870), .Y(n975) );
  NAND2X2 U266 ( .A(n953), .B(n1052), .Y(n207) );
  NAND2X2 U268 ( .A(rom_data_register[5]), .B(rom_data_register[6]), .Y(n624)
         );
  NAND2X2 U269 ( .A(n570), .B(n522), .Y(n589) );
  BUFX5 U270 ( .A(instruction[4]), .Y(n909) );
  OAI21X4 U271 ( .A0(n981), .A1(n1018), .B0(n1041), .Y(n602) );
  CLKBUFX4 U272 ( .A(instruction[4]), .Y(n848) );
  NAND2X2 U273 ( .A(n559), .B(n646), .Y(n275) );
  INVX4 U274 ( .A(instruction[6]), .Y(n1022) );
  NAND3X4 U275 ( .A(n1041), .B(n848), .C(n663), .Y(n276) );
  NAND2X5 U277 ( .A(n393), .B(n394), .Y(alu_op[3]) );
  NAND4X6 U278 ( .A(n423), .B(n424), .C(n425), .D(n426), .Y(alu_op[1]) );
  CLKBUFX4 U279 ( .A(n295), .Y(n869) );
  OAI22X1 U280 ( .A0(n618), .A1(n827), .B0(n620), .B1(n621), .Y(n295) );
  NAND2X4 U281 ( .A(n146), .B(n206), .Y(n194) );
  NOR2X4 U282 ( .A(n914), .B(n851), .Y(n175) );
  NAND3X4 U283 ( .A(n684), .B(n685), .C(n686), .Y(n195) );
  NAND2X4 U285 ( .A(n225), .B(n227), .Y(n152) );
  NAND2BX2 U286 ( .AN(n336), .B(n623), .Y(n154) );
  OAI21X1 U287 ( .A0(n882), .A1(n534), .B0(n535), .Y(n533) );
  INVX4 U288 ( .A(n861), .Y(n862) );
  INVX2 U289 ( .A(n296), .Y(n861) );
  OAI211X2 U290 ( .A0(n618), .A1(n886), .B0(n466), .C0(n503), .Y(n296) );
  NOR2X6 U291 ( .A(n661), .B(n390), .Y(n191) );
  NAND2X2 U292 ( .A(n937), .B(n234), .Y(n267) );
  NOR2BX4 U293 ( .AN(n569), .B(tmp[3]), .Y(n554) );
  INVX6 U294 ( .A(n907), .Y(n1042) );
  NAND2X4 U295 ( .A(n216), .B(n243), .Y(n168) );
  NAND2X5 U296 ( .A(n1049), .B(n886), .Y(n410) );
  INVX2 U297 ( .A(n304), .Y(n982) );
  INVX4 U298 ( .A(n276), .Y(n972) );
  INVX2 U299 ( .A(tmp[5]), .Y(n926) );
  INVX4 U300 ( .A(tmp[6]), .Y(n923) );
  INVX4 U302 ( .A(rom_data_register[0]), .Y(n1046) );
  INVX5 U303 ( .A(N1141), .Y(n919) );
  INVX4 U304 ( .A(rom_data_register[2]), .Y(n1026) );
  INVX2 U306 ( .A(N55), .Y(n924) );
  INVX4 U307 ( .A(rom_data_register[1]), .Y(n1025) );
  INVX5 U308 ( .A(N54), .Y(n927) );
  INVX2 U310 ( .A(rom_data_register[3]), .Y(n1027) );
  INVX2 U311 ( .A(rom_data_register[4]), .Y(n1028) );
  INVX2 U312 ( .A(tmp[4]), .Y(n922) );
  INVX2 U313 ( .A(rom_data_register[7]), .Y(n1024) );
  AOI22X2 U314 ( .A0(n951), .A1(n544), .B0(psw[4]), .B1(n558), .Y(n549) );
  NAND2X4 U315 ( .A(n986), .B(n1041), .Y(n146) );
  AOI211X2 U318 ( .A0(ram_data_register[7]), .A1(n513), .B0(n514), .C0(n515), 
        .Y(n512) );
  AOI211X2 U319 ( .A0(n949), .A1(n520), .B0(n541), .C0(n532), .Y(n540) );
  AOI21X3 U320 ( .A0(n903), .A1(n416), .B0(n992), .Y(n415) );
  AND2X2 U321 ( .A(n831), .B(n534), .Y(n828) );
  OR2X6 U323 ( .A(n885), .B(n842), .Y(a_bit_location[0]) );
  OR2X4 U326 ( .A(n885), .B(n834), .Y(a_bit_location[1]) );
  AO21X1 U327 ( .A0(n223), .A1(n286), .B0(n224), .Y(n831) );
  CLKINVX4 U328 ( .A(n821), .Y(n856) );
  AND2X2 U329 ( .A(n406), .B(n407), .Y(n832) );
  OR2X4 U330 ( .A(n885), .B(n840), .Y(a_bit_location[2]) );
  OR2X2 U331 ( .A(n887), .B(n888), .Y(n834) );
  INVX4 U332 ( .A(n534), .Y(n951) );
  INVX4 U333 ( .A(ram_data_register[5]), .Y(n882) );
  INVX5 U334 ( .A(n319), .Y(n978) );
  INVX4 U335 ( .A(n871), .Y(n1009) );
  OR2X2 U336 ( .A(ram_data_register[3]), .B(ram_data_register[4]), .Y(n835) );
  AND2X2 U337 ( .A(n1054), .B(n1052), .Y(n836) );
  NAND2X4 U338 ( .A(run_phase[2]), .B(n966), .Y(n265) );
  OR3X2 U339 ( .A(n1056), .B(n847), .C(n1047), .Y(n837) );
  NAND4X4 U340 ( .A(n878), .B(n370), .C(n371), .D(n372), .Y(n356) );
  AND2X2 U341 ( .A(n544), .B(n1031), .Y(n838) );
  OR4X2 U342 ( .A(n439), .B(n440), .C(n855), .D(n175), .Y(n839) );
  OR2X2 U343 ( .A(n883), .B(n884), .Y(n840) );
  OR2X2 U344 ( .A(n892), .B(n893), .Y(n842) );
  OA21X2 U345 ( .A0(n559), .A1(n857), .B0(n391), .Y(n310) );
  INVX2 U346 ( .A(n310), .Y(n885) );
  OR4X2 U348 ( .A(n869), .B(n862), .C(n997), .D(n1013), .Y(n843) );
  AOI211X4 U349 ( .A0(n981), .A1(instruction[3]), .B0(n1002), .C0(n997), .Y(
        n479) );
  CLKINVX4 U350 ( .A(n1056), .Y(n844) );
  BUFX18 U352 ( .A(instruction[0]), .Y(n906) );
  OAI21X1 U353 ( .A0(n1032), .A1(n183), .B0(n978), .Y(n178) );
  INVX2 U354 ( .A(n905), .Y(n845) );
  BUFX5 U355 ( .A(run_phase[3]), .Y(n905) );
  INVX8 U356 ( .A(n904), .Y(n1052) );
  INVX4 U357 ( .A(n265), .Y(n850) );
  INVX4 U358 ( .A(n959), .Y(n851) );
  INVX5 U359 ( .A(n856), .Y(n852) );
  INVX3 U360 ( .A(n853), .Y(n854) );
  INVX4 U361 ( .A(n853), .Y(n855) );
  INVX5 U362 ( .A(n821), .Y(n857) );
  INVX3 U363 ( .A(n224), .Y(n858) );
  INVX5 U364 ( .A(n224), .Y(n859) );
  INVX4 U365 ( .A(instruction[2]), .Y(n1047) );
  NOR4X4 U366 ( .A(n860), .B(n195), .C(n236), .D(n869), .Y(n328) );
  NAND2X2 U367 ( .A(n978), .B(n148), .Y(n236) );
  NOR4X4 U368 ( .A(n339), .B(n373), .C(n870), .D(n995), .Y(n372) );
  NAND4X4 U370 ( .A(n607), .B(n608), .C(n609), .D(n610), .Y(n558) );
  INVX3 U371 ( .A(n822), .Y(n860) );
  NOR4X4 U372 ( .A(n388), .B(n454), .C(n866), .D(n403), .Y(n453) );
  INVX2 U373 ( .A(n865), .Y(n866) );
  INVX2 U374 ( .A(n557), .Y(n863) );
  CLKINVX2 U375 ( .A(n863), .Y(n864) );
  OAI31X2 U378 ( .A0(n624), .A1(n1028), .A2(n1027), .B0(n1024), .Y(n557) );
  INVX2 U379 ( .A(n448), .Y(n891) );
  NAND2X4 U380 ( .A(n448), .B(n1039), .Y(n223) );
  NOR4X4 U381 ( .A(n1009), .B(n880), .C(n278), .D(n427), .Y(n426) );
  AOI21X1 U382 ( .A0(n428), .A1(n234), .B0(n985), .Y(n427) );
  NOR4X4 U383 ( .A(n260), .B(n261), .C(n262), .D(n263), .Y(n259) );
  OAI22X1 U384 ( .A0(n268), .A1(n146), .B0(n269), .B1(n857), .Y(n261) );
  NOR4X4 U385 ( .A(n282), .B(n283), .C(n284), .D(n285), .Y(n257) );
  AOI21X1 U386 ( .A0(n288), .A1(n234), .B0(n975), .Y(n283) );
  NOR4X4 U388 ( .A(n219), .B(n220), .C(n221), .D(n222), .Y(n199) );
  AOI21X1 U389 ( .A0(n162), .A1(n227), .B0(n228), .Y(n220) );
  AOI21X1 U390 ( .A0(n225), .A1(n226), .B0(n950), .Y(n221) );
  OAI22X1 U391 ( .A0(n225), .A1(n303), .B0(n235), .B1(n304), .Y(n302) );
  NOR2X6 U392 ( .A(n983), .B(n982), .Y(n225) );
  OAI22X1 U393 ( .A0(n230), .A1(n223), .B0(n937), .B1(n307), .Y(n306) );
  CLKINVX4 U394 ( .A(n648), .Y(n937) );
  AOI21X1 U395 ( .A0(n845), .A1(n265), .B0(n985), .Y(n301) );
  AOI21X1 U396 ( .A0(n824), .A1(n265), .B0(n450), .Y(n447) );
  OAI22X1 U397 ( .A0(n851), .A1(n146), .B0(n355), .B1(n912), .Y(n353) );
  NAND3X2 U398 ( .A(n146), .B(n978), .C(n1008), .Y(run_phase_init[3]) );
  AOI21X1 U399 ( .A0(n970), .A1(n871), .B0(n228), .Y(n282) );
  OAI2BB1X1 U400 ( .A0N(n864), .A1N(n567), .B0(n875), .Y(n566) );
  BUFX16 U401 ( .A(n548), .Y(n875) );
  OAI32X2 U402 ( .A0(n1001), .A1(ram_data_register[0]), .A2(n205), .B0(n596), 
        .B1(n183), .Y(n595) );
  NOR4X4 U403 ( .A(n168), .B(n999), .C(n169), .D(n170), .Y(n167) );
  CLKINVX2 U404 ( .A(n355), .Y(n999) );
  OAI22X1 U405 ( .A0(n937), .A1(n871), .B0(n1008), .B1(n228), .Y(n649) );
  AOI21X1 U406 ( .A0(n936), .A1(n265), .B0(n266), .Y(n262) );
  AOI21X1 U407 ( .A0(n975), .A1(n223), .B0(n224), .Y(n222) );
  AOI21X1 U408 ( .A0(n1001), .A1(n286), .B0(n915), .Y(n285) );
  AOI221X2 U409 ( .A0(n992), .A1(n487), .B0(n859), .B1(n988), .C0(n997), .Y(
        n560) );
  AOI21X1 U410 ( .A0(n1018), .A1(n432), .B0(n373), .Y(n431) );
  NOR2BX4 U411 ( .AN(n433), .B(n434), .Y(n373) );
  AOI222X2 U412 ( .A0(n847), .A1(n580), .B0(n921), .B1(tmp[4]), .C0(
        instruction[6]), .C1(n579), .Y(n582) );
  INVX2 U413 ( .A(n438), .Y(n865) );
  INVX2 U414 ( .A(n843), .Y(n867) );
  INVX2 U416 ( .A(n370), .Y(n1003) );
  NAND3X2 U417 ( .A(n244), .B(n276), .C(n277), .Y(n153) );
  AOI21X3 U418 ( .A0(n417), .A1(n303), .B0(n985), .Y(n278) );
  OAI221X4 U419 ( .A0(n1037), .A1(n434), .B0(n225), .B1(n417), .C0(n929), .Y(
        n403) );
  NAND2X2 U420 ( .A(n985), .B(n276), .Y(n193) );
  NAND2X2 U421 ( .A(n824), .B(n234), .Y(n341) );
  CLKBUFX6 U422 ( .A(n965), .Y(n900) );
  OAI21X4 U423 ( .A0(n181), .A1(n224), .B0(n165), .Y(n579) );
  NAND2X4 U424 ( .A(n914), .B(n181), .Y(n300) );
  AOI2BB1X4 U425 ( .A0N(n459), .A1N(n181), .B0(n195), .Y(n289) );
  NAND3X6 U426 ( .A(n844), .B(n908), .C(n695), .Y(n181) );
  OAI221X1 U427 ( .A0(n824), .A1(n183), .B0(n459), .B1(n181), .C0(n460), .Y(
        n438) );
  INVX4 U428 ( .A(n183), .Y(n995) );
  NAND2X4 U429 ( .A(n448), .B(n1044), .Y(n183) );
  NOR2BX4 U430 ( .AN(n680), .B(n910), .Y(n688) );
  CLKNAND2X12 U431 ( .A(n956), .B(n1054), .Y(n234) );
  OAI21X4 U432 ( .A0(n957), .A1(n1054), .B0(n639), .Y(n482) );
  NOR2X4 U433 ( .A(n181), .B(n362), .Y(n461) );
  AOI2BB1X1 U434 ( .A0N(n360), .A1N(n917), .B0(n181), .Y(n628) );
  NAND3X8 U435 ( .A(n676), .B(n289), .C(n677), .Y(n318) );
  AOI211X4 U436 ( .A0(n912), .A1(n157), .B0(n337), .C0(n386), .Y(n677) );
  NOR2X1 U437 ( .A(n476), .B(n662), .Y(n374) );
  INVX20 U438 ( .A(run_phase[0]), .Y(n957) );
  AOI32X1 U439 ( .A0(n544), .A1(n882), .A2(n951), .B0(rom_data_register[5]), 
        .B1(n547), .Y(n538) );
  OAI22X2 U440 ( .A0(n657), .A1(n444), .B0(n690), .B1(n1023), .Y(n689) );
  BUFX2 U441 ( .A(n965), .Y(n901) );
  NAND4BX2 U442 ( .AN(n311), .B(n312), .C(n313), .D(n314), .Y(n809) );
  NAND4BBX4 U443 ( .AN(n318), .BN(n168), .C(n942), .D(n666), .Y(n637) );
  OAI222X4 U444 ( .A0(n441), .A1(n467), .B0(n916), .B1(n479), .C0(n824), .C1(
        n266), .Y(n477) );
  AOI22X4 U445 ( .A0(n274), .A1(n169), .B0(n319), .B1(n905), .Y(n676) );
  NOR4X6 U446 ( .A(n826), .B(n862), .C(n169), .D(n187), .Y(n380) );
  NAND4X6 U447 ( .A(n650), .B(n651), .C(n652), .D(n653), .Y(a_data_from[0]) );
  NAND3BX4 U448 ( .AN(n862), .B(n201), .C(n679), .Y(n157) );
  NOR2X8 U449 ( .A(n821), .B(n858), .Y(n228) );
  CLKNAND2X2 U450 ( .A(run_phase[0]), .B(n1057), .Y(n494) );
  INVX1 U451 ( .A(n338), .Y(n879) );
  INVX4 U452 ( .A(n879), .Y(n880) );
  NOR2X6 U453 ( .A(n694), .B(n657), .Y(n338) );
  CLKINVX1 U454 ( .A(n435), .Y(n881) );
  NOR2X1 U455 ( .A(n309), .B(n1026), .Y(n883) );
  NOR2X1 U457 ( .A(n924), .B(n308), .Y(n884) );
  OA21X2 U458 ( .A0(n544), .A1(n534), .B0(n545), .Y(n535) );
  NAND2X5 U459 ( .A(n832), .B(n841), .Y(alu_op[2]) );
  NOR2X1 U460 ( .A(n309), .B(n1025), .Y(n887) );
  NOR2X1 U462 ( .A(n927), .B(n308), .Y(n888) );
  NOR2X8 U463 ( .A(n889), .B(n835), .Y(n544) );
  INVX10 U464 ( .A(n565), .Y(n889) );
  CLKNAND2X12 U465 ( .A(n890), .B(n1043), .Y(n266) );
  NOR2X1 U466 ( .A(n309), .B(n1046), .Y(n892) );
  NOR2X1 U467 ( .A(n919), .B(n308), .Y(n893) );
  NAND2X5 U468 ( .A(n894), .B(n895), .Y(n321) );
  NAND2X1 U469 ( .A(n354), .B(n828), .Y(n894) );
  NAND2X1 U470 ( .A(n974), .B(n828), .Y(n895) );
  OAI21X1 U471 ( .A0(n852), .A1(n212), .B0(n1006), .Y(n608) );
  CLKNAND2X12 U472 ( .A(n957), .B(n1057), .Y(n665) );
  NOR2X8 U473 ( .A(n212), .B(n969), .Y(n504) );
  NAND2X3 U474 ( .A(n165), .B(n277), .Y(n208) );
  NAND3X2 U475 ( .A(n971), .B(n970), .C(n480), .Y(n187) );
  OAI21X4 U476 ( .A0(n851), .A1(n264), .B0(n326), .Y(n292) );
  NOR2X3 U477 ( .A(n1021), .B(n1000), .Y(n620) );
  NAND2X3 U478 ( .A(n1038), .B(n986), .Y(n206) );
  CLKNAND2X2 U480 ( .A(n1038), .B(n681), .Y(n385) );
  AOI22X2 U481 ( .A0(n1007), .A1(n702), .B0(n968), .B1(n319), .Y(n701) );
  OAI22X1 U482 ( .A0(n535), .A1(n882), .B0(n542), .B1(n926), .Y(n541) );
  OAI21X1 U483 ( .A0(n554), .A1(n536), .B0(n537), .Y(n553) );
  NOR4X4 U484 ( .A(n187), .B(n365), .C(n631), .D(n637), .Y(n650) );
  NAND3X2 U485 ( .A(n1011), .B(n846), .C(n907), .Y(n503) );
  OAI21X1 U486 ( .A0(n1058), .A1(n534), .B0(n578), .Y(n577) );
  CLKINVX4 U487 ( .A(n264), .Y(n988) );
  NOR2X3 U488 ( .A(n852), .B(n915), .Y(n281) );
  NAND2X3 U489 ( .A(n992), .B(n852), .Y(n391) );
  NAND2X3 U490 ( .A(n852), .B(n988), .Y(n392) );
  NAND2X3 U491 ( .A(n1009), .B(n852), .Y(n308) );
  AOI211X4 U492 ( .A0(n433), .A1(n1018), .B0(n386), .C0(n429), .Y(n464) );
  NAND2X5 U493 ( .A(n1044), .B(n1017), .Y(n148) );
  CLKNAND2X4 U494 ( .A(n1017), .B(n1039), .Y(n471) );
  NAND2X3 U495 ( .A(n856), .B(n182), .Y(n237) );
  NAND2X3 U496 ( .A(n989), .B(n1036), .Y(n473) );
  NAND2X3 U497 ( .A(n1017), .B(n1041), .Y(n324) );
  OR4X1 U498 ( .A(n386), .B(n988), .C(n1006), .D(n933), .Y(n383) );
  OAI21X3 U499 ( .A0(n981), .A1(n375), .B0(n1038), .Y(n340) );
  OAI211X1 U500 ( .A0(n857), .A1(n324), .B0(n325), .C0(n326), .Y(n323) );
  NOR2X1 U501 ( .A(n250), .B(n994), .Y(n269) );
  AO21X1 U502 ( .A0(n193), .A1(n900), .B0(n186), .Y(n239) );
  NAND3X8 U503 ( .A(n379), .B(n380), .C(n381), .Y(b_data_from[0]) );
  AOI22X1 U504 ( .A0(n972), .A1(n968), .B0(n977), .B1(n969), .Y(n483) );
  NOR2X5 U505 ( .A(n660), .B(n661), .Y(n250) );
  CLKNAND2X4 U506 ( .A(n699), .B(n693), .Y(n441) );
  OAI21X3 U507 ( .A0(n362), .A1(n914), .B0(n340), .Y(n298) );
  NAND2X1 U508 ( .A(n362), .B(n911), .Y(n702) );
  CLKNAND2X2 U509 ( .A(n629), .B(n481), .Y(n376) );
  CLKNAND2X4 U510 ( .A(n854), .B(n237), .Y(n536) );
  NOR2X5 U511 ( .A(n871), .B(n913), .Y(n522) );
  NOR2X5 U512 ( .A(n389), .B(n661), .Y(n336) );
  CLKNAND2X4 U513 ( .A(n655), .B(n1052), .Y(n182) );
  NAND3X3 U514 ( .A(n1043), .B(n877), .C(n1010), .Y(n277) );
  CLKNAND2X2 U516 ( .A(n389), .B(n390), .Y(n375) );
  CLKINVX3 U517 ( .A(n227), .Y(n977) );
  CLKNAND2X2 U518 ( .A(n683), .B(n1011), .Y(n646) );
  CLKINVX2 U519 ( .A(n629), .Y(n932) );
  CLKINVX2 U520 ( .A(n294), .Y(n931) );
  NOR2X1 U521 ( .A(n900), .B(n294), .Y(n670) );
  NAND2X3 U522 ( .A(n855), .B(n597), .Y(n335) );
  NOR2X1 U523 ( .A(n994), .B(n208), .Y(n443) );
  OAI211X1 U524 ( .A0(n396), .A1(n871), .B0(n397), .C0(n398), .Y(n395) );
  AOI221X1 U525 ( .A0(n859), .A1(n300), .B0(n995), .B1(n267), .C0(n302), .Y(
        n254) );
  AOI221X1 U526 ( .A0(n850), .A1(n305), .B0(n972), .B1(n946), .C0(n306), .Y(
        n253) );
  AOI222X1 U527 ( .A0(n987), .A1(n184), .B0(n917), .B1(n185), .C0(n186), .C1(
        n1032), .Y(n172) );
  NAND4BX1 U528 ( .AN(n187), .B(n188), .C(n189), .D(n190), .Y(n185) );
  NAND4X4 U529 ( .A(n197), .B(n198), .C(n199), .D(n200), .Y(next_status[1]) );
  AOI22X1 U530 ( .A0(n984), .A1(n294), .B0(n977), .B1(n857), .Y(n293) );
  OAI211X1 U531 ( .A0(n230), .A1(n231), .B0(n232), .C0(n233), .Y(n219) );
  NOR2X1 U532 ( .A(n998), .B(n154), .Y(n231) );
  OAI2B11X1 U533 ( .A1N(n251), .A0(n240), .B0(n902), .C0(n867), .Y(n246) );
  AOI222X1 U534 ( .A0(n155), .A1(n212), .B0(n988), .B1(n213), .C0(n191), .C1(
        n913), .Y(n211) );
  OAI211X1 U535 ( .A0(n943), .A1(n324), .B0(n1008), .C0(n343), .Y(n342) );
  OAI221X1 U536 ( .A0(n270), .A1(n271), .B0(n272), .B1(n902), .C0(n273), .Y(
        n260) );
  AOI22X1 U537 ( .A0(n274), .A1(n275), .B0(n184), .B1(n153), .Y(n273) );
  AOI22X1 U538 ( .A0(n998), .A1(n969), .B0(n274), .B1(n168), .Y(n489) );
  AOI211X4 U539 ( .A0(n1032), .A1(n491), .B0(n492), .C0(n493), .Y(n490) );
  NAND3X8 U540 ( .A(n680), .B(n877), .C(n1038), .Y(n398) );
  NOR2X5 U541 ( .A(n1042), .B(n846), .Y(n683) );
  NAND2X8 U542 ( .A(n504), .B(n700), .Y(n274) );
  NAND2X3 U543 ( .A(n1000), .B(n669), .Y(n244) );
  NAND2X3 U544 ( .A(n419), .B(n639), .Y(n213) );
  NOR2X3 U545 ( .A(n907), .B(n1038), .Y(n457) );
  CLKNAND2X2 U546 ( .A(n459), .B(n488), .Y(n360) );
  CLKNAND2X2 U547 ( .A(n907), .B(n1017), .Y(n472) );
  CLKNAND2X2 U548 ( .A(n230), .B(n872), .Y(n346) );
  INVX5 U549 ( .A(n181), .Y(n1045) );
  OAI21X3 U550 ( .A0(n565), .A1(n534), .B0(n545), .Y(n555) );
  AOI222X1 U552 ( .A0(n997), .A1(n846), .B0(n404), .B1(n274), .C0(n339), .C1(
        n347), .Y(n425) );
  NAND2X3 U553 ( .A(n504), .B(n872), .Y(n347) );
  OAI21X4 U554 ( .A0(n1025), .A1(n391), .B0(n392), .Y(b_bit_location[1]) );
  AOI221X1 U556 ( .A0(n1045), .A1(n299), .B0(n917), .B1(n300), .C0(n301), .Y(
        n297) );
  NAND3BX1 U557 ( .AN(n208), .B(n209), .C(n942), .Y(n203) );
  OAI211X1 U558 ( .A0(n980), .A1(n943), .B0(n210), .C0(n211), .Y(n202) );
  NAND4BBX1 U559 ( .AN(n156), .BN(n157), .C(n147), .D(n158), .Y(
        run_phase_init[1]) );
  AOI222X1 U560 ( .A0(n990), .A1(rom_data_register[1]), .B0(
        ram_data_register[1]), .B1(n378), .C0(n855), .C1(n955), .Y(n377) );
  OAI211X1 U561 ( .A0(n851), .A1(n206), .B0(n1008), .C0(n377), .Y(n364) );
  NOR3X8 U562 ( .A(n356), .B(n368), .C(n208), .Y(n367) );
  OR2X4 U563 ( .A(n516), .B(n517), .Y(n514) );
  CLKINVX2 U564 ( .A(ram_data_register[3]), .Y(n1034) );
  CLKINVX2 U565 ( .A(ram_data_register[2]), .Y(n1035) );
  CLKNAND2X2 U566 ( .A(run_phase[1]), .B(run_phase[0]), .Y(n671) );
  CLKNAND2X12 U567 ( .A(instruction[1]), .B(n1047), .Y(n657) );
  CLKINVX3 U568 ( .A(ram_data_register[1]), .Y(n1058) );
  CLKINVX3 U569 ( .A(ram_data_register[0]), .Y(n1050) );
  CLKINVX2 U570 ( .A(ram_data_register[4]), .Y(n1033) );
  CLKINVX2 U571 ( .A(ram_data_register[6]), .Y(n1031) );
  AOI22X1 U572 ( .A0(psw[3]), .A1(n558), .B0(n546), .B1(rom_data_register[6]), 
        .Y(n561) );
  AOI32X1 U573 ( .A0(rom_data_register[3]), .A1(n916), .A2(n990), .B0(
        ram_data_register[3]), .B1(n353), .Y(n352) );
  NAND3X4 U574 ( .A(n844), .B(n1053), .C(n664), .Y(n165) );
  AO21X1 U575 ( .A0(ram_data_register[3]), .A1(n951), .B0(n555), .Y(n552) );
  CLKINVX2 U577 ( .A(tmp[3]), .Y(n925) );
  CLKINVX1 U579 ( .A(rom_data_register[5]), .Y(n1029) );
  CLKINVX1 U580 ( .A(rom_data_register[6]), .Y(n1030) );
  CLKINVX1 U581 ( .A(tmp[7]), .Y(n920) );
  BUFX5 U582 ( .A(rst_n), .Y(n918) );
  NAND2X1 U584 ( .A(n958), .B(n875), .Y(n547) );
  NOR2X2 U585 ( .A(n264), .B(n911), .Y(n180) );
  INVX4 U587 ( .A(n271), .Y(n983) );
  INVX2 U588 ( .A(n480), .Y(n994) );
  INVX4 U590 ( .A(n287), .Y(n991) );
  INVX2 U591 ( .A(n324), .Y(n1015) );
  INVX2 U592 ( .A(n154), .Y(n970) );
  INVX2 U593 ( .A(n378), .Y(n960) );
  INVX2 U594 ( .A(n507), .Y(n950) );
  NAND2X2 U595 ( .A(n1009), .B(n959), .Y(n326) );
  INVX2 U596 ( .A(n184), .Y(n964) );
  INVX2 U597 ( .A(n148), .Y(n1013) );
  INVX4 U598 ( .A(n473), .Y(n987) );
  INVX2 U599 ( .A(n471), .Y(n1016) );
  INVX2 U600 ( .A(n237), .Y(n947) );
  BUFX5 U601 ( .A(n978), .Y(n902) );
  NOR3X4 U602 ( .A(n988), .B(n1009), .C(n826), .Y(n147) );
  INVX2 U603 ( .A(n206), .Y(n984) );
  INVX2 U604 ( .A(n340), .Y(n979) );
  AOI22X2 U605 ( .A0(n1038), .A1(n375), .B0(n319), .B1(n376), .Y(n371) );
  INVX6 U606 ( .A(n410), .Y(n1038) );
  INVX5 U607 ( .A(n266), .Y(n992) );
  NOR3X4 U608 ( .A(n991), .B(n998), .C(n168), .Y(n366) );
  NAND2X5 U609 ( .A(n989), .B(n1043), .Y(n264) );
  AOI21X1 U610 ( .A0(n480), .A1(n470), .B0(n941), .Y(n644) );
  INVX2 U611 ( .A(n275), .Y(n971) );
  INVX2 U612 ( .A(n646), .Y(n1004) );
  INVX4 U613 ( .A(n896), .Y(n913) );
  INVX4 U614 ( .A(n896), .Y(n912) );
  INVX4 U615 ( .A(n896), .Y(n911) );
  NOR2X4 U616 ( .A(n932), .B(n900), .Y(n344) );
  OAI22X1 U617 ( .A0(n1008), .A1(n947), .B0(n270), .B1(n264), .Y(n654) );
  OAI22X1 U618 ( .A0(n959), .A1(n1001), .B0(n481), .B1(n902), .Y(n656) );
  INVX4 U619 ( .A(n536), .Y(n949) );
  NOR2X4 U620 ( .A(n972), .B(n982), .Y(n161) );
  INVX2 U621 ( .A(n504), .Y(n939) );
  INVX2 U622 ( .A(n182), .Y(n946) );
  INVX2 U623 ( .A(n277), .Y(n1005) );
  OAI22X1 U624 ( .A0(n344), .A1(n902), .B0(n1008), .B1(n442), .Y(n439) );
  OAI21X1 U625 ( .A0(n985), .A1(n851), .B0(n878), .Y(n454) );
  INVX2 U626 ( .A(n458), .Y(n1040) );
  NAND3X2 U627 ( .A(n310), .B(n308), .C(n309), .Y(bit_en) );
  NOR4X4 U628 ( .A(n151), .B(n152), .C(n153), .D(n154), .Y(n150) );
  INVX5 U629 ( .A(n323), .Y(n954) );
  OAI21X1 U630 ( .A0(n998), .A1(n250), .B0(n859), .Y(n325) );
  AOI21X1 U631 ( .A0(n959), .A1(n826), .B0(n215), .Y(n210) );
  AOI31X1 U632 ( .A0(n971), .A1(n216), .A2(n217), .B0(n857), .Y(n215) );
  NOR3X1 U633 ( .A(n995), .B(n1006), .C(n976), .Y(n217) );
  AOI21X1 U634 ( .A0(n931), .A1(n945), .B0(n985), .Y(n241) );
  INVX2 U635 ( .A(n249), .Y(n938) );
  OAI31X2 U636 ( .A0(n1019), .A1(n250), .A2(n170), .B0(n939), .Y(n249) );
  INVX2 U637 ( .A(n267), .Y(n936) );
  NOR3X2 U638 ( .A(n987), .B(n155), .C(n984), .Y(n149) );
  AOI211X2 U639 ( .A0(n854), .A1(n900), .B0(n311), .C0(n994), .Y(n462) );
  AOI211X2 U640 ( .A0(n1032), .A1(n901), .B0(n213), .C0(n850), .Y(n456) );
  INVX5 U641 ( .A(n682), .Y(n1017) );
  NAND2X4 U642 ( .A(n688), .B(n1055), .Y(n660) );
  OA21X2 U643 ( .A0(n230), .A1(n277), .B0(n411), .Y(n312) );
  INVX2 U644 ( .A(n488), .Y(n948) );
  NOR2X6 U645 ( .A(n1042), .B(n390), .Y(n164) );
  NOR2X6 U646 ( .A(n827), .B(n390), .Y(n192) );
  NOR3X6 U647 ( .A(n303), .B(n914), .C(n845), .Y(n486) );
  INVX2 U648 ( .A(n605), .Y(n963) );
  AOI221X2 U649 ( .A0(n1005), .A1(n346), .B0(n1045), .B1(n299), .C0(n656), .Y(
        n652) );
  AOI211X2 U650 ( .A0(n992), .A1(n813), .B0(n654), .C0(n486), .Y(n653) );
  NOR3X2 U651 ( .A(n659), .B(n305), .C(n151), .Y(n651) );
  NOR2X4 U652 ( .A(n648), .B(n849), .Y(n270) );
  NOR2X4 U653 ( .A(n655), .B(n953), .Y(n481) );
  AOI211X2 U654 ( .A0(n194), .A1(n851), .B0(n208), .C0(n317), .Y(n636) );
  NOR2X4 U655 ( .A(n674), .B(n662), .Y(n251) );
  OAI31X2 U656 ( .A0(n990), .A1(n1045), .A2(n236), .B0(n913), .Y(n382) );
  NOR2X4 U657 ( .A(n886), .B(n660), .Y(n606) );
  INVX5 U658 ( .A(n300), .Y(n1008) );
  OAI2BB1X1 U659 ( .A0N(n288), .A1N(n442), .B0(n983), .Y(n609) );
  NAND4X2 U660 ( .A(n586), .B(n914), .C(n935), .D(n978), .Y(n513) );
  OAI2B2X1 U661 ( .A1N(n213), .A0(n307), .B0(n950), .B1(n914), .Y(n630) );
  INVX4 U662 ( .A(n307), .Y(n976) );
  AOI31X1 U663 ( .A0(n240), .A1(n194), .A2(n917), .B0(n152), .Y(n704) );
  AOI21X1 U664 ( .A0(n989), .A1(n458), .B0(n698), .Y(n697) );
  AOI21X1 U665 ( .A0(n674), .A1(n441), .B0(n827), .Y(n698) );
  NAND2X4 U666 ( .A(n1011), .B(n1023), .Y(n389) );
  INVX4 U667 ( .A(n647), .Y(n933) );
  NAND2X2 U668 ( .A(n613), .B(n614), .Y(n580) );
  NOR4X4 U669 ( .A(n977), .B(n982), .C(n1004), .D(n164), .Y(n614) );
  AOI211X2 U670 ( .A0(n606), .A1(n821), .B0(n862), .C0(n615), .Y(n613) );
  AOI21X1 U671 ( .A0(n472), .A1(n601), .B0(n912), .Y(n615) );
  INVX4 U672 ( .A(n434), .Y(n989) );
  NAND3X2 U673 ( .A(n419), .B(n931), .C(n420), .Y(n399) );
  AOI211X2 U674 ( .A0(n1032), .A1(n901), .B0(n953), .C0(n968), .Y(n420) );
  INVX4 U675 ( .A(n658), .Y(n1000) );
  NAND3X2 U676 ( .A(n602), .B(n465), .C(n603), .Y(n348) );
  AOI21X1 U677 ( .A0(n989), .A1(n1041), .B0(n604), .Y(n603) );
  INVX4 U678 ( .A(n589), .Y(n921) );
  AOI21X1 U679 ( .A0(n227), .A1(n244), .B0(n230), .Y(n493) );
  OR3X2 U680 ( .A(n897), .B(n898), .C(n899), .Y(n317) );
  AO22X2 U681 ( .A0(n995), .A1(n648), .B0(n946), .B1(n1007), .Y(n897) );
  OR4X2 U682 ( .A(n933), .B(n988), .C(n644), .D(n645), .Y(n899) );
  NAND2X2 U683 ( .A(n274), .B(n458), .Y(n467) );
  INVX2 U684 ( .A(n243), .Y(n1019) );
  NAND2X2 U685 ( .A(n434), .B(n674), .Y(n681) );
  INVX2 U686 ( .A(n503), .Y(n1002) );
  NAND2X5 U687 ( .A(n854), .B(n815), .Y(n534) );
  NAND3BX2 U688 ( .AN(n175), .B(n647), .C(n701), .Y(n631) );
  INVX4 U689 ( .A(n472), .Y(n1014) );
  INVX2 U690 ( .A(n461), .Y(n935) );
  AOI211X2 U691 ( .A0(n1017), .A1(n1038), .B0(n387), .C0(n349), .Y(n435) );
  AOI21X1 U692 ( .A0(n1040), .A1(n1042), .B0(n441), .Y(n440) );
  INVX2 U693 ( .A(n432), .Y(n1037) );
  AOI211X2 U694 ( .A0(n880), .A1(n347), .B0(n339), .C0(n413), .Y(n412) );
  AOI21X1 U695 ( .A0(n414), .A1(n148), .B0(n915), .Y(n413) );
  AOI211X2 U696 ( .A0(n880), .A1(n877), .B0(n395), .C0(n940), .Y(n394) );
  NAND3X6 U697 ( .A(n451), .B(n452), .C(n453), .Y(alu_op[0]) );
  AOI221X2 U698 ( .A0(n339), .A1(n347), .B0(n955), .B1(n993), .C0(n501), .Y(
        n452) );
  AOI222X1 U699 ( .A0(n319), .A1(n932), .B0(n870), .B1(n341), .C0(n1045), .C1(
        n507), .Y(n451) );
  NOR3X2 U700 ( .A(n430), .B(n402), .C(n408), .Y(n423) );
  OAI21X1 U701 ( .A0(n850), .A1(n399), .B0(n194), .Y(n397) );
  NAND2X2 U702 ( .A(n1040), .B(n457), .Y(n432) );
  AOI21X4 U703 ( .A0(n1049), .A1(n1000), .B0(n1002), .Y(n414) );
  AOI31X1 U704 ( .A0(n1020), .A1(n414), .A2(n502), .B0(n877), .Y(n501) );
  INVX2 U705 ( .A(n409), .Y(n1020) );
  AOI211X2 U706 ( .A0(n1038), .A1(n1010), .B0(n1003), .C0(n999), .Y(n502) );
  NAND3X2 U707 ( .A(n209), .B(n867), .C(n293), .Y(n290) );
  AOI211X2 U708 ( .A0(n915), .A1(n246), .B0(n938), .C0(n247), .Y(n197) );
  NAND4X4 U709 ( .A(n253), .B(n254), .C(n255), .D(n256), .Y(next_status[0]) );
  AND3X2 U710 ( .A(n257), .B(n258), .C(n259), .Y(n256) );
  OAI2BB1X1 U711 ( .A0N(n234), .A1N(n235), .B0(n972), .Y(n233) );
  OAI21X1 U712 ( .A0(n992), .A1(n236), .B0(n237), .Y(n232) );
  NOR4X4 U713 ( .A(n903), .B(n1014), .C(n191), .D(n192), .Y(n190) );
  AOI21X1 U714 ( .A0(n1032), .A1(n193), .B0(n826), .Y(n189) );
  NOR2X2 U715 ( .A(n1045), .B(n855), .Y(n162) );
  AOI21X1 U716 ( .A0(n201), .A1(n287), .B0(n913), .Y(n284) );
  AOI21X1 U717 ( .A0(n936), .A1(n945), .B0(n871), .Y(n247) );
  INVX2 U718 ( .A(n347), .Y(n943) );
  AND4X2 U719 ( .A(n331), .B(n332), .C(n333), .D(n334), .Y(n330) );
  NOR4X4 U720 ( .A(n995), .B(n1014), .C(n991), .D(n1016), .Y(n332) );
  NOR4X2 U721 ( .A(n880), .B(n339), .C(n979), .D(n987), .Y(n333) );
  AOI211X2 U722 ( .A0(n903), .A1(n341), .B0(n1004), .C0(n164), .Y(n331) );
  OAI21X4 U723 ( .A0(n941), .A1(n165), .B0(n357), .Y(n388) );
  OAI21X1 U724 ( .A0(n872), .A1(n227), .B0(n242), .Y(n491) );
  NOR4X4 U725 ( .A(n906), .B(n683), .C(n1049), .D(n1043), .Y(n705) );
  NOR4X4 U726 ( .A(n315), .B(n316), .C(n317), .D(n318), .Y(n314) );
  NOR3X6 U727 ( .A(n662), .B(n909), .C(n389), .Y(n337) );
  NOR3X6 U728 ( .A(n968), .B(n904), .C(n482), .Y(n235) );
  AOI222X1 U729 ( .A0(n319), .A1(n850), .B0(n917), .B1(n1007), .C0(n815), .C1(
        n1045), .Y(n633) );
  AOI211X2 U730 ( .A0(n855), .A1(n376), .B0(n649), .C0(n992), .Y(n634) );
  OAI32X2 U731 ( .A0(n694), .A1(n906), .A2(n877), .B0(n1056), .B1(n476), .Y(
        n687) );
  NAND3X4 U732 ( .A(n669), .B(n877), .C(n1021), .Y(n243) );
  CLKNAND2X2 U733 ( .A(n875), .B(n556), .Y(n530) );
  OAI2BB1X1 U734 ( .A0N(n266), .A1N(n876), .B0(n864), .Y(n556) );
  NAND4X4 U735 ( .A(n675), .B(n1036), .C(n848), .D(n1023), .Y(n242) );
  AOI211X2 U736 ( .A0(n949), .A1(n543), .B0(n962), .C0(n522), .Y(n542) );
  OAI22X1 U737 ( .A0(n1046), .A1(n385), .B0(n960), .B1(n1050), .Y(n384) );
  OA21X2 U738 ( .A0(n1050), .A1(n534), .B0(n545), .Y(n578) );
  INVX4 U739 ( .A(n671), .Y(n969) );
  NAND3X2 U740 ( .A(n910), .B(n909), .C(n680), .Y(n506) );
  AOI211X2 U741 ( .A0(n870), .A1(n813), .B0(n627), .C0(n628), .Y(n626) );
  OAI21X1 U742 ( .A0(n569), .A1(n536), .B0(n537), .Y(n568) );
  INVX2 U743 ( .A(n672), .Y(n942) );
  OAI221X2 U744 ( .A0(n612), .A1(n471), .B0(n230), .B1(n473), .C0(n673), .Y(
        n672) );
  AOI221X2 U745 ( .A0(n1015), .A1(n274), .B0(n1014), .B1(n912), .C0(n991), .Y(
        n673) );
  NAND3X2 U746 ( .A(n1043), .B(n848), .C(n1010), .Y(n226) );
  NAND2X2 U747 ( .A(n1022), .B(n1012), .Y(n474) );
  OAI22X1 U748 ( .A0(n875), .A1(n1025), .B0(n874), .B1(n927), .Y(n584) );
  OAI222X1 U749 ( .A0(n525), .A1(n1046), .B0(n925), .B1(n589), .C0(n967), .C1(
        n1023), .Y(n593) );
  INVX2 U750 ( .A(n579), .Y(n967) );
  OAI22X1 U751 ( .A0(n946), .A1(n148), .B0(n912), .B1(n165), .Y(n659) );
  OAI2BB1X2 U752 ( .A0N(n912), .A1N(n192), .B0(n611), .Y(n291) );
  OAI21X1 U753 ( .A0(n823), .A1(n1051), .B0(n240), .Y(n518) );
  OAI21X1 U754 ( .A0(n927), .A1(n536), .B0(n874), .Y(n576) );
  AOI21X1 U755 ( .A0(n524), .A1(n335), .B0(n919), .Y(n594) );
  NAND2X2 U756 ( .A(n554), .B(n922), .Y(n543) );
  AOI22X1 U757 ( .A0(n880), .A1(n908), .B0(n274), .B1(n814), .Y(n406) );
  OAI21X1 U758 ( .A0(n900), .A1(n422), .B0(n903), .Y(n405) );
  NOR4X4 U759 ( .A(n316), .B(n401), .C(n408), .D(n409), .Y(n407) );
  AOI211X2 U760 ( .A0(n347), .A1(n1003), .B0(n933), .C0(n461), .Y(n460) );
  OAI21X1 U761 ( .A0(n447), .A1(n448), .B0(n1043), .Y(n446) );
  OAI21X6 U762 ( .A0(n1046), .A1(n391), .B0(n392), .Y(b_bit_location[0]) );
  OAI222X1 U763 ( .A0(n321), .A1(n1058), .B0(n322), .B1(n927), .C0(n954), .C1(
        n1025), .Y(n721) );
  OAI222X1 U764 ( .A0(n321), .A1(n1034), .B0(n322), .B1(n925), .C0(n954), .C1(
        n1027), .Y(n723) );
  OAI222X1 U765 ( .A0(n321), .A1(n1035), .B0(n322), .B1(n924), .C0(n954), .C1(
        n1026), .Y(n722) );
  OAI222X1 U766 ( .A0(n321), .A1(n1033), .B0(n322), .B1(n922), .C0(n954), .C1(
        n1028), .Y(n724) );
  OAI222X1 U767 ( .A0(n321), .A1(n1050), .B0(n322), .B1(n919), .C0(n954), .C1(
        n1046), .Y(n720) );
  AND4X6 U768 ( .A(n327), .B(n328), .C(n329), .D(n330), .Y(n322) );
  NOR4X4 U769 ( .A(n342), .B(n157), .C(n152), .D(n168), .Y(n329) );
  NOR3X2 U770 ( .A(n193), .B(n348), .C(n349), .Y(n327) );
  NAND4X4 U771 ( .A(n171), .B(n172), .C(n173), .D(n174), .Y(next_status[2]) );
  NOR4X4 U772 ( .A(n175), .B(n176), .C(n164), .D(n177), .Y(n174) );
  AOI211X2 U773 ( .A0(n852), .A1(n194), .B0(n195), .C0(n196), .Y(n171) );
  AOI211X2 U774 ( .A0(n859), .A1(n178), .B0(n179), .C0(n180), .Y(n173) );
  AOI21X1 U775 ( .A0(n947), .A1(n224), .B0(n264), .Y(n263) );
  OAI22X1 U776 ( .A0(n1051), .A1(n243), .B0(n244), .B1(n245), .Y(n238) );
  NOR4X4 U777 ( .A(n933), .B(n278), .C(n279), .D(n280), .Y(n258) );
  AOI21X1 U778 ( .A0(n216), .A1(n165), .B0(n943), .Y(n280) );
  AOI21X1 U779 ( .A0(n980), .A1(n243), .B0(n281), .Y(n279) );
  NAND4X2 U780 ( .A(n971), .B(n165), .C(n166), .D(n167), .Y(n156) );
  NOR3X2 U781 ( .A(n1015), .B(n984), .C(n1016), .Y(n166) );
  OAI22X1 U782 ( .A0(n205), .A1(n206), .B0(n902), .B1(n207), .Y(n204) );
  NOR4X4 U783 ( .A(n1007), .B(n983), .C(n1014), .D(n991), .Y(n158) );
  NAND4BX1 U784 ( .AN(n860), .B(n161), .C(n162), .D(n163), .Y(
        run_phase_init[0]) );
  NOR4X4 U785 ( .A(n979), .B(n1013), .C(n164), .D(n156), .Y(n163) );
  AOI21X1 U786 ( .A0(n973), .A1(n181), .B0(n182), .Y(n179) );
  NAND4BX2 U787 ( .AN(n356), .B(n357), .C(n358), .D(n359), .Y(b_data_from[2])
         );
  AOI211X2 U788 ( .A0(n1045), .A1(n360), .B0(n361), .C0(n933), .Y(n359) );
  AOI21X1 U789 ( .A0(n990), .A1(rom_data_register[2]), .B0(n363), .Y(n358) );
  OAI22X1 U790 ( .A0(n1008), .A1(n362), .B0(n960), .B1(n1035), .Y(n361) );
  AOI2BB2X2 U791 ( .B0(n1017), .B1(n1036), .A0N(n476), .A1N(n886), .Y(n685) );
  AOI32X2 U792 ( .A0(n520), .A1(n923), .A2(n949), .B0(ram_data_register[6]), 
        .B1(n533), .Y(n528) );
  OA21X1 U793 ( .A0(n536), .A1(n520), .B0(n537), .Y(n527) );
  OAI22X1 U794 ( .A0(n919), .A1(n1051), .B0(N1141), .B1(n1031), .Y(n500) );
  AOI22X2 U795 ( .A0(ram_data_register[4]), .A1(n552), .B0(tmp[4]), .B1(n553), 
        .Y(n551) );
  AOI2BB2X2 U796 ( .B0(rom_data_register[4]), .B1(n530), .A0N(n536), .A1N(n543), .Y(n550) );
  AOI31X1 U797 ( .A0(n953), .A1(n518), .A2(n855), .B0(n519), .Y(n511) );
  OAI31X2 U798 ( .A0(n961), .A1(n522), .A2(n523), .B0(tmp[7]), .Y(n510) );
  AOI31X1 U799 ( .A0(n525), .A1(n266), .A2(n876), .B0(n1024), .Y(n509) );
  NOR3X2 U800 ( .A(n847), .B(n907), .C(instruction[2]), .Y(n695) );
  NOR3X2 U801 ( .A(n921), .B(n546), .C(n997), .Y(n539) );
  OAI32X2 U802 ( .A0(n534), .A1(ram_data_register[1]), .A2(
        ram_data_register[0]), .B0(n578), .B1(n1058), .Y(n585) );
  AOI21X4 U803 ( .A0(run_phase[0]), .A1(n905), .B0(n696), .Y(n459) );
  NAND2X2 U804 ( .A(n934), .B(n911), .Y(n667) );
  OAI22X1 U805 ( .A0(run_phase[0]), .A1(n471), .B0(n670), .B1(n902), .Y(n668)
         );
  NAND4X4 U806 ( .A(n572), .B(n573), .C(n574), .D(n575), .Y(
        addr_register_out[2]) );
  AOI22X2 U807 ( .A0(n921), .A1(tmp[5]), .B0(instruction[7]), .B1(n579), .Y(
        n573) );
  AOI2BB2X1 U808 ( .B0(n951), .B1(n565), .A0N(n1026), .A1N(n875), .Y(n574) );
  AOI222X2 U809 ( .A0(n949), .A1(n569), .B0(N55), .B1(n576), .C0(
        ram_data_register[2]), .C1(n577), .Y(n575) );
  NAND4X4 U810 ( .A(n561), .B(n562), .C(n563), .D(n564), .Y(
        addr_register_out[3]) );
  AOI22X2 U811 ( .A0(n949), .A1(n554), .B0(n921), .B1(tmp[6]), .Y(n562) );
  AOI22X2 U812 ( .A0(tmp[3]), .A1(n568), .B0(ram_data_register[3]), .B1(n555), 
        .Y(n563) );
  AOI32X2 U813 ( .A0(n565), .A1(n1034), .A2(n951), .B0(rom_data_register[3]), 
        .B1(n566), .Y(n564) );
  OAI21X4 U814 ( .A0(n904), .A1(n934), .B0(n703), .Y(n696) );
  OAI21X1 U815 ( .A0(run_phase[1]), .A1(run_phase[2]), .B0(n905), .Y(n703) );
  NAND3X4 U816 ( .A(n581), .B(n582), .C(n583), .Y(addr_register_out[1]) );
  AOI211X2 U817 ( .A0(n949), .A1(n927), .B0(n584), .C0(n585), .Y(n583) );
  AOI21X1 U818 ( .A0(n546), .A1(rom_data_register[4]), .B0(n515), .Y(n581) );
  NAND3X2 U819 ( .A(run_phase[2]), .B(n1052), .C(n969), .Y(n640) );
  NAND3X4 U820 ( .A(n590), .B(n591), .C(n592), .Y(addr_register_out[0]) );
  AOI221X2 U821 ( .A0(n987), .A1(n859), .B0(n1013), .B1(n930), .C0(n516), .Y(
        n590) );
  NOR3X2 U822 ( .A(n593), .B(n594), .C(n595), .Y(n592) );
  AOI222X2 U823 ( .A0(n546), .A1(rom_data_register[3]), .B0(
        ram_data_register[0]), .B1(n513), .C0(n844), .C1(n558), .Y(n591) );
  OAI22X1 U824 ( .A0(n919), .A1(n1058), .B0(N1141), .B1(n1050), .Y(n497) );
  OAI22X1 U825 ( .A0(n919), .A1(n1034), .B0(N1141), .B1(n1035), .Y(n498) );
  OAI22X1 U826 ( .A0(n919), .A1(n882), .B0(N1141), .B1(n1033), .Y(n499) );
  AOI22X1 U827 ( .A0(instruction[2]), .A1(n580), .B0(n546), .B1(
        rom_data_register[5]), .Y(n572) );
  NOR3X6 U828 ( .A(run_phase[2]), .B(n905), .C(n1057), .Y(n612) );
  AOI21X1 U829 ( .A0(n1032), .A1(n859), .B0(n915), .Y(n596) );
  NOR3X2 U830 ( .A(instruction[2]), .B(n848), .C(instruction[3]), .Y(n664) );
  NOR2X4 U831 ( .A(N55), .B(N54), .Y(n569) );
  OAI222X1 U832 ( .A0(n321), .A1(n882), .B0(n322), .B1(n926), .C0(n954), .C1(
        n1029), .Y(n725) );
  OAI222X1 U833 ( .A0(n321), .A1(n1031), .B0(n322), .B1(n923), .C0(n954), .C1(
        n1030), .Y(n726) );
  OAI222X1 U834 ( .A0(n321), .A1(n1051), .B0(n322), .B1(n920), .C0(n954), .C1(
        n1024), .Y(n727) );
  NAND4X2 U835 ( .A(n147), .B(n148), .C(n149), .D(n150), .Y(run_phase_init[2])
         );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [8:0] carry;

  ADDFX1 U2_6 ( .A(A[6]), .B(n16), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX1 U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX1 U2_5 ( .A(A[5]), .B(n15), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX1 U2_0 ( .A(A[0]), .B(n10), .CI(n17), .CO(carry[1]), .S(DIFF[0]) );
  ADDFX1 U2_2 ( .A(A[2]), .B(n12), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX1 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[2]), .Y(n12) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n10) );
  XNOR3X1 U3 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(DIFF[7]) );
  CLKINVX1 U4 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n11) );
  CLKINVX1 U6 ( .A(B[4]), .Y(n14) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n15) );
  INVX2 U8 ( .A(CI), .Y(n17) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n16) );
endmodule


module ALU_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  INVX2 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_3 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
  ADDFX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
endmodule


module ALU_DW01_add_4 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  XOR2X1 U1 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n1) );
endmodule


module ALU_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n58, n60, n61, n63, n64, n65, n67, n68,
         n69, n70, n72, n73, n74, n75, n76, n78, n79, n80, n81, n82, n83, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191;

  AND2X1 U98 ( .A(b[7]), .B(a[0]), .Y(n92) );
  NAND2X2 U99 ( .A(b[3]), .B(a[5]), .Y(n177) );
  NAND2X1 U100 ( .A(b[7]), .B(a[1]), .Y(n176) );
  NAND2X2 U101 ( .A(b[6]), .B(a[2]), .Y(n172) );
  AND2X1 U102 ( .A(a[7]), .B(b[0]), .Y(n58) );
  NAND2X1 U103 ( .A(b[1]), .B(a[7]), .Y(n169) );
  INVX5 U104 ( .A(b[0]), .Y(n178) );
  INVX5 U105 ( .A(b[1]), .Y(n179) );
  CLKINVX3 U106 ( .A(b[4]), .Y(n182) );
  CLKINVX4 U107 ( .A(b[2]), .Y(n180) );
  NAND2X1 U108 ( .A(b[2]), .B(a[6]), .Y(n168) );
  CLKINVX2 U109 ( .A(a[6]), .Y(n190) );
  CLKINVX2 U110 ( .A(a[5]), .Y(n189) );
  NOR2X1 U111 ( .A(n187), .B(n182), .Y(n72) );
  NOR2X2 U112 ( .A(n183), .B(n186), .Y(n78) );
  NOR2X1 U113 ( .A(n186), .B(n182), .Y(n79) );
  NOR2X1 U114 ( .A(n185), .B(n182), .Y(n87) );
  NOR2X1 U115 ( .A(n182), .B(n191), .Y(n95) );
  NOR2X2 U116 ( .A(n186), .B(n180), .Y(n81) );
  ADDHX1 U117 ( .A(n64), .B(n61), .CO(n35), .S(n36) );
  ADDHX1 U118 ( .A(n82), .B(n76), .CO(n53), .S(n54) );
  NAND2X1 U119 ( .A(b[5]), .B(a[3]), .Y(n164) );
  NOR2X2 U120 ( .A(n189), .B(n180), .Y(n63) );
  INVX3 U121 ( .A(b[3]), .Y(n181) );
  ADDFX1 U122 ( .A(n28), .B(n37), .CI(n4), .CO(n3), .S(product[6]) );
  ADDFX1 U123 ( .A(n38), .B(n45), .CI(n5), .CO(n4), .S(product[5]) );
  ADDFX1 U124 ( .A(n16), .B(n27), .CI(n3), .CO(n2), .S(product[7]) );
  INVX4 U125 ( .A(a[2]), .Y(n186) );
  INVX4 U126 ( .A(a[3]), .Y(n187) );
  INVX4 U127 ( .A(a[4]), .Y(n188) );
  INVX5 U128 ( .A(a[1]), .Y(n185) );
  ADDFX1 U129 ( .A(n50), .B(n53), .CI(n48), .CO(n45), .S(n46) );
  ADDFX1 U130 ( .A(n29), .B(n20), .CI(n18), .CO(n15), .S(n16) );
  ADDFX1 U131 ( .A(n42), .B(n47), .CI(n40), .CO(n37), .S(n38) );
  ADDFX1 U132 ( .A(n39), .B(n32), .CI(n30), .CO(n27), .S(n28) );
  ADDFX1 U133 ( .A(n52), .B(n54), .CI(n7), .CO(n6), .S(product[3]) );
  ADDFX1 U134 ( .A(n46), .B(n51), .CI(n6), .CO(n5), .S(product[4]) );
  ADDFX1 U135 ( .A(n41), .B(n36), .CI(n34), .CO(n29), .S(n30) );
  INVX5 U136 ( .A(a[0]), .Y(n191) );
  XNOR2X1 U137 ( .A(n23), .B(n21), .Y(n173) );
  XNOR2X1 U138 ( .A(n25), .B(n19), .Y(n165) );
  ADDHX1 U139 ( .A(n97), .B(n90), .CO(n55), .S(n56) );
  NOR2X2 U140 ( .A(n185), .B(n179), .Y(n90) );
  NOR2X2 U141 ( .A(n180), .B(n191), .Y(n97) );
  ADDFX1 U142 ( .A(n74), .B(n94), .CI(n80), .CO(n41), .S(n42) );
  NOR2X2 U143 ( .A(n186), .B(n181), .Y(n80) );
  NOR2X2 U144 ( .A(n183), .B(n191), .Y(n94) );
  NOR2X2 U145 ( .A(n187), .B(n180), .Y(n74) );
  NOR2X2 U146 ( .A(n190), .B(n178), .Y(n61) );
  NOR2X2 U147 ( .A(n189), .B(n179), .Y(n64) );
  ADDHX1 U148 ( .A(n69), .B(n65), .CO(n43), .S(n44) );
  NOR2X2 U149 ( .A(n189), .B(n178), .Y(n65) );
  NOR2X2 U150 ( .A(n188), .B(n179), .Y(n69) );
  ADDHX1 U151 ( .A(n75), .B(n70), .CO(n49), .S(n50) );
  NOR2X2 U152 ( .A(n188), .B(n178), .Y(n70) );
  NOR2X2 U153 ( .A(n187), .B(n179), .Y(n75) );
  ADDHX1 U154 ( .A(n91), .B(n98), .CO(n8), .S(product[1]) );
  NOR2X2 U155 ( .A(n185), .B(n178), .Y(n91) );
  NOR2X2 U156 ( .A(n179), .B(n191), .Y(n98) );
  ADDFX1 U157 ( .A(n26), .B(n35), .CI(n33), .CO(n19), .S(n20) );
  ADDFX1 U158 ( .A(n73), .B(n79), .CI(n43), .CO(n31), .S(n32) );
  NOR2X2 U159 ( .A(n187), .B(n181), .Y(n73) );
  XOR2X1 U160 ( .A(n159), .B(n160), .Y(product[8]) );
  XOR2X1 U161 ( .A(n161), .B(n15), .Y(n160) );
  XNOR2X1 U162 ( .A(n2), .B(n17), .Y(n159) );
  NOR2X2 U163 ( .A(n187), .B(n178), .Y(n76) );
  NOR2X2 U164 ( .A(n186), .B(n179), .Y(n82) );
  ADDFX1 U165 ( .A(n89), .B(n96), .CI(n55), .CO(n51), .S(n52) );
  NOR2X2 U166 ( .A(n181), .B(n191), .Y(n96) );
  NOR2X2 U167 ( .A(n185), .B(n180), .Y(n89) );
  ADDFX1 U168 ( .A(n8), .B(n83), .CI(n56), .CO(n7), .S(product[2]) );
  NOR2X2 U169 ( .A(n186), .B(n178), .Y(n83) );
  ADDFX1 U170 ( .A(n49), .B(n87), .CI(n44), .CO(n39), .S(n40) );
  ADDFX1 U171 ( .A(n68), .B(n93), .CI(n86), .CO(n33), .S(n34) );
  NOR2X2 U172 ( .A(n184), .B(n191), .Y(n93) );
  NOR2X2 U173 ( .A(n183), .B(n185), .Y(n86) );
  NOR2X2 U174 ( .A(n188), .B(n180), .Y(n68) );
  ADDFX1 U175 ( .A(n81), .B(n95), .CI(n88), .CO(n47), .S(n48) );
  NOR2X2 U176 ( .A(n185), .B(n181), .Y(n88) );
  ADDFX1 U177 ( .A(n24), .B(n22), .CI(n31), .CO(n17), .S(n18) );
  NOR2X2 U178 ( .A(n191), .B(n178), .Y(product[0]) );
  ADDFX1 U179 ( .A(n67), .B(n78), .CI(n72), .CO(n21), .S(n22) );
  NOR2X2 U180 ( .A(n181), .B(n188), .Y(n67) );
  CLKINVX2 U181 ( .A(b[5]), .Y(n183) );
  ADDFX1 U182 ( .A(n63), .B(n92), .CI(n85), .CO(n23), .S(n24) );
  NOR2X2 U183 ( .A(n184), .B(n185), .Y(n85) );
  XOR2X1 U184 ( .A(n170), .B(n171), .Y(n166) );
  XOR2X1 U185 ( .A(n174), .B(n175), .Y(n170) );
  XOR2X1 U186 ( .A(n172), .B(n173), .Y(n171) );
  NAND2X1 U187 ( .A(b[4]), .B(a[4]), .Y(n174) );
  XOR2X1 U188 ( .A(n162), .B(n163), .Y(n161) );
  XOR2X1 U189 ( .A(n164), .B(n165), .Y(n163) );
  XOR2X1 U190 ( .A(n166), .B(n167), .Y(n162) );
  XOR2X1 U191 ( .A(n168), .B(n169), .Y(n167) );
  CLKINVX2 U192 ( .A(b[6]), .Y(n184) );
  XOR2X1 U193 ( .A(n176), .B(n177), .Y(n175) );
  ADDHX1 U194 ( .A(n60), .B(n58), .CO(n25), .S(n26) );
  NOR2X1 U195 ( .A(n190), .B(n179), .Y(n60) );
endmodule


module ALU_DW_div_uns_6 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/PartRem[1][1] ,
         \u_div/PartRem[1][2] , \u_div/PartRem[1][3] , \u_div/PartRem[1][4] ,
         \u_div/PartRem[1][5] , \u_div/PartRem[1][6] , \u_div/PartRem[1][7] ,
         n1, n2, n3, n4, n8, n9, n10, n11, n12, n13, n14, n17, n18, n19, n20,
         n21, n25, n26, n27, n28, n29, n30, n38, n39, n41, n42, n43, n44, n45,
         n47, n48, n54, n55, n56, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n72, n75, n76, n77, n78, n79, n80, n81, n82, n83;

  ADDFX1 \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n82), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n80), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n81), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_1_5  ( .A(n66), .B(n81), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n77), .CI(
        \u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_1_6  ( .A(n68), .B(n82), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_2_5  ( .A(n4), .B(n81), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_5_2  ( .A(n8), .B(n78), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_3_4  ( .A(n10), .B(n80), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_2_4  ( .A(n17), .B(n80), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_4_2  ( .A(n12), .B(n78), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_1_2  ( .A(n63), .B(n78), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n78), .CI(
        \u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n83), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4 \u_div/u_fa_PartRem_0_3_3  ( .A(n2), .B(n79), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_4_3  ( .A(n1), .B(n79), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n79), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_1_4  ( .A(n67), .B(n80), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_3_2  ( .A(n3), .B(n78), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_2_2  ( .A(n18), .B(n78), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_1_3  ( .A(n69), .B(n79), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_2_3  ( .A(n19), .B(n79), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_1_1  ( .A(n65), .B(n77), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_2_1  ( .A(n54), .B(n77), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_4_1  ( .A(n14), .B(n77), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_6_1  ( .A(n20), .B(n77), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2 \u_div/u_fa_PartRem_0_5_1  ( .A(n9), .B(n77), .CI(
        \u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_3_1  ( .A(n21), .B(n77), .CI(
        \u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  INVX6 U1 ( .A(b[1]), .Y(n77) );
  NOR2X8 U2 ( .A(a[7]), .B(n56), .Y(n11) );
  OR2X8 U3 ( .A(a[6]), .B(n56), .Y(\u_div/CryTmp[6][1] ) );
  OR2X8 U4 ( .A(a[5]), .B(n56), .Y(\u_div/CryTmp[5][1] ) );
  BUFX8 U5 ( .A(n76), .Y(n56) );
  MX2X4 U6 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(n14) );
  MXI2X6 U7 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(n30) );
  INVX2 U8 ( .A(n25), .Y(n68) );
  INVX10 U9 ( .A(n45), .Y(quotient[3]) );
  BUFX14 U10 ( .A(n13), .Y(quotient[6]) );
  CLKINVX1 U11 ( .A(b[7]), .Y(n83) );
  NAND2BX2 U12 ( .AN(b[7]), .B(\u_div/CryTmp[1][7] ), .Y(n48) );
  OR2X8 U13 ( .A(b[7]), .B(b[6]), .Y(n44) );
  INVX10 U14 ( .A(b[3]), .Y(n79) );
  XNOR2X2 U15 ( .A(n56), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OR2X8 U16 ( .A(b[2]), .B(b[1]), .Y(n39) );
  NOR3X8 U17 ( .A(b[2]), .B(n38), .C(n75), .Y(n13) );
  CLKMX2X12 U18 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(n54) );
  OR3X2 U19 ( .A(b[5]), .B(n44), .C(n72), .Y(n45) );
  MX2X6 U20 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(n21) );
  INVX2 U21 ( .A(n27), .Y(n67) );
  INVX8 U22 ( .A(n47), .Y(quotient[2]) );
  INVX8 U23 ( .A(n48), .Y(quotient[1]) );
  INVX6 U24 ( .A(n41), .Y(quotient[5]) );
  INVX6 U25 ( .A(n43), .Y(quotient[4]) );
  BUFX5 U26 ( .A(n56), .Y(n55) );
  INVX2 U27 ( .A(b[0]), .Y(n76) );
  OR2X1 U28 ( .A(a[1]), .B(n55), .Y(\u_div/CryTmp[1][1] ) );
  MX2X2 U29 ( .A(n21), .B(\u_div/SumTmp[3][1] ), .S0(quotient[3]), .Y(n18) );
  MX2X2 U30 ( .A(n9), .B(\u_div/SumTmp[5][1] ), .S0(quotient[5]), .Y(n12) );
  CLKMX2X2 U31 ( .A(n12), .B(\u_div/SumTmp[4][2] ), .S0(quotient[4]), .Y(n2)
         );
  NAND2BX4 U32 ( .AN(n38), .B(\u_div/CryTmp[5][3] ), .Y(n41) );
  MX2X6 U33 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  NAND2BX2 U34 ( .AN(n42), .B(\u_div/CryTmp[4][4] ), .Y(n43) );
  NAND2BX8 U35 ( .AN(n44), .B(\u_div/CryTmp[2][6] ), .Y(n47) );
  OR3X8 U36 ( .A(b[5]), .B(b[4]), .C(n44), .Y(n42) );
  NOR3X8 U37 ( .A(n38), .B(n39), .C(n11), .Y(quotient[7]) );
  NAND2BX8 U38 ( .AN(n42), .B(n79), .Y(n38) );
  MX2X8 U39 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(n20) );
  OR2X1 U40 ( .A(a[0]), .B(n55), .Y(\u_div/CryTmp[0][1] ) );
  MX2X6 U41 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(n9) );
  OR2X1 U42 ( .A(a[2]), .B(n55), .Y(\u_div/CryTmp[2][1] ) );
  CLKINVX4 U43 ( .A(b[2]), .Y(n78) );
  INVX4 U44 ( .A(n29), .Y(n63) );
  MXI2X2 U45 ( .A(n19), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n27) );
  CLKMX2X2 U46 ( .A(n14), .B(\u_div/SumTmp[4][1] ), .S0(quotient[4]), .Y(n3)
         );
  CLKMX2X2 U47 ( .A(n1), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n10)
         );
  CLKMX2X2 U48 ( .A(n8), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n1) );
  CLKMX2X2 U49 ( .A(n20), .B(\u_div/SumTmp[6][1] ), .S0(quotient[6]), .Y(n8)
         );
  CLKMX2X2 U50 ( .A(n3), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n19)
         );
  CLKINVX3 U51 ( .A(b[4]), .Y(n80) );
  CLKINVX2 U52 ( .A(b[5]), .Y(n81) );
  MXI2X2 U53 ( .A(n18), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n28) );
  MXI2X2 U54 ( .A(n54), .B(\u_div/SumTmp[2][1] ), .S0(quotient[2]), .Y(n29) );
  MXI2X2 U55 ( .A(n17), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n26) );
  MXI2X2 U56 ( .A(n4), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n25) );
  INVX2 U57 ( .A(\u_div/SumTmp[1][6] ), .Y(n58) );
  XNOR2X1 U58 ( .A(n55), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  MXI2X1 U59 ( .A(n30), .B(n64), .S0(quotient[1]), .Y(\u_div/PartRem[1][2] )
         );
  INVX2 U60 ( .A(\u_div/SumTmp[1][1] ), .Y(n64) );
  XNOR2X1 U61 ( .A(n56), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X1 U62 ( .A(n55), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X1 U63 ( .A(n56), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  OR2X2 U64 ( .A(a[4]), .B(n56), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2 U65 ( .A(a[3]), .B(n55), .Y(\u_div/CryTmp[3][1] ) );
  INVX2 U66 ( .A(n30), .Y(n65) );
  XNOR2X1 U67 ( .A(n55), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2 U68 ( .A(n28), .Y(n69) );
  MXI2X1 U69 ( .A(n29), .B(n62), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  INVX2 U70 ( .A(\u_div/SumTmp[1][2] ), .Y(n62) );
  INVX2 U71 ( .A(n26), .Y(n66) );
  MXI2X1 U72 ( .A(n27), .B(n60), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  INVX2 U73 ( .A(\u_div/SumTmp[1][4] ), .Y(n60) );
  XNOR2X1 U74 ( .A(n55), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  MXI2X1 U75 ( .A(n28), .B(n61), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  INVX2 U76 ( .A(\u_div/SumTmp[1][3] ), .Y(n61) );
  MXI2X1 U77 ( .A(n26), .B(n59), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  INVX2 U78 ( .A(\u_div/SumTmp[1][5] ), .Y(n59) );
  MX2X2 U79 ( .A(n2), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n17) );
  MX2X2 U80 ( .A(n10), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n4) );
  INVX2 U81 ( .A(\u_div/CryTmp[6][2] ), .Y(n75) );
  MXI2X1 U82 ( .A(n25), .B(n58), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  INVX2 U83 ( .A(\u_div/CryTmp[3][5] ), .Y(n72) );
  CLKINVX2 U84 ( .A(b[6]), .Y(n82) );
endmodule


module ALU ( psw_in, a_data, b_data, a_bit_location, b_bit_location, bit_en, 
        alu_op, ans, psw_out );
  input [7:0] psw_in;
  input [7:0] a_data;
  input [7:0] b_data;
  input [2:0] a_bit_location;
  input [2:0] b_bit_location;
  input [3:0] alu_op;
  output [7:0] ans;
  output [7:0] psw_out;
  input bit_en;
  wire   N34, N35, N36, N37, N38, N39, \psw_in[6] , \psw_in[5] , \psw_in[4] ,
         \psw_in[3] , \psw_in[2] , \psw_in[1] , \psw_in[0] , N60, N61, N62,
         N63, N64, N65, N66, N67, N68, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;
  assign N34 = a_bit_location[0];
  assign N35 = a_bit_location[1];
  assign N36 = a_bit_location[2];
  assign N37 = b_bit_location[0];
  assign N38 = b_bit_location[1];
  assign N39 = b_bit_location[2];
  assign psw_out[6] = \psw_in[6] ;
  assign \psw_in[6]  = psw_in[6];
  assign psw_out[5] = \psw_in[5] ;
  assign \psw_in[5]  = psw_in[5];
  assign psw_out[4] = \psw_in[4] ;
  assign \psw_in[4]  = psw_in[4];
  assign psw_out[3] = \psw_in[3] ;
  assign \psw_in[3]  = psw_in[3];
  assign psw_out[2] = \psw_in[2] ;
  assign \psw_in[2]  = psw_in[2];
  assign psw_out[1] = \psw_in[1] ;
  assign \psw_in[1]  = psw_in[1];
  assign psw_out[0] = \psw_in[0] ;
  assign \psw_in[0]  = psw_in[0];

  OAI221X4 U110 ( .A0(n286), .A1(n141), .B0(n143), .B1(n291), .C0(n144), .Y(
        n129) );
  OAI31X4 U115 ( .A0(n145), .A1(n47), .A2(n146), .B0(n249), .Y(n130) );
  OAI21X8 U121 ( .A0(n150), .A1(n290), .B0(n144), .Y(n46) );
  OAI2B2X4 U128 ( .A1N(N39), .A0(n152), .B0(N39), .B1(n153), .Y(n149) );
  OAI22X4 U135 ( .A0(n158), .A1(n288), .B0(N36), .B1(n159), .Y(n148) );
  ALU_DW01_sub_0 sub_1_root_sub_33_2 ( .A({n257, n243, n255, n254, n235, n244, 
        n227, n251}), .B({n223, b_data[6], n225, n224, n220, n226, n222, 
        b_data[0]}), .CI(psw_in[7]), .DIFF({N118, N117, N116, N115, N114, N113, 
        N112, N111}) );
  ALU_DW01_inc_0 add_28 ( .A({a_data[7], n243, n255, n238, n253, n244, n227, 
        n251}), .SUM({N94, N93, N92, N91, N90, N89, N88, N87}) );
  ALU_DW01_add_3 add_1_root_add_26_2 ( .A({1'b0, a_data[7], n256, n245, n254, 
        n235, n244, n227, n240}), .B({1'b0, b_data[7:6], n225, n224, n220, 
        n226, n222, b_data[0]}), .CI(psw_in[7]), .SUM({N86, N85, N84, N83, N82, 
        N81, N80, N79, N78}) );
  ALU_DW01_add_4 add_25 ( .A({1'b0, a_data[7], n256, n245, n238, n235, n244, 
        n227, n240}), .B({1'b0, b_data[7:6], n225, n224, n220, n226, n222, 
        n221}), .CI(1'b0), .SUM({N68, N67, N66, N65, N64, N63, N62, N61, N60})
         );
  ALU_DW_mult_uns_0 mult_34 ( .a({n257, n256, n255, n238, n253, n252, 
        a_data[1], n251}), .b({b_data[7:4], n220, b_data[2:0]}), .product({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119}) );
  ALU_DW_div_uns_6 div_35 ( .a({n257, n256, n255, n237, n234, n252, n227, n240}), .b(b_data), .quotient({N135, N134, N133, N132, N131, N130, N129, N128}) );
  NAND3X2 U3 ( .A(n142), .B(n286), .C(alu_op[0]), .Y(n219) );
  CLKINVX3 U4 ( .A(b_data[7]), .Y(n276) );
  CLKBUFX6 U7 ( .A(b_data[3]), .Y(n220) );
  CLKBUFX40 U8 ( .A(a_data[7]), .Y(n257) );
  AOI22X2 U9 ( .A0(n156), .A1(n293), .B0(N38), .B1(n157), .Y(n152) );
  AOI22X2 U10 ( .A0(n154), .A1(n293), .B0(N38), .B1(n155), .Y(n153) );
  BUFX5 U11 ( .A(a_data[6]), .Y(n256) );
  AND3X2 U12 ( .A(n133), .B(n134), .C(n135), .Y(n132) );
  CLKBUFX4 U13 ( .A(a_data[3]), .Y(n253) );
  CLKBUFX4 U14 ( .A(a_data[4]), .Y(n254) );
  INVX2 U15 ( .A(n273), .Y(n221) );
  CLKINVX4 U16 ( .A(b_data[0]), .Y(n273) );
  CLKBUFX4 U17 ( .A(b_data[1]), .Y(n222) );
  INVX2 U18 ( .A(n276), .Y(n223) );
  CLKBUFX4 U19 ( .A(b_data[4]), .Y(n224) );
  CLKBUFX4 U20 ( .A(b_data[5]), .Y(n225) );
  CLKBUFX4 U21 ( .A(b_data[2]), .Y(n226) );
  BUFX5 U22 ( .A(a_data[1]), .Y(n227) );
  CLKINVX3 U23 ( .A(n219), .Y(n228) );
  CLKINVX3 U24 ( .A(n219), .Y(n229) );
  CLKINVX2 U25 ( .A(n40), .Y(n230) );
  INVX2 U26 ( .A(n230), .Y(n231) );
  INVX5 U27 ( .A(n230), .Y(n232) );
  INVX2 U28 ( .A(n253), .Y(n233) );
  INVX2 U29 ( .A(n233), .Y(n234) );
  CLKINVX3 U30 ( .A(n233), .Y(n235) );
  INVX2 U31 ( .A(n254), .Y(n236) );
  CLKINVX2 U32 ( .A(n236), .Y(n237) );
  CLKINVX3 U33 ( .A(n236), .Y(n238) );
  AOI22X2 U34 ( .A0(N118), .A1(n242), .B0(N94), .B1(n261), .Y(n59) );
  BUFX5 U35 ( .A(a_data[5]), .Y(n255) );
  OAI222X4 U36 ( .A0(n262), .A1(n120), .B0(n131), .B1(n284), .C0(n250), .C1(
        n132), .Y(ans[0]) );
  AOI221X4 U37 ( .A0(n45), .A1(n284), .B0(N128), .B1(n260), .C0(n136), .Y(n135) );
  AOI222X1 U38 ( .A0(n271), .A1(n110), .B0(n244), .B1(n117), .C0(n226), .C1(
        n118), .Y(n116) );
  CLKINVX3 U39 ( .A(n257), .Y(n283) );
  INVX4 U40 ( .A(N35), .Y(n289) );
  AOI22X1 U41 ( .A0(N130), .A1(n260), .B0(n239), .B1(n278), .Y(n115) );
  AOI22X1 U42 ( .A0(N132), .A1(n260), .B0(n66), .B1(n280), .Y(n96) );
  AOI22X1 U43 ( .A0(N133), .A1(n260), .B0(n66), .B1(n281), .Y(n87) );
  AOI22X1 U44 ( .A0(N131), .A1(n260), .B0(n66), .B1(n279), .Y(n106) );
  CLKINVX2 U45 ( .A(n267), .Y(n239) );
  INVX2 U46 ( .A(n66), .Y(n267) );
  NOR2X6 U47 ( .A(n150), .B(alu_op[1]), .Y(n66) );
  AOI222X1 U48 ( .A0(n271), .A1(n100), .B0(n235), .B1(n108), .C0(n220), .C1(
        n109), .Y(n107) );
  AOI22X1 U49 ( .A0(n162), .A1(n289), .B0(N35), .B1(n163), .Y(n158) );
  AOI22X1 U50 ( .A0(n160), .A1(n289), .B0(N35), .B1(n161), .Y(n159) );
  INVX5 U51 ( .A(n284), .Y(n240) );
  CLKBUFX4 U52 ( .A(a_data[0]), .Y(n251) );
  INVX2 U53 ( .A(n40), .Y(n241) );
  NAND3X2 U54 ( .A(alu_op[2]), .B(n269), .C(n142), .Y(n40) );
  INVX5 U55 ( .A(n231), .Y(n268) );
  OR3X2 U56 ( .A(alu_op[1]), .B(alu_op[2]), .C(n141), .Y(n67) );
  INVX5 U57 ( .A(n67), .Y(n242) );
  AOI222X1 U58 ( .A0(n271), .A1(n91), .B0(n254), .B1(n98), .C0(n224), .C1(n99), 
        .Y(n97) );
  AOI22X2 U59 ( .A0(n272), .A1(n268), .B0(n246), .B1(n149), .Y(n151) );
  NAND2X2 U60 ( .A(n246), .B(n269), .Y(n144) );
  INVX10 U61 ( .A(n44), .Y(n246) );
  CLKINVX3 U62 ( .A(n282), .Y(n243) );
  CLKINVX4 U63 ( .A(n256), .Y(n282) );
  INVX5 U64 ( .A(n278), .Y(n244) );
  CLKBUFX4 U65 ( .A(a_data[2]), .Y(n252) );
  CLKINVX3 U66 ( .A(n281), .Y(n245) );
  CLKINVX4 U67 ( .A(n255), .Y(n281) );
  OR3X2 U68 ( .A(alu_op[1]), .B(alu_op[3]), .C(n286), .Y(n44) );
  CLKINVX2 U69 ( .A(n70), .Y(n262) );
  CLKINVX3 U70 ( .A(n46), .Y(n264) );
  OAI221X1 U71 ( .A0(n285), .A1(n281), .B0(n245), .B1(n232), .C0(n264), .Y(n89) );
  OAI221X1 U72 ( .A0(n285), .A1(n280), .B0(n238), .B1(n232), .C0(n264), .Y(n99) );
  OAI221X1 U73 ( .A0(n285), .A1(n279), .B0(n253), .B1(n231), .C0(n264), .Y(
        n109) );
  OAI221X1 U74 ( .A0(n285), .A1(n278), .B0(n244), .B1(n232), .C0(n264), .Y(
        n118) );
  NAND4X1 U75 ( .A(n231), .B(n41), .C(n42), .D(n43), .Y(n39) );
  INVX2 U76 ( .A(bit_en), .Y(n247) );
  AOI221X1 U77 ( .A0(N135), .A1(n260), .B0(N126), .B1(n259), .C0(n61), .Y(n60)
         );
  AOI22X1 U78 ( .A0(n268), .A1(n276), .B0(n271), .B1(n243), .Y(n62) );
  AND4X1 U79 ( .A(n94), .B(n95), .C(n96), .D(n97), .Y(n93) );
  AOI222X1 U80 ( .A0(n225), .A1(n89), .B0(n245), .B1(n90), .C0(n74), .C1(n271), 
        .Y(n88) );
  AND3X2 U81 ( .A(n74), .B(n271), .C(n282), .Y(n65) );
  AND2X2 U82 ( .A(n110), .B(n279), .Y(n100) );
  AND2X2 U83 ( .A(n100), .B(n280), .Y(n91) );
  AND2X2 U84 ( .A(n91), .B(n281), .Y(n74) );
  INVX2 U85 ( .A(n248), .Y(n291) );
  NOR2X4 U86 ( .A(n119), .B(n244), .Y(n110) );
  NAND2X2 U87 ( .A(n277), .B(n284), .Y(n119) );
  INVX4 U88 ( .A(n254), .Y(n280) );
  INVX4 U89 ( .A(n235), .Y(n279) );
  INVX4 U90 ( .A(n252), .Y(n278) );
  INVX2 U91 ( .A(n54), .Y(n263) );
  INVX5 U92 ( .A(n75), .Y(n271) );
  INVX5 U93 ( .A(n41), .Y(n261) );
  INVX2 U94 ( .A(n57), .Y(n266) );
  AOI21X1 U95 ( .A0(n250), .A1(n120), .B0(n265), .Y(n131) );
  AOI21X1 U96 ( .A0(n249), .A1(n120), .B0(n266), .Y(n121) );
  NAND2X2 U97 ( .A(n75), .B(n267), .Y(n45) );
  INVX2 U98 ( .A(n141), .Y(n270) );
  INVX5 U99 ( .A(n247), .Y(n250) );
  INVX5 U100 ( .A(n247), .Y(n249) );
  INVX4 U101 ( .A(n247), .Y(n248) );
  CLKINVX4 U102 ( .A(a_data[1]), .Y(n277) );
  NOR2X4 U103 ( .A(n130), .B(n287), .Y(n54) );
  OA22X2 U104 ( .A0(n73), .A1(n291), .B0(n74), .B1(n75), .Y(n56) );
  NOR2X2 U105 ( .A(n289), .B(n288), .Y(n73) );
  INVX4 U106 ( .A(n251), .Y(n284) );
  AOI22X2 U107 ( .A0(n270), .A1(n290), .B0(n141), .B1(n286), .Y(n143) );
  NOR2X6 U108 ( .A(n290), .B(alu_op[3]), .Y(n142) );
  CLKINVX3 U109 ( .A(n246), .Y(n285) );
  NAND2X5 U111 ( .A(n140), .B(alu_op[0]), .Y(n75) );
  AOI21X4 U112 ( .A0(n287), .A1(n248), .B0(n129), .Y(n57) );
  NAND2X4 U113 ( .A(alu_op[0]), .B(alu_op[3]), .Y(n141) );
  INVX4 U114 ( .A(alu_op[0]), .Y(n269) );
  INVX2 U116 ( .A(n72), .Y(n265) );
  NAND2X2 U117 ( .A(n140), .B(n269), .Y(n41) );
  AOI21X1 U118 ( .A0(n249), .A1(n101), .B0(n266), .Y(n102) );
  AOI21X1 U119 ( .A0(n250), .A1(n101), .B0(n265), .Y(n111) );
  AOI21X1 U120 ( .A0(n249), .A1(n82), .B0(n266), .Y(n83) );
  AOI21X1 U122 ( .A0(n250), .A1(n82), .B0(n265), .Y(n92) );
  NOR3X2 U123 ( .A(n47), .B(n248), .C(n48), .Y(n42) );
  NOR4X2 U124 ( .A(n246), .B(n270), .C(n45), .D(n46), .Y(n43) );
  CLKBUFX6 U125 ( .A(n48), .Y(n260) );
  AND3X2 U126 ( .A(n139), .B(n290), .C(alu_op[3]), .Y(n48) );
  CLKBUFX6 U127 ( .A(n51), .Y(n258) );
  AND2X2 U129 ( .A(n142), .B(n139), .Y(n51) );
  NAND2X4 U130 ( .A(n288), .B(n289), .Y(n120) );
  AOI22X2 U131 ( .A0(N60), .A1(n258), .B0(N78), .B1(n229), .Y(n133) );
  AOI222X1 U132 ( .A0(N87), .A1(n261), .B0(N119), .B1(n259), .C0(N111), .C1(
        n242), .Y(n134) );
  AND3X2 U133 ( .A(n123), .B(n124), .C(n125), .Y(n122) );
  AOI22X2 U134 ( .A0(N61), .A1(n258), .B0(N79), .B1(n229), .Y(n123) );
  AOI222X1 U136 ( .A0(N88), .A1(n261), .B0(N120), .B1(n259), .C0(N112), .C1(
        n242), .Y(n124) );
  AOI221X1 U137 ( .A0(N129), .A1(n260), .B0(n239), .B1(n277), .C0(n126), .Y(
        n125) );
  AOI222X2 U138 ( .A0(N86), .A1(n228), .B0(N127), .B1(n50), .C0(N68), .C1(n51), 
        .Y(n38) );
  AND3X2 U139 ( .A(n58), .B(n59), .C(n60), .Y(n52) );
  AOI22X2 U140 ( .A0(N67), .A1(n258), .B0(N85), .B1(n228), .Y(n58) );
  AOI21X1 U141 ( .A0(n267), .A1(n147), .B0(n148), .Y(n146) );
  OAI2B2X1 U142 ( .A1N(n148), .A0(n151), .B0(n264), .B1(n272), .Y(n145) );
  NAND2X2 U143 ( .A(n268), .B(n149), .Y(n147) );
  OAI22X1 U144 ( .A0(n287), .A1(n281), .B0(N34), .B1(n280), .Y(n162) );
  OAI222X1 U145 ( .A0(n127), .A1(n274), .B0(n128), .B1(n277), .C0(n119), .C1(
        n75), .Y(n126) );
  AOI22X2 U146 ( .A0(n268), .A1(n274), .B0(n271), .B1(n240), .Y(n128) );
  AOI221X1 U147 ( .A0(n227), .A1(n246), .B0(n268), .B1(n277), .C0(n46), .Y(
        n127) );
  NOR2X2 U148 ( .A(n130), .B(N34), .Y(n70) );
  CLKINVX3 U149 ( .A(alu_op[2]), .Y(n286) );
  AOI31X1 U150 ( .A0(N36), .A1(N35), .A2(n70), .B0(n71), .Y(n69) );
  AOI21X1 U151 ( .A0(n72), .A1(n56), .B0(n282), .Y(n71) );
  AOI31X1 U152 ( .A0(N36), .A1(N35), .A2(n54), .B0(n55), .Y(n53) );
  AOI21X1 U153 ( .A0(n56), .A1(n57), .B0(n283), .Y(n55) );
  OAI22X1 U154 ( .A0(n287), .A1(n279), .B0(N34), .B1(n278), .Y(n161) );
  OAI22X1 U155 ( .A0(n287), .A1(n283), .B0(N34), .B1(n282), .Y(n163) );
  OAI22X1 U156 ( .A0(n287), .A1(n277), .B0(N34), .B1(n284), .Y(n160) );
  OAI21X1 U157 ( .A0(n137), .A1(n273), .B0(n138), .Y(n136) );
  AOI221X1 U158 ( .A0(n240), .A1(n246), .B0(n241), .B1(n284), .C0(n46), .Y(
        n137) );
  AOI31X1 U159 ( .A0(n240), .A1(n273), .A2(n241), .B0(n47), .Y(n138) );
  OAI21X1 U160 ( .A0(n80), .A1(n275), .B0(n81), .Y(n79) );
  AOI221X1 U161 ( .A0(n243), .A1(n246), .B0(n268), .B1(n282), .C0(n46), .Y(n80) );
  AOI31X1 U162 ( .A0(n243), .A1(n275), .A2(n268), .B0(n65), .Y(n81) );
  OAI22X1 U163 ( .A0(n292), .A1(n274), .B0(N37), .B1(n273), .Y(n154) );
  OAI22X1 U164 ( .A0(n292), .A1(n276), .B0(N37), .B1(n275), .Y(n157) );
  INVX2 U165 ( .A(n149), .Y(n272) );
  OAI222X1 U166 ( .A0(n62), .A1(n283), .B0(a_data[7]), .B1(n63), .C0(n64), 
        .C1(n276), .Y(n61) );
  AOI221X1 U167 ( .A0(n257), .A1(n246), .B0(n268), .B1(n283), .C0(n46), .Y(n64) );
  NOR2X1 U168 ( .A(n65), .B(n66), .Y(n63) );
  AND3X2 U169 ( .A(n76), .B(n77), .C(n78), .Y(n68) );
  AOI22X2 U170 ( .A0(N66), .A1(n258), .B0(N84), .B1(n229), .Y(n76) );
  AOI221X1 U171 ( .A0(N134), .A1(n260), .B0(n239), .B1(n282), .C0(n79), .Y(n78) );
  AOI222X1 U172 ( .A0(N93), .A1(n261), .B0(N125), .B1(n259), .C0(N117), .C1(
        n242), .Y(n77) );
  CLKINVX4 U173 ( .A(N34), .Y(n287) );
  NOR3X4 U174 ( .A(alu_op[2]), .B(alu_op[3]), .C(alu_op[1]), .Y(n140) );
  AOI21X3 U175 ( .A0(N34), .A1(n248), .B0(n129), .Y(n72) );
  NOR2X4 U176 ( .A(alu_op[0]), .B(alu_op[2]), .Y(n139) );
  NAND3X2 U177 ( .A(alu_op[3]), .B(n269), .C(alu_op[2]), .Y(n150) );
  INVX4 U178 ( .A(alu_op[1]), .Y(n290) );
  AND3X2 U179 ( .A(n142), .B(alu_op[2]), .C(alu_op[0]), .Y(n47) );
  CLKBUFX6 U180 ( .A(n50), .Y(n259) );
  AND3X2 U181 ( .A(alu_op[3]), .B(n139), .C(alu_op[1]), .Y(n50) );
  NAND2X3 U182 ( .A(N35), .B(n288), .Y(n101) );
  NAND2X3 U183 ( .A(N36), .B(n289), .Y(n82) );
  CLKINVX3 U184 ( .A(N36), .Y(n288) );
  INVX4 U185 ( .A(N37), .Y(n292) );
  INVX2 U186 ( .A(N38), .Y(n293) );
  OAI222X1 U187 ( .A0(n263), .A1(n120), .B0(n121), .B1(n277), .C0(n249), .C1(
        n122), .Y(ans[1]) );
  OAI222X1 U188 ( .A0(n262), .A1(n101), .B0(n111), .B1(n278), .C0(n250), .C1(
        n112), .Y(ans[2]) );
  OAI222X1 U189 ( .A0(n263), .A1(n101), .B0(n102), .B1(n279), .C0(n249), .C1(
        n103), .Y(ans[3]) );
  AND4X2 U190 ( .A(n113), .B(n114), .C(n115), .D(n116), .Y(n112) );
  AOI22X2 U191 ( .A0(N62), .A1(n258), .B0(N80), .B1(n229), .Y(n113) );
  AOI222X1 U192 ( .A0(N89), .A1(n261), .B0(N121), .B1(n259), .C0(N113), .C1(
        n242), .Y(n114) );
  AND4X2 U193 ( .A(n104), .B(n105), .C(n106), .D(n107), .Y(n103) );
  AOI22X2 U194 ( .A0(N63), .A1(n258), .B0(N81), .B1(n228), .Y(n104) );
  AOI222X1 U195 ( .A0(N90), .A1(n261), .B0(N122), .B1(n259), .C0(N114), .C1(
        n242), .Y(n105) );
  OAI222X1 U196 ( .A0(n263), .A1(n82), .B0(n83), .B1(n281), .C0(n249), .C1(n84), .Y(ans[5]) );
  OAI222X1 U197 ( .A0(n262), .A1(n82), .B0(n92), .B1(n280), .C0(n250), .C1(n93), .Y(ans[4]) );
  AND4X2 U198 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n84) );
  AOI22X2 U199 ( .A0(N65), .A1(n258), .B0(N83), .B1(n228), .Y(n85) );
  AOI222X1 U200 ( .A0(N92), .A1(n261), .B0(N124), .B1(n259), .C0(N116), .C1(
        n242), .Y(n86) );
  AOI22X2 U201 ( .A0(N64), .A1(n258), .B0(N82), .B1(n229), .Y(n94) );
  AOI222X1 U202 ( .A0(N91), .A1(n261), .B0(N123), .B1(n259), .C0(N115), .C1(
        n242), .Y(n95) );
  OAI21X1 U203 ( .A0(n248), .A1(n68), .B0(n69), .Y(ans[6]) );
  OAI22X1 U204 ( .A0(n225), .A1(n232), .B0(n91), .B1(n75), .Y(n90) );
  OAI22X1 U205 ( .A0(n224), .A1(n232), .B0(n100), .B1(n75), .Y(n98) );
  OAI2BB2X1 U206 ( .B0(n226), .B1(n232), .A0N(n119), .A1N(n271), .Y(n117) );
  CLKINVX2 U207 ( .A(n222), .Y(n274) );
  OAI22X1 U208 ( .A0(n220), .A1(n232), .B0(n110), .B1(n75), .Y(n108) );
  CLKINVX2 U209 ( .A(b_data[6]), .Y(n275) );
  AO22X1 U210 ( .A0(N37), .A1(n225), .B0(n292), .B1(n224), .Y(n156) );
  AO22X1 U211 ( .A0(N37), .A1(n220), .B0(n292), .B1(n226), .Y(n155) );
  OAI2BB2X2 U212 ( .B0(n250), .B1(n38), .A0N(psw_in[7]), .A1N(n39), .Y(
        psw_out[7]) );
  OAI21X1 U213 ( .A0(n248), .A1(n52), .B0(n53), .Y(ans[7]) );
endmodule


module Process ( psw_in, a_data, b_data, a_bit_location, b_bit_location, 
        bit_en, alu_op, instruction, ans, psw_out );
  input [7:0] psw_in;
  input [7:0] a_data;
  input [7:0] b_data;
  input [2:0] a_bit_location;
  input [2:0] b_bit_location;
  input [3:0] alu_op;
  input [7:0] instruction;
  output [7:0] ans;
  output [7:0] psw_out;
  input bit_en;
  wire   n79, n80, n81, n82, n83, n49, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n50, n51, n54,
         n56, n57, n58, n59, n60, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78;
  wire   [7:0] alu_ans;
  wire   [7:0] alu_psw_out;
  assign ans[0] = n49;

  AO22X4 U13 ( .A0(alu_ans[0]), .A1(n60), .B0(n18), .B1(n22), .Y(n49) );
  OAI21X8 U41 ( .A0(instruction[5]), .A1(n76), .B0(n21), .Y(n27) );
  OAI21X8 U43 ( .A0(n77), .A1(n76), .B0(n20), .Y(n29) );
  ALU alu ( .psw_in(psw_in), .a_data({n58, a_data[6:0]}), .b_data(b_data), 
        .a_bit_location(a_bit_location), .b_bit_location(b_bit_location), 
        .bit_en(bit_en), .alu_op(alu_op), .ans(alu_ans), .psw_out(alu_psw_out)
         );
  AOI2BB2X2 U2 ( .B0(alu_ans[2]), .B1(n60), .A0N(n41), .A1N(n67), .Y(n50) );
  AOI2BB2X2 U3 ( .B0(alu_ans[3]), .B1(n59), .A0N(n39), .A1N(n67), .Y(n51) );
  BUFX12 U4 ( .A(a_data[7]), .Y(n58) );
  NOR2X4 U5 ( .A(n15), .B(instruction[3]), .Y(n18) );
  OAI2BB2X2 U6 ( .B0(n35), .B1(n67), .A0N(alu_ans[5]), .A1N(n59), .Y(n81) );
  OAI2BB2X2 U7 ( .B0(n28), .B1(n67), .A0N(alu_ans[7]), .A1N(n60), .Y(n79) );
  NOR3BX2 U8 ( .AN(instruction[0]), .B(instruction[1]), .C(instruction[2]), 
        .Y(n25) );
  NOR3X2 U9 ( .A(instruction[2]), .B(instruction[7]), .C(instruction[6]), .Y(
        n46) );
  CLKINVX3 U10 ( .A(n51), .Y(ans[3]) );
  CLKINVX3 U11 ( .A(n50), .Y(ans[2]) );
  INVX2 U12 ( .A(n83), .Y(n54) );
  CLKINVX3 U14 ( .A(n54), .Y(ans[1]) );
  OAI2BB2X2 U15 ( .B0(n43), .B1(n67), .A0N(alu_ans[1]), .A1N(n59), .Y(n83) );
  CLKINVX2 U16 ( .A(n25), .Y(n56) );
  CLKINVX3 U17 ( .A(n56), .Y(n57) );
  AOI32X1 U18 ( .A0(n58), .A1(instruction[5]), .A2(n26), .B0(a_data[1]), .B1(
        n27), .Y(n23) );
  NOR4X4 U19 ( .A(instruction[5]), .B(instruction[4]), .C(instruction[1]), .D(
        instruction[0]), .Y(n47) );
  AND3X2 U20 ( .A(instruction[1]), .B(instruction[0]), .C(n46), .Y(n45) );
  AOI22X1 U21 ( .A0(a_data[4]), .A1(n73), .B0(b_data[0]), .B1(n57), .Y(n24) );
  AOI221X1 U22 ( .A0(a_data[6]), .A1(n73), .B0(b_data[2]), .B1(n57), .C0(n42), 
        .Y(n41) );
  CLKBUFX6 U23 ( .A(n15), .Y(n59) );
  CLKBUFX6 U24 ( .A(n15), .Y(n60) );
  NAND4X4 U25 ( .A(alu_op[3]), .B(alu_op[2]), .C(alu_op[1]), .D(alu_op[0]), 
        .Y(n15) );
  CLKBUFX4 U26 ( .A(n79), .Y(ans[7]) );
  CLKBUFX4 U27 ( .A(n81), .Y(ans[5]) );
  CLKBUFX4 U28 ( .A(n82), .Y(ans[4]) );
  OAI2BB2X2 U29 ( .B0(n37), .B1(n67), .A0N(alu_ans[4]), .A1N(n60), .Y(n82) );
  CLKBUFX4 U30 ( .A(n80), .Y(ans[6]) );
  OAI2BB2X2 U31 ( .B0(n33), .B1(n67), .A0N(alu_ans[6]), .A1N(n59), .Y(n80) );
  INVX2 U32 ( .A(a_data[1]), .Y(n65) );
  CLKINVX2 U33 ( .A(n58), .Y(n70) );
  CLKINVX2 U34 ( .A(a_data[3]), .Y(n69) );
  AOI221X1 U35 ( .A0(a_data[5]), .A1(n27), .B0(a_data[3]), .B1(n29), .C0(n38), 
        .Y(n37) );
  AOI221X1 U36 ( .A0(a_data[6]), .A1(n27), .B0(a_data[4]), .B1(n29), .C0(n36), 
        .Y(n35) );
  AOI221X1 U37 ( .A0(n58), .A1(n27), .B0(a_data[5]), .B1(n29), .C0(n34), .Y(
        n33) );
  CLKINVX3 U38 ( .A(n57), .Y(n78) );
  AO21X1 U39 ( .A0(n20), .A1(n21), .B0(instruction[3]), .Y(n17) );
  NAND3X3 U40 ( .A(n45), .B(n77), .C(instruction[4]), .Y(n21) );
  NAND3X3 U42 ( .A(instruction[4]), .B(n45), .C(instruction[5]), .Y(n20) );
  CLKINVX2 U44 ( .A(instruction[5]), .Y(n77) );
  INVX5 U45 ( .A(n15), .Y(n66) );
  INVX2 U46 ( .A(a_data[2]), .Y(n68) );
  INVX2 U47 ( .A(psw_in[7]), .Y(n72) );
  INVX4 U48 ( .A(a_data[0]), .Y(n71) );
  INVX2 U49 ( .A(n29), .Y(n75) );
  AO22X2 U50 ( .A0(alu_psw_out[0]), .A1(n59), .B0(psw_in[0]), .B1(n66), .Y(
        psw_out[0]) );
  OAI211X1 U51 ( .A0(n72), .A1(n20), .B0(n23), .C0(n24), .Y(n22) );
  AOI221X1 U52 ( .A0(a_data[5]), .A1(n73), .B0(b_data[1]), .B1(n57), .C0(n44), 
        .Y(n43) );
  OAI22X1 U53 ( .A0(n75), .A1(n71), .B0(n74), .B1(n68), .Y(n44) );
  OAI22X1 U54 ( .A0(n75), .A1(n65), .B0(n74), .B1(n69), .Y(n42) );
  AOI221X2 U55 ( .A0(a_data[4]), .A1(n27), .B0(a_data[2]), .B1(n29), .C0(n40), 
        .Y(n39) );
  OAI22X1 U56 ( .A0(n78), .A1(n69), .B0(n70), .B1(n32), .Y(n40) );
  OAI2B2X1 U57 ( .A1N(a_data[5]), .A0(n78), .B0(n65), .B1(n32), .Y(n36) );
  OAI2B2X1 U58 ( .A1N(a_data[4]), .A0(n78), .B0(n71), .B1(n32), .Y(n38) );
  OAI2B2X1 U59 ( .A1N(a_data[6]), .A0(n78), .B0(n32), .B1(n68), .Y(n34) );
  OAI22X1 U60 ( .A0(n70), .A1(n78), .B0(n32), .B1(n69), .Y(n30) );
  INVX5 U61 ( .A(n18), .Y(n67) );
  OAI22X1 U62 ( .A0(n20), .A1(n70), .B0(n21), .B1(n71), .Y(n19) );
  AO22X2 U63 ( .A0(alu_psw_out[3]), .A1(n60), .B0(psw_in[3]), .B1(n66), .Y(
        psw_out[3]) );
  AO22X2 U64 ( .A0(alu_psw_out[4]), .A1(n59), .B0(psw_in[4]), .B1(n66), .Y(
        psw_out[4]) );
  AO22X2 U65 ( .A0(alu_psw_out[1]), .A1(n60), .B0(psw_in[1]), .B1(n66), .Y(
        psw_out[1]) );
  AO22X2 U66 ( .A0(alu_psw_out[2]), .A1(n59), .B0(psw_in[2]), .B1(n66), .Y(
        psw_out[2]) );
  AO22X2 U67 ( .A0(alu_psw_out[5]), .A1(n60), .B0(psw_in[5]), .B1(n66), .Y(
        psw_out[5]) );
  AO22X2 U68 ( .A0(alu_psw_out[6]), .A1(n59), .B0(psw_in[6]), .B1(n66), .Y(
        psw_out[6]) );
  INVX2 U69 ( .A(n27), .Y(n74) );
  INVX4 U70 ( .A(n26), .Y(n76) );
  INVX2 U71 ( .A(n32), .Y(n73) );
  OAI2BB1X2 U72 ( .A0N(alu_psw_out[7]), .A1N(n60), .B0(n16), .Y(psw_out[7]) );
  AOI32X2 U73 ( .A0(n66), .A1(n17), .A2(psw_in[7]), .B0(n18), .B1(n19), .Y(n16) );
  AOI211X2 U74 ( .A0(a_data[6]), .A1(n29), .B0(n30), .C0(n31), .Y(n28) );
  OAI32X2 U75 ( .A0(n76), .A1(instruction[5]), .A2(n71), .B0(n72), .B1(n21), 
        .Y(n31) );
  NOR2BX4 U76 ( .AN(n45), .B(instruction[4]), .Y(n26) );
  NAND4X6 U77 ( .A(instruction[6]), .B(instruction[2]), .C(instruction[7]), 
        .D(n47), .Y(n32) );
endmodule


module CPU_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module CPU_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module CPU ( clk, rst_n, data_bus, addr_bus, interupt, read_en, write_en, 
        clk_1M, clk_6M, memory_select );
  inout [7:0] data_bus;
  output [15:0] addr_bus;
  input [4:0] interupt;
  input clk, rst_n;
  output read_en, write_en, clk_1M, clk_6M, memory_select;
  wire   n941, n942, n670, n671, interupt_en, bit_en, get_ins_done,
         ram_read_done, rom_read_done, ram_write_done, get_ins_done_nxt,
         ram_write_done_nxt, ram_read_done_nxt, rom_read_done_nxt, read_en_nxt,
         N203, N204, N205, N206, N207, N208, N209, N210, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n438,
         n439, n440, n451, n232, n234, n236, n134, n135, n136, n137, n140,
         n142, n143, n144, n145, n146, n147, n150, n153, n154, n155, n156,
         n159, n160, n161, n162, n163, n164, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n190, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n226, n227, n228, n229, n230, n231,
         n233, n235, n237, n238, n239, n240, n241, n242, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n388, n410, n411, n412, n437, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n730,
         n731, n732, n733, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n831,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931,
         n932, n933, n934, n935, n936, n937, n938, n939, n940;
  wire   [2:0] nop_cnt;
  wire   [15:0] program_counter;
  wire   [15:0] program_counter_plus1;
  wire   [7:0] data_out;
  wire   [3:0] run_phase;
  wire   [7:0] ins_register;
  wire   [3:0] run_phase_init;
  wire   [7:0] psw;
  wire   [7:0] ram_data_register;
  wire   [7:0] rom_data_register;
  wire   [3:0] a_data_from;
  wire   [3:0] b_data_from;
  wire   [3:0] alu_op;
  wire   [2:0] a_bit_location;
  wire   [2:0] b_bit_location;
  wire   [7:0] addr_register_out;
  wire   [2:0] decoder_next_status;
  wire   [7:0] pro_psw_in;
  wire   [7:0] pro_a;
  wire   [7:0] pro_b;
  wire   [7:0] pro_ans;
  wire   [7:0] pro_psw_out;
  wire   [15:0] int_addr;
  wire   [6:0] status;
  wire   [7:0] acc;
  wire   [7:0] b;
  tri   [7:0] data_bus;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  DFFRHQX8 \run_phase_reg[0]  ( .D(n431), .CK(clk), .RN(n812), .Q(run_phase[0]) );
  DFFRHQX8 \ins_register_reg[7]  ( .D(n232), .CK(clk), .RN(n811), .Q(
        ins_register[7]) );
  DFFRHQX8 \ins_register_reg[6]  ( .D(n234), .CK(clk), .RN(n811), .Q(
        ins_register[6]) );
  DFFRHQX8 \ins_register_reg[5]  ( .D(n236), .CK(clk), .RN(n811), .Q(
        ins_register[5]) );
  DFFRHQX8 \rom_data_register_reg[3]  ( .D(n400), .CK(clk), .RN(n812), .Q(
        rom_data_register[3]) );
  DFFRHQX8 \rom_data_register_reg[5]  ( .D(n398), .CK(clk), .RN(n703), .Q(
        rom_data_register[5]) );
  DFFRHQX8 \rom_data_register_reg[6]  ( .D(n397), .CK(clk), .RN(n703), .Q(
        rom_data_register[6]) );
  DFFRHQX8 \ram_data_register_reg[3]  ( .D(n371), .CK(clk), .RN(n811), .Q(
        ram_data_register[3]) );
  OAI2BB2X4 U3 ( .B0(read_en), .B1(n9), .A0N(n670), .A1N(data_bus[1]), .Y(n8)
         );
  OAI2BB2X4 U5 ( .B0(read_en), .B1(n10), .A0N(data_bus[2]), .A1N(n831), .Y(n7)
         );
  OAI2BB2X4 U6 ( .B0(read_en), .B1(n11), .A0N(data_bus[3]), .A1N(n831), .Y(n6)
         );
  OAI2BB2X4 U7 ( .B0(read_en), .B1(n12), .A0N(data_bus[4]), .A1N(n831), .Y(n5)
         );
  OAI2BB2X4 U8 ( .B0(read_en), .B1(n13), .A0N(data_bus[5]), .A1N(n831), .Y(n4)
         );
  OAI2BB2X4 U9 ( .B0(read_en), .B1(n14), .A0N(data_bus[6]), .A1N(n831), .Y(n3)
         );
  OAI2BB2X4 U10 ( .B0(n831), .B1(n15), .A0N(data_bus[7]), .A1N(n831), .Y(n2)
         );
  CLKINVX12 U272 ( .A(n1), .Y(n16) );
  OAI2BB2X4 U11 ( .B0(n831), .B1(n16), .A0N(data_bus[0]), .A1N(read_en), .Y(n1) );
  DFFRHQX8 \addr_bus_reg[3]  ( .D(n338), .CK(clk), .RN(n819), .Q(addr_bus[3])
         );
  DFFRHQX8 \status_reg[5]  ( .D(n429), .CK(clk), .RN(n815), .Q(status[5]) );
  DFFRHQX8 \status_reg[3]  ( .D(n425), .CK(clk), .RN(n815), .Q(status[3]) );
  DFFRHQX8 \ram_data_register_reg[0]  ( .D(n433), .CK(clk), .RN(n814), .Q(
        ram_data_register[0]) );
  DFFRHQX8 \status_reg[1]  ( .D(n430), .CK(clk), .RN(n814), .Q(status[1]) );
  DFFRHQX8 \ins_register_reg[1]  ( .D(n406), .CK(clk), .RN(n814), .Q(
        ins_register[1]) );
  DFFRHQX8 \addr_bus_reg[0]  ( .D(n341), .CK(clk), .RN(n813), .Q(addr_bus[0])
         );
  DFFRHQX8 \ins_register_reg[4]  ( .D(n409), .CK(clk), .RN(n813), .Q(
        ins_register[4]) );
  DFFRHQX8 \run_phase_reg[1]  ( .D(n333), .CK(clk), .RN(n812), .Q(run_phase[1]) );
  DFFRHQX8 \ram_data_register_reg[1]  ( .D(n367), .CK(clk), .RN(n812), .Q(
        ram_data_register[1]) );
  AOI221X4 U29 ( .A0(program_counter[13]), .A1(n146), .B0(acc[5]), .B1(n147), 
        .C0(n154), .Y(n153) );
  AOI221X4 U34 ( .A0(program_counter[12]), .A1(n146), .B0(acc[4]), .B1(n147), 
        .C0(n160), .Y(n159) );
  AOI221X4 U48 ( .A0(program_counter[9]), .A1(n146), .B0(acc[1]), .B1(n147), 
        .C0(n171), .Y(n170) );
  AOI31X4 U52 ( .A0(n172), .A1(n173), .A2(n174), .B0(n706), .Y(pro_b[0]) );
  AOI22X4 U60 ( .A0(rom_data_register[0]), .A1(n143), .B0(ram_data_register[0]), .B1(n725), .Y(n173) );
  AOI22X4 U88 ( .A0(n1), .A1(n783), .B0(n719), .B1(b[0]), .Y(n185) );
  NOR3BX4 U105 ( .AN(decoder_next_status[2]), .B(n913), .C(
        decoder_next_status[1]), .Y(n204) );
  OAI211X4 U129 ( .A0(n12), .A1(n792), .B0(n223), .C0(n224), .Y(n409) );
  OAI2BB2X4 U131 ( .B0(n11), .B1(n925), .A0N(ins_register[3]), .A1N(n792), .Y(
        n408) );
  OAI2BB2X4 U132 ( .B0(n10), .B1(n925), .A0N(n722), .A1N(n792), .Y(n407) );
  OAI2BB2X4 U133 ( .B0(n9), .B1(n925), .A0N(ins_register[1]), .A1N(n792), .Y(
        n406) );
  OAI2BB2X4 U134 ( .B0(n16), .B1(n925), .A0N(ins_register[0]), .A1N(n792), .Y(
        n405) );
  OAI222X4 U135 ( .A0(n718), .A1(n872), .B0(n226), .B1(n833), .C0(n15), .C1(
        n227), .Y(n404) );
  CLKINVX12 U137 ( .A(n1), .Y(n228) );
  OAI222X4 U138 ( .A0(n718), .A1(n873), .B0(n226), .B1(n839), .C0(n9), .C1(
        n227), .Y(n402) );
  CLKINVX12 U139 ( .A(n8), .Y(n9) );
  OAI222X4 U140 ( .A0(n718), .A1(n874), .B0(n226), .B1(n838), .C0(n10), .C1(
        n227), .Y(n401) );
  OAI222X4 U141 ( .A0(n718), .A1(n875), .B0(n226), .B1(n837), .C0(n11), .C1(
        n227), .Y(n400) );
  OAI222X4 U142 ( .A0(n718), .A1(n876), .B0(n226), .B1(n836), .C0(n12), .C1(
        n227), .Y(n399) );
  OAI222X4 U143 ( .A0(n718), .A1(n877), .B0(n226), .B1(n835), .C0(n13), .C1(
        n227), .Y(n398) );
  OAI222X4 U144 ( .A0(n718), .A1(n878), .B0(n226), .B1(n834), .C0(n14), .C1(
        n227), .Y(n397) );
  NAND2BX8 U146 ( .AN(n230), .B(n708), .Y(n226) );
  OAI221X4 U176 ( .A0(n752), .A1(n238), .B0(status[5]), .B1(n864), .C0(n240), 
        .Y(n246) );
  OAI211X4 U190 ( .A0(n923), .A1(n804), .B0(n275), .C0(n276), .Y(n245) );
  AOI22X4 U196 ( .A0(n783), .A1(n2), .B0(n719), .B1(b[7]), .Y(n278) );
  OAI211X4 U198 ( .A0(n936), .A1(n804), .B0(n280), .C0(n281), .Y(n248) );
  AOI22X4 U204 ( .A0(n783), .A1(n3), .B0(n719), .B1(b[6]), .Y(n283) );
  AOI22X4 U212 ( .A0(n783), .A1(n4), .B0(n719), .B1(b[5]), .Y(n288) );
  OAI211X4 U214 ( .A0(n934), .A1(n804), .B0(n290), .C0(n291), .Y(n252) );
  AOI22X4 U220 ( .A0(n783), .A1(n5), .B0(n719), .B1(b[4]), .Y(n293) );
  OAI211X4 U222 ( .A0(n933), .A1(n804), .B0(n295), .C0(n296), .Y(n254) );
  AOI22X4 U228 ( .A0(n783), .A1(n6), .B0(n719), .B1(b[3]), .Y(n298) );
  OAI211X4 U230 ( .A0(n932), .A1(n804), .B0(n300), .C0(n301), .Y(n256) );
  AOI22X4 U236 ( .A0(n783), .A1(n7), .B0(n719), .B1(b[2]), .Y(n303) );
  OAI211X4 U242 ( .A0(n931), .A1(n804), .B0(n309), .C0(n310), .Y(n258) );
  AND3X6 U260 ( .A(n308), .B(n865), .C(n319), .Y(n187) );
  AOI22X4 U261 ( .A0(n783), .A1(n8), .B0(n719), .B1(b[1]), .Y(n315) );
  AOI221X4 U332 ( .A0(n137), .A1(rom_read_done), .B0(n464), .B1(get_ins_done), 
        .C0(n736), .Y(n463) );
  OAI2B11X4 U373 ( .A1N(ram_read_done), .A0(n921), .B0(n479), .C0(n480), .Y(
        n478) );
  AOI211X4 U377 ( .A0(status[5]), .A1(n207), .B0(status[1]), .C0(status[2]), 
        .Y(n479) );
  NOR2X8 U381 ( .A(status[1]), .B(status[4]), .Y(n313) );
  NOR2X8 U382 ( .A(n914), .B(status[1]), .Y(n196) );
  OAI211X4 U383 ( .A0(n13), .A1(n792), .B0(n481), .C0(n224), .Y(n236) );
  OAI211X4 U385 ( .A0(n14), .A1(n792), .B0(n482), .C0(n224), .Y(n234) );
  OAI211X4 U387 ( .A0(n15), .A1(n792), .B0(n483), .C0(n224), .Y(n232) );
  CLKINVX12 U390 ( .A(n2), .Y(n15) );
  CLKINVX12 U391 ( .A(n3), .Y(n14) );
  CLKINVX12 U392 ( .A(n4), .Y(n13) );
  CLKINVX12 U393 ( .A(n5), .Y(n12) );
  CLKINVX12 U394 ( .A(n6), .Y(n11) );
  CLKINVX12 U395 ( .A(n7), .Y(n10) );
  ClkDiv_DIV_NUM2 clk_6 ( .clk_in(clk), .rst_n(n704), .clk_out(clk_6M) );
  ClkDiv_DIV_NUM12 clk_1 ( .clk_in(clk), .rst_n(n704), .clk_out(clk_1M) );
  InsDecoder insdecoder ( .clk(clk), .rst_n(n704), .instruction({
        ins_register[7:3], n709, ins_register[1:0]}), .run_phase({run_phase[3], 
        n765, run_phase[1:0]}), .psw(psw), .ram_data_register(
        ram_data_register), .rom_data_register(rom_data_register), 
        .interupt_en(interupt_en), .run_phase_init(run_phase_init), 
        .a_data_from({SYNOPSYS_UNCONNECTED__0, a_data_from[2:0]}), 
        .b_data_from(b_data_from), .alu_op(alu_op), .a_bit_location(
        a_bit_location), .b_bit_location(b_bit_location), .bit_en(bit_en), 
        .addr_register_out(addr_register_out), .next_status(
        decoder_next_status) );
  Process pro ( .psw_in(pro_psw_in), .a_data({pro_a[7:2], n710, pro_a[0]}), 
        .b_data({pro_b[7:4], n742, pro_b[2], n744, n740}), .a_bit_location(
        a_bit_location), .b_bit_location(b_bit_location), .bit_en(bit_en), 
        .alu_op(alu_op), .instruction({ins_register[7:3], n722, 
        ins_register[1:0]}), .ans(pro_ans), .psw_out({pro_psw_out[7:1], 
        SYNOPSYS_UNCONNECTED__1}) );
  CPU_DW01_inc_0 add_352 ( .A(program_counter[15:8]), .SUM({N210, N209, N208, 
        N207, N206, N205, N204, N203}) );
  CPU_DW01_inc_1 add_105 ( .A(program_counter), .SUM(program_counter_plus1) );
  DFFRQX2 \addr_bus_reg[15]  ( .D(n364), .CK(clk), .RN(n704), .Q(addr_bus[15])
         );
  DFFRQX2 \addr_bus_reg[8]  ( .D(n354), .CK(clk), .RN(n822), .Q(addr_bus[8])
         );
  DFFRQX2 \addr_bus_reg[9]  ( .D(n352), .CK(clk), .RN(n823), .Q(addr_bus[9])
         );
  DFFRQX2 \addr_bus_reg[10]  ( .D(n350), .CK(clk), .RN(n822), .Q(addr_bus[10])
         );
  DFFRQX2 \addr_bus_reg[11]  ( .D(n348), .CK(clk), .RN(n823), .Q(addr_bus[11])
         );
  DFFRQX2 \addr_bus_reg[12]  ( .D(n346), .CK(clk), .RN(n822), .Q(addr_bus[12])
         );
  DFFRQX2 \addr_bus_reg[13]  ( .D(n344), .CK(clk), .RN(n821), .Q(addr_bus[13])
         );
  DFFRQX2 \addr_bus_reg[14]  ( .D(n342), .CK(clk), .RN(n822), .Q(addr_bus[14])
         );
  DFFRQX2 \nop_cnt_reg[0]  ( .D(n422), .CK(clk), .RN(n822), .Q(nop_cnt[0]) );
  DFFRQX2 \psw_reg[6]  ( .D(n387), .CK(clk), .RN(n821), .Q(psw[6]) );
  DFFRQX2 \psw_reg[5]  ( .D(n386), .CK(clk), .RN(n821), .Q(psw[5]) );
  DFFRQX2 \psw_reg[2]  ( .D(n383), .CK(clk), .RN(n820), .Q(psw[2]) );
  DFFRQX2 \psw_reg[1]  ( .D(n382), .CK(clk), .RN(n821), .Q(psw[1]) );
  DFFRQX2 \data_out_reg[7]  ( .D(n420), .CK(clk), .RN(n822), .Q(data_out[7])
         );
  DFFRQX2 \data_out_reg[3]  ( .D(n416), .CK(clk), .RN(n821), .Q(data_out[3])
         );
  DFFRQX2 \data_out_reg[4]  ( .D(n415), .CK(clk), .RN(n821), .Q(data_out[4])
         );
  DFFRQX2 \data_out_reg[5]  ( .D(n414), .CK(clk), .RN(n821), .Q(data_out[5])
         );
  DFFRQX2 \data_out_reg[6]  ( .D(n413), .CK(clk), .RN(n820), .Q(data_out[6])
         );
  DFFRQX2 \data_out_reg[0]  ( .D(n419), .CK(clk), .RN(n819), .Q(data_out[0])
         );
  DFFRQX2 \data_out_reg[1]  ( .D(n418), .CK(clk), .RN(n819), .Q(data_out[1])
         );
  DFFRQX2 \data_out_reg[2]  ( .D(n417), .CK(clk), .RN(n820), .Q(data_out[2])
         );
  DFFRQX2 ram_read_done_reg ( .D(ram_read_done_nxt), .CK(clk), .RN(n822), .Q(
        ram_read_done) );
  DFFRQX2 get_ins_done_reg ( .D(get_ins_done_nxt), .CK(clk), .RN(n821), .Q(
        get_ins_done) );
  DFFRQX2 write_en_reg ( .D(ram_write_done_nxt), .CK(clk), .RN(n819), .Q(n671)
         );
  DFFRQX2 ram_write_done_reg ( .D(ram_write_done_nxt), .CK(clk), .RN(n820), 
        .Q(ram_write_done) );
  DFFRQX2 rom_read_done_reg ( .D(rom_read_done_nxt), .CK(clk), .RN(n820), .Q(
        rom_read_done) );
  DFFRQX4 \status_reg[6]  ( .D(n427), .CK(clk), .RN(n820), .Q(status[6]) );
  DFFRQX2 \addr_bus_reg[7]  ( .D(n334), .CK(clk), .RN(n820), .Q(addr_bus[7])
         );
  DFFRQX2 \psw_reg[7]  ( .D(n841), .CK(clk), .RN(n819), .Q(psw[7]) );
  DFFRQX4 \addr_bus_reg[1]  ( .D(n340), .CK(clk), .RN(n819), .Q(addr_bus[1])
         );
  DFFRQX2 \int_addr_reg[4]  ( .D(n439), .CK(clk), .RN(n819), .Q(int_addr[4])
         );
  DFFRQX2 \int_addr_reg[1]  ( .D(n436), .CK(clk), .RN(n822), .Q(int_addr[1])
         );
  DFFRQX2 \psw_reg[4]  ( .D(n385), .CK(clk), .RN(n818), .Q(psw[4]) );
  DFFRQX2 \psw_reg[3]  ( .D(n384), .CK(clk), .RN(n816), .Q(psw[3]) );
  DFFRQX2 \int_addr_reg[5]  ( .D(n440), .CK(clk), .RN(n828), .Q(int_addr[5])
         );
  DFFRQX2 \b_reg[0]  ( .D(n389), .CK(clk), .RN(n818), .Q(b[0]) );
  DFFRQX2 \b_reg[1]  ( .D(n390), .CK(clk), .RN(n816), .Q(b[1]) );
  DFFRQX4 \acc_reg[0]  ( .D(n434), .CK(clk), .RN(n818), .Q(acc[0]) );
  DFFRQX4 \acc_reg[5]  ( .D(n376), .CK(clk), .RN(n818), .Q(acc[5]) );
  DFFRQX4 \acc_reg[4]  ( .D(n374), .CK(clk), .RN(n818), .Q(acc[4]) );
  DFFRQX4 \acc_reg[1]  ( .D(n368), .CK(clk), .RN(n817), .Q(acc[1]) );
  DFFRQX4 \acc_reg[3]  ( .D(n372), .CK(clk), .RN(n816), .Q(acc[3]) );
  DFFRQX4 \acc_reg[2]  ( .D(n370), .CK(clk), .RN(n818), .Q(acc[2]) );
  DFFRQX4 \acc_reg[7]  ( .D(n380), .CK(clk), .RN(n816), .Q(acc[7]) );
  DFFRQX4 \acc_reg[6]  ( .D(n378), .CK(clk), .RN(n816), .Q(acc[6]) );
  DFFRQX4 \program_counter_reg[4]  ( .D(n359), .CK(clk), .RN(n817), .Q(
        program_counter[4]) );
  DFFRQX4 \program_counter_reg[5]  ( .D(n358), .CK(clk), .RN(n817), .Q(
        program_counter[5]) );
  DFFRQX4 \program_counter_reg[3]  ( .D(n360), .CK(clk), .RN(n815), .Q(
        program_counter[3]) );
  DFFRQX4 \program_counter_reg[2]  ( .D(n361), .CK(clk), .RN(n817), .Q(
        program_counter[2]) );
  DFFRQX4 \program_counter_reg[6]  ( .D(n357), .CK(clk), .RN(n815), .Q(
        program_counter[6]) );
  DFFRQX4 \program_counter_reg[7]  ( .D(n356), .CK(clk), .RN(n826), .Q(
        program_counter[7]) );
  DFFRQX4 \program_counter_reg[0]  ( .D(n363), .CK(clk), .RN(n811), .Q(
        program_counter[0]) );
  DFFRQX4 \program_counter_reg[15]  ( .D(n365), .CK(clk), .RN(n815), .Q(
        program_counter[15]) );
  DFFRQX4 \program_counter_reg[9]  ( .D(n353), .CK(clk), .RN(n814), .Q(
        program_counter[9]) );
  DFFRQX4 \program_counter_reg[11]  ( .D(n349), .CK(clk), .RN(n813), .Q(
        program_counter[11]) );
  DFFRQX4 \program_counter_reg[12]  ( .D(n347), .CK(clk), .RN(n813), .Q(
        program_counter[12]) );
  DFFRQX4 \program_counter_reg[13]  ( .D(n345), .CK(clk), .RN(n813), .Q(
        program_counter[13]) );
  DFFRQX4 \program_counter_reg[10]  ( .D(n351), .CK(clk), .RN(n814), .Q(
        program_counter[10]) );
  DFFRQX4 \program_counter_reg[14]  ( .D(n343), .CK(clk), .RN(n813), .Q(
        program_counter[14]) );
  DFFRQX4 \status_reg[4]  ( .D(n426), .CK(clk), .RN(n815), .Q(status[4]) );
  DFFRQX4 \rom_data_register_reg[7]  ( .D(n404), .CK(clk), .RN(n812), .Q(
        rom_data_register[7]) );
  DFFRQX4 \rom_data_register_reg[0]  ( .D(n403), .CK(clk), .RN(n815), .Q(
        rom_data_register[0]) );
  DFFRQX4 \rom_data_register_reg[1]  ( .D(n402), .CK(clk), .RN(n812), .Q(
        rom_data_register[1]) );
  DFFRQX4 \rom_data_register_reg[2]  ( .D(n401), .CK(clk), .RN(n812), .Q(
        rom_data_register[2]) );
  DFFRQX4 \run_phase_reg[3]  ( .D(n432), .CK(clk), .RN(n814), .Q(run_phase[3])
         );
  DFFRQX4 \ram_data_register_reg[7]  ( .D(n379), .CK(clk), .RN(n814), .Q(
        ram_data_register[7]) );
  TBUFX2 \data_bus_tri[6]  ( .A(data_out[6]), .OE(write_en), .Y(data_bus[6])
         );
  TBUFX2 \data_bus_tri[0]  ( .A(data_out[0]), .OE(write_en), .Y(data_bus[0])
         );
  TBUFX2 \data_bus_tri[2]  ( .A(data_out[2]), .OE(write_en), .Y(data_bus[2])
         );
  TBUFX2 \data_bus_tri[4]  ( .A(data_out[4]), .OE(write_en), .Y(data_bus[4])
         );
  TBUFX2 \data_bus_tri[3]  ( .A(data_out[3]), .OE(write_en), .Y(data_bus[3])
         );
  TBUFX2 \data_bus_tri[7]  ( .A(data_out[7]), .OE(write_en), .Y(data_bus[7])
         );
  TBUFX2 \data_bus_tri[5]  ( .A(data_out[5]), .OE(write_en), .Y(data_bus[5])
         );
  TBUFX2 \data_bus_tri[1]  ( .A(data_out[1]), .OE(n671), .Y(data_bus[1]) );
  DFFRQX2 interupt_en_reg ( .D(n451), .CK(clk), .RN(n827), .Q(interupt_en) );
  DFFRQX2 read_en_reg ( .D(read_en_nxt), .CK(clk), .RN(n810), .Q(n670) );
  DFFRQX2 \b_reg[2]  ( .D(n391), .CK(clk), .RN(n816), .Q(b[2]) );
  DFFRQX2 \int_addr_reg[3]  ( .D(n438), .CK(clk), .RN(n818), .Q(int_addr[3])
         );
  DFFRQX2 \b_reg[3]  ( .D(n392), .CK(clk), .RN(n816), .Q(b[3]) );
  DFFRQX2 \b_reg[7]  ( .D(n396), .CK(clk), .RN(n817), .Q(b[7]) );
  DFFRQX2 \b_reg[6]  ( .D(n395), .CK(clk), .RN(n817), .Q(b[6]) );
  DFFRQX2 \addr_bus_reg[4]  ( .D(n337), .CK(clk), .RN(n819), .Q(n942) );
  DFFRQX2 \addr_bus_reg[5]  ( .D(n336), .CK(clk), .RN(n812), .Q(n941) );
  DFFRQX4 \ins_register_reg[0]  ( .D(n405), .CK(clk), .RN(rst_n), .Q(
        ins_register[0]) );
  DFFSQX2 \nop_cnt_reg[1]  ( .D(n423), .CK(clk), .SN(n823), .Q(nop_cnt[1]) );
  DFFRX2 \program_counter_reg[1]  ( .D(n362), .CK(clk), .RN(rst_n), .Q(
        program_counter[1]), .QN(n900) );
  DFFSQX2 memory_select_reg ( .D(n366), .CK(clk), .SN(n823), .Q(memory_select)
         );
  DFFSQX2 \nop_cnt_reg[2]  ( .D(n421), .CK(clk), .SN(n823), .Q(nop_cnt[2]) );
  DFFRQX2 \psw_reg[0]  ( .D(n381), .CK(clk), .RN(rst_n), .Q(psw[0]) );
  DFFSQX2 \status_reg[0]  ( .D(n424), .CK(clk), .SN(n823), .Q(status[0]) );
  DFFRQX4 \status_reg[2]  ( .D(n428), .CK(clk), .RN(n815), .Q(status[2]) );
  DFFRQX4 \ram_data_register_reg[5]  ( .D(n375), .CK(clk), .RN(n814), .Q(
        ram_data_register[5]) );
  DFFRQX4 \rom_data_register_reg[4]  ( .D(n399), .CK(clk), .RN(n703), .Q(
        rom_data_register[4]) );
  DFFRQX4 \program_counter_reg[8]  ( .D(n355), .CK(clk), .RN(n811), .Q(
        program_counter[8]) );
  DFFRQX4 \ram_data_register_reg[2]  ( .D(n369), .CK(clk), .RN(n816), .Q(
        ram_data_register[2]) );
  DFFRQX4 \addr_bus_reg[2]  ( .D(n339), .CK(clk), .RN(rst_n), .Q(addr_bus[2])
         );
  DFFRQX2 \b_reg[4]  ( .D(n393), .CK(clk), .RN(n818), .Q(b[4]) );
  DFFRQX2 \b_reg[5]  ( .D(n394), .CK(clk), .RN(n817), .Q(b[5]) );
  DFFRQX4 \ram_data_register_reg[4]  ( .D(n373), .CK(clk), .RN(n811), .Q(
        ram_data_register[4]) );
  DFFRQX2 \int_addr_reg[0]  ( .D(n435), .CK(clk), .RN(n825), .Q(int_addr[0])
         );
  DFFRQX2 \addr_bus_reg[6]  ( .D(n335), .CK(clk), .RN(n820), .Q(addr_bus[6])
         );
  DFFRQX4 \ram_data_register_reg[6]  ( .D(n377), .CK(clk), .RN(n703), .Q(
        ram_data_register[6]) );
  DFFRHQX8 \run_phase_reg[2]  ( .D(n332), .CK(clk), .RN(n813), .Q(run_phase[2]) );
  DFFRHQX8 \ins_register_reg[3]  ( .D(n408), .CK(clk), .RN(n811), .Q(
        ins_register[3]) );
  DFFRQX4 \ins_register_reg[2]  ( .D(n407), .CK(clk), .RN(n817), .Q(
        ins_register[2]) );
  OAI22X2 U4 ( .A0(n726), .A1(n901), .B0(n844), .B1(n892), .Y(n160) );
  OAI2B2X1 U12 ( .A1N(program_counter[6]), .A0(n268), .B0(n904), .B1(n808), 
        .Y(n282) );
  NAND2X2 U13 ( .A(n462), .B(a_data_from[0]), .Y(n268) );
  INVX4 U14 ( .A(a_data_from[0]), .Y(n868) );
  CLKAND2X12 U15 ( .A(a_data_from[2]), .B(n855), .Y(n462) );
  BUFX20 U16 ( .A(b_data_from[1]), .Y(n672) );
  NOR2X8 U17 ( .A(n688), .B(n867), .Y(n145) );
  CLKINVX8 U18 ( .A(n672), .Y(n867) );
  INVX20 U19 ( .A(n721), .Y(n709) );
  CLKBUFX20 U20 ( .A(b_data_from[2]), .Y(n673) );
  NAND2X6 U21 ( .A(n736), .B(n737), .Y(n738) );
  BUFX12 U22 ( .A(pro_b[3]), .Y(n742) );
  NAND2X4 U23 ( .A(n748), .B(n690), .Y(n733) );
  NAND2X6 U24 ( .A(n736), .B(n691), .Y(n739) );
  INVX8 U25 ( .A(n252), .Y(n849) );
  AOI221X2 U26 ( .A0(program_counter[11]), .A1(n146), .B0(acc[3]), .B1(n147), 
        .C0(n164), .Y(n163) );
  OAI22X1 U27 ( .A0(n726), .A1(n924), .B0(n844), .B1(n906), .Y(n164) );
  NAND2X2 U28 ( .A(n760), .B(n761), .Y(n762) );
  INVX2 U30 ( .A(n153), .Y(n761) );
  NAND2X2 U31 ( .A(n748), .B(n749), .Y(n750) );
  INVX4 U32 ( .A(n159), .Y(n749) );
  INVX6 U33 ( .A(n673), .Y(n845) );
  AND3X6 U35 ( .A(n177), .B(n672), .C(n842), .Y(n143) );
  AOI221X2 U36 ( .A0(program_counter[8]), .A1(n146), .B0(acc[0]), .B1(n147), 
        .C0(n175), .Y(n174) );
  BUFX14 U37 ( .A(run_phase[2]), .Y(n765) );
  NAND2X2 U38 ( .A(n760), .B(n686), .Y(n787) );
  BUFX6 U39 ( .A(n142), .Y(n727) );
  AND3X6 U40 ( .A(n177), .B(n842), .C(n867), .Y(n147) );
  AOI221X2 U41 ( .A0(n689), .A1(addr_register_out[4]), .B0(n805), .B1(
        ram_data_register[4]), .C0(n292), .Y(n291) );
  AOI22X2 U42 ( .A0(n231), .A1(rom_data_register[7]), .B0(n806), .B1(acc[7]), 
        .Y(n275) );
  AOI221X2 U43 ( .A0(n689), .A1(n724), .B0(n805), .B1(ram_data_register[6]), 
        .C0(n282), .Y(n281) );
  CLKINVX4 U44 ( .A(ins_register[2]), .Y(n721) );
  BUFX14 U45 ( .A(pro_ans[0]), .Y(n720) );
  CLKAND2X6 U46 ( .A(n176), .B(n842), .Y(n146) );
  NAND3X1 U47 ( .A(n319), .B(addr_register_out[5]), .C(n242), .Y(n674) );
  NAND2X8 U49 ( .A(n759), .B(n684), .Y(pro_b[5]) );
  OAI211X4 U50 ( .A0(n882), .A1(n184), .B0(n185), .C0(n186), .Y(n433) );
  OAI222X4 U51 ( .A0(n260), .A1(n764), .B0(n853), .B1(n259), .C0(n858), .C1(
        n882), .Y(n381) );
  NAND2X5 U53 ( .A(b_data_from[0]), .B(n176), .Y(n155) );
  NOR3X6 U54 ( .A(n672), .B(b_data_from[3]), .C(n845), .Y(n176) );
  AOI222X4 U55 ( .A0(addr_register_out[2]), .A1(n727), .B0(
        rom_data_register[2]), .B1(n143), .C0(ram_data_register[2]), .C1(n725), 
        .Y(n167) );
  CLKBUFX32 U56 ( .A(n241), .Y(n808) );
  AND2X6 U57 ( .A(a_data_from[0]), .B(n682), .Y(n689) );
  NAND2X8 U58 ( .A(n784), .B(n692), .Y(pro_b[2]) );
  NOR3X6 U59 ( .A(a_data_from[0]), .B(a_data_from[2]), .C(n855), .Y(n231) );
  CLKINVX6 U61 ( .A(a_data_from[2]), .Y(n775) );
  OAI22X1 U62 ( .A0(n726), .A1(n902), .B0(n844), .B1(n905), .Y(n154) );
  INVX20 U63 ( .A(n726), .Y(n843) );
  CLKBUFX40 U64 ( .A(n155), .Y(n726) );
  NAND2X2 U65 ( .A(n760), .B(n685), .Y(n763) );
  NAND2X2 U66 ( .A(n748), .B(n683), .Y(n751) );
  OAI22X1 U67 ( .A0(n726), .A1(n879), .B0(n844), .B1(n893), .Y(n175) );
  AOI22X2 U68 ( .A0(int_addr[0]), .A1(n156), .B0(addr_register_out[0]), .B1(
        n727), .Y(n172) );
  AOI31X2 U69 ( .A0(n161), .A1(n162), .A2(n163), .B0(n706), .Y(pro_b[3]) );
  AOI22X2 U70 ( .A0(rom_data_register[3]), .A1(n143), .B0(ram_data_register[3]), .B1(n725), .Y(n162) );
  AOI22X2 U71 ( .A0(int_addr[3]), .A1(n156), .B0(addr_register_out[3]), .B1(
        n727), .Y(n161) );
  INVX2 U72 ( .A(program_counter[0]), .Y(n879) );
  INVX2 U73 ( .A(program_counter[3]), .Y(n924) );
  INVX2 U74 ( .A(program_counter[4]), .Y(n901) );
  INVX2 U75 ( .A(program_counter[5]), .Y(n902) );
  INVX2 U76 ( .A(n268), .Y(n802) );
  AOI22X2 U77 ( .A0(rom_data_register[1]), .A1(n143), .B0(ram_data_register[1]), .B1(n725), .Y(n169) );
  AOI22X2 U78 ( .A0(int_addr[1]), .A1(n156), .B0(addr_register_out[1]), .B1(
        n727), .Y(n168) );
  INVX2 U79 ( .A(b[3]), .Y(n906) );
  INVX2 U80 ( .A(b[5]), .Y(n905) );
  INVX2 U81 ( .A(b[4]), .Y(n892) );
  INVX2 U82 ( .A(b[1]), .Y(n908) );
  INVX2 U83 ( .A(b[0]), .Y(n893) );
  NAND4X6 U84 ( .A(n242), .B(addr_register_out[5]), .C(n676), .D(n920), .Y(
        n233) );
  INVX4 U85 ( .A(n254), .Y(n848) );
  INVX6 U86 ( .A(n245), .Y(n852) );
  NOR2X6 U87 ( .A(n736), .B(n479), .Y(n198) );
  OAI222X1 U89 ( .A0(n807), .A1(n840), .B0(n853), .B1(n183), .C0(n857), .C1(
        n895), .Y(n434) );
  OAI222X1 U90 ( .A0(n853), .A1(n233), .B0(n840), .B1(n235), .C0(n859), .C1(
        n893), .Y(n389) );
  NAND2X2 U91 ( .A(n447), .B(n448), .Y(n355) );
  AND3X1 U92 ( .A(n177), .B(b_data_from[0]), .C(n867), .Y(n144) );
  AND3X1 U93 ( .A(n177), .B(b_data_from[0]), .C(n672), .Y(n142) );
  NOR2X8 U94 ( .A(n673), .B(b_data_from[3]), .Y(n177) );
  AND3X2 U95 ( .A(n313), .B(n314), .C(status[5]), .Y(n790) );
  BUFX2 U96 ( .A(n829), .Y(n810) );
  INVX2 U97 ( .A(n790), .Y(n705) );
  AND2X2 U98 ( .A(n758), .B(n914), .Y(n675) );
  INVX5 U99 ( .A(n790), .Y(n793) );
  INVX4 U100 ( .A(n705), .Y(n736) );
  INVX4 U101 ( .A(n706), .Y(n760) );
  OR2X4 U102 ( .A(n776), .B(n760), .Y(n676) );
  AO22X2 U103 ( .A0(int_addr[5]), .A1(n156), .B0(addr_register_out[5]), .B1(
        n727), .Y(n677) );
  INVX4 U104 ( .A(n728), .Y(n855) );
  CLKBUFX4 U106 ( .A(a_data_from[1]), .Y(n728) );
  AO22X2 U107 ( .A0(int_addr[4]), .A1(n156), .B0(addr_register_out[4]), .B1(
        n727), .Y(n678) );
  AO22X2 U108 ( .A0(program_counter[14]), .A1(n146), .B0(acc[6]), .B1(n147), 
        .Y(n679) );
  AO22X2 U109 ( .A0(program_counter[15]), .A1(n146), .B0(acc[7]), .B1(n147), 
        .Y(n680) );
  AO22X2 U110 ( .A0(program_counter[10]), .A1(n146), .B0(acc[2]), .B1(n147), 
        .Y(n681) );
  AND2X2 U111 ( .A(n728), .B(n775), .Y(n682) );
  AO22X2 U112 ( .A0(rom_data_register[4]), .A1(n143), .B0(ram_data_register[4]), .B1(n725), .Y(n683) );
  AND2X2 U113 ( .A(n762), .B(n763), .Y(n684) );
  AO22X2 U114 ( .A0(rom_data_register[5]), .A1(n143), .B0(ram_data_register[5]), .B1(n725), .Y(n685) );
  AO22X2 U115 ( .A0(b[2]), .A1(n145), .B0(program_counter[2]), .B1(n843), .Y(
        n686) );
  INVX2 U116 ( .A(n231), .Y(n707) );
  AND2X2 U117 ( .A(n750), .B(n751), .Y(n687) );
  OR3X2 U118 ( .A(b_data_from[0]), .B(n845), .C(b_data_from[3]), .Y(n688) );
  AO22X2 U119 ( .A0(b[6]), .A1(n145), .B0(program_counter[6]), .B1(n843), .Y(
        n690) );
  AO22X2 U120 ( .A0(b[7]), .A1(n145), .B0(program_counter[7]), .B1(n843), .Y(
        n691) );
  AND2X2 U121 ( .A(n786), .B(n787), .Y(n692) );
  AND2X2 U122 ( .A(n738), .B(n739), .Y(n693) );
  AND2X2 U123 ( .A(n732), .B(n733), .Y(n694) );
  AND2X2 U124 ( .A(n781), .B(n782), .Y(n695) );
  NAND3X2 U125 ( .A(n728), .B(n868), .C(a_data_from[2]), .Y(n241) );
  AND2X2 U126 ( .A(n772), .B(n773), .Y(n696) );
  AND2X2 U127 ( .A(status[6]), .B(n916), .Y(n697) );
  OAI21X1 U128 ( .A0(n708), .A1(n230), .B0(n229), .Y(n698) );
  OR2X2 U130 ( .A(n312), .B(n919), .Y(n699) );
  OA21X1 U136 ( .A0(n746), .A1(n317), .B0(n318), .Y(n700) );
  OR2X2 U145 ( .A(n313), .B(n463), .Y(n701) );
  INVX4 U147 ( .A(status[2]), .Y(n914) );
  XNOR2X4 U148 ( .A(n720), .B(pro_ans[1]), .Y(n273) );
  CLKBUFX4 U149 ( .A(pro_b[1]), .Y(n744) );
  NAND2X4 U150 ( .A(n747), .B(n687), .Y(pro_b[4]) );
  CLKBUFX4 U151 ( .A(pro_a[1]), .Y(n710) );
  AOI31X1 U152 ( .A0(n168), .A1(n169), .A2(n170), .B0(n706), .Y(pro_b[1]) );
  INVX2 U153 ( .A(n810), .Y(n702) );
  CLKINVX3 U154 ( .A(n702), .Y(n703) );
  CLKINVX3 U155 ( .A(n702), .Y(n704) );
  CLKINVX4 U156 ( .A(n790), .Y(n706) );
  INVX5 U157 ( .A(n707), .Y(n708) );
  INVX4 U158 ( .A(n721), .Y(n722) );
  NOR2X2 U159 ( .A(n846), .B(n793), .Y(pro_a[1]) );
  INVX2 U160 ( .A(n466), .Y(n711) );
  INVX5 U161 ( .A(n711), .Y(n712) );
  NOR2BX1 U162 ( .AN(n321), .B(n801), .Y(n466) );
  INVX2 U163 ( .A(n188), .Y(n713) );
  INVX5 U164 ( .A(n713), .Y(n714) );
  NOR2BX1 U165 ( .AN(n746), .B(n317), .Y(n188) );
  INVX5 U166 ( .A(n700), .Y(n715) );
  INVX4 U167 ( .A(n250), .Y(n850) );
  OAI211X4 U168 ( .A0(n935), .A1(n804), .B0(n285), .C0(n286), .Y(n250) );
  BUFX8 U169 ( .A(n144), .Y(n725) );
  BUFX8 U170 ( .A(pro_b[0]), .Y(n740) );
  OAI2BB1X1 U171 ( .A0N(n942), .A1N(n801), .B0(n471), .Y(n337) );
  AOI22X1 U172 ( .A0(n712), .A1(program_counter[4]), .B0(n766), .B1(
        addr_register_out[4]), .Y(n471) );
  AOI22X1 U173 ( .A0(n712), .A1(program_counter[0]), .B0(n766), .B1(
        addr_register_out[0]), .Y(n465) );
  AOI22X1 U174 ( .A0(n712), .A1(program_counter[3]), .B0(n766), .B1(
        addr_register_out[3]), .Y(n470) );
  AOI22X1 U175 ( .A0(n712), .A1(program_counter[2]), .B0(n766), .B1(
        addr_register_out[2]), .Y(n469) );
  AOI22X1 U177 ( .A0(n712), .A1(program_counter[5]), .B0(n766), .B1(
        addr_register_out[5]), .Y(n472) );
  AOI22X1 U178 ( .A0(n712), .A1(program_counter[6]), .B0(n766), .B1(n724), .Y(
        n473) );
  AOI22X1 U179 ( .A0(n712), .A1(program_counter[7]), .B0(n766), .B1(
        addr_register_out[7]), .Y(n474) );
  AOI22X2 U180 ( .A0(n803), .A1(n720), .B0(program_counter[0]), .B1(n717), .Y(
        n388) );
  AOI22X1 U181 ( .A0(n803), .A1(pro_ans[3]), .B0(program_counter[3]), .B1(n717), .Y(n441) );
  AOI22X1 U182 ( .A0(n803), .A1(pro_ans[2]), .B0(program_counter[2]), .B1(n717), .Y(n437) );
  AOI22X2 U183 ( .A0(n745), .A1(pro_ans[4]), .B0(program_counter[4]), .B1(n717), .Y(n442) );
  AOI22X2 U184 ( .A0(n745), .A1(pro_ans[6]), .B0(program_counter[6]), .B1(n717), .Y(n444) );
  AOI22X2 U185 ( .A0(n745), .A1(pro_ans[5]), .B0(program_counter[5]), .B1(n717), .Y(n443) );
  AOI22X2 U186 ( .A0(n745), .A1(pro_ans[7]), .B0(program_counter[7]), .B1(n717), .Y(n445) );
  AOI22X1 U187 ( .A0(n755), .A1(pro_ans[3]), .B0(N206), .B1(n328), .Y(n455) );
  AOI22X1 U188 ( .A0(n755), .A1(pro_ans[2]), .B0(N205), .B1(n328), .Y(n453) );
  AOI22X1 U189 ( .A0(n755), .A1(pro_ans[1]), .B0(N204), .B1(n328), .Y(n450) );
  NOR2X4 U191 ( .A(nop_cnt[2]), .B(nop_cnt[1]), .Y(n219) );
  AOI22X1 U192 ( .A0(n803), .A1(pro_ans[1]), .B0(program_counter[1]), .B1(n717), .Y(n412) );
  AOI22X1 U193 ( .A0(n712), .A1(program_counter[1]), .B0(n766), .B1(
        addr_register_out[1]), .Y(n468) );
  NOR2X8 U194 ( .A(n307), .B(n865), .Y(n242) );
  NOR2X8 U195 ( .A(n307), .B(n864), .Y(n308) );
  NAND4BX4 U197 ( .AN(addr_register_out[0]), .B(addr_register_out[7]), .C(n724), .D(n320), .Y(n307) );
  CLKINVX1 U199 ( .A(n411), .Y(n716) );
  INVX5 U200 ( .A(n716), .Y(n717) );
  OAI2B1X1 U201 ( .A1N(n743), .A0(n446), .B0(n884), .Y(n411) );
  INVX6 U202 ( .A(n698), .Y(n718) );
  INVX4 U203 ( .A(addr_register_out[5]), .Y(n864) );
  INVX6 U205 ( .A(n674), .Y(n719) );
  CLKINVX16 U206 ( .A(addr_register_out[6]), .Y(n723) );
  INVX20 U207 ( .A(n723), .Y(n724) );
  AOI221X4 U208 ( .A0(n689), .A1(addr_register_out[5]), .B0(n805), .B1(
        ram_data_register[5]), .C0(n287), .Y(n286) );
  NOR2X8 U209 ( .A(n851), .B(n793), .Y(pro_a[6]) );
  NOR2X8 U210 ( .A(n852), .B(n706), .Y(pro_a[7]) );
  INVX18 U211 ( .A(n145), .Y(n844) );
  INVX3 U213 ( .A(n720), .Y(n840) );
  AOI221X4 U215 ( .A0(n689), .A1(addr_register_out[7]), .B0(n805), .B1(
        ram_data_register[7]), .C0(n277), .Y(n276) );
  AOI222X4 U216 ( .A0(n724), .A1(n727), .B0(rom_data_register[6]), .B1(n143), 
        .C0(ram_data_register[6]), .C1(n725), .Y(n150) );
  XOR2X8 U217 ( .A(n269), .B(n270), .Y(n260) );
  XOR2X8 U218 ( .A(n273), .B(n274), .Y(n269) );
  AOI22X2 U219 ( .A0(n755), .A1(pro_ans[4]), .B0(N207), .B1(n328), .Y(n457) );
  AOI22X2 U221 ( .A0(n755), .A1(pro_ans[7]), .B0(N210), .B1(n328), .Y(n326) );
  BUFX5 U223 ( .A(n941), .Y(addr_bus[5]) );
  NAND2X8 U224 ( .A(n730), .B(n694), .Y(pro_b[6]) );
  INVX10 U225 ( .A(n150), .Y(n731) );
  CLKNAND2X12 U226 ( .A(n748), .B(n731), .Y(n732) );
  NAND2X1 U227 ( .A(n748), .B(n679), .Y(n730) );
  AOI22X2 U229 ( .A0(n755), .A1(pro_ans[5]), .B0(N208), .B1(n328), .Y(n459) );
  BUFX5 U231 ( .A(n942), .Y(addr_bus[4]) );
  NAND2X8 U232 ( .A(n735), .B(n693), .Y(pro_b[7]) );
  INVX5 U233 ( .A(n140), .Y(n737) );
  NAND2X1 U234 ( .A(n736), .B(n680), .Y(n735) );
  AOI222X4 U235 ( .A0(addr_register_out[7]), .A1(n727), .B0(
        rom_data_register[7]), .B1(n143), .C0(ram_data_register[7]), .C1(n725), 
        .Y(n140) );
  AOI22X2 U237 ( .A0(n755), .A1(pro_ans[6]), .B0(N209), .B1(n328), .Y(n461) );
  BUFX2 U238 ( .A(n804), .Y(n741) );
  BUFX16 U239 ( .A(n262), .Y(n804) );
  NAND2X1 U240 ( .A(n462), .B(n868), .Y(n262) );
  AOI22X1 U241 ( .A0(n755), .A1(n720), .B0(N203), .B1(n328), .Y(n448) );
  NAND4X6 U243 ( .A(n308), .B(n676), .C(n865), .D(n920), .Y(n183) );
  INVX5 U244 ( .A(n802), .Y(n743) );
  NAND2BX2 U245 ( .AN(int_addr[1]), .B(n774), .Y(n436) );
  INVX4 U246 ( .A(n854), .Y(n745) );
  CLKBUFX4 U247 ( .A(n410), .Y(n803) );
  BUFX3 U248 ( .A(n805), .Y(n746) );
  BUFX16 U249 ( .A(n266), .Y(n805) );
  OAI31X2 U250 ( .A0(n926), .A1(n196), .A2(n313), .B0(memory_select), .Y(n324)
         );
  INVX5 U251 ( .A(n705), .Y(n748) );
  NAND2X1 U252 ( .A(n748), .B(n678), .Y(n747) );
  NAND2BX1 U253 ( .AN(int_addr[0]), .B(n774), .Y(n435) );
  CLKBUFX4 U254 ( .A(n806), .Y(n752) );
  BUFX20 U255 ( .A(n136), .Y(n806) );
  INVX5 U256 ( .A(n701), .Y(n753) );
  INVX5 U257 ( .A(n701), .Y(n754) );
  AOI22X1 U258 ( .A0(program_counter[15]), .A1(n329), .B0(
        program_counter_plus1[15]), .B1(n753), .Y(n325) );
  AOI22X1 U259 ( .A0(program_counter[13]), .A1(n329), .B0(
        program_counter_plus1[13]), .B1(n753), .Y(n458) );
  AOI22X1 U262 ( .A0(program_counter[14]), .A1(n329), .B0(
        program_counter_plus1[14]), .B1(n753), .Y(n460) );
  AOI22X1 U263 ( .A0(program_counter[11]), .A1(n329), .B0(
        program_counter_plus1[11]), .B1(n753), .Y(n454) );
  AOI22X1 U264 ( .A0(program_counter[12]), .A1(n329), .B0(
        program_counter_plus1[12]), .B1(n753), .Y(n456) );
  AOI22X1 U265 ( .A0(program_counter[10]), .A1(n329), .B0(
        program_counter_plus1[10]), .B1(n753), .Y(n452) );
  AOI22X2 U266 ( .A0(program_counter[9]), .A1(n329), .B0(
        program_counter_plus1[9]), .B1(n753), .Y(n449) );
  AOI22X1 U267 ( .A0(program_counter[8]), .A1(n329), .B0(
        program_counter_plus1[8]), .B1(n753), .Y(n447) );
  OR2X1 U268 ( .A(n446), .B(n741), .Y(n327) );
  INVX5 U269 ( .A(n327), .Y(n755) );
  CLKNAND2X2 U270 ( .A(n756), .B(n757), .Y(n318) );
  INVX2 U271 ( .A(n321), .Y(n758) );
  CLKNAND2X2 U273 ( .A(status[5]), .B(n675), .Y(n756) );
  CLKNAND2X2 U274 ( .A(status[3]), .B(n675), .Y(n757) );
  CLKINVX3 U275 ( .A(status[3]), .Y(n921) );
  NAND2X2 U276 ( .A(n760), .B(n677), .Y(n759) );
  INVX4 U277 ( .A(n856), .Y(n764) );
  CLKBUFX4 U278 ( .A(n182), .Y(n807) );
  CLKINVX1 U279 ( .A(run_phase[2]), .Y(n937) );
  OR2X2 U280 ( .A(n321), .B(n800), .Y(n467) );
  INVX5 U281 ( .A(n467), .Y(n766) );
  NAND2X3 U282 ( .A(n767), .B(n696), .Y(n210) );
  CLKINVX2 U283 ( .A(n883), .Y(n768) );
  CLKINVX1 U284 ( .A(decoder_next_status[2]), .Y(n769) );
  CLKINVX1 U285 ( .A(n196), .Y(n770) );
  CLKINVX1 U286 ( .A(decoder_next_status[1]), .Y(n771) );
  NAND2X2 U287 ( .A(n768), .B(n769), .Y(n772) );
  NAND2X2 U288 ( .A(n768), .B(n770), .Y(n773) );
  NAND2X2 U289 ( .A(n768), .B(n771), .Y(n767) );
  CLKINVX3 U290 ( .A(n939), .Y(n774) );
  INVX2 U291 ( .A(n178), .Y(n939) );
  NOR3X4 U292 ( .A(interupt[4]), .B(n940), .C(n179), .Y(n178) );
  NOR2X2 U293 ( .A(n890), .B(n699), .Y(n776) );
  OR4X1 U294 ( .A(n135), .B(n916), .C(n752), .D(n137), .Y(n134) );
  INVX5 U295 ( .A(n134), .Y(n777) );
  NAND2X5 U296 ( .A(n884), .B(n695), .Y(n329) );
  CLKINVX1 U297 ( .A(n446), .Y(n778) );
  CLKINVX1 U298 ( .A(n462), .Y(n779) );
  CLKINVX1 U299 ( .A(pro_psw_out[7]), .Y(n780) );
  NAND2X1 U300 ( .A(n778), .B(n779), .Y(n781) );
  NAND2X1 U301 ( .A(n745), .B(n780), .Y(n782) );
  NAND2X3 U302 ( .A(n313), .B(n884), .Y(n446) );
  CLKBUFX6 U303 ( .A(n190), .Y(n783) );
  NOR3BX1 U304 ( .AN(n319), .B(n308), .C(n242), .Y(n190) );
  CLKINVX1 U305 ( .A(n167), .Y(n785) );
  NAND2X4 U306 ( .A(n760), .B(n785), .Y(n786) );
  NAND2X1 U307 ( .A(n748), .B(n681), .Y(n784) );
  CLKINVX2 U308 ( .A(b[7]), .Y(n903) );
  CLKINVX2 U309 ( .A(b[6]), .Y(n904) );
  NOR2X4 U310 ( .A(n847), .B(n793), .Y(pro_a[2]) );
  OAI222X1 U311 ( .A0(n846), .A1(n233), .B0(n839), .B1(n235), .C0(n859), .C1(
        n908), .Y(n390) );
  CLKNAND2X2 U312 ( .A(n314), .B(n791), .Y(n135) );
  CLKINVX2 U313 ( .A(n808), .Y(n860) );
  BUFX2 U314 ( .A(n809), .Y(n829) );
  NOR2X1 U315 ( .A(n446), .B(n743), .Y(n410) );
  NAND2X1 U316 ( .A(n889), .B(n752), .Y(n182) );
  CLKAND2X2 U317 ( .A(n794), .B(n706), .Y(n208) );
  NOR2X2 U318 ( .A(interupt[3]), .B(interupt[2]), .Y(n180) );
  INVX18 U319 ( .A(n248), .Y(n851) );
  NOR2X3 U320 ( .A(n853), .B(n793), .Y(pro_a[0]) );
  CLKINVX4 U321 ( .A(addr_register_out[4]), .Y(n865) );
  INVX5 U322 ( .A(n237), .Y(n859) );
  AOI22X1 U323 ( .A0(n863), .A1(n254), .B0(pro_psw_out[3]), .B1(n856), .Y(n253) );
  AOI22X1 U324 ( .A0(n863), .A1(n252), .B0(pro_psw_out[4]), .B1(n856), .Y(n251) );
  AOI22X1 U325 ( .A0(n863), .A1(n256), .B0(pro_psw_out[2]), .B1(n856), .Y(n255) );
  AOI22X1 U326 ( .A0(n863), .A1(n250), .B0(pro_psw_out[5]), .B1(n856), .Y(n249) );
  AOI22X1 U327 ( .A0(n863), .A1(n248), .B0(pro_psw_out[6]), .B1(n856), .Y(n247) );
  OR2X2 U328 ( .A(ram_write_done_nxt), .B(read_en_nxt), .Y(n788) );
  OR2X2 U329 ( .A(rom_read_done_nxt), .B(get_ins_done_nxt), .Y(n789) );
  INVX2 U330 ( .A(n463), .Y(n884) );
  CLKINVX1 U331 ( .A(acc[0]), .Y(n895) );
  CLKINVX1 U333 ( .A(rom_data_register[0]), .Y(n922) );
  OAI2B2X4 U334 ( .A1N(program_counter[7]), .A0(n268), .B0(n903), .B1(n808), 
        .Y(n277) );
  CLKINVX1 U335 ( .A(acc[1]), .Y(n899) );
  NAND2X1 U336 ( .A(n449), .B(n450), .Y(n353) );
  CLKINVX1 U337 ( .A(acc[2]), .Y(n898) );
  NAND2X1 U338 ( .A(n452), .B(n453), .Y(n351) );
  CLKINVX1 U339 ( .A(acc[3]), .Y(n912) );
  CLKINVX1 U340 ( .A(acc[4]), .Y(n897) );
  AOI22X1 U341 ( .A0(n708), .A1(rom_data_register[1]), .B0(n806), .B1(acc[1]), 
        .Y(n309) );
  CLKINVX2 U342 ( .A(program_counter[13]), .Y(n935) );
  CLKINVX2 U343 ( .A(program_counter[12]), .Y(n934) );
  CLKINVX2 U344 ( .A(program_counter[14]), .Y(n936) );
  CLKINVX2 U345 ( .A(program_counter[15]), .Y(n923) );
  NAND2X1 U346 ( .A(n454), .B(n455), .Y(n349) );
  NAND2X1 U347 ( .A(n460), .B(n461), .Y(n343) );
  NAND2X1 U348 ( .A(n458), .B(n459), .Y(n345) );
  NAND2X1 U349 ( .A(n456), .B(n457), .Y(n347) );
  NAND2X1 U350 ( .A(n325), .B(n326), .Y(n365) );
  CLKINVX1 U351 ( .A(acc[6]), .Y(n911) );
  CLKINVX1 U352 ( .A(acc[7]), .Y(n910) );
  CLKINVX1 U353 ( .A(acc[5]), .Y(n896) );
  OAI211X1 U354 ( .A0(n880), .A1(n741), .B0(n263), .C0(n264), .Y(n261) );
  AOI22X1 U355 ( .A0(n708), .A1(rom_data_register[0]), .B0(n752), .B1(acc[0]), 
        .Y(n263) );
  CLKINVX2 U356 ( .A(program_counter[11]), .Y(n933) );
  AOI222X1 U357 ( .A0(n856), .A1(pro_psw_out[7]), .B0(n245), .B1(n863), .C0(
        n246), .C1(psw[7]), .Y(n244) );
  CLKINVX2 U358 ( .A(b[2]), .Y(n907) );
  CLKINVX2 U359 ( .A(program_counter[10]), .Y(n932) );
  INVX5 U360 ( .A(n305), .Y(n857) );
  OAI221X1 U361 ( .A0(n752), .A1(n238), .B0(status[5]), .B1(n865), .C0(n240), 
        .Y(n305) );
  CLKINVX2 U362 ( .A(program_counter[9]), .Y(n931) );
  OAI2BB2X1 U363 ( .B0(n849), .B1(n794), .A0N(data_out[4]), .A1N(n794), .Y(
        n415) );
  OAI2BB2X1 U364 ( .B0(n847), .B1(n796), .A0N(data_out[2]), .A1N(n796), .Y(
        n417) );
  OAI2BB2X1 U365 ( .B0(n851), .B1(n795), .A0N(data_out[6]), .A1N(n795), .Y(
        n413) );
  OAI2BB2X1 U366 ( .B0(n850), .B1(n796), .A0N(data_out[5]), .A1N(n796), .Y(
        n414) );
  OAI2BB2X1 U367 ( .B0(n848), .B1(n795), .A0N(data_out[3]), .A1N(n795), .Y(
        n416) );
  OAI2BB2X1 U368 ( .B0(n852), .B1(n796), .A0N(data_out[7]), .A1N(n796), .Y(
        n420) );
  CLKINVX2 U369 ( .A(status[1]), .Y(n930) );
  CLKINVX6 U370 ( .A(status[5]), .Y(n920) );
  CLKINVX3 U371 ( .A(status[4]), .Y(n918) );
  CLKINVX2 U372 ( .A(program_counter[8]), .Y(n880) );
  NAND2BX1 U374 ( .AN(ram_write_done), .B(n314), .Y(n312) );
  NOR2X2 U375 ( .A(n917), .B(rom_read_done), .Y(rom_read_done_nxt) );
  NOR2X2 U376 ( .A(n925), .B(get_ins_done), .Y(get_ins_done_nxt) );
  NAND2X5 U378 ( .A(status[4]), .B(n229), .Y(n227) );
  NOR2X5 U379 ( .A(status[3]), .B(status[4]), .Y(n207) );
  CLKINVX1 U380 ( .A(int_addr[5]), .Y(n927) );
  OAI2BB2X1 U384 ( .B0(n798), .B1(n923), .A0N(addr_bus[15]), .A1N(n798), .Y(
        n364) );
  OAI2BB2X1 U386 ( .B0(n797), .B1(n935), .A0N(addr_bus[13]), .A1N(n798), .Y(
        n344) );
  OAI2BB2X1 U388 ( .B0(n797), .B1(n936), .A0N(addr_bus[14]), .A1N(n799), .Y(
        n342) );
  NOR2X2 U389 ( .A(n323), .B(ram_read_done), .Y(ram_read_done_nxt) );
  CLKINVX2 U396 ( .A(run_phase[0]), .Y(n870) );
  CLKINVX2 U397 ( .A(run_phase[3]), .Y(n929) );
  CLKNAND2X4 U398 ( .A(interupt_en), .B(status[1]), .Y(n224) );
  CLKINVX4 U399 ( .A(run_phase[1]), .Y(n938) );
  INVX2 U400 ( .A(nop_cnt[0]), .Y(n881) );
  CLKINVX2 U401 ( .A(psw[3]), .Y(n909) );
  CLKINVX2 U402 ( .A(psw[4]), .Y(n894) );
  NAND3X1 U403 ( .A(n322), .B(n323), .C(n324), .Y(n366) );
  INVX2 U404 ( .A(psw[1]), .Y(n888) );
  INVX2 U405 ( .A(psw[5]), .Y(n886) );
  INVX2 U406 ( .A(psw[2]), .Y(n887) );
  INVX2 U407 ( .A(psw[6]), .Y(n885) );
  NAND2X1 U408 ( .A(ins_register[7]), .B(n791), .Y(n483) );
  NAND2X1 U409 ( .A(ins_register[6]), .B(n791), .Y(n482) );
  NAND2X1 U410 ( .A(ins_register[5]), .B(n791), .Y(n481) );
  NAND2X1 U411 ( .A(ins_register[4]), .B(n791), .Y(n223) );
  CLKINVX1 U412 ( .A(rom_data_register[1]), .Y(n873) );
  CLKINVX1 U413 ( .A(rom_data_register[2]), .Y(n874) );
  CLKINVX1 U414 ( .A(rom_data_register[7]), .Y(n872) );
  CLKINVX1 U415 ( .A(rom_data_register[5]), .Y(n877) );
  CLKINVX1 U416 ( .A(rom_data_register[6]), .Y(n878) );
  CLKINVX1 U417 ( .A(rom_data_register[3]), .Y(n875) );
  CLKINVX1 U418 ( .A(rom_data_register[4]), .Y(n876) );
  BUFX5 U419 ( .A(n813), .Y(n815) );
  BUFX5 U420 ( .A(n810), .Y(n817) );
  BUFX5 U421 ( .A(n826), .Y(n818) );
  BUFX5 U422 ( .A(n826), .Y(n819) );
  BUFX5 U423 ( .A(n825), .Y(n820) );
  BUFX5 U424 ( .A(n825), .Y(n821) );
  BUFX5 U425 ( .A(n824), .Y(n822) );
  BUFX5 U426 ( .A(n824), .Y(n816) );
  CLKBUFX4 U427 ( .A(n824), .Y(n823) );
  BUFX5 U428 ( .A(n827), .Y(n813) );
  BUFX5 U429 ( .A(n827), .Y(n814) );
  BUFX5 U430 ( .A(n828), .Y(n811) );
  BUFX5 U431 ( .A(n828), .Y(n812) );
  BUFX2 U432 ( .A(rst_n), .Y(n826) );
  BUFX2 U433 ( .A(n809), .Y(n825) );
  BUFX2 U434 ( .A(n809), .Y(n824) );
  BUFX2 U435 ( .A(n829), .Y(n827) );
  BUFX2 U436 ( .A(n829), .Y(n828) );
  INVX4 U437 ( .A(b_data_from[0]), .Y(n842) );
  INVX5 U438 ( .A(n807), .Y(n856) );
  INVX2 U439 ( .A(decoder_next_status[1]), .Y(n862) );
  INVX2 U440 ( .A(decoder_next_status[0]), .Y(n866) );
  INVX2 U441 ( .A(n215), .Y(n861) );
  INVX4 U442 ( .A(n800), .Y(n883) );
  INVX2 U443 ( .A(n180), .Y(n940) );
  NOR2X6 U444 ( .A(n850), .B(n793), .Y(pro_a[5]) );
  CLKINVX2 U445 ( .A(pro_ans[1]), .Y(n839) );
  NOR3X2 U446 ( .A(n728), .B(a_data_from[2]), .C(a_data_from[0]), .Y(n136) );
  NOR3X2 U447 ( .A(n728), .B(a_data_from[2]), .C(n868), .Y(n266) );
  NOR2X6 U448 ( .A(n849), .B(n793), .Y(pro_a[4]) );
  NOR2X4 U449 ( .A(n848), .B(n793), .Y(pro_a[3]) );
  CLKINVX2 U450 ( .A(pro_ans[2]), .Y(n838) );
  CLKINVX3 U451 ( .A(pro_ans[3]), .Y(n837) );
  XNOR2X1 U452 ( .A(n837), .B(pro_ans[2]), .Y(n274) );
  CLKINVX2 U453 ( .A(pro_ans[4]), .Y(n836) );
  CLKINVX3 U454 ( .A(pro_ans[5]), .Y(n835) );
  XNOR2X1 U455 ( .A(n835), .B(pro_ans[4]), .Y(n272) );
  XNOR2X1 U456 ( .A(n833), .B(pro_ans[6]), .Y(n271) );
  CLKINVX2 U457 ( .A(pro_ans[6]), .Y(n834) );
  NAND2X5 U458 ( .A(n889), .B(n860), .Y(n235) );
  INVX5 U459 ( .A(n259), .Y(n863) );
  INVX2 U460 ( .A(n222), .Y(n916) );
  NOR2X4 U461 ( .A(n913), .B(decoder_next_status[2]), .Y(n215) );
  INVX2 U462 ( .A(n198), .Y(n915) );
  INVX2 U463 ( .A(n137), .Y(n917) );
  INVX2 U464 ( .A(n199), .Y(n869) );
  INVX4 U465 ( .A(n789), .Y(n799) );
  INVX4 U466 ( .A(n789), .Y(n798) );
  INVX4 U467 ( .A(n788), .Y(n800) );
  INVX4 U468 ( .A(n788), .Y(n801) );
  INVX4 U469 ( .A(n789), .Y(n797) );
  BUFX2 U470 ( .A(rst_n), .Y(n809) );
  XOR2X1 U471 ( .A(n271), .B(n272), .Y(n270) );
  AND4X4 U472 ( .A(b_data_from[3]), .B(n842), .C(n867), .D(n845), .Y(n156) );
  OAI22X1 U473 ( .A0(n726), .A1(n900), .B0(n844), .B1(n908), .Y(n171) );
  OAI222X1 U474 ( .A0(n847), .A1(n233), .B0(n838), .B1(n235), .C0(n859), .C1(
        n907), .Y(n391) );
  OAI222X1 U475 ( .A0(n848), .A1(n233), .B0(n837), .B1(n235), .C0(n859), .C1(
        n906), .Y(n392) );
  INVX2 U476 ( .A(n803), .Y(n854) );
  OAI222X1 U477 ( .A0(n850), .A1(n233), .B0(n835), .B1(n235), .C0(n859), .C1(
        n905), .Y(n394) );
  OAI222X1 U478 ( .A0(n849), .A1(n233), .B0(n836), .B1(n235), .C0(n859), .C1(
        n892), .Y(n393) );
  CLKINVX3 U479 ( .A(pro_ans[7]), .Y(n833) );
  INVX4 U480 ( .A(n256), .Y(n847) );
  INVX4 U481 ( .A(n258), .Y(n846) );
  NOR2X6 U482 ( .A(n777), .B(n891), .Y(pro_psw_in[7]) );
  OAI222X1 U483 ( .A0(n851), .A1(n233), .B0(n834), .B1(n235), .C0(n859), .C1(
        n904), .Y(n395) );
  OAI222X1 U484 ( .A0(n852), .A1(n233), .B0(n833), .B1(n235), .C0(n859), .C1(
        n903), .Y(n396) );
  CLKAND2X6 U485 ( .A(pro_psw_out[7]), .B(n803), .Y(n328) );
  OAI22X1 U486 ( .A0(n893), .A1(n241), .B0(n879), .B1(n743), .Y(n267) );
  NOR3X2 U487 ( .A(addr_register_out[1]), .B(addr_register_out[3]), .C(
        addr_register_out[2]), .Y(n320) );
  NAND3X6 U488 ( .A(n319), .B(n864), .C(n242), .Y(n184) );
  NAND4X2 U489 ( .A(n242), .B(n676), .C(n864), .D(n920), .Y(n259) );
  NOR2X4 U490 ( .A(n918), .B(n135), .Y(n137) );
  INVX5 U491 ( .A(n246), .Y(n858) );
  OAI211X2 U492 ( .A0(n860), .A1(n238), .B0(n239), .C0(n240), .Y(n237) );
  OAI21X1 U493 ( .A0(n864), .A1(n865), .B0(n920), .Y(n239) );
  NAND3X2 U494 ( .A(n314), .B(n920), .C(n313), .Y(n222) );
  OAI21X1 U495 ( .A0(n858), .A1(n909), .B0(n253), .Y(n384) );
  NOR2X2 U496 ( .A(n777), .B(n909), .Y(pro_psw_in[3]) );
  OAI21X1 U497 ( .A0(n858), .A1(n894), .B0(n251), .Y(n385) );
  NOR2X2 U498 ( .A(n777), .B(n894), .Y(pro_psw_in[4]) );
  OAI21X1 U499 ( .A0(n858), .A1(n888), .B0(n257), .Y(n382) );
  AOI22X2 U500 ( .A0(n863), .A1(n258), .B0(pro_psw_out[1]), .B1(n856), .Y(n257) );
  NOR2X2 U501 ( .A(n777), .B(n888), .Y(pro_psw_in[1]) );
  OAI21X1 U502 ( .A0(n858), .A1(n887), .B0(n255), .Y(n383) );
  NOR2X2 U503 ( .A(n777), .B(n887), .Y(pro_psw_in[2]) );
  OAI21X1 U504 ( .A0(n858), .A1(n886), .B0(n249), .Y(n386) );
  NOR2X2 U505 ( .A(n777), .B(n886), .Y(pro_psw_in[5]) );
  OAI21X1 U506 ( .A0(n858), .A1(n885), .B0(n247), .Y(n387) );
  NOR2X2 U507 ( .A(n777), .B(n885), .Y(pro_psw_in[6]) );
  CLKBUFX6 U508 ( .A(n930), .Y(n791) );
  OAI32X2 U509 ( .A0(n861), .A1(decoder_next_status[1]), .A2(n866), .B0(n210), 
        .B1(n921), .Y(n425) );
  OAI32X2 U510 ( .A0(n862), .A1(decoder_next_status[0]), .A2(n861), .B0(n210), 
        .B1(n918), .Y(n426) );
  OAI32X2 U511 ( .A0(n862), .A1(n866), .A2(n861), .B0(n210), .B1(n920), .Y(
        n429) );
  OAI2B2X1 U512 ( .A1N(n204), .A0(decoder_next_status[0]), .B0(n210), .B1(n890), .Y(n427) );
  OAI21X1 U513 ( .A0(n210), .A1(n928), .B0(n216), .Y(n424) );
  AOI32X2 U514 ( .A0(n866), .A1(n862), .A2(n215), .B0(n217), .B1(n218), .Y(
        n216) );
  NAND2X2 U515 ( .A(n219), .B(n881), .Y(n218) );
  OAI221X2 U516 ( .A0(n198), .A1(n192), .B0(n475), .B1(n938), .C0(n476), .Y(
        n333) );
  NAND4X2 U517 ( .A(run_phase_init[1]), .B(n201), .C(n196), .D(n869), .Y(n476)
         );
  OAI221X2 U518 ( .A0(n197), .A1(n870), .B0(n198), .B1(n199), .C0(n200), .Y(
        n431) );
  NAND4X2 U519 ( .A(run_phase_init[0]), .B(n201), .C(n196), .D(n938), .Y(n200)
         );
  INVX2 U520 ( .A(n238), .Y(n889) );
  OAI21X4 U521 ( .A0(n135), .A1(n920), .B0(n917), .Y(n229) );
  CLKNAND2X2 U522 ( .A(n318), .B(n921), .Y(n317) );
  OAI21X4 U523 ( .A0(n198), .A1(n938), .B0(n475), .Y(n195) );
  NAND2X4 U524 ( .A(n217), .B(n881), .Y(n220) );
  CLKINVX2 U525 ( .A(n196), .Y(n913) );
  OAI22X1 U526 ( .A0(n217), .A1(n881), .B0(n219), .B1(n220), .Y(n422) );
  OA21X2 U527 ( .A0(n198), .A1(n870), .B0(n197), .Y(n475) );
  NOR2BX4 U528 ( .AN(n219), .B(n220), .Y(n206) );
  INVX4 U529 ( .A(n464), .Y(n925) );
  OR2X2 U530 ( .A(interupt[0]), .B(interupt[1]), .Y(n179) );
  NAND2X2 U531 ( .A(n870), .B(n478), .Y(n199) );
  NAND2X2 U532 ( .A(n869), .B(n938), .Y(n192) );
  NAND2X2 U533 ( .A(n229), .B(n918), .Y(n230) );
  NAND2BX2 U534 ( .AN(ram_read_done_nxt), .B(n797), .Y(read_en_nxt) );
  AND2X2 U535 ( .A(n478), .B(n913), .Y(n197) );
  INVX4 U536 ( .A(n697), .Y(n794) );
  INVX4 U537 ( .A(n697), .Y(n795) );
  INVX4 U538 ( .A(n697), .Y(n796) );
  CLKBUFX6 U539 ( .A(n930), .Y(n792) );
  NOR2X2 U540 ( .A(n777), .B(n882), .Y(pro_psw_in[0]) );
  OAI222X1 U541 ( .A0(n718), .A1(n922), .B0(n840), .B1(n226), .C0(n228), .C1(
        n227), .Y(n403) );
  AOI222X1 U542 ( .A0(n187), .A1(acc[0]), .B0(n714), .B1(n720), .C0(
        ram_data_register[0]), .C1(n715), .Y(n186) );
  OAI2BB1X1 U543 ( .A0N(program_counter_plus1[0]), .A1N(n754), .B0(n388), .Y(
        n363) );
  AOI22X2 U544 ( .A0(n231), .A1(rom_data_register[6]), .B0(n806), .B1(acc[6]), 
        .Y(n280) );
  AOI22X2 U545 ( .A0(n708), .A1(rom_data_register[5]), .B0(n806), .B1(acc[5]), 
        .Y(n285) );
  OAI22X1 U546 ( .A0(n905), .A1(n808), .B0(n902), .B1(n743), .Y(n287) );
  OAI222X1 U547 ( .A0(n807), .A1(n839), .B0(n846), .B1(n183), .C0(n857), .C1(
        n899), .Y(n368) );
  OAI211X2 U548 ( .A0(n888), .A1(n184), .B0(n315), .C0(n316), .Y(n367) );
  AOI222X1 U549 ( .A0(n187), .A1(acc[1]), .B0(pro_ans[1]), .B1(n714), .C0(
        ram_data_register[1]), .C1(n715), .Y(n316) );
  OAI2BB1X1 U550 ( .A0N(program_counter_plus1[1]), .A1N(n754), .B0(n412), .Y(
        n362) );
  AOI22X2 U551 ( .A0(n708), .A1(rom_data_register[4]), .B0(n806), .B1(acc[4]), 
        .Y(n290) );
  OAI22X1 U552 ( .A0(n892), .A1(n808), .B0(n901), .B1(n743), .Y(n292) );
  AOI22X2 U553 ( .A0(n708), .A1(rom_data_register[3]), .B0(n806), .B1(acc[3]), 
        .Y(n295) );
  AOI221X1 U554 ( .A0(n689), .A1(addr_register_out[3]), .B0(n805), .B1(
        ram_data_register[3]), .C0(n297), .Y(n296) );
  OAI22X1 U555 ( .A0(n906), .A1(n808), .B0(n924), .B1(n743), .Y(n297) );
  OAI222X1 U556 ( .A0(n807), .A1(n837), .B0(n848), .B1(n183), .C0(n857), .C1(
        n912), .Y(n372) );
  OAI222X1 U557 ( .A0(n807), .A1(n838), .B0(n847), .B1(n183), .C0(n857), .C1(
        n898), .Y(n370) );
  OAI211X2 U558 ( .A0(n887), .A1(n184), .B0(n303), .C0(n304), .Y(n369) );
  AOI222X1 U559 ( .A0(n187), .A1(acc[2]), .B0(pro_ans[2]), .B1(n714), .C0(
        ram_data_register[2]), .C1(n715), .Y(n304) );
  OAI211X2 U560 ( .A0(n909), .A1(n184), .B0(n298), .C0(n299), .Y(n371) );
  AOI222X1 U561 ( .A0(n187), .A1(acc[3]), .B0(pro_ans[3]), .B1(n714), .C0(
        ram_data_register[3]), .C1(n715), .Y(n299) );
  OAI2BB1X1 U562 ( .A0N(program_counter_plus1[3]), .A1N(n754), .B0(n441), .Y(
        n360) );
  OAI2BB1X1 U563 ( .A0N(program_counter_plus1[2]), .A1N(n754), .B0(n437), .Y(
        n361) );
  NOR2X6 U564 ( .A(status[3]), .B(status[2]), .Y(n314) );
  OAI2BB1X1 U565 ( .A0N(program_counter_plus1[4]), .A1N(n754), .B0(n442), .Y(
        n359) );
  AOI221X1 U566 ( .A0(n689), .A1(addr_register_out[1]), .B0(n746), .B1(
        ram_data_register[1]), .C0(n311), .Y(n310) );
  OAI22X1 U567 ( .A0(n908), .A1(n808), .B0(n900), .B1(n743), .Y(n311) );
  AOI22X2 U568 ( .A0(n708), .A1(rom_data_register[2]), .B0(n806), .B1(acc[2]), 
        .Y(n300) );
  AOI221X1 U569 ( .A0(n689), .A1(addr_register_out[2]), .B0(n805), .B1(
        ram_data_register[2]), .C0(n302), .Y(n301) );
  OAI2B2X1 U570 ( .A1N(program_counter[2]), .A0(n743), .B0(n907), .B1(n808), 
        .Y(n302) );
  OAI222X1 U571 ( .A0(n807), .A1(n836), .B0(n849), .B1(n183), .C0(n857), .C1(
        n897), .Y(n374) );
  OAI222X1 U572 ( .A0(n764), .A1(n835), .B0(n850), .B1(n183), .C0(n857), .C1(
        n896), .Y(n376) );
  OAI211X2 U573 ( .A0(n894), .A1(n184), .B0(n293), .C0(n294), .Y(n373) );
  AOI222X1 U574 ( .A0(n187), .A1(acc[4]), .B0(pro_ans[4]), .B1(n714), .C0(
        ram_data_register[4]), .C1(n715), .Y(n294) );
  OAI2BB1X1 U575 ( .A0N(program_counter_plus1[6]), .A1N(n754), .B0(n444), .Y(
        n357) );
  OAI2BB1X1 U576 ( .A0N(program_counter_plus1[5]), .A1N(n754), .B0(n443), .Y(
        n358) );
  INVX4 U577 ( .A(n261), .Y(n853) );
  AOI221X1 U578 ( .A0(n689), .A1(addr_register_out[0]), .B0(n746), .B1(
        ram_data_register[0]), .C0(n267), .Y(n264) );
  OAI222X1 U579 ( .A0(n764), .A1(n834), .B0(n851), .B1(n183), .C0(n857), .C1(
        n911), .Y(n378) );
  OAI222X1 U580 ( .A0(n764), .A1(n833), .B0(n852), .B1(n183), .C0(n857), .C1(
        n910), .Y(n380) );
  INVX2 U581 ( .A(n244), .Y(n841) );
  OAI211X2 U582 ( .A0(n891), .A1(n184), .B0(n278), .C0(n279), .Y(n379) );
  AOI222X1 U583 ( .A0(n187), .A1(acc[7]), .B0(pro_ans[7]), .B1(n714), .C0(
        ram_data_register[7]), .C1(n715), .Y(n279) );
  OAI211X2 U584 ( .A0(n886), .A1(n184), .B0(n288), .C0(n289), .Y(n375) );
  AOI222X1 U585 ( .A0(n187), .A1(acc[5]), .B0(pro_ans[5]), .B1(n714), .C0(
        ram_data_register[5]), .C1(n715), .Y(n289) );
  OAI211X2 U586 ( .A0(n885), .A1(n184), .B0(n283), .C0(n284), .Y(n377) );
  AOI222X1 U587 ( .A0(n187), .A1(acc[6]), .B0(pro_ans[6]), .B1(n714), .C0(
        ram_data_register[6]), .C1(n715), .Y(n284) );
  OAI2BB1X1 U588 ( .A0N(program_counter_plus1[7]), .A1N(n754), .B0(n445), .Y(
        n356) );
  OAI2BB2X2 U589 ( .B0(n846), .B1(n794), .A0N(data_out[1]), .A1N(n794), .Y(
        n418) );
  OAI2BB2X2 U590 ( .B0(n853), .B1(n795), .A0N(data_out[0]), .A1N(n795), .Y(
        n419) );
  OA21X2 U591 ( .A0(status[5]), .A1(n306), .B0(n676), .Y(n240) );
  AOI21X1 U592 ( .A0(n865), .A1(n864), .B0(n307), .Y(n306) );
  NAND2X3 U593 ( .A(status[5]), .B(n676), .Y(n238) );
  OAI21X4 U594 ( .A0(status[3]), .A1(n918), .B0(n791), .Y(n321) );
  OAI22X1 U595 ( .A0(n801), .A1(n930), .B0(n203), .B1(n883), .Y(n430) );
  AOI221X2 U596 ( .A0(decoder_next_status[0]), .A1(n204), .B0(n871), .B1(n205), 
        .C0(n206), .Y(n203) );
  INVX2 U597 ( .A(n209), .Y(n871) );
  OAI31X2 U598 ( .A0(n207), .A1(status[2]), .A2(status[1]), .B0(n208), .Y(n205) );
  OAI2BB1X1 U599 ( .A0N(addr_bus[0]), .A1N(n801), .B0(n465), .Y(n341) );
  OAI2BB1X1 U600 ( .A0N(addr_bus[2]), .A1N(n801), .B0(n469), .Y(n339) );
  OAI2BB1X1 U601 ( .A0N(addr_bus[3]), .A1N(n800), .B0(n470), .Y(n338) );
  OAI2BB1X1 U602 ( .A0N(addr_bus[7]), .A1N(n800), .B0(n474), .Y(n334) );
  OAI2BB1X1 U603 ( .A0N(addr_bus[6]), .A1N(n801), .B0(n473), .Y(n335) );
  NOR2X4 U604 ( .A(n791), .B(interupt_en), .Y(n464) );
  OAI22X1 U605 ( .A0(n211), .A1(n883), .B0(n212), .B1(n914), .Y(n428) );
  AOI21X1 U606 ( .A0(n213), .A1(n209), .B0(status[1]), .Y(n211) );
  AOI21X1 U607 ( .A0(decoder_next_status[1]), .A1(decoder_next_status[2]), 
        .B0(n883), .Y(n212) );
  OAI21X1 U608 ( .A0(status[2]), .A1(n207), .B0(n208), .Y(n213) );
  CLKINVX1 U609 ( .A(n313), .Y(n919) );
  CLKAND2X3 U610 ( .A(n318), .B(status[3]), .Y(n319) );
  OAI2BB2X1 U611 ( .B0(n477), .B1(n192), .A0N(n195), .A1N(run_phase[2]), .Y(
        n332) );
  AOI32X1 U612 ( .A0(n196), .A1(n929), .A2(run_phase_init[2]), .B0(n915), .B1(
        n937), .Y(n477) );
  OAI2BB1X1 U613 ( .A0N(addr_bus[1]), .A1N(n800), .B0(n468), .Y(n340) );
  OAI2BB1X1 U614 ( .A0N(n941), .A1N(n800), .B0(n472), .Y(n336) );
  INVX2 U615 ( .A(psw[7]), .Y(n891) );
  NOR3X6 U616 ( .A(n222), .B(status[6]), .C(n928), .Y(n217) );
  AOI33X1 U617 ( .A0(n207), .A1(status[6]), .A2(ram_write_done), .B0(status[4]), .B1(n921), .B2(rom_read_done), .Y(n480) );
  NOR2X4 U618 ( .A(run_phase[2]), .B(run_phase[3]), .Y(n201) );
  OAI32X2 U619 ( .A0(n179), .A1(n178), .A2(n940), .B0(n927), .B1(n939), .Y(
        n440) );
  NOR2X4 U620 ( .A(n794), .B(ram_write_done), .Y(ram_write_done_nxt) );
  XNOR2X1 U621 ( .A(n774), .B(interupt_en), .Y(n451) );
  XNOR2X1 U622 ( .A(nop_cnt[1]), .B(n220), .Y(n423) );
  OAI2BB2X2 U623 ( .B0(n799), .B1(n880), .A0N(addr_bus[8]), .A1N(n799), .Y(
        n354) );
  OAI2BB2X2 U624 ( .B0(n797), .B1(n934), .A0N(addr_bus[12]), .A1N(n799), .Y(
        n346) );
  OAI2BB2X2 U625 ( .B0(n797), .B1(n933), .A0N(addr_bus[11]), .A1N(n798), .Y(
        n348) );
  OAI2BB2X2 U626 ( .B0(n799), .B1(n932), .A0N(addr_bus[10]), .A1N(n799), .Y(
        n350) );
  OAI2BB2X2 U627 ( .B0(n798), .B1(n931), .A0N(addr_bus[9]), .A1N(n798), .Y(
        n352) );
  OAI2BB2X1 U628 ( .B0(interupt[0]), .B1(n181), .A0N(int_addr[3]), .A1N(n774), 
        .Y(n438) );
  AOI2B1X1 U629 ( .A1N(interupt[2]), .A0(interupt[3]), .B0(interupt[1]), .Y(
        n181) );
  OAI2BB2X1 U630 ( .B0(n180), .B1(n179), .A0N(int_addr[4]), .A1N(n774), .Y(
        n439) );
  NAND3X2 U631 ( .A(run_phase[0]), .B(n938), .C(n201), .Y(n209) );
  NAND3X2 U632 ( .A(n791), .B(n914), .C(status[3]), .Y(n323) );
  INVX2 U633 ( .A(status[6]), .Y(n890) );
  OAI32X2 U634 ( .A0(n192), .A1(run_phase[2]), .A2(n193), .B0(n194), .B1(n929), 
        .Y(n432) );
  AOI21X1 U635 ( .A0(run_phase[2]), .A1(n915), .B0(n195), .Y(n194) );
  AOI22X1 U636 ( .A0(n915), .A1(n929), .B0(run_phase_init[3]), .B1(n196), .Y(
        n193) );
  NAND4X1 U637 ( .A(status[6]), .B(n313), .C(n914), .D(n920), .Y(n322) );
  INVX2 U638 ( .A(n224), .Y(n926) );
  CLKBUFX6 U639 ( .A(n671), .Y(write_en) );
  BUFX5 U640 ( .A(n670), .Y(n831) );
  BUFX5 U641 ( .A(n670), .Y(read_en) );
  INVX2 U642 ( .A(status[0]), .Y(n928) );
  NAND2BX2 U643 ( .AN(n206), .B(n221), .Y(n421) );
  OAI21X1 U644 ( .A0(nop_cnt[1]), .A1(n220), .B0(nop_cnt[2]), .Y(n221) );
  INVX2 U645 ( .A(psw[0]), .Y(n882) );
endmodule


module Mcu ( reset, clk, tx_clk, cnt_0, cnt_1, inti0, inti1, rxd, txd );
  input reset, clk, tx_clk, cnt_0, cnt_1, inti0, inti1, rxd;
  output txd;
  wire   N85, N86, N87, N88, N89, N90, fifo_w_en, to0, to1, N93, N94, N95, N96,
         N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108,
         N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119,
         N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130,
         N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141,
         N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163,
         N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174,
         N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185,
         N186, N187, N188, N189, N190, N191, N192, N193, N194, N195, N196,
         N197, N198, N199, N200, N201, N202, N203, N204, N205, N206, N207,
         N208, N209, N210, N211, N212, N213, N214, N215, N216, N217, N218,
         N219, N220, N229, N230, N231, N232, N233, N234, N235, N236, read_en,
         memory_select, \data_from_cpu[7] , \data_from_cpu[6] ,
         \data_from_cpu[5] , \data_from_cpu[4] , \data_from_cpu[3] ,
         \data_from_cpu[2] , \data_from_cpu[1] , \data_from_cpu[0] , n397,
         n398, n399, n400, n401, n402, n403, n404, n410, n416, n417, n418,
         n419, n420, n421, n422, n423, n444, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n736, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n749, n750, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n783, n784, n785, n786, n787, n788, n789,
         n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, n800,
         n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811,
         n812, n813, n814, n815, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
         n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121,
         n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131,
         n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141,
         n1142, n1143, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1191, n1199, n1200,
         n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210,
         n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220,
         n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230,
         n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240,
         n1241, n1242, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251,
         n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261,
         n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271,
         n1272, n1273, n1274, n1275, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302,
         n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312,
         n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322,
         n1323, n1324, n1325, n1326, n1327, n1463, n1464, n1465, n1466, n1467,
         n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477,
         n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487,
         n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497,
         n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507,
         n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517,
         n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527,
         n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537,
         n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547,
         n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557,
         n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567,
         n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577,
         n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587,
         n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597,
         n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607,
         n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617,
         n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627,
         n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637,
         n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647,
         n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656;
  wire   [3:0] cnt_rst;
  wire   [7:0] tcon;
  wire   [7:0] r_data;
  wire   [7:0] tmod;
  wire   [7:0] th0_out;
  wire   [7:0] tl0_out;
  wire   [7:0] tl1;
  wire   [7:0] th1_out;
  wire   [7:0] tl1_out;
  wire   [7:0] p1;
  wire   [7:0] p2;
  wire   [7:0] sp;
  wire   [7:0] ie;
  wire   [7:0] scon;
  wire   [15:0] addr_bus;
  wire   [7:0] tcon_nxt;
  wire   [4:0] interupt;
  tri   [7:0] data_bus;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  AO22X4 U3 ( .A0(n1558), .A1(\data_from_cpu[6] ), .B0(n1554), .B1(data_bus[6]), .Y(\data_from_cpu[6] ) );
  AO22X4 U4 ( .A0(n1557), .A1(\data_from_cpu[5] ), .B0(data_bus[5]), .B1(n1555), .Y(\data_from_cpu[5] ) );
  AO22X4 U5 ( .A0(n1558), .A1(\data_from_cpu[4] ), .B0(data_bus[4]), .B1(n1555), .Y(\data_from_cpu[4] ) );
  AO22X4 U6 ( .A0(n1556), .A1(\data_from_cpu[3] ), .B0(data_bus[3]), .B1(n1555), .Y(\data_from_cpu[3] ) );
  AO22X4 U7 ( .A0(n1556), .A1(\data_from_cpu[2] ), .B0(data_bus[2]), .B1(n1555), .Y(\data_from_cpu[2] ) );
  AO22X4 U8 ( .A0(n1556), .A1(\data_from_cpu[1] ), .B0(data_bus[1]), .B1(n1555), .Y(\data_from_cpu[1] ) );
  AO22X4 U9 ( .A0(n1557), .A1(\data_from_cpu[0] ), .B0(data_bus[0]), .B1(n1554), .Y(\data_from_cpu[0] ) );
  AO22X4 U10 ( .A0(n1557), .A1(\data_from_cpu[7] ), .B0(data_bus[7]), .B1(
        n1555), .Y(\data_from_cpu[7] ) );
  NOR4BX4 U938 ( .AN(n1259), .B(n1583), .C(n1270), .D(n1571), .Y(n1268) );
  OAI2BB1X4 U993 ( .A0N(n1216), .A1N(n1281), .B0(n1595), .Y(n1280) );
  NOR4X8 U1003 ( .A(n1219), .B(n1284), .C(n1591), .D(n1590), .Y(n1271) );
  CLKNAND2X12 U1029 ( .A(\data_from_cpu[6] ), .B(n1553), .Y(n1091) );
  CLKNAND2X12 U1031 ( .A(\data_from_cpu[5] ), .B(n1553), .Y(n1092) );
  CLKNAND2X12 U1033 ( .A(\data_from_cpu[4] ), .B(n1553), .Y(n1090) );
  CLKNAND2X12 U1035 ( .A(\data_from_cpu[3] ), .B(n1553), .Y(n1087) );
  CLKNAND2X12 U1037 ( .A(\data_from_cpu[2] ), .B(n1553), .Y(n1088) );
  CLKNAND2X12 U1039 ( .A(\data_from_cpu[1] ), .B(n1553), .Y(n1089) );
  CLKNAND2X12 U1042 ( .A(\data_from_cpu[0] ), .B(n1553), .Y(n1086) );
  CLKNAND2X12 U1051 ( .A(\data_from_cpu[7] ), .B(n1554), .Y(n1093) );
  AND3X6 U1052 ( .A(n1470), .B(n1554), .C(n1096), .Y(n1184) );
  OAI221X4 U1062 ( .A0(n1301), .A1(n1603), .B0(n1297), .B1(n1600), .C0(n1302), 
        .Y(n1284) );
  NOR3X8 U1071 ( .A(n1582), .B(n1583), .C(n1270), .Y(n1245) );
  NOR2X8 U1079 ( .A(addr_bus[4]), .B(addr_bus[5]), .Y(n1297) );
  NOR3X8 U1081 ( .A(addr_bus[0]), .B(addr_bus[3]), .C(n1305), .Y(n1296) );
  NOR3X8 U1086 ( .A(n1305), .B(addr_bus[0]), .C(n1599), .Y(n1299) );
  Uart_FIFO_DEPTH16_FIFO_WIDTH8_ADDR_WIDTH4 Uart_ins ( .fifo_w_clk(clk), 
        .tx_clk(tx_clk), .rst_n(n1549), .fifo_w_en(n1553), .fifo_w_data({n1317, 
        n1316, n1315, n419, n422, n421, n420, n423}), .rxd_int_in(tcon[4]), 
        .rxd(rxd), .is_full(tcon_nxt[5]), .rxd_int(tcon_nxt[4]), .r_data(
        r_data), .txd(txd) );
  Timer_0 Timer_ins_0 ( .clk(clk), .rst_n(n1549), .cnt_sig(cnt_0), .t_s(
        tcon[6]), .tmod({tmod[2:1], n1325}), .th({n1611, n1627, n1626, n1625, 
        n1624, n1623, n1622, n1621}), .tl({n1607, n1645, n1646, n1324, n1650, 
        n1649, n1648, n1647}), .th_nxt(th0_out), .tl_nxt(tl0_out), .t_o(to0)
         );
  Timer_1 Timer_ins_1 ( .clk(clk), .rst_n(n1549), .cnt_sig(cnt_1), .t_s(
        tcon[7]), .tmod({tmod[6:5], n1326}), .th({n1610, n1620, n1619, n1618, 
        n1617, n1616, n1615, n1614}), .tl({tl1[7:5], n1327, tl1[3], n1652, 
        n1651, n1644}), .th_nxt(th1_out), .tl_nxt(tl1_out), .t_o(to1) );
  IntControl IntControl_ins ( .clk(clk), .rst_n(n1561), .IE(ie), .TCON(tcon), 
        .SCON(scon[1:0]), .interupt(interupt) );
  CPU cpu ( .clk(clk), .rst_n(n1561), .data_bus(data_bus), .addr_bus({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, addr_bus[7:0]}), 
        .interupt(interupt), .read_en(read_en), .write_en(fifo_w_en), 
        .memory_select(memory_select) );
  EDFFX2 rst_n_reg ( .D(reset), .E(N90), .CK(clk), .Q(n1605) );
  TBUFX2 \data_bus_tri[6]  ( .A(n398), .OE(n1551), .Y(data_bus[6]) );
  TBUFX2 \data_bus_tri[0]  ( .A(n404), .OE(n1552), .Y(data_bus[0]) );
  TBUFX2 \data_bus_tri[2]  ( .A(n402), .OE(n1552), .Y(data_bus[2]) );
  TBUFX2 \data_bus_tri[4]  ( .A(n400), .OE(n1552), .Y(data_bus[4]) );
  TBUFX2 \data_bus_tri[3]  ( .A(n401), .OE(n1552), .Y(data_bus[3]) );
  TBUFX2 \data_bus_tri[7]  ( .A(n397), .OE(n1552), .Y(data_bus[7]) );
  TBUFX2 \data_bus_tri[5]  ( .A(n399), .OE(n1552), .Y(data_bus[5]) );
  TBUFX2 \data_bus_tri[1]  ( .A(n403), .OE(n1552), .Y(data_bus[1]) );
  DFFTRX2 \tl1_reg[4]  ( .D(1'b1), .RN(N193), .CK(clk), .QN(n1311) );
  DFFTRX2 \tmod_reg[4]  ( .D(1'b1), .RN(N177), .CK(clk), .QN(n444) );
  DFFTRX2 \tmod_reg[0]  ( .D(1'b1), .RN(N173), .CK(clk), .QN(n410) );
  DFFTRX2 \tl0_reg[4]  ( .D(1'b1), .RN(N185), .CK(clk), .QN(n1312) );
  DFFTRX4 \tl1_reg[2]  ( .D(1'b1), .RN(N191), .CK(clk), .Q(n1652) );
  DFFTRX4 \tl0_reg[2]  ( .D(1'b1), .RN(N183), .CK(clk), .Q(n1649) );
  DFFTRX4 \tl1_reg[0]  ( .D(1'b1), .RN(N189), .CK(clk), .Q(n1644) );
  DFFTRX4 \tl0_reg[6]  ( .D(1'b1), .RN(N187), .CK(clk), .Q(n1645), .QN(n749)
         );
  DFFTRX4 \th1_reg[0]  ( .D(1'b1), .RN(N205), .CK(clk), .Q(n1614) );
  DFFTRX4 \th1_reg[2]  ( .D(1'b1), .RN(N207), .CK(clk), .Q(n1616) );
  DFFTRX4 \th1_reg[4]  ( .D(1'b1), .RN(N209), .CK(clk), .Q(n1618) );
  DFFTRX4 \th0_reg[0]  ( .D(1'b1), .RN(N197), .CK(clk), .Q(n1621) );
  DFFTRX4 \th0_reg[4]  ( .D(1'b1), .RN(N201), .CK(clk), .Q(n1625) );
  DFFTRX4 \th0_reg[2]  ( .D(1'b1), .RN(N199), .CK(clk), .Q(n1623) );
  DFFTRX4 \tl0_reg[0]  ( .D(1'b1), .RN(N181), .CK(clk), .Q(n1647) );
  DFFTRX4 \tl0_reg[3]  ( .D(1'b1), .RN(N184), .CK(clk), .Q(n1650), .QN(n799)
         );
  DFFTRX4 \tmod_reg[1]  ( .D(1'b1), .RN(N174), .CK(clk), .Q(tmod[1]) );
  DFFTRX4 \tl1_reg[6]  ( .D(1'b1), .RN(N195), .CK(clk), .Q(tl1[6]), .QN(n746)
         );
  DFFTRX4 \tl1_reg[1]  ( .D(1'b1), .RN(N190), .CK(clk), .Q(n1651) );
  DFFTRX4 \tmod_reg[2]  ( .D(1'b1), .RN(N175), .CK(clk), .Q(tmod[2]) );
  DFFTRX4 \tl0_reg[1]  ( .D(1'b1), .RN(N182), .CK(clk), .Q(n1648) );
  DFFTRX4 \tl1_reg[3]  ( .D(1'b1), .RN(N192), .CK(clk), .Q(tl1[3]), .QN(n798)
         );
  DFFTRX4 \th1_reg[6]  ( .D(1'b1), .RN(N211), .CK(clk), .Q(n1620), .QN(n738)
         );
  DFFTRX4 \th0_reg[6]  ( .D(1'b1), .RN(N203), .CK(clk), .Q(n1627), .QN(n837)
         );
  DFFTRX4 \th1_reg[1]  ( .D(1'b1), .RN(N206), .CK(clk), .Q(n1615) );
  DFFTRX4 \th0_reg[1]  ( .D(1'b1), .RN(N198), .CK(clk), .Q(n1622) );
  EDFFX4 \cnt_rst_reg[1]  ( .D(N87), .E(N85), .CK(clk), .Q(cnt_rst[1]) );
  DFFTRX2 \tmod_reg[5]  ( .D(1'b1), .RN(N178), .CK(clk), .Q(tmod[5]), .QN(
        n1609) );
  DFFTRX2 \tl0_reg[5]  ( .D(1'b1), .RN(N186), .CK(clk), .Q(n1646), .QN(n832)
         );
  DFFTRX2 \tl0_reg[7]  ( .D(1'b1), .RN(N188), .CK(clk), .Q(n1607), .QN(n750)
         );
  DFFTRX2 \tmod_reg[6]  ( .D(1'b1), .RN(N179), .CK(clk), .Q(tmod[6]), .QN(
        n1612) );
  DFFTRX2 \th0_reg[3]  ( .D(1'b1), .RN(N200), .CK(clk), .Q(n1624), .QN(n797)
         );
  DFFTRX2 \th1_reg[3]  ( .D(1'b1), .RN(N208), .CK(clk), .Q(n1617), .QN(n796)
         );
  DFFTRX2 \th0_reg[5]  ( .D(1'b1), .RN(N202), .CK(clk), .Q(n1626), .QN(n752)
         );
  DFFTRX2 \th1_reg[5]  ( .D(1'b1), .RN(N210), .CK(clk), .Q(n1619), .QN(n830)
         );
  DFFTRX2 \tcon_reg[6]  ( .D(1'b1), .RN(N171), .CK(clk), .Q(tcon[6]), .QN(n747) );
  DFFTRX2 \th1_reg[7]  ( .D(1'b1), .RN(N212), .CK(clk), .Q(n1610), .QN(n842)
         );
  DFFTRX2 \th0_reg[7]  ( .D(1'b1), .RN(N204), .CK(clk), .Q(n1611), .QN(n838)
         );
  EDFFX4 \cnt_rst_reg[0]  ( .D(N86), .E(N85), .CK(clk), .Q(cnt_rst[0]) );
  DFFTRX2 \tl1_reg[5]  ( .D(1'b1), .RN(N194), .CK(clk), .Q(tl1[5]), .QN(n831)
         );
  DFFTRX2 \tl1_reg[7]  ( .D(1'b1), .RN(N196), .CK(clk), .Q(tl1[7]), .QN(n736)
         );
  DFFTRX2 \scon_reg[1]  ( .D(1'b1), .RN(N214), .CK(clk), .Q(scon[1]), .QN(n756) );
  DFFTRX2 \tcon_reg[7]  ( .D(1'b1), .RN(N172), .CK(clk), .Q(tcon[7]), .QN(n734) );
  DFFTRX2 \p3_reg[7]  ( .D(1'b1), .RN(N124), .CK(clk), .QN(n843) );
  DFFTRX2 \p3_reg[6]  ( .D(1'b1), .RN(N123), .CK(clk), .QN(n839) );
  DFFTRX2 \p3_reg[5]  ( .D(1'b1), .RN(N122), .CK(clk), .QN(n834) );
  DFFTRX2 \p3_reg[3]  ( .D(1'b1), .RN(N120), .CK(clk), .QN(n801) );
  DFFTRX2 \p0_reg[7]  ( .D(1'b1), .RN(N100), .CK(clk), .QN(n846) );
  DFFTRX2 \p0_reg[6]  ( .D(1'b1), .RN(N99), .CK(clk), .QN(n745) );
  DFFTRX2 \p0_reg[5]  ( .D(1'b1), .RN(N98), .CK(clk), .QN(n829) );
  DFFTRX2 \p0_reg[4]  ( .D(1'b1), .RN(N97), .CK(clk), .QN(n815) );
  DFFTRX2 \p0_reg[3]  ( .D(1'b1), .RN(N96), .CK(clk), .QN(n795) );
  DFFTRX2 \p0_reg[2]  ( .D(1'b1), .RN(N95), .CK(clk), .QN(n778) );
  DFFTRX2 \p0_reg[1]  ( .D(1'b1), .RN(N94), .CK(clk), .QN(n761) );
  DFFTRX2 \p0_reg[0]  ( .D(1'b1), .RN(N93), .CK(clk), .QN(n722) );
  DFFTRX2 \p3_reg[4]  ( .D(1'b1), .RN(N121), .CK(clk), .QN(n820) );
  DFFTRX2 \p3_reg[2]  ( .D(1'b1), .RN(N119), .CK(clk), .QN(n785) );
  DFFTRX2 \p3_reg[1]  ( .D(1'b1), .RN(N118), .CK(clk), .QN(n768) );
  DFFTRX2 \p3_reg[0]  ( .D(1'b1), .RN(N117), .CK(clk), .QN(n848) );
  DFFTRX2 \tcon_reg[3]  ( .D(1'b1), .RN(N168), .CK(clk), .Q(tcon[3]), .QN(n800) );
  DFFTRX2 \ie_reg[2]  ( .D(1'b1), .RN(N151), .CK(clk), .Q(ie[2]), .QN(n775) );
  DFFTRX2 \scon_reg[0]  ( .D(1'b1), .RN(N213), .CK(clk), .Q(scon[0]), .QN(n720) );
  DFFTRX2 \sp_reg[4]  ( .D(1'b1), .RN(N129), .CK(clk), .Q(sp[4]) );
  DFFTRX2 \pcon_reg[3]  ( .D(1'b1), .RN(N160), .CK(clk), .QN(n791) );
  DFFTRX2 \pcon_reg[5]  ( .D(1'b1), .RN(N162), .CK(clk), .QN(n825) );
  DFFTRX2 \pcon_reg[2]  ( .D(1'b1), .RN(N159), .CK(clk), .QN(n774) );
  DFFTRX2 \pcon_reg[1]  ( .D(1'b1), .RN(N158), .CK(clk), .QN(n757) );
  DFFTRX2 \pcon_reg[0]  ( .D(1'b1), .RN(N157), .CK(clk), .QN(n724) );
  DFFTRX2 \pcon_reg[6]  ( .D(1'b1), .RN(N163), .CK(clk), .QN(n741) );
  DFFTRX2 \pcon_reg[4]  ( .D(1'b1), .RN(N161), .CK(clk), .QN(n811) );
  DFFTRX2 \pcon_reg[7]  ( .D(1'b1), .RN(N164), .CK(clk), .QN(n730) );
  DFFTRX2 \sbuf_reg[4]  ( .D(r_data[4]), .RN(n1550), .CK(clk), .QN(n804) );
  DFFTRX2 \sbuf_reg[7]  ( .D(r_data[7]), .RN(n1566), .CK(clk), .QN(n807) );
  DFFTRX2 \sbuf_reg[6]  ( .D(r_data[6]), .RN(n1566), .CK(clk), .QN(n806) );
  DFFTRX2 \sbuf_reg[5]  ( .D(r_data[5]), .RN(n1566), .CK(clk), .QN(n805) );
  DFFTRX2 \sbuf_reg[3]  ( .D(r_data[3]), .RN(n1566), .CK(clk), .QN(n788) );
  DFFTRX2 \sbuf_reg[2]  ( .D(r_data[2]), .RN(n1566), .CK(clk), .QN(n771) );
  DFFTRX2 \sbuf_reg[1]  ( .D(r_data[1]), .RN(n1566), .CK(clk), .QN(n754) );
  DFFTRX2 \sbuf_reg[0]  ( .D(r_data[0]), .RN(n1566), .CK(clk), .QN(n753) );
  DFFTRX2 \sp_reg[3]  ( .D(1'b1), .RN(N128), .CK(clk), .QN(n1629) );
  DFFTRX2 \sp_reg[5]  ( .D(1'b1), .RN(N130), .CK(clk), .QN(n1656) );
  DFFTRX2 \sp_reg[6]  ( .D(1'b1), .RN(N131), .CK(clk), .QN(n1655) );
  DFFTRX2 \sp_reg[7]  ( .D(1'b1), .RN(N132), .CK(clk), .QN(n1628) );
  DFFTRX2 \dph_reg[2]  ( .D(1'b1), .RN(N143), .CK(clk), .QN(n776) );
  DFFTRX2 \dph_reg[1]  ( .D(1'b1), .RN(N142), .CK(clk), .QN(n759) );
  DFFTRX2 \dph_reg[0]  ( .D(1'b1), .RN(N141), .CK(clk), .QN(n726) );
  DFFTRX2 \dph_reg[7]  ( .D(1'b1), .RN(N148), .CK(clk), .QN(n732) );
  DFFTRX2 \dph_reg[6]  ( .D(1'b1), .RN(N147), .CK(clk), .QN(n743) );
  DFFTRX2 \dph_reg[5]  ( .D(1'b1), .RN(N146), .CK(clk), .QN(n827) );
  DFFTRX2 \dph_reg[4]  ( .D(1'b1), .RN(N145), .CK(clk), .QN(n813) );
  DFFTRX2 \dph_reg[3]  ( .D(1'b1), .RN(N144), .CK(clk), .QN(n793) );
  DFFTRX2 \ip_reg[7]  ( .D(1'b1), .RN(N236), .CK(clk), .QN(n728) );
  DFFTRX2 \ip_reg[6]  ( .D(1'b1), .RN(N235), .CK(clk), .QN(n739) );
  DFFTRX2 \ip_reg[5]  ( .D(1'b1), .RN(N234), .CK(clk), .QN(n823) );
  DFFTRX2 \ip_reg[3]  ( .D(1'b1), .RN(N232), .CK(clk), .QN(n789) );
  DFFTRX2 \ie_reg[7]  ( .D(1'b1), .RN(N156), .CK(clk), .Q(ie[7]), .QN(n731) );
  DFFTRX2 \ie_reg[6]  ( .D(1'b1), .RN(N155), .CK(clk), .Q(ie[6]), .QN(n742) );
  DFFTRX2 \ie_reg[5]  ( .D(1'b1), .RN(N154), .CK(clk), .Q(ie[5]), .QN(n826) );
  DFFTRX2 \ie_reg[3]  ( .D(1'b1), .RN(N152), .CK(clk), .Q(ie[3]), .QN(n792) );
  DFFTRX2 \tcon_reg[1]  ( .D(1'b1), .RN(N166), .CK(clk), .Q(tcon[1]), .QN(n766) );
  DFFTRX2 \tmod_reg[3]  ( .D(1'b1), .RN(N176), .CK(clk), .QN(n1653) );
  DFFTRX2 \tmod_reg[7]  ( .D(1'b1), .RN(N180), .CK(clk), .QN(n1654) );
  DFFTRX2 \ip_reg[1]  ( .D(1'b1), .RN(N230), .CK(clk), .QN(n755) );
  DFFTRX2 \ip_reg[2]  ( .D(1'b1), .RN(N231), .CK(clk), .QN(n772) );
  DFFTRX2 \ip_reg[0]  ( .D(1'b1), .RN(N229), .CK(clk), .QN(n723) );
  DFFTRX2 \ip_reg[4]  ( .D(1'b1), .RN(N233), .CK(clk), .QN(n809) );
  DFFTRX2 \ie_reg[1]  ( .D(1'b1), .RN(N150), .CK(clk), .Q(ie[1]), .QN(n758) );
  DFFTRX2 \ie_reg[0]  ( .D(1'b1), .RN(N149), .CK(clk), .Q(ie[0]), .QN(n725) );
  DFFTRX2 \ie_reg[4]  ( .D(1'b1), .RN(N153), .CK(clk), .Q(ie[4]), .QN(n812) );
  DFFTRX2 \tcon_reg[5]  ( .D(1'b1), .RN(N170), .CK(clk), .Q(tcon[5]), .QN(n833) );
  DFFTRX2 \tcon_reg[2]  ( .D(1'b1), .RN(N167), .CK(clk), .Q(tcon[2]), .QN(n783) );
  DFFTRX2 \tcon_reg[0]  ( .D(1'b1), .RN(N165), .CK(clk), .Q(tcon[0]), .QN(n721) );
  DFFTRX2 \p1_reg[6]  ( .D(1'b1), .RN(N107), .CK(clk), .Q(p1[6]), .QN(n841) );
  DFFTRX2 \p1_reg[5]  ( .D(1'b1), .RN(N106), .CK(clk), .Q(p1[5]), .QN(n836) );
  DFFTRX2 \p1_reg[4]  ( .D(1'b1), .RN(N105), .CK(clk), .Q(p1[4]), .QN(n822) );
  DFFTRX2 \p1_reg[3]  ( .D(1'b1), .RN(N104), .CK(clk), .Q(p1[3]), .QN(n803) );
  DFFTRX2 \p1_reg[2]  ( .D(1'b1), .RN(N103), .CK(clk), .Q(p1[2]), .QN(n787) );
  DFFTRX2 \p1_reg[1]  ( .D(1'b1), .RN(N102), .CK(clk), .Q(p1[1]), .QN(n770) );
  DFFTRX2 \p1_reg[7]  ( .D(1'b1), .RN(N108), .CK(clk), .Q(p1[7]), .QN(n845) );
  DFFTRX2 \p1_reg[0]  ( .D(1'b1), .RN(N101), .CK(clk), .Q(p1[0]), .QN(n850) );
  DFFTRX2 \sp_reg[2]  ( .D(1'b1), .RN(N127), .CK(clk), .Q(sp[2]), .QN(n784) );
  DFFTRX2 \sp_reg[1]  ( .D(1'b1), .RN(N126), .CK(clk), .Q(sp[1]), .QN(n767) );
  DFFTRX2 \sp_reg[0]  ( .D(1'b1), .RN(N125), .CK(clk), .Q(sp[0]), .QN(n847) );
  DFFTRX2 \dpl_reg[3]  ( .D(1'b1), .RN(N136), .CK(clk), .Q(n1632), .QN(n794)
         );
  DFFTRX2 \dpl_reg[5]  ( .D(1'b1), .RN(N138), .CK(clk), .Q(n1640), .QN(n828)
         );
  DFFTRX2 \dpl_reg[2]  ( .D(1'b1), .RN(N135), .CK(clk), .Q(n1636), .QN(n777)
         );
  DFFTRX2 \dpl_reg[6]  ( .D(1'b1), .RN(N139), .CK(clk), .Q(n1634), .QN(n744)
         );
  DFFTRX2 \dpl_reg[7]  ( .D(1'b1), .RN(N140), .CK(clk), .Q(n1630), .QN(n733)
         );
  DFFTRX2 \dpl_reg[4]  ( .D(1'b1), .RN(N137), .CK(clk), .Q(n1642), .QN(n814)
         );
  DFFTRX2 \dpl_reg[1]  ( .D(1'b1), .RN(N134), .CK(clk), .Q(n1638), .QN(n760)
         );
  DFFTRX2 \dpl_reg[0]  ( .D(1'b1), .RN(N133), .CK(clk), .Q(n1639), .QN(n727)
         );
  DFFTRX2 \scon_reg[2]  ( .D(1'b1), .RN(N215), .CK(clk), .Q(n1637), .QN(n773)
         );
  DFFTRX2 \scon_reg[7]  ( .D(1'b1), .RN(N220), .CK(clk), .Q(n1631), .QN(n729)
         );
  DFFTRX2 \scon_reg[6]  ( .D(1'b1), .RN(N219), .CK(clk), .Q(n1635), .QN(n740)
         );
  DFFTRX2 \scon_reg[5]  ( .D(1'b1), .RN(N218), .CK(clk), .Q(n1641), .QN(n824)
         );
  DFFTRX2 \scon_reg[4]  ( .D(1'b1), .RN(N217), .CK(clk), .Q(n1643), .QN(n810)
         );
  DFFTRX2 \scon_reg[3]  ( .D(1'b1), .RN(N216), .CK(clk), .Q(n1633), .QN(n790)
         );
  DFFTRX2 \p2_reg[7]  ( .D(1'b1), .RN(N116), .CK(clk), .Q(p2[7]), .QN(n844) );
  DFFTRX2 \p2_reg[6]  ( .D(1'b1), .RN(N115), .CK(clk), .Q(p2[6]), .QN(n840) );
  DFFTRX2 \p2_reg[5]  ( .D(1'b1), .RN(N114), .CK(clk), .Q(p2[5]), .QN(n835) );
  DFFTRX2 \p2_reg[4]  ( .D(1'b1), .RN(N113), .CK(clk), .Q(p2[4]), .QN(n821) );
  DFFTRX2 \p2_reg[3]  ( .D(1'b1), .RN(N112), .CK(clk), .Q(p2[3]), .QN(n802) );
  DFFTRX2 \p2_reg[2]  ( .D(1'b1), .RN(N111), .CK(clk), .Q(p2[2]), .QN(n786) );
  DFFTRX2 \p2_reg[1]  ( .D(1'b1), .RN(N110), .CK(clk), .Q(p2[1]), .QN(n769) );
  DFFTRX2 \p2_reg[0]  ( .D(1'b1), .RN(N109), .CK(clk), .Q(p2[0]), .QN(n849) );
  DFFTRX2 \tcon_reg[4]  ( .D(1'b1), .RN(N169), .CK(clk), .Q(tcon[4]), .QN(n808) );
  EDFFX2 \cnt_rst_reg[2]  ( .D(N88), .E(N85), .CK(clk), .Q(cnt_rst[2]), .QN(
        n718) );
  EDFFX2 \cnt_rst_reg[3]  ( .D(N89), .E(N85), .CK(clk), .Q(cnt_rst[3]), .QN(
        n719) );
  OR2X2 U1187 ( .A(n1307), .B(n1308), .Y(n1473) );
  NAND2X2 U1188 ( .A(n1245), .B(n1524), .Y(n1307) );
  NAND2X2 U1189 ( .A(n1474), .B(n1475), .Y(n1308) );
  NOR2X6 U1190 ( .A(n1604), .B(addr_bus[3]), .Y(n1303) );
  NAND3X2 U1191 ( .A(n1271), .B(n1259), .C(n1279), .Y(n1273) );
  NOR3X2 U1192 ( .A(n1598), .B(n1558), .C(n1582), .Y(n1279) );
  NAND3X2 U1193 ( .A(n1216), .B(n1484), .C(n1275), .Y(n1199) );
  NAND2X2 U1194 ( .A(n1521), .B(n1522), .Y(n1270) );
  AND3X2 U1195 ( .A(addr_bus[2]), .B(addr_bus[0]), .C(n1493), .Y(n1507) );
  BUFX5 U1196 ( .A(n1139), .Y(n1525) );
  INVX2 U1197 ( .A(n1232), .Y(n1572) );
  INVX4 U1198 ( .A(n1507), .Y(n1529) );
  OR2X2 U1199 ( .A(n1589), .B(n1587), .Y(n1309) );
  OR2X6 U1200 ( .A(n1487), .B(n1218), .Y(n1310) );
  OR2X2 U1201 ( .A(n1588), .B(n1586), .Y(n1313) );
  OR2X2 U1202 ( .A(n1273), .B(n1477), .Y(n1314) );
  BUFX2 U1203 ( .A(n417), .Y(n1315) );
  BUFX2 U1204 ( .A(n418), .Y(n1316) );
  BUFX2 U1205 ( .A(n416), .Y(n1317) );
  BUFX5 U1206 ( .A(n1605), .Y(n1549) );
  CLKBUFX4 U1207 ( .A(n1605), .Y(n1561) );
  CLKBUFX4 U1208 ( .A(n1605), .Y(n1550) );
  INVX2 U1209 ( .A(n1247), .Y(n1318) );
  INVX5 U1210 ( .A(n1318), .Y(n1319) );
  NOR2BX1 U1211 ( .AN(n1220), .B(n1524), .Y(n1247) );
  INVX2 U1212 ( .A(n1222), .Y(n1320) );
  INVX5 U1213 ( .A(n1320), .Y(n1321) );
  NOR2BX1 U1214 ( .AN(n1220), .B(n1525), .Y(n1222) );
  INVX2 U1215 ( .A(n1207), .Y(n1322) );
  INVX5 U1216 ( .A(n1322), .Y(n1323) );
  NOR2BX1 U1217 ( .AN(n1220), .B(n1529), .Y(n1207) );
  AOI22X1 U1218 ( .A0(tl0_out[4]), .A1(n1319), .B0(n1505), .B1(n1324), .Y(
        n1251) );
  NAND2X2 U1219 ( .A(n1245), .B(n1259), .Y(n1258) );
  AOI221X1 U1220 ( .A0(n1585), .A1(n1642), .B0(n1567), .B1(n1643), .C0(n1154), 
        .Y(n1148) );
  AOI221X1 U1221 ( .A0(n1477), .A1(n1630), .B0(n1468), .B1(n1631), .C0(n1181), 
        .Y(n1175) );
  AOI221X1 U1222 ( .A0(n1585), .A1(n1634), .B0(n1567), .B1(n1635), .C0(n1172), 
        .Y(n1166) );
  AOI221X1 U1223 ( .A0(n1585), .A1(n1636), .B0(n1567), .B1(n1637), .C0(n1130), 
        .Y(n1124) );
  AOI221X1 U1224 ( .A0(n1585), .A1(n1640), .B0(n1567), .B1(n1641), .C0(n1163), 
        .Y(n1157) );
  AOI221X1 U1225 ( .A0(n1477), .A1(n1632), .B0(n1567), .B1(n1633), .C0(n1145), 
        .Y(n1133) );
  AOI221X1 U1226 ( .A0(p1[0]), .A1(n1573), .B0(p2[0]), .B1(n1594), .C0(n1112), 
        .Y(n1097) );
  AOI221X1 U1227 ( .A0(p1[7]), .A1(n1483), .B0(p2[7]), .B1(n1496), .C0(n1182), 
        .Y(n1174) );
  AOI221X1 U1228 ( .A0(p1[1]), .A1(n1573), .B0(p2[1]), .B1(n1594), .C0(n1122), 
        .Y(n1114) );
  AOI221X1 U1229 ( .A0(p1[2]), .A1(n1573), .B0(p2[2]), .B1(n1594), .C0(n1131), 
        .Y(n1123) );
  AOI221X1 U1230 ( .A0(p1[3]), .A1(n1573), .B0(p2[3]), .B1(n1594), .C0(n1146), 
        .Y(n1132) );
  AOI221X1 U1231 ( .A0(p1[4]), .A1(n1483), .B0(p2[4]), .B1(n1496), .C0(n1155), 
        .Y(n1147) );
  AOI221X1 U1232 ( .A0(p1[5]), .A1(n1483), .B0(p2[5]), .B1(n1594), .C0(n1164), 
        .Y(n1156) );
  AOI221X1 U1233 ( .A0(p1[6]), .A1(n1573), .B0(p2[6]), .B1(n1594), .C0(n1173), 
        .Y(n1165) );
  AOI221X1 U1234 ( .A0(n1585), .A1(n1639), .B0(n1567), .B1(scon[0]), .C0(n1108), .Y(n1098) );
  AOI221X1 U1235 ( .A0(n1585), .A1(n1638), .B0(n1567), .B1(scon[1]), .C0(n1121), .Y(n1115) );
  AOI22X1 U1236 ( .A0(th0_out[7]), .A1(n1321), .B0(n1486), .B1(n1611), .Y(
        n1221) );
  AOI22X1 U1237 ( .A0(th1_out[7]), .A1(n1323), .B0(n1494), .B1(n1610), .Y(
        n1206) );
  AOI22X1 U1238 ( .A0(th1_out[5]), .A1(n1323), .B0(n1494), .B1(n1619), .Y(
        n1210) );
  AOI22X1 U1239 ( .A0(th0_out[5]), .A1(n1321), .B0(n1486), .B1(n1626), .Y(
        n1225) );
  AOI22X1 U1240 ( .A0(th1_out[3]), .A1(n1323), .B0(n1494), .B1(n1617), .Y(
        n1212) );
  AOI22X1 U1241 ( .A0(th0_out[3]), .A1(n1321), .B0(n1486), .B1(n1624), .Y(
        n1227) );
  AOI22X1 U1242 ( .A0(tl0_out[7]), .A1(n1319), .B0(n1505), .B1(n1607), .Y(
        n1246) );
  AOI22X1 U1243 ( .A0(tl0_out[5]), .A1(n1319), .B0(n1505), .B1(n1646), .Y(
        n1250) );
  AOI22X1 U1244 ( .A0(th0_out[1]), .A1(n1321), .B0(n1486), .B1(n1622), .Y(
        n1229) );
  AOI22X1 U1245 ( .A0(th1_out[1]), .A1(n1323), .B0(n1494), .B1(n1615), .Y(
        n1214) );
  AOI22X1 U1246 ( .A0(th0_out[6]), .A1(n1321), .B0(n1486), .B1(n1627), .Y(
        n1224) );
  AOI22X1 U1247 ( .A0(th1_out[6]), .A1(n1323), .B0(n1494), .B1(n1620), .Y(
        n1209) );
  AOI22X1 U1248 ( .A0(tl0_out[1]), .A1(n1319), .B0(n1505), .B1(n1648), .Y(
        n1254) );
  AOI22X1 U1249 ( .A0(n1586), .A1(n1648), .B0(n1589), .B1(n1622), .Y(n1117) );
  AOI22X1 U1250 ( .A0(sp[1]), .A1(n1588), .B0(n1587), .B1(n1651), .Y(n1118) );
  AOI22X1 U1251 ( .A0(n1591), .A1(n1615), .B0(tmod[1]), .B1(n1590), .Y(n1119)
         );
  AOI22X1 U1252 ( .A0(tl0_out[3]), .A1(n1319), .B0(n1505), .B1(n1650), .Y(
        n1252) );
  AOI22X1 U1253 ( .A0(tl0_out[0]), .A1(n1319), .B0(n1505), .B1(n1647), .Y(
        n1255) );
  AOI22X1 U1254 ( .A0(th0_out[2]), .A1(n1321), .B0(n1486), .B1(n1623), .Y(
        n1228) );
  AOI22X1 U1255 ( .A0(th0_out[4]), .A1(n1321), .B0(n1486), .B1(n1625), .Y(
        n1226) );
  AOI22X1 U1256 ( .A0(th0_out[0]), .A1(n1321), .B0(n1486), .B1(n1621), .Y(
        n1230) );
  AOI22X1 U1257 ( .A0(n1586), .A1(n1647), .B0(n1589), .B1(n1621), .Y(n1101) );
  AOI22X1 U1258 ( .A0(th1_out[4]), .A1(n1323), .B0(n1494), .B1(n1618), .Y(
        n1211) );
  AOI22X1 U1259 ( .A0(th1_out[2]), .A1(n1323), .B0(n1494), .B1(n1616), .Y(
        n1213) );
  AOI22X1 U1260 ( .A0(n1591), .A1(n1616), .B0(tmod[2]), .B1(n1590), .Y(n1128)
         );
  AOI22X1 U1261 ( .A0(th1_out[0]), .A1(n1323), .B0(n1494), .B1(n1614), .Y(
        n1215) );
  AOI22X1 U1262 ( .A0(tl0_out[6]), .A1(n1319), .B0(n1505), .B1(n1645), .Y(
        n1249) );
  AOI22X1 U1263 ( .A0(sp[0]), .A1(n1588), .B0(n1587), .B1(n1644), .Y(n1102) );
  AOI22X1 U1264 ( .A0(tl0_out[2]), .A1(n1319), .B0(n1505), .B1(n1649), .Y(
        n1253) );
  AOI22X1 U1265 ( .A0(n1586), .A1(n1649), .B0(n1589), .B1(n1623), .Y(n1126) );
  AOI22X1 U1266 ( .A0(sp[2]), .A1(n1588), .B0(n1587), .B1(n1652), .Y(n1127) );
  INVX5 U1267 ( .A(n1312), .Y(n1324) );
  INVX5 U1268 ( .A(n410), .Y(n1325) );
  INVX5 U1269 ( .A(n444), .Y(n1326) );
  INVX5 U1270 ( .A(n1311), .Y(n1327) );
  OAI22X1 U1271 ( .A0(n805), .A1(n1503), .B0(n1085), .B1(n1092), .Y(n417) );
  OAI22X1 U1272 ( .A0(n806), .A1(n1503), .B0(n1085), .B1(n1091), .Y(n418) );
  OAI22X1 U1273 ( .A0(n807), .A1(n1503), .B0(n1085), .B1(n1093), .Y(n416) );
  INVX5 U1409 ( .A(n1218), .Y(n1595) );
  AOI22X2 U1410 ( .A0(tl1_out[1]), .A1(n1501), .B0(n1569), .B1(n1651), .Y(
        n1241) );
  BUFX5 U1411 ( .A(n1274), .Y(n1463) );
  OAI21X1 U1412 ( .A0(n1580), .A1(n1199), .B0(n1595), .Y(n1274) );
  AOI22X2 U1413 ( .A0(tl1_out[2]), .A1(n1501), .B0(n1569), .B1(n1652), .Y(
        n1240) );
  BUFX5 U1414 ( .A(n1191), .Y(n1464) );
  OAI21X1 U1415 ( .A0(n1575), .A1(n1199), .B0(n1595), .Y(n1191) );
  CLKINVX3 U1416 ( .A(n1593), .Y(n1465) );
  INVX4 U1417 ( .A(n1531), .Y(n1593) );
  CLKBUFX4 U1418 ( .A(n1113), .Y(n1531) );
  INVX2 U1419 ( .A(n1596), .Y(n1466) );
  NOR2X6 U1420 ( .A(n1532), .B(n1554), .Y(n1220) );
  CLKBUFX6 U1421 ( .A(n1269), .Y(n1532) );
  BUFX5 U1422 ( .A(n1272), .Y(n1467) );
  OAI21X1 U1423 ( .A0(n1270), .A1(n1273), .B0(n1595), .Y(n1272) );
  INVX2 U1424 ( .A(n1200), .Y(n1468) );
  INVX5 U1425 ( .A(n1530), .Y(n1567) );
  CLKINVX3 U1426 ( .A(n1477), .Y(n1469) );
  INVX4 U1427 ( .A(n1277), .Y(n1477) );
  CLKBUFX4 U1428 ( .A(n1277), .Y(n1522) );
  CLKBUFX4 U1429 ( .A(n1516), .Y(n1470) );
  BUFX5 U1430 ( .A(n1094), .Y(n1516) );
  CLKBUFX4 U1431 ( .A(n1109), .Y(n1471) );
  BUFX5 U1432 ( .A(n1109), .Y(n1472) );
  NAND4X4 U1433 ( .A(addr_bus[2]), .B(addr_bus[1]), .C(n1297), .D(n1303), .Y(
        n1109) );
  NOR2X6 U1434 ( .A(n1313), .B(n1309), .Y(n1259) );
  INVX5 U1435 ( .A(n1524), .Y(n1586) );
  NAND2X3 U1436 ( .A(n1473), .B(n1595), .Y(n1235) );
  CLKINVX1 U1437 ( .A(n1244), .Y(n1474) );
  CLKINVX1 U1438 ( .A(n1571), .Y(n1475) );
  AOI22X2 U1439 ( .A0(tl1_out[0]), .A1(n1501), .B0(n1569), .B1(n1644), .Y(
        n1242) );
  INVX5 U1440 ( .A(n1507), .Y(n1476) );
  CLKINVX2 U1441 ( .A(n1507), .Y(n1528) );
  NAND3X2 U1442 ( .A(n1604), .B(n1599), .C(n1504), .Y(n1277) );
  INVX4 U1443 ( .A(n1522), .Y(n1585) );
  BUFX2 U1444 ( .A(n1530), .Y(n1478) );
  CLKBUFX6 U1445 ( .A(n1200), .Y(n1530) );
  INVX2 U1446 ( .A(n1588), .Y(n1479) );
  BUFX5 U1447 ( .A(n1142), .Y(n1523) );
  INVX5 U1448 ( .A(n1586), .Y(n1480) );
  BUFX5 U1449 ( .A(n1140), .Y(n1524) );
  NAND3X2 U1450 ( .A(addr_bus[3]), .B(n1604), .C(n1504), .Y(n1140) );
  CLKBUFX6 U1451 ( .A(n1095), .Y(n1481) );
  NAND3BX2 U1452 ( .AN(addr_bus[6]), .B(addr_bus[7]), .C(memory_select), .Y(
        n1095) );
  CLKBUFX6 U1453 ( .A(n1278), .Y(n1482) );
  OAI31X2 U1454 ( .A0(n1273), .A1(n1584), .A2(n1583), .B0(n1595), .Y(n1278) );
  AOI22X2 U1455 ( .A0(tl1_out[4]), .A1(n1501), .B0(n1569), .B1(n1327), .Y(
        n1238) );
  CLKBUFX4 U1456 ( .A(n1573), .Y(n1483) );
  INVX4 U1457 ( .A(n1204), .Y(n1573) );
  CLKBUFX4 U1458 ( .A(n1517), .Y(n1484) );
  BUFX5 U1459 ( .A(n1107), .Y(n1517) );
  INVX4 U1460 ( .A(n1590), .Y(n1485) );
  NAND3X2 U1461 ( .A(addr_bus[0]), .B(n1603), .C(n1493), .Y(n1143) );
  BUFX5 U1462 ( .A(n1143), .Y(n1527) );
  CLKBUFX6 U1463 ( .A(n1223), .Y(n1486) );
  AOI31X1 U1464 ( .A0(n1231), .A1(n1216), .A2(n1572), .B0(n1218), .Y(n1223) );
  NOR2X1 U1465 ( .A(n1583), .B(n1314), .Y(n1487) );
  NAND2X2 U1466 ( .A(n1297), .B(n1299), .Y(n1110) );
  INVX5 U1467 ( .A(n1518), .Y(n1520) );
  INVX5 U1468 ( .A(n1589), .Y(n1488) );
  NAND3X2 U1469 ( .A(addr_bus[2]), .B(n1604), .C(n1493), .Y(n1139) );
  INVX5 U1470 ( .A(n1525), .Y(n1589) );
  INVX5 U1471 ( .A(n1587), .Y(n1489) );
  NAND3X2 U1472 ( .A(addr_bus[3]), .B(addr_bus[0]), .C(n1504), .Y(n1141) );
  BUFX5 U1473 ( .A(n1141), .Y(n1526) );
  BUFX5 U1474 ( .A(n1106), .Y(n1490) );
  BUFX5 U1475 ( .A(n1106), .Y(n1491) );
  BUFX5 U1476 ( .A(n1293), .Y(n1492) );
  NOR2BX1 U1477 ( .AN(n1292), .B(n1496), .Y(n1293) );
  BUFX2 U1478 ( .A(n1300), .Y(n1493) );
  NOR3BX2 U1479 ( .AN(n1297), .B(n1599), .C(addr_bus[1]), .Y(n1300) );
  CLKBUFX6 U1480 ( .A(n1208), .Y(n1494) );
  AOI31X1 U1481 ( .A0(n1568), .A1(n1216), .A2(n1217), .B0(n1218), .Y(n1208) );
  CLKBUFX6 U1482 ( .A(n1201), .Y(n1495) );
  OAI31X2 U1483 ( .A0(n1202), .A1(n1598), .A2(n1203), .B0(n1595), .Y(n1201) );
  INVX4 U1484 ( .A(n1205), .Y(n1496) );
  NAND3X4 U1485 ( .A(addr_bus[5]), .B(n1602), .C(n1296), .Y(n1205) );
  INVX4 U1486 ( .A(n1205), .Y(n1594) );
  BUFX5 U1487 ( .A(n1105), .Y(n1497) );
  BUFX5 U1488 ( .A(n1105), .Y(n1498) );
  BUFX5 U1489 ( .A(n1111), .Y(n1499) );
  BUFX5 U1490 ( .A(n1111), .Y(n1500) );
  NAND2X2 U1491 ( .A(n1504), .B(n1303), .Y(n1111) );
  BUFX2 U1492 ( .A(n1111), .Y(n1521) );
  BUFX5 U1493 ( .A(n1234), .Y(n1501) );
  NOR2BX1 U1494 ( .AN(n1220), .B(n1526), .Y(n1234) );
  BUFX5 U1495 ( .A(n1290), .Y(n1502) );
  NOR2BX1 U1496 ( .AN(n1292), .B(n1483), .Y(n1290) );
  BUFX5 U1497 ( .A(n1084), .Y(n1503) );
  NOR2BX1 U1498 ( .AN(n1096), .B(n1593), .Y(n1084) );
  CLKBUFX4 U1499 ( .A(n1304), .Y(n1504) );
  NOR3BX2 U1500 ( .AN(n1297), .B(addr_bus[2]), .C(n1601), .Y(n1304) );
  CLKBUFX6 U1501 ( .A(n1248), .Y(n1505) );
  AOI2BB1X2 U1502 ( .A0N(n1232), .A1N(n1244), .B0(n1218), .Y(n1248) );
  CLKBUFX6 U1503 ( .A(n1256), .Y(n1506) );
  OAI31X2 U1504 ( .A0(n1257), .A1(n1219), .A2(n1258), .B0(n1595), .Y(n1256) );
  INVX2 U1505 ( .A(n1519), .Y(n1582) );
  INVX2 U1506 ( .A(n1216), .Y(n1598) );
  BUFX2 U1507 ( .A(n1560), .Y(n1559) );
  CLKINVX4 U1508 ( .A(n1481), .Y(n1597) );
  NAND2X5 U1509 ( .A(n1549), .B(n1481), .Y(n1216) );
  INVX2 U1510 ( .A(n1110), .Y(n1518) );
  NAND3X2 U1511 ( .A(n1245), .B(n1526), .C(n1271), .Y(n1232) );
  INVX2 U1512 ( .A(n1105), .Y(n1580) );
  INVX2 U1513 ( .A(n1106), .Y(n1575) );
  NAND3X2 U1514 ( .A(addr_bus[4]), .B(n1574), .C(n1296), .Y(n1204) );
  NOR2X4 U1515 ( .A(n1093), .B(n1532), .Y(n1508) );
  NOR2X4 U1516 ( .A(n1087), .B(n1532), .Y(n1509) );
  NOR2X4 U1517 ( .A(n1090), .B(n1466), .Y(n1510) );
  NOR2X4 U1518 ( .A(n1092), .B(n1532), .Y(n1511) );
  NOR2X4 U1519 ( .A(n1091), .B(n1532), .Y(n1512) );
  NOR2X4 U1520 ( .A(n1086), .B(n1466), .Y(n1513) );
  NOR2X4 U1521 ( .A(n1088), .B(n1466), .Y(n1514) );
  NOR2X4 U1522 ( .A(n1089), .B(n1532), .Y(n1515) );
  INVX4 U1523 ( .A(n1265), .Y(n1581) );
  NAND2X2 U1524 ( .A(n1220), .B(n1582), .Y(n1265) );
  NOR2X6 U1525 ( .A(n1598), .B(n1596), .Y(n1218) );
  INVX2 U1526 ( .A(n1532), .Y(n1596) );
  INVX4 U1527 ( .A(n1261), .Y(n1570) );
  INVX8 U1528 ( .A(n1560), .Y(n1553) );
  INVX6 U1529 ( .A(n1559), .Y(n1554) );
  INVX4 U1530 ( .A(n1558), .Y(n1555) );
  BUFX2 U1531 ( .A(n1558), .Y(n1557) );
  BUFX2 U1532 ( .A(n1558), .Y(n1556) );
  INVX2 U1533 ( .A(n1499), .Y(n1584) );
  INVX2 U1534 ( .A(n1219), .Y(n1568) );
  NOR2X2 U1535 ( .A(n1588), .B(n1586), .Y(n1231) );
  NOR4X6 U1536 ( .A(n1232), .B(n1586), .C(n1589), .D(n1559), .Y(n1281) );
  CLKINVX3 U1537 ( .A(n1235), .Y(n1569) );
  OAI21X4 U1538 ( .A0(n1268), .A1(n1532), .B0(n1216), .Y(n1261) );
  CLKAND2X6 U1539 ( .A(n1275), .B(n1288), .Y(n1286) );
  INVX5 U1540 ( .A(n1523), .Y(n1588) );
  INVX2 U1541 ( .A(n1271), .Y(n1571) );
  NAND4X2 U1542 ( .A(n1285), .B(n1217), .C(n1476), .D(n1554), .Y(n1203) );
  CLKINVX4 U1543 ( .A(n1528), .Y(n1591) );
  NAND4X1 U1544 ( .A(n1592), .B(n1216), .C(n1476), .D(n1554), .Y(n1257) );
  AND3X2 U1545 ( .A(n1217), .B(n1529), .C(n1298), .Y(n1289) );
  NOR3X2 U1546 ( .A(n1483), .B(n1567), .C(n1496), .Y(n1298) );
  NAND2X2 U1547 ( .A(n1597), .B(n1549), .Y(n1269) );
  INVX2 U1548 ( .A(n1305), .Y(n1600) );
  INVX5 U1549 ( .A(n1518), .Y(n1519) );
  NAND2X5 U1550 ( .A(n1496), .B(n1597), .Y(n1291) );
  NAND2X5 U1551 ( .A(n1483), .B(n1597), .Y(n1294) );
  NAND2X5 U1552 ( .A(n1593), .B(n1597), .Y(n1183) );
  NAND2X5 U1553 ( .A(n1552), .B(n1597), .Y(n1100) );
  NAND2X2 U1554 ( .A(n1588), .B(n1597), .Y(n1282) );
  BUFX5 U1555 ( .A(n1551), .Y(n1552) );
  CLKBUFX4 U1556 ( .A(n1560), .Y(n1558) );
  BUFX5 U1557 ( .A(n1550), .Y(n1565) );
  BUFX5 U1558 ( .A(n1549), .Y(n1562) );
  BUFX5 U1559 ( .A(n1550), .Y(n1564) );
  BUFX5 U1560 ( .A(n1549), .Y(n1563) );
  BUFX5 U1561 ( .A(n1550), .Y(n1566) );
  OAI21X1 U1562 ( .A0(n1476), .A1(n1535), .B0(n1211), .Y(N209) );
  OAI21X1 U1563 ( .A0(n1476), .A1(n1533), .B0(n1212), .Y(N208) );
  OAI21X1 U1564 ( .A0(n1529), .A1(n1543), .B0(n1215), .Y(N205) );
  OAI21X1 U1565 ( .A0(n1488), .A1(n1535), .B0(n1226), .Y(N201) );
  OAI21X1 U1566 ( .A0(n1488), .A1(n1533), .B0(n1227), .Y(N200) );
  OAI21X1 U1567 ( .A0(n1525), .A1(n1544), .B0(n1230), .Y(N197) );
  OAI21X1 U1568 ( .A0(n1488), .A1(n1539), .B0(n1224), .Y(N203) );
  OAI21X1 U1569 ( .A0(n1529), .A1(n1539), .B0(n1209), .Y(N211) );
  OAI21X1 U1570 ( .A0(n1488), .A1(n1548), .B0(n1228), .Y(N199) );
  OAI21X1 U1571 ( .A0(n1476), .A1(n1547), .B0(n1213), .Y(N207) );
  OAI21X1 U1572 ( .A0(n1488), .A1(n1545), .B0(n1229), .Y(N198) );
  OAI21X1 U1573 ( .A0(n1529), .A1(n1546), .B0(n1214), .Y(N206) );
  OAI21X1 U1574 ( .A0(n1488), .A1(n1537), .B0(n1225), .Y(N202) );
  OAI21X1 U1575 ( .A0(n1476), .A1(n1537), .B0(n1210), .Y(N210) );
  NAND2X2 U1576 ( .A(n1204), .B(n1205), .Y(n1202) );
  OAI22X1 U1577 ( .A0(n1485), .A1(n1542), .B0(n1654), .B1(n1506), .Y(N180) );
  OAI22X1 U1578 ( .A0(n1485), .A1(n1534), .B0(n1653), .B1(n1506), .Y(N176) );
  OAI22X1 U1579 ( .A0(n1527), .A1(n1540), .B0(n1612), .B1(n1506), .Y(N179) );
  OAI22X1 U1580 ( .A0(n1527), .A1(n1538), .B0(n1609), .B1(n1506), .Y(N178) );
  INVX2 U1581 ( .A(to0), .Y(n1608) );
  NOR3X4 U1582 ( .A(n1481), .B(n1468), .C(n1203), .Y(n1292) );
  NOR2BX4 U1583 ( .AN(n1281), .B(n1481), .Y(n1283) );
  NAND4X4 U1584 ( .A(n1285), .B(n1204), .C(n1205), .D(n1530), .Y(n1219) );
  OAI22X1 U1585 ( .A0(n1656), .A1(n1280), .B0(n1523), .B1(n1537), .Y(N130) );
  OAI22X1 U1586 ( .A0(n1655), .A1(n1280), .B0(n1523), .B1(n1539), .Y(N131) );
  OAI22X1 U1587 ( .A0(n1629), .A1(n1280), .B0(n1479), .B1(n1533), .Y(N128) );
  OAI22X1 U1588 ( .A0(n1628), .A1(n1280), .B0(n1479), .B1(n1541), .Y(N132) );
  AOI22X2 U1589 ( .A0(n1591), .A1(n1614), .B0(n1590), .B1(n1325), .Y(n1103) );
  AOI22X2 U1590 ( .A0(n1586), .A1(n1324), .B0(n1589), .B1(n1625), .Y(n1150) );
  AND3X2 U1591 ( .A(n1516), .B(n1517), .C(n1295), .Y(n1285) );
  NOR3X2 U1592 ( .A(n1593), .B(n1580), .C(n1575), .Y(n1295) );
  NAND2X4 U1593 ( .A(n1603), .B(n1601), .Y(n1305) );
  INVX4 U1594 ( .A(n1526), .Y(n1587) );
  INVX4 U1595 ( .A(n1527), .Y(n1590) );
  NAND3X2 U1596 ( .A(n1523), .B(n1525), .C(n1216), .Y(n1244) );
  AND4X2 U1597 ( .A(n1245), .B(n1259), .C(n1592), .D(n1527), .Y(n1217) );
  NAND2X2 U1598 ( .A(n1296), .B(n1297), .Y(n1113) );
  INVX2 U1599 ( .A(n1284), .Y(n1592) );
  INVX4 U1600 ( .A(n1472), .Y(n1583) );
  INVX2 U1601 ( .A(to1), .Y(n1606) );
  AND3X2 U1602 ( .A(n1288), .B(n1484), .C(n1289), .Y(n1096) );
  NAND3X1 U1603 ( .A(n1303), .B(n1600), .C(n1297), .Y(n1142) );
  AND4X2 U1604 ( .A(n1289), .B(n1470), .C(n1465), .D(n1554), .Y(n1275) );
  INVX5 U1605 ( .A(n1510), .Y(n1536) );
  INVX5 U1606 ( .A(n1511), .Y(n1538) );
  INVX5 U1607 ( .A(n1512), .Y(n1540) );
  INVX5 U1608 ( .A(n1508), .Y(n1542) );
  INVX5 U1609 ( .A(n1509), .Y(n1534) );
  INVX4 U1610 ( .A(n1510), .Y(n1535) );
  INVX4 U1611 ( .A(n1511), .Y(n1537) );
  INVX4 U1612 ( .A(n1512), .Y(n1539) );
  INVX4 U1613 ( .A(n1509), .Y(n1533) );
  INVX4 U1614 ( .A(n1508), .Y(n1541) );
  INVX4 U1615 ( .A(n1514), .Y(n1547) );
  INVX4 U1616 ( .A(n1513), .Y(n1543) );
  INVX4 U1617 ( .A(n1514), .Y(n1548) );
  INVX4 U1618 ( .A(n1515), .Y(n1545) );
  INVX4 U1619 ( .A(n1513), .Y(n1544) );
  INVX4 U1620 ( .A(n1515), .Y(n1546) );
  OR2X6 U1621 ( .A(n1470), .B(n1481), .Y(n1085) );
  OR2X6 U1622 ( .A(n1484), .B(n1481), .Y(n1287) );
  NOR3X4 U1623 ( .A(n1575), .B(n1580), .C(n1481), .Y(n1288) );
  INVX2 U1624 ( .A(fifo_w_en), .Y(n1560) );
  BUFX2 U1625 ( .A(read_en), .Y(n1551) );
  INVX2 U1626 ( .A(reset), .Y(n1613) );
  OAI21X1 U1627 ( .A0(n1480), .A1(n1535), .B0(n1251), .Y(N185) );
  OAI21X1 U1628 ( .A0(n1480), .A1(n1533), .B0(n1252), .Y(N184) );
  OAI21X1 U1629 ( .A0(n1480), .A1(n1545), .B0(n1254), .Y(N182) );
  OAI21X1 U1630 ( .A0(n1489), .A1(n1547), .B0(n1240), .Y(N191) );
  OAI21X1 U1631 ( .A0(n1480), .A1(n1548), .B0(n1253), .Y(N183) );
  OAI21X1 U1632 ( .A0(n1524), .A1(n1544), .B0(n1255), .Y(N181) );
  OAI21X1 U1633 ( .A0(n1489), .A1(n1543), .B0(n1242), .Y(N189) );
  OAI21X1 U1634 ( .A0(n1489), .A1(n1533), .B0(n1239), .Y(N192) );
  AOI2BB2X1 U1635 ( .B0(tl1_out[3]), .B1(n1501), .A0N(n1235), .A1N(n798), .Y(
        n1239) );
  OAI21X1 U1636 ( .A0(n1480), .A1(n1537), .B0(n1250), .Y(N186) );
  OAI21X1 U1637 ( .A0(n1489), .A1(n1541), .B0(n1233), .Y(N196) );
  AOI2BB2X1 U1638 ( .B0(tl1_out[7]), .B1(n1501), .A0N(n1235), .A1N(n736), .Y(
        n1233) );
  OAI21X1 U1639 ( .A0(n1489), .A1(n1539), .B0(n1236), .Y(N195) );
  AOI2BB2X1 U1640 ( .B0(tl1_out[6]), .B1(n1501), .A0N(n1235), .A1N(n746), .Y(
        n1236) );
  OAI21X1 U1641 ( .A0(n1526), .A1(n1546), .B0(n1241), .Y(N190) );
  OAI21X1 U1642 ( .A0(n1480), .A1(n1539), .B0(n1249), .Y(N187) );
  OAI21X1 U1643 ( .A0(n1480), .A1(n1541), .B0(n1246), .Y(N188) );
  OAI21X1 U1644 ( .A0(n1489), .A1(n1537), .B0(n1237), .Y(N194) );
  AOI2BB2X1 U1645 ( .B0(tl1_out[5]), .B1(n1501), .A0N(n1235), .A1N(n831), .Y(
        n1237) );
  OAI21X1 U1646 ( .A0(n1489), .A1(n1535), .B0(n1238), .Y(N193) );
  OAI21X1 U1647 ( .A0(n1488), .A1(n1541), .B0(n1221), .Y(N204) );
  OAI21X1 U1648 ( .A0(n1529), .A1(n1541), .B0(n1206), .Y(N212) );
  OAI21X1 U1649 ( .A0(n1519), .A1(n1543), .B0(n1267), .Y(N165) );
  AOI2BB2X2 U1650 ( .B0(inti1), .B1(n1581), .A0N(n1570), .A1N(n721), .Y(n1267)
         );
  OAI21X1 U1651 ( .A0(n1519), .A1(n1547), .B0(n1266), .Y(N167) );
  AOI2BB2X2 U1652 ( .B0(inti0), .B1(n1581), .A0N(n1570), .A1N(n783), .Y(n1266)
         );
  AOI22X2 U1653 ( .A0(n1303), .A1(addr_bus[4]), .B0(addr_bus[5]), .B1(
        addr_bus[0]), .Y(n1302) );
  AOI2BB2X2 U1654 ( .B0(n1601), .B1(n1599), .A0N(n1601), .A1N(n1303), .Y(n1301) );
  OAI22X1 U1655 ( .A0(n727), .A1(n1482), .B0(n1522), .B1(n1544), .Y(N133) );
  OAI22X1 U1656 ( .A0(n760), .A1(n1482), .B0(n1522), .B1(n1546), .Y(N134) );
  OAI22X1 U1657 ( .A0(n777), .A1(n1482), .B0(n1522), .B1(n1547), .Y(N135) );
  OAI2B2X1 U1658 ( .A1N(tmod[2]), .A0(n1506), .B0(n1485), .B1(n1548), .Y(N175)
         );
  OAI2B2X1 U1659 ( .A1N(tmod[1]), .A0(n1506), .B0(n1485), .B1(n1545), .Y(N174)
         );
  OAI22X1 U1660 ( .A0(n1500), .A1(n1536), .B0(n813), .B1(n1310), .Y(N145) );
  OAI22X1 U1661 ( .A0(n1499), .A1(n1538), .B0(n827), .B1(n1310), .Y(N146) );
  OAI22X1 U1662 ( .A0(n1500), .A1(n1543), .B0(n726), .B1(n1310), .Y(N141) );
  OAI22X1 U1663 ( .A0(n1499), .A1(n1545), .B0(n759), .B1(n1310), .Y(N142) );
  OAI22X1 U1664 ( .A0(n1500), .A1(n1548), .B0(n776), .B1(n1310), .Y(N143) );
  OAI22X1 U1665 ( .A0(n1499), .A1(n1540), .B0(n743), .B1(n1310), .Y(N147) );
  OAI22X1 U1666 ( .A0(n1500), .A1(n1534), .B0(n793), .B1(n1310), .Y(N144) );
  OAI22X1 U1667 ( .A0(n1499), .A1(n1542), .B0(n732), .B1(n1310), .Y(N148) );
  OAI22X1 U1668 ( .A0(n1530), .A1(n1536), .B0(n810), .B1(n1495), .Y(N217) );
  OAI22X1 U1669 ( .A0(n1530), .A1(n1538), .B0(n824), .B1(n1495), .Y(N218) );
  OAI22X1 U1670 ( .A0(n1530), .A1(n1543), .B0(n720), .B1(n1495), .Y(N213) );
  OAI22X1 U1671 ( .A0(n1530), .A1(n1546), .B0(n756), .B1(n1495), .Y(N214) );
  OAI22X1 U1672 ( .A0(n1530), .A1(n1547), .B0(n773), .B1(n1495), .Y(N215) );
  OAI22X1 U1673 ( .A0(n1478), .A1(n1540), .B0(n740), .B1(n1495), .Y(N219) );
  OAI22X1 U1674 ( .A0(n1478), .A1(n1534), .B0(n790), .B1(n1495), .Y(N216) );
  OAI22X1 U1675 ( .A0(n1478), .A1(n1542), .B0(n729), .B1(n1495), .Y(N220) );
  OAI22X1 U1676 ( .A0(n1485), .A1(n1536), .B0(n444), .B1(n1506), .Y(N177) );
  OAI22X1 U1677 ( .A0(n1485), .A1(n1544), .B0(n410), .B1(n1506), .Y(N173) );
  OAI22X1 U1678 ( .A0(n1522), .A1(n1536), .B0(n814), .B1(n1482), .Y(N137) );
  OAI22X1 U1679 ( .A0(n1469), .A1(n1538), .B0(n828), .B1(n1482), .Y(N138) );
  OAI22X1 U1680 ( .A0(n1469), .A1(n1539), .B0(n744), .B1(n1482), .Y(N139) );
  OAI22X1 U1681 ( .A0(n1469), .A1(n1533), .B0(n794), .B1(n1482), .Y(N136) );
  OAI22X1 U1682 ( .A0(n1469), .A1(n1541), .B0(n733), .B1(n1482), .Y(N140) );
  OAI222X1 U1683 ( .A0(n834), .A1(n1484), .B0(n826), .B1(n1491), .C0(n823), 
        .C1(n1497), .Y(n1159) );
  OAI222X1 U1684 ( .A0(n843), .A1(n1484), .B0(n731), .B1(n1490), .C0(n728), 
        .C1(n1497), .Y(n1177) );
  OAI222X1 U1685 ( .A0(n801), .A1(n1517), .B0(n792), .B1(n1491), .C0(n789), 
        .C1(n1498), .Y(n1135) );
  OAI222X1 U1686 ( .A0(n839), .A1(n1517), .B0(n742), .B1(n1490), .C0(n739), 
        .C1(n1498), .Y(n1168) );
  AOI31X1 U1687 ( .A0(n1156), .A1(n1157), .A2(n1158), .B0(n1100), .Y(n399) );
  NOR4X4 U1688 ( .A(n1159), .B(n1160), .C(n1161), .D(n1162), .Y(n1158) );
  AOI31X1 U1689 ( .A0(n1174), .A1(n1175), .A2(n1176), .B0(n1100), .Y(n397) );
  NOR4X4 U1690 ( .A(n1177), .B(n1178), .C(n1179), .D(n1180), .Y(n1176) );
  AOI31X1 U1691 ( .A0(n1132), .A1(n1133), .A2(n1134), .B0(n1100), .Y(n401) );
  NOR4X4 U1692 ( .A(n1135), .B(n1136), .C(n1137), .D(n1138), .Y(n1134) );
  AOI31X1 U1693 ( .A0(n1165), .A1(n1166), .A2(n1167), .B0(n1100), .Y(n398) );
  NOR4X4 U1694 ( .A(n1168), .B(n1169), .C(n1170), .D(n1171), .Y(n1167) );
  OAI222X1 U1695 ( .A0(n757), .A1(n1472), .B0(n766), .B1(n1110), .C0(n759), 
        .C1(n1521), .Y(n1121) );
  OAI222X1 U1696 ( .A0(n825), .A1(n1472), .B0(n833), .B1(n1520), .C0(n827), 
        .C1(n1499), .Y(n1163) );
  OAI222X1 U1697 ( .A0(n811), .A1(n1471), .B0(n808), .B1(n1520), .C0(n813), 
        .C1(n1499), .Y(n1154) );
  OAI222X1 U1698 ( .A0(n774), .A1(n1109), .B0(n783), .B1(n1520), .C0(n776), 
        .C1(n1500), .Y(n1130) );
  OAI222X1 U1699 ( .A0(n724), .A1(n1109), .B0(n721), .B1(n1520), .C0(n726), 
        .C1(n1500), .Y(n1108) );
  OAI222X1 U1700 ( .A0(n730), .A1(n1471), .B0(n734), .B1(n1520), .C0(n732), 
        .C1(n1500), .Y(n1181) );
  OAI222X1 U1701 ( .A0(n791), .A1(n1109), .B0(n800), .B1(n1520), .C0(n793), 
        .C1(n1500), .Y(n1145) );
  OAI222X1 U1702 ( .A0(n741), .A1(n1472), .B0(n747), .B1(n1520), .C0(n743), 
        .C1(n1499), .Y(n1172) );
  OAI22X1 U1703 ( .A0(n754), .A1(n1503), .B0(n1085), .B1(n1089), .Y(n420) );
  OAI22X1 U1704 ( .A0(n771), .A1(n1503), .B0(n1085), .B1(n1088), .Y(n421) );
  OAI22X1 U1705 ( .A0(n804), .A1(n1503), .B0(n1085), .B1(n1090), .Y(n419) );
  OAI22X1 U1706 ( .A0(n788), .A1(n1503), .B0(n1085), .B1(n1087), .Y(n422) );
  OAI222X1 U1707 ( .A0(n1265), .A1(n1608), .B0(n766), .B1(n1570), .C0(n1519), 
        .C1(n1546), .Y(N166) );
  OAI222X1 U1708 ( .A0(n1265), .A1(n1606), .B0(n800), .B1(n1570), .C0(n1519), 
        .C1(n1534), .Y(N168) );
  AOI31X1 U1709 ( .A0(n1147), .A1(n1148), .A2(n1149), .B0(n1100), .Y(n400) );
  AND4X2 U1710 ( .A(n1576), .B(n1150), .C(n1151), .D(n1152), .Y(n1149) );
  OAI22X1 U1711 ( .A0(n831), .A1(n1526), .B0(n1523), .B1(n1656), .Y(n1161) );
  OAI22X1 U1712 ( .A0(n736), .A1(n1526), .B0(n1523), .B1(n1628), .Y(n1179) );
  OAI22X1 U1713 ( .A0(n798), .A1(n1526), .B0(n1523), .B1(n1629), .Y(n1137) );
  OAI22X1 U1714 ( .A0(n746), .A1(n1526), .B0(n1523), .B1(n1655), .Y(n1170) );
  OAI22X1 U1715 ( .A0(n1527), .A1(n1609), .B0(n830), .B1(n1476), .Y(n1160) );
  OAI22X1 U1716 ( .A0(n1527), .A1(n1654), .B0(n842), .B1(n1528), .Y(n1178) );
  OAI22X1 U1717 ( .A0(n1527), .A1(n1653), .B0(n796), .B1(n1528), .Y(n1136) );
  OAI22X1 U1718 ( .A0(n1527), .A1(n1612), .B0(n738), .B1(n1476), .Y(n1169) );
  OAI22X1 U1719 ( .A0(n752), .A1(n1525), .B0(n832), .B1(n1524), .Y(n1162) );
  OAI22X1 U1720 ( .A0(n838), .A1(n1525), .B0(n750), .B1(n1524), .Y(n1180) );
  OAI22X1 U1721 ( .A0(n797), .A1(n1525), .B0(n799), .B1(n1524), .Y(n1138) );
  OAI22X1 U1722 ( .A0(n837), .A1(n1525), .B0(n749), .B1(n1524), .Y(n1171) );
  OAI221X1 U1723 ( .A0(n850), .A1(n1492), .B0(n1086), .B1(n1294), .C0(n1565), 
        .Y(N101) );
  OAI221X1 U1724 ( .A0(n845), .A1(n1492), .B0(n1093), .B1(n1294), .C0(n1565), 
        .Y(N108) );
  OAI221X1 U1725 ( .A0(n844), .A1(n1502), .B0(n1093), .B1(n1291), .C0(n1564), 
        .Y(N116) );
  OAI221X1 U1726 ( .A0(n840), .A1(n1502), .B0(n1091), .B1(n1291), .C0(n1564), 
        .Y(N115) );
  OAI221X1 U1727 ( .A0(n835), .A1(n1502), .B0(n1092), .B1(n1291), .C0(n1564), 
        .Y(N114) );
  OAI221X1 U1728 ( .A0(n821), .A1(n1502), .B0(n1090), .B1(n1291), .C0(n1564), 
        .Y(N113) );
  OAI221X1 U1729 ( .A0(n802), .A1(n1502), .B0(n1087), .B1(n1291), .C0(n1564), 
        .Y(N112) );
  OAI221X1 U1730 ( .A0(n786), .A1(n1502), .B0(n1088), .B1(n1291), .C0(n1564), 
        .Y(N111) );
  OAI221X1 U1731 ( .A0(n769), .A1(n1502), .B0(n1089), .B1(n1291), .C0(n1565), 
        .Y(N110) );
  OAI221X1 U1732 ( .A0(n849), .A1(n1502), .B0(n1086), .B1(n1291), .C0(n1565), 
        .Y(N109) );
  OAI221X2 U1733 ( .A0(n846), .A1(n1184), .B0(n1093), .B1(n1183), .C0(n1566), 
        .Y(N100) );
  OAI221X2 U1734 ( .A0(n768), .A1(n1286), .B0(n1089), .B1(n1287), .C0(n1564), 
        .Y(N118) );
  OAI221X2 U1735 ( .A0(n785), .A1(n1286), .B0(n1088), .B1(n1287), .C0(n1563), 
        .Y(N119) );
  OAI221X2 U1736 ( .A0(n848), .A1(n1286), .B0(n1086), .B1(n1287), .C0(n1564), 
        .Y(N117) );
  OAI221X2 U1737 ( .A0(n1090), .A1(n1183), .B0(n815), .B1(n1184), .C0(n1562), 
        .Y(N97) );
  OAI221X2 U1738 ( .A0(n1092), .A1(n1183), .B0(n829), .B1(n1184), .C0(n1562), 
        .Y(N98) );
  OAI221X2 U1739 ( .A0(n1086), .A1(n1183), .B0(n722), .B1(n1184), .C0(n1562), 
        .Y(N93) );
  OAI221X2 U1740 ( .A0(n1089), .A1(n1183), .B0(n761), .B1(n1184), .C0(n1562), 
        .Y(N94) );
  OAI221X2 U1741 ( .A0(n1088), .A1(n1183), .B0(n778), .B1(n1184), .C0(n1562), 
        .Y(N95) );
  OAI221X2 U1742 ( .A0(n1091), .A1(n1183), .B0(n745), .B1(n1184), .C0(n1562), 
        .Y(N99) );
  OAI221X2 U1743 ( .A0(n1087), .A1(n1183), .B0(n795), .B1(n1184), .C0(n1562), 
        .Y(N96) );
  OAI221X2 U1744 ( .A0(n820), .A1(n1286), .B0(n1090), .B1(n1287), .C0(n1563), 
        .Y(N121) );
  OAI221X2 U1745 ( .A0(n834), .A1(n1286), .B0(n1092), .B1(n1287), .C0(n1563), 
        .Y(N122) );
  OAI221X2 U1746 ( .A0(n839), .A1(n1286), .B0(n1091), .B1(n1287), .C0(n1563), 
        .Y(N123) );
  OAI221X2 U1747 ( .A0(n801), .A1(n1286), .B0(n1087), .B1(n1287), .C0(n1563), 
        .Y(N120) );
  OAI221X2 U1748 ( .A0(n843), .A1(n1286), .B0(n1093), .B1(n1287), .C0(n1563), 
        .Y(N124) );
  OAI221X2 U1749 ( .A0(n1089), .A1(n1282), .B0(n767), .B1(n1283), .C0(n1563), 
        .Y(N126) );
  OAI221X2 U1750 ( .A0(n1088), .A1(n1282), .B0(n784), .B1(n1283), .C0(n1562), 
        .Y(N127) );
  OAI221X2 U1751 ( .A0(n1086), .A1(n1282), .B0(n847), .B1(n1283), .C0(n1563), 
        .Y(N125) );
  OAI221X1 U1752 ( .A0(n1089), .A1(n1294), .B0(n770), .B1(n1492), .C0(n1565), 
        .Y(N102) );
  OAI221X1 U1753 ( .A0(n1088), .A1(n1294), .B0(n787), .B1(n1492), .C0(n1565), 
        .Y(N103) );
  OAI221X1 U1754 ( .A0(n1087), .A1(n1294), .B0(n803), .B1(n1492), .C0(n1565), 
        .Y(N104) );
  OAI221X1 U1755 ( .A0(n1090), .A1(n1294), .B0(n822), .B1(n1492), .C0(n1550), 
        .Y(N105) );
  OAI221X1 U1756 ( .A0(n1092), .A1(n1294), .B0(n836), .B1(n1492), .C0(n1550), 
        .Y(N106) );
  OAI221X1 U1757 ( .A0(n1091), .A1(n1294), .B0(n841), .B1(n1492), .C0(n1565), 
        .Y(N107) );
  INVX4 U1758 ( .A(addr_bus[0]), .Y(n1604) );
  OAI22X1 U1759 ( .A0(n1472), .A1(n1536), .B0(n811), .B1(n1467), .Y(N161) );
  OAI22X1 U1760 ( .A0(n1471), .A1(n1538), .B0(n825), .B1(n1467), .Y(N162) );
  OAI22X1 U1761 ( .A0(n1472), .A1(n1543), .B0(n724), .B1(n1467), .Y(N157) );
  OAI22X1 U1762 ( .A0(n1471), .A1(n1545), .B0(n757), .B1(n1467), .Y(N158) );
  OAI22X1 U1763 ( .A0(n1472), .A1(n1548), .B0(n774), .B1(n1467), .Y(N159) );
  OAI22X1 U1764 ( .A0(n1471), .A1(n1540), .B0(n741), .B1(n1467), .Y(N163) );
  OAI22X1 U1765 ( .A0(n1472), .A1(n1534), .B0(n791), .B1(n1467), .Y(N160) );
  OAI22X1 U1766 ( .A0(n1471), .A1(n1542), .B0(n730), .B1(n1467), .Y(N164) );
  OAI22X1 U1767 ( .A0(n1491), .A1(n1536), .B0(n812), .B1(n1463), .Y(N153) );
  OAI22X1 U1768 ( .A0(n1490), .A1(n1538), .B0(n826), .B1(n1463), .Y(N154) );
  OAI22X1 U1769 ( .A0(n1491), .A1(n1544), .B0(n725), .B1(n1463), .Y(N149) );
  OAI22X1 U1770 ( .A0(n1490), .A1(n1546), .B0(n758), .B1(n1463), .Y(N150) );
  OAI22X1 U1771 ( .A0(n1491), .A1(n1547), .B0(n775), .B1(n1463), .Y(N151) );
  OAI22X1 U1772 ( .A0(n1490), .A1(n1540), .B0(n742), .B1(n1463), .Y(N155) );
  OAI22X1 U1773 ( .A0(n1491), .A1(n1534), .B0(n792), .B1(n1463), .Y(N152) );
  OAI22X1 U1774 ( .A0(n1498), .A1(n1536), .B0(n809), .B1(n1464), .Y(N233) );
  OAI22X1 U1775 ( .A0(n1497), .A1(n1538), .B0(n823), .B1(n1464), .Y(N234) );
  OAI22X1 U1776 ( .A0(n1498), .A1(n1544), .B0(n723), .B1(n1464), .Y(N229) );
  OAI22X1 U1777 ( .A0(n1497), .A1(n1545), .B0(n755), .B1(n1464), .Y(N230) );
  OAI22X1 U1778 ( .A0(n1498), .A1(n1548), .B0(n772), .B1(n1464), .Y(N231) );
  OAI22X1 U1779 ( .A0(n1497), .A1(n1540), .B0(n739), .B1(n1464), .Y(N235) );
  OAI22X1 U1780 ( .A0(n1498), .A1(n1534), .B0(n789), .B1(n1464), .Y(N232) );
  OAI22X1 U1781 ( .A0(n1497), .A1(n1542), .B0(n728), .B1(n1464), .Y(N236) );
  OAI22X1 U1782 ( .A0(n1490), .A1(n1542), .B0(n731), .B1(n1463), .Y(N156) );
  OAI2B2X1 U1783 ( .A1N(sp[4]), .A0(n1280), .B0(n1479), .B1(n1535), .Y(N129)
         );
  OAI22X1 U1784 ( .A0(n1519), .A1(n1540), .B0(n747), .B1(n1262), .Y(N171) );
  AOI21X1 U1785 ( .A0(n1581), .A1(n1608), .B0(n1261), .Y(n1262) );
  OAI22X1 U1786 ( .A0(n1520), .A1(n1542), .B0(n734), .B1(n1260), .Y(N172) );
  AOI21X1 U1787 ( .A0(n1581), .A1(n1606), .B0(n1261), .Y(n1260) );
  AOI22X2 U1788 ( .A0(sp[4]), .A1(n1588), .B0(n1587), .B1(n1327), .Y(n1151) );
  INVX4 U1789 ( .A(addr_bus[3]), .Y(n1599) );
  NAND3X2 U1790 ( .A(n1299), .B(addr_bus[4]), .C(addr_bus[5]), .Y(n1105) );
  NAND3X2 U1791 ( .A(n1299), .B(n1602), .C(addr_bus[5]), .Y(n1106) );
  AOI22X2 U1792 ( .A0(n1591), .A1(n1618), .B0(n1326), .B1(n1590), .Y(n1152) );
  NAND3X2 U1793 ( .A(addr_bus[4]), .B(n1574), .C(n1299), .Y(n1200) );
  INVX2 U1794 ( .A(addr_bus[5]), .Y(n1574) );
  INVX2 U1795 ( .A(addr_bus[4]), .Y(n1602) );
  INVX2 U1796 ( .A(addr_bus[2]), .Y(n1603) );
  OAI22X1 U1797 ( .A0(n753), .A1(n1503), .B0(n1085), .B1(n1086), .Y(n423) );
  INVX4 U1798 ( .A(addr_bus[1]), .Y(n1601) );
  NAND3X1 U1799 ( .A(addr_bus[5]), .B(addr_bus[4]), .C(n1296), .Y(n1107) );
  NAND3X2 U1800 ( .A(addr_bus[4]), .B(addr_bus[3]), .C(n1306), .Y(n1094) );
  NOR3X2 U1801 ( .A(n1604), .B(addr_bus[5]), .C(n1305), .Y(n1306) );
  OAI21X1 U1802 ( .A0(n1519), .A1(n1537), .B0(n1263), .Y(N170) );
  AOI2BB2X2 U1803 ( .B0(tcon_nxt[5]), .B1(n1581), .A0N(n1570), .A1N(n833), .Y(
        n1263) );
  OAI21X1 U1804 ( .A0(n1519), .A1(n1535), .B0(n1264), .Y(N169) );
  AOI2BB2X2 U1805 ( .B0(tcon_nxt[4]), .B1(n1581), .A0N(n1570), .A1N(n808), .Y(
        n1264) );
  INVX2 U1806 ( .A(n1120), .Y(n1578) );
  OAI222X1 U1807 ( .A0(n1498), .A1(n755), .B0(n1491), .B1(n758), .C0(n1517), 
        .C1(n768), .Y(n1120) );
  INVX2 U1808 ( .A(n1153), .Y(n1576) );
  OAI222X1 U1809 ( .A0(n1497), .A1(n809), .B0(n1490), .B1(n812), .C0(n1517), 
        .C1(n820), .Y(n1153) );
  INVX2 U1810 ( .A(n1129), .Y(n1577) );
  OAI222X1 U1811 ( .A0(n1498), .A1(n772), .B0(n1491), .B1(n775), .C0(n1517), 
        .C1(n785), .Y(n1129) );
  INVX2 U1812 ( .A(n1104), .Y(n1579) );
  OAI222X1 U1813 ( .A0(n1497), .A1(n723), .B0(n1490), .B1(n725), .C0(n1517), 
        .C1(n848), .Y(n1104) );
  AOI31X1 U1814 ( .A0(n1114), .A1(n1115), .A2(n1116), .B0(n1100), .Y(n403) );
  AND4X2 U1815 ( .A(n1578), .B(n1117), .C(n1118), .D(n1119), .Y(n1116) );
  AOI31X1 U1816 ( .A0(n1123), .A1(n1124), .A2(n1125), .B0(n1100), .Y(n402) );
  AND4X2 U1817 ( .A(n1577), .B(n1126), .C(n1127), .D(n1128), .Y(n1125) );
  AOI31X1 U1818 ( .A0(n1097), .A1(n1098), .A2(n1099), .B0(n1100), .Y(n404) );
  AND4X2 U1819 ( .A(n1579), .B(n1101), .C(n1102), .D(n1103), .Y(n1099) );
  AOI2BB1X2 U1820 ( .A0N(reset), .A1N(cnt_rst[1]), .B0(N86), .Y(n1188) );
  NOR2X4 U1821 ( .A(cnt_rst[0]), .B(reset), .Y(N86) );
  NAND4X4 U1822 ( .A(n718), .B(N86), .C(cnt_rst[3]), .D(cnt_rst[1]), .Y(N85)
         );
  OAI22X1 U1823 ( .A0(n761), .A1(n1531), .B0(n754), .B1(n1516), .Y(n1122) );
  OAI22X1 U1824 ( .A0(n829), .A1(n1531), .B0(n805), .B1(n1516), .Y(n1164) );
  OAI22X1 U1825 ( .A0(n815), .A1(n1465), .B0(n804), .B1(n1470), .Y(n1155) );
  OAI22X1 U1826 ( .A0(n778), .A1(n1531), .B0(n771), .B1(n1516), .Y(n1131) );
  OAI22X1 U1827 ( .A0(n722), .A1(n1531), .B0(n753), .B1(n1516), .Y(n1112) );
  OAI22X1 U1828 ( .A0(n846), .A1(n1465), .B0(n807), .B1(n1516), .Y(n1182) );
  OAI22X1 U1829 ( .A0(n795), .A1(n1531), .B0(n788), .B1(n1516), .Y(n1146) );
  OAI22X1 U1830 ( .A0(n745), .A1(n1465), .B0(n806), .B1(n1470), .Y(n1173) );
  OAI22X1 U1831 ( .A0(n718), .A1(n1188), .B0(cnt_rst[2]), .B1(n1186), .Y(N88)
         );
  NAND3X2 U1832 ( .A(cnt_rst[1]), .B(n1613), .C(cnt_rst[0]), .Y(n1186) );
  OAI32X2 U1833 ( .A0(n1186), .A1(n718), .A2(cnt_rst[3]), .B0(n719), .B1(n1187), .Y(N89) );
  OA21X1 U1834 ( .A0(cnt_rst[2]), .A1(reset), .B0(n1188), .Y(n1187) );
  OAI31X2 U1835 ( .A0(n1185), .A1(cnt_rst[2]), .A2(cnt_rst[0]), .B0(n1613), 
        .Y(N90) );
  NAND2X2 U1836 ( .A(cnt_rst[3]), .B(cnt_rst[1]), .Y(n1185) );
  NOR2X2 U1837 ( .A(reset), .B(n1189), .Y(N87) );
  XNOR2X1 U1838 ( .A(cnt_rst[0]), .B(cnt_rst[1]), .Y(n1189) );
endmodule

