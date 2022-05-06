/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Fri May  6 12:25:46 2022
/////////////////////////////////////////////////////////////


module bin2gray_BIT_WIDTH5_0 ( bin_data, gray_data );
  input [4:0] bin_data;
  output [4:0] gray_data;
  wire   \bin_data[4] ;
  assign gray_data[4] = \bin_data[4] ;
  assign \bin_data[4]  = bin_data[4];

  XOR2X1 U1 ( .A(\bin_data[4] ), .B(bin_data[3]), .Y(gray_data[3]) );
  XOR2X1 U2 ( .A(bin_data[3]), .B(bin_data[2]), .Y(gray_data[2]) );
  XOR2X1 U3 ( .A(bin_data[2]), .B(bin_data[1]), .Y(gray_data[1]) );
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

  XOR2X1 U1 ( .A(bin_data[1]), .B(bin_data[0]), .Y(gray_data[0]) );
  XOR2X1 U2 ( .A(bin_data[3]), .B(bin_data[2]), .Y(gray_data[2]) );
  XOR2X1 U3 ( .A(bin_data[2]), .B(bin_data[1]), .Y(gray_data[1]) );
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
         n162, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n201, n214, n227, n240, n253, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347;
  assign N11 = r_addr[0];
  assign N12 = r_addr[1];
  assign N13 = r_addr[2];
  assign N14 = r_addr[3];

  EDFFX1 \mem_reg[15][3]  ( .D(n285), .E(n308), .CK(w_clk), .Q(\mem[15][3] )
         );
  EDFFX1 \mem_reg[15][2]  ( .D(n283), .E(n308), .CK(w_clk), .Q(\mem[15][2] )
         );
  EDFFX1 \mem_reg[15][1]  ( .D(n253), .E(n308), .CK(w_clk), .Q(\mem[15][1] )
         );
  EDFFX1 \mem_reg[15][0]  ( .D(n227), .E(n308), .CK(w_clk), .Q(\mem[15][0] )
         );
  EDFFX1 \mem_reg[14][3]  ( .D(n285), .E(n298), .CK(w_clk), .Q(\mem[14][3] )
         );
  EDFFX1 \mem_reg[14][2]  ( .D(n283), .E(n298), .CK(w_clk), .Q(\mem[14][2] )
         );
  EDFFX1 \mem_reg[14][1]  ( .D(n253), .E(n298), .CK(w_clk), .Q(\mem[14][1] )
         );
  EDFFX1 \mem_reg[14][0]  ( .D(n227), .E(n298), .CK(w_clk), .Q(\mem[14][0] )
         );
  EDFFX1 \mem_reg[13][3]  ( .D(n285), .E(n299), .CK(w_clk), .Q(\mem[13][3] )
         );
  EDFFX1 \mem_reg[13][2]  ( .D(n283), .E(n299), .CK(w_clk), .Q(\mem[13][2] )
         );
  EDFFX1 \mem_reg[13][1]  ( .D(n253), .E(n299), .CK(w_clk), .Q(\mem[13][1] )
         );
  EDFFX1 \mem_reg[13][0]  ( .D(n227), .E(n299), .CK(w_clk), .Q(\mem[13][0] )
         );
  EDFFX1 \mem_reg[12][3]  ( .D(n285), .E(n306), .CK(w_clk), .Q(\mem[12][3] )
         );
  EDFFX1 \mem_reg[12][2]  ( .D(n283), .E(n306), .CK(w_clk), .Q(\mem[12][2] )
         );
  EDFFX1 \mem_reg[12][1]  ( .D(n253), .E(n306), .CK(w_clk), .Q(\mem[12][1] )
         );
  EDFFX1 \mem_reg[12][0]  ( .D(n227), .E(n306), .CK(w_clk), .Q(\mem[12][0] )
         );
  EDFFX1 \mem_reg[11][3]  ( .D(n285), .E(n309), .CK(w_clk), .Q(\mem[11][3] )
         );
  EDFFX1 \mem_reg[11][2]  ( .D(n283), .E(n309), .CK(w_clk), .Q(\mem[11][2] )
         );
  EDFFX1 \mem_reg[11][1]  ( .D(n253), .E(n309), .CK(w_clk), .Q(\mem[11][1] )
         );
  EDFFX1 \mem_reg[11][0]  ( .D(n227), .E(n309), .CK(w_clk), .Q(\mem[11][0] )
         );
  EDFFX1 \mem_reg[10][3]  ( .D(n285), .E(n295), .CK(w_clk), .Q(\mem[10][3] )
         );
  EDFFX1 \mem_reg[10][2]  ( .D(n283), .E(n295), .CK(w_clk), .Q(\mem[10][2] )
         );
  EDFFX1 \mem_reg[10][1]  ( .D(n253), .E(n295), .CK(w_clk), .Q(\mem[10][1] )
         );
  EDFFX1 \mem_reg[10][0]  ( .D(n227), .E(n295), .CK(w_clk), .Q(\mem[10][0] )
         );
  EDFFX1 \mem_reg[9][3]  ( .D(n285), .E(n300), .CK(w_clk), .Q(\mem[9][3] ) );
  EDFFX1 \mem_reg[9][2]  ( .D(n283), .E(n300), .CK(w_clk), .Q(\mem[9][2] ) );
  EDFFX1 \mem_reg[9][1]  ( .D(n253), .E(n300), .CK(w_clk), .Q(\mem[9][1] ) );
  EDFFX1 \mem_reg[9][0]  ( .D(n227), .E(n300), .CK(w_clk), .Q(\mem[9][0] ) );
  EDFFX1 \mem_reg[8][3]  ( .D(n285), .E(n307), .CK(w_clk), .Q(\mem[8][3] ) );
  EDFFX1 \mem_reg[8][2]  ( .D(n283), .E(n307), .CK(w_clk), .Q(\mem[8][2] ) );
  EDFFX1 \mem_reg[8][1]  ( .D(n253), .E(n307), .CK(w_clk), .Q(\mem[8][1] ) );
  EDFFX1 \mem_reg[8][0]  ( .D(n227), .E(n307), .CK(w_clk), .Q(\mem[8][0] ) );
  EDFFX1 \mem_reg[7][3]  ( .D(n284), .E(n302), .CK(w_clk), .Q(\mem[7][3] ) );
  EDFFX1 \mem_reg[7][2]  ( .D(n282), .E(n302), .CK(w_clk), .Q(\mem[7][2] ) );
  EDFFX1 \mem_reg[7][1]  ( .D(n240), .E(n302), .CK(w_clk), .Q(\mem[7][1] ) );
  EDFFX1 \mem_reg[7][0]  ( .D(n214), .E(n302), .CK(w_clk), .Q(\mem[7][0] ) );
  EDFFX1 \mem_reg[6][3]  ( .D(n284), .E(n296), .CK(w_clk), .Q(\mem[6][3] ) );
  EDFFX1 \mem_reg[6][2]  ( .D(n282), .E(n296), .CK(w_clk), .Q(\mem[6][2] ) );
  EDFFX1 \mem_reg[6][1]  ( .D(n240), .E(n296), .CK(w_clk), .Q(\mem[6][1] ) );
  EDFFX1 \mem_reg[6][0]  ( .D(n214), .E(n296), .CK(w_clk), .Q(\mem[6][0] ) );
  EDFFX1 \mem_reg[5][3]  ( .D(n284), .E(n297), .CK(w_clk), .Q(\mem[5][3] ) );
  EDFFX1 \mem_reg[5][2]  ( .D(n282), .E(n297), .CK(w_clk), .Q(\mem[5][2] ) );
  EDFFX1 \mem_reg[5][1]  ( .D(n240), .E(n297), .CK(w_clk), .Q(\mem[5][1] ) );
  EDFFX1 \mem_reg[5][0]  ( .D(n214), .E(n297), .CK(w_clk), .Q(\mem[5][0] ) );
  EDFFX1 \mem_reg[4][3]  ( .D(n284), .E(n303), .CK(w_clk), .Q(\mem[4][3] ) );
  EDFFX1 \mem_reg[4][2]  ( .D(n282), .E(n303), .CK(w_clk), .Q(\mem[4][2] ) );
  EDFFX1 \mem_reg[4][1]  ( .D(n240), .E(n303), .CK(w_clk), .Q(\mem[4][1] ) );
  EDFFX1 \mem_reg[4][0]  ( .D(n214), .E(n303), .CK(w_clk), .Q(\mem[4][0] ) );
  EDFFX1 \mem_reg[3][3]  ( .D(n284), .E(n301), .CK(w_clk), .Q(\mem[3][3] ) );
  EDFFX1 \mem_reg[3][2]  ( .D(n282), .E(n301), .CK(w_clk), .Q(\mem[3][2] ) );
  EDFFX1 \mem_reg[3][1]  ( .D(n240), .E(n301), .CK(w_clk), .Q(\mem[3][1] ) );
  EDFFX1 \mem_reg[3][0]  ( .D(n214), .E(n301), .CK(w_clk), .Q(\mem[3][0] ) );
  EDFFX1 \mem_reg[2][3]  ( .D(n284), .E(n304), .CK(w_clk), .Q(\mem[2][3] ) );
  EDFFX1 \mem_reg[2][2]  ( .D(n282), .E(n304), .CK(w_clk), .Q(\mem[2][2] ) );
  EDFFX1 \mem_reg[2][1]  ( .D(n240), .E(n304), .CK(w_clk), .Q(\mem[2][1] ) );
  EDFFX1 \mem_reg[2][0]  ( .D(n214), .E(n304), .CK(w_clk), .Q(\mem[2][0] ) );
  EDFFX1 \mem_reg[1][3]  ( .D(n284), .E(n294), .CK(w_clk), .Q(\mem[1][3] ) );
  EDFFX1 \mem_reg[1][2]  ( .D(n282), .E(n294), .CK(w_clk), .Q(\mem[1][2] ) );
  EDFFX1 \mem_reg[1][1]  ( .D(n240), .E(n294), .CK(w_clk), .Q(\mem[1][1] ) );
  EDFFX1 \mem_reg[1][0]  ( .D(n214), .E(n294), .CK(w_clk), .Q(\mem[1][0] ) );
  EDFFX1 \mem_reg[0][3]  ( .D(n284), .E(n305), .CK(w_clk), .Q(\mem[0][3] ) );
  EDFFX1 \mem_reg[0][2]  ( .D(n282), .E(n305), .CK(w_clk), .Q(\mem[0][2] ) );
  EDFFX1 \mem_reg[0][1]  ( .D(n240), .E(n305), .CK(w_clk), .Q(\mem[0][1] ) );
  EDFFX1 \mem_reg[0][0]  ( .D(n214), .E(n305), .CK(w_clk), .Q(\mem[0][0] ) );
  EDFFX1 \mem_reg[15][7]  ( .D(n293), .E(n308), .CK(w_clk), .Q(\mem[15][7] )
         );
  EDFFX1 \mem_reg[15][6]  ( .D(n291), .E(n308), .CK(w_clk), .Q(\mem[15][6] )
         );
  EDFFX1 \mem_reg[15][5]  ( .D(n289), .E(n308), .CK(w_clk), .Q(\mem[15][5] )
         );
  EDFFX1 \mem_reg[15][4]  ( .D(n287), .E(n308), .CK(w_clk), .Q(\mem[15][4] )
         );
  EDFFX1 \mem_reg[14][7]  ( .D(n293), .E(n298), .CK(w_clk), .Q(\mem[14][7] )
         );
  EDFFX1 \mem_reg[14][6]  ( .D(n291), .E(n298), .CK(w_clk), .Q(\mem[14][6] )
         );
  EDFFX1 \mem_reg[14][5]  ( .D(n289), .E(n298), .CK(w_clk), .Q(\mem[14][5] )
         );
  EDFFX1 \mem_reg[14][4]  ( .D(n287), .E(n298), .CK(w_clk), .Q(\mem[14][4] )
         );
  EDFFX1 \mem_reg[13][7]  ( .D(n293), .E(n299), .CK(w_clk), .Q(\mem[13][7] )
         );
  EDFFX1 \mem_reg[13][6]  ( .D(n291), .E(n299), .CK(w_clk), .Q(\mem[13][6] )
         );
  EDFFX1 \mem_reg[13][5]  ( .D(n289), .E(n299), .CK(w_clk), .Q(\mem[13][5] )
         );
  EDFFX1 \mem_reg[13][4]  ( .D(n287), .E(n299), .CK(w_clk), .Q(\mem[13][4] )
         );
  EDFFX1 \mem_reg[12][7]  ( .D(n293), .E(n306), .CK(w_clk), .Q(\mem[12][7] )
         );
  EDFFX1 \mem_reg[12][6]  ( .D(n291), .E(n306), .CK(w_clk), .Q(\mem[12][6] )
         );
  EDFFX1 \mem_reg[12][5]  ( .D(n289), .E(n306), .CK(w_clk), .Q(\mem[12][5] )
         );
  EDFFX1 \mem_reg[12][4]  ( .D(n287), .E(n306), .CK(w_clk), .Q(\mem[12][4] )
         );
  EDFFX1 \mem_reg[11][7]  ( .D(n293), .E(n309), .CK(w_clk), .Q(\mem[11][7] )
         );
  EDFFX1 \mem_reg[11][6]  ( .D(n291), .E(n309), .CK(w_clk), .Q(\mem[11][6] )
         );
  EDFFX1 \mem_reg[11][5]  ( .D(n289), .E(n309), .CK(w_clk), .Q(\mem[11][5] )
         );
  EDFFX1 \mem_reg[11][4]  ( .D(n287), .E(n309), .CK(w_clk), .Q(\mem[11][4] )
         );
  EDFFX1 \mem_reg[10][7]  ( .D(n293), .E(n295), .CK(w_clk), .Q(\mem[10][7] )
         );
  EDFFX1 \mem_reg[10][6]  ( .D(n291), .E(n295), .CK(w_clk), .Q(\mem[10][6] )
         );
  EDFFX1 \mem_reg[10][5]  ( .D(n289), .E(n295), .CK(w_clk), .Q(\mem[10][5] )
         );
  EDFFX1 \mem_reg[10][4]  ( .D(n287), .E(n295), .CK(w_clk), .Q(\mem[10][4] )
         );
  EDFFX1 \mem_reg[9][7]  ( .D(n293), .E(n300), .CK(w_clk), .Q(\mem[9][7] ) );
  EDFFX1 \mem_reg[9][6]  ( .D(n291), .E(n300), .CK(w_clk), .Q(\mem[9][6] ) );
  EDFFX1 \mem_reg[9][5]  ( .D(n289), .E(n300), .CK(w_clk), .Q(\mem[9][5] ) );
  EDFFX1 \mem_reg[9][4]  ( .D(n287), .E(n300), .CK(w_clk), .Q(\mem[9][4] ) );
  EDFFX1 \mem_reg[8][7]  ( .D(n293), .E(n307), .CK(w_clk), .Q(\mem[8][7] ) );
  EDFFX1 \mem_reg[8][6]  ( .D(n291), .E(n307), .CK(w_clk), .Q(\mem[8][6] ) );
  EDFFX1 \mem_reg[8][5]  ( .D(n289), .E(n307), .CK(w_clk), .Q(\mem[8][5] ) );
  EDFFX1 \mem_reg[8][4]  ( .D(n287), .E(n307), .CK(w_clk), .Q(\mem[8][4] ) );
  EDFFX1 \mem_reg[7][7]  ( .D(n292), .E(n302), .CK(w_clk), .Q(\mem[7][7] ) );
  EDFFX1 \mem_reg[7][6]  ( .D(n290), .E(n302), .CK(w_clk), .Q(\mem[7][6] ) );
  EDFFX1 \mem_reg[7][5]  ( .D(n288), .E(n302), .CK(w_clk), .Q(\mem[7][5] ) );
  EDFFX1 \mem_reg[7][4]  ( .D(n286), .E(n302), .CK(w_clk), .Q(\mem[7][4] ) );
  EDFFX1 \mem_reg[6][7]  ( .D(n292), .E(n296), .CK(w_clk), .Q(\mem[6][7] ) );
  EDFFX1 \mem_reg[6][6]  ( .D(n290), .E(n296), .CK(w_clk), .Q(\mem[6][6] ) );
  EDFFX1 \mem_reg[6][5]  ( .D(n288), .E(n296), .CK(w_clk), .Q(\mem[6][5] ) );
  EDFFX1 \mem_reg[6][4]  ( .D(n286), .E(n296), .CK(w_clk), .Q(\mem[6][4] ) );
  EDFFX1 \mem_reg[5][7]  ( .D(n292), .E(n297), .CK(w_clk), .Q(\mem[5][7] ) );
  EDFFX1 \mem_reg[5][6]  ( .D(n290), .E(n297), .CK(w_clk), .Q(\mem[5][6] ) );
  EDFFX1 \mem_reg[5][5]  ( .D(n288), .E(n297), .CK(w_clk), .Q(\mem[5][5] ) );
  EDFFX1 \mem_reg[5][4]  ( .D(n286), .E(n297), .CK(w_clk), .Q(\mem[5][4] ) );
  EDFFX1 \mem_reg[4][7]  ( .D(n292), .E(n303), .CK(w_clk), .Q(\mem[4][7] ) );
  EDFFX1 \mem_reg[4][6]  ( .D(n290), .E(n303), .CK(w_clk), .Q(\mem[4][6] ) );
  EDFFX1 \mem_reg[4][5]  ( .D(n288), .E(n303), .CK(w_clk), .Q(\mem[4][5] ) );
  EDFFX1 \mem_reg[4][4]  ( .D(n286), .E(n303), .CK(w_clk), .Q(\mem[4][4] ) );
  EDFFX1 \mem_reg[3][7]  ( .D(n292), .E(n301), .CK(w_clk), .Q(\mem[3][7] ) );
  EDFFX1 \mem_reg[3][6]  ( .D(n290), .E(n301), .CK(w_clk), .Q(\mem[3][6] ) );
  EDFFX1 \mem_reg[3][5]  ( .D(n288), .E(n301), .CK(w_clk), .Q(\mem[3][5] ) );
  EDFFX1 \mem_reg[3][4]  ( .D(n286), .E(n301), .CK(w_clk), .Q(\mem[3][4] ) );
  EDFFX1 \mem_reg[2][7]  ( .D(n292), .E(n304), .CK(w_clk), .Q(\mem[2][7] ) );
  EDFFX1 \mem_reg[2][6]  ( .D(n290), .E(n304), .CK(w_clk), .Q(\mem[2][6] ) );
  EDFFX1 \mem_reg[2][5]  ( .D(n288), .E(n304), .CK(w_clk), .Q(\mem[2][5] ) );
  EDFFX1 \mem_reg[2][4]  ( .D(n286), .E(n304), .CK(w_clk), .Q(\mem[2][4] ) );
  EDFFX1 \mem_reg[1][7]  ( .D(n292), .E(n294), .CK(w_clk), .Q(\mem[1][7] ) );
  EDFFX1 \mem_reg[1][6]  ( .D(n290), .E(n294), .CK(w_clk), .Q(\mem[1][6] ) );
  EDFFX1 \mem_reg[1][5]  ( .D(n288), .E(n294), .CK(w_clk), .Q(\mem[1][5] ) );
  EDFFX1 \mem_reg[1][4]  ( .D(n286), .E(n294), .CK(w_clk), .Q(\mem[1][4] ) );
  EDFFX1 \mem_reg[0][7]  ( .D(n292), .E(n305), .CK(w_clk), .Q(\mem[0][7] ) );
  EDFFX1 \mem_reg[0][6]  ( .D(n290), .E(n305), .CK(w_clk), .Q(\mem[0][6] ) );
  EDFFX1 \mem_reg[0][5]  ( .D(n288), .E(n305), .CK(w_clk), .Q(\mem[0][5] ) );
  EDFFX1 \mem_reg[0][4]  ( .D(n286), .E(n305), .CK(w_clk), .Q(\mem[0][4] ) );
  EDFFX1 \r_data_out_reg[7]  ( .D(N34), .E(N26), .CK(r_clk), .Q(r_data[7]) );
  EDFFX1 \r_data_out_reg[6]  ( .D(N33), .E(N26), .CK(r_clk), .Q(r_data[6]) );
  EDFFX1 \r_data_out_reg[5]  ( .D(N32), .E(N26), .CK(r_clk), .Q(r_data[5]) );
  EDFFX1 \r_data_out_reg[4]  ( .D(N31), .E(N26), .CK(r_clk), .Q(r_data[4]) );
  EDFFX1 \r_data_out_reg[3]  ( .D(N30), .E(N26), .CK(r_clk), .Q(r_data[3]) );
  EDFFX1 \r_data_out_reg[2]  ( .D(N29), .E(N26), .CK(r_clk), .Q(r_data[2]) );
  EDFFX1 \r_data_out_reg[1]  ( .D(N28), .E(N26), .CK(r_clk), .Q(r_data[1]) );
  EDFFX1 \r_data_out_reg[0]  ( .D(N27), .E(N26), .CK(r_clk), .Q(r_data[0]) );
  NAND3X4 U3 ( .A(n340), .B(n345), .C(n339), .Y(n150) );
  NOR2X2 U4 ( .A(n343), .B(N14), .Y(n162) );
  NOR2X2 U5 ( .A(n344), .B(N13), .Y(n165) );
  NOR2X2 U6 ( .A(N14), .B(N13), .Y(n201) );
  BUFX5 U7 ( .A(w_data[0]), .Y(n214) );
  BUFX5 U8 ( .A(w_data[0]), .Y(n227) );
  BUFX5 U9 ( .A(w_data[1]), .Y(n240) );
  BUFX5 U10 ( .A(w_data[1]), .Y(n253) );
  BUFX5 U11 ( .A(w_data[2]), .Y(n282) );
  BUFX5 U12 ( .A(w_data[2]), .Y(n283) );
  BUFX5 U13 ( .A(w_data[3]), .Y(n284) );
  BUFX5 U14 ( .A(w_data[3]), .Y(n285) );
  BUFX5 U15 ( .A(w_data[4]), .Y(n286) );
  BUFX5 U16 ( .A(w_data[4]), .Y(n287) );
  BUFX5 U17 ( .A(w_data[5]), .Y(n288) );
  BUFX5 U18 ( .A(w_data[5]), .Y(n289) );
  BUFX5 U19 ( .A(w_data[6]), .Y(n290) );
  BUFX5 U20 ( .A(w_data[6]), .Y(n291) );
  BUFX5 U21 ( .A(w_data[7]), .Y(n292) );
  BUFX5 U22 ( .A(w_data[7]), .Y(n293) );
  NAND3X4 U23 ( .A(n339), .B(n340), .C(w_addr[3]), .Y(n151) );
  NAND2X3 U24 ( .A(w_addr[2]), .B(w_addr[1]), .Y(n148) );
  NAND3X4 U25 ( .A(w_addr[0]), .B(n345), .C(n339), .Y(n145) );
  NAND3X3 U26 ( .A(n339), .B(w_addr[0]), .C(w_addr[3]), .Y(n152) );
  OR2X2 U27 ( .A(n145), .B(n147), .Y(n267) );
  INVX5 U28 ( .A(n267), .Y(n294) );
  OR2X2 U29 ( .A(n146), .B(n151), .Y(n277) );
  INVX5 U30 ( .A(n277), .Y(n295) );
  OR2X2 U31 ( .A(n148), .B(n150), .Y(n271) );
  INVX5 U32 ( .A(n271), .Y(n296) );
  OR2X2 U33 ( .A(n145), .B(n149), .Y(n269) );
  INVX5 U34 ( .A(n269), .Y(n297) );
  OR2X2 U35 ( .A(n148), .B(n151), .Y(n274) );
  INVX5 U36 ( .A(n274), .Y(n298) );
  OR2X2 U37 ( .A(n149), .B(n152), .Y(n281) );
  INVX5 U38 ( .A(n281), .Y(n299) );
  OR2X2 U39 ( .A(n147), .B(n152), .Y(n278) );
  INVX5 U40 ( .A(n278), .Y(n300) );
  OR2X2 U41 ( .A(n145), .B(n146), .Y(n266) );
  INVX5 U42 ( .A(n266), .Y(n301) );
  NAND2X2 U43 ( .A(rst_n), .B(r_en), .Y(n154) );
  OR2X2 U44 ( .A(n145), .B(n148), .Y(n268) );
  INVX5 U45 ( .A(n268), .Y(n302) );
  OR2X2 U46 ( .A(n149), .B(n150), .Y(n270) );
  INVX5 U47 ( .A(n270), .Y(n303) );
  OR2X2 U48 ( .A(n146), .B(n150), .Y(n272) );
  INVX5 U49 ( .A(n272), .Y(n304) );
  OR2X2 U50 ( .A(n147), .B(n150), .Y(n273) );
  INVX5 U51 ( .A(n273), .Y(n305) );
  OR2X2 U52 ( .A(n149), .B(n151), .Y(n276) );
  INVX5 U53 ( .A(n276), .Y(n306) );
  OR2X2 U54 ( .A(n147), .B(n151), .Y(n275) );
  INVX5 U55 ( .A(n275), .Y(n307) );
  OR2X2 U56 ( .A(n148), .B(n152), .Y(n279) );
  INVX5 U57 ( .A(n279), .Y(n308) );
  OR2X2 U58 ( .A(n146), .B(n152), .Y(n280) );
  INVX5 U59 ( .A(n280), .Y(n309) );
  NOR2BX1 U60 ( .AN(n310), .B(n318), .Y(N27) );
  OR4X2 U61 ( .A(n254), .B(n255), .C(n256), .D(n257), .Y(n310) );
  NOR2BX1 U62 ( .AN(n311), .B(n318), .Y(N28) );
  OR4X2 U63 ( .A(n241), .B(n242), .C(n243), .D(n244), .Y(n311) );
  NOR2BX1 U64 ( .AN(n312), .B(n318), .Y(N29) );
  OR4X2 U65 ( .A(n228), .B(n229), .C(n230), .D(n231), .Y(n312) );
  NOR2BX1 U66 ( .AN(n313), .B(n318), .Y(N30) );
  OR4X2 U67 ( .A(n215), .B(n216), .C(n217), .D(n218), .Y(n313) );
  NOR2BX1 U68 ( .AN(n314), .B(n318), .Y(N31) );
  OR4X2 U69 ( .A(n202), .B(n203), .C(n204), .D(n205), .Y(n314) );
  NOR2BX1 U70 ( .AN(n315), .B(n318), .Y(N32) );
  OR4X2 U71 ( .A(n189), .B(n190), .C(n191), .D(n192), .Y(n315) );
  NOR2BX1 U72 ( .AN(n316), .B(n318), .Y(N33) );
  OR4X2 U73 ( .A(n176), .B(n177), .C(n178), .D(n179), .Y(n316) );
  NOR2BX1 U74 ( .AN(n317), .B(n318), .Y(N34) );
  OR4X2 U75 ( .A(n155), .B(n156), .C(n157), .D(n158), .Y(n317) );
  NAND2X5 U76 ( .A(n342), .B(n341), .Y(n171) );
  NOR2X2 U77 ( .A(n344), .B(n343), .Y(n164) );
  NAND2X5 U78 ( .A(N12), .B(n342), .Y(n161) );
  NAND2X5 U79 ( .A(N11), .B(n341), .Y(n174) );
  NAND2X5 U80 ( .A(N12), .B(N11), .Y(n168) );
  CLKBUFX4 U81 ( .A(w_en), .Y(n339) );
  BUFX5 U82 ( .A(n324), .Y(n325) );
  BUFX5 U83 ( .A(n324), .Y(n326) );
  BUFX5 U84 ( .A(n324), .Y(n327) );
  BUFX5 U85 ( .A(n164), .Y(n328) );
  NAND2X5 U86 ( .A(rst_n), .B(n154), .Y(N26) );
  NAND2X4 U87 ( .A(n347), .B(n346), .Y(n147) );
  BUFX5 U88 ( .A(n319), .Y(n320) );
  BUFX5 U89 ( .A(n329), .Y(n330) );
  BUFX5 U90 ( .A(n319), .Y(n321) );
  BUFX5 U91 ( .A(n329), .Y(n331) );
  BUFX5 U92 ( .A(n319), .Y(n322) );
  BUFX5 U93 ( .A(n329), .Y(n332) );
  BUFX5 U94 ( .A(n165), .Y(n323) );
  BUFX5 U95 ( .A(n201), .Y(n333) );
  BUFX5 U96 ( .A(n334), .Y(n335) );
  BUFX5 U97 ( .A(n334), .Y(n336) );
  BUFX5 U98 ( .A(n334), .Y(n337) );
  BUFX5 U99 ( .A(n162), .Y(n338) );
  BUFX2 U100 ( .A(n164), .Y(n324) );
  CLKBUFX6 U101 ( .A(n154), .Y(n318) );
  AOI21X1 U102 ( .A0(n264), .A1(n265), .B0(n174), .Y(n254) );
  AOI21X1 U103 ( .A0(n262), .A1(n263), .B0(n171), .Y(n255) );
  AOI21X1 U104 ( .A0(n251), .A1(n252), .B0(n174), .Y(n241) );
  AOI21X1 U105 ( .A0(n249), .A1(n250), .B0(n171), .Y(n242) );
  AOI21X1 U106 ( .A0(n238), .A1(n239), .B0(n174), .Y(n228) );
  AOI21X1 U107 ( .A0(n236), .A1(n237), .B0(n171), .Y(n229) );
  AOI21X1 U108 ( .A0(n225), .A1(n226), .B0(n174), .Y(n215) );
  AOI21X1 U109 ( .A0(n223), .A1(n224), .B0(n171), .Y(n216) );
  AOI21X1 U110 ( .A0(n212), .A1(n213), .B0(n174), .Y(n202) );
  AOI21X1 U111 ( .A0(n210), .A1(n211), .B0(n171), .Y(n203) );
  AOI21X1 U112 ( .A0(n199), .A1(n200), .B0(n174), .Y(n189) );
  AOI21X1 U113 ( .A0(n197), .A1(n198), .B0(n171), .Y(n190) );
  AOI21X1 U114 ( .A0(n186), .A1(n187), .B0(n174), .Y(n176) );
  AOI21X1 U115 ( .A0(n184), .A1(n185), .B0(n171), .Y(n177) );
  AOI21X1 U116 ( .A0(n172), .A1(n173), .B0(n174), .Y(n155) );
  AOI21X1 U117 ( .A0(n169), .A1(n170), .B0(n171), .Y(n156) );
  NAND2X4 U118 ( .A(w_addr[1]), .B(n346), .Y(n146) );
  NAND2X4 U119 ( .A(w_addr[2]), .B(n347), .Y(n149) );
  INVX2 U120 ( .A(w_addr[2]), .Y(n346) );
  INVX2 U121 ( .A(w_addr[1]), .Y(n347) );
  INVX2 U122 ( .A(w_addr[3]), .Y(n345) );
  BUFX2 U123 ( .A(n201), .Y(n329) );
  BUFX2 U124 ( .A(n165), .Y(n319) );
  BUFX2 U125 ( .A(n162), .Y(n334) );
  AOI22X2 U126 ( .A0(\mem[4][0] ), .A1(n335), .B0(\mem[0][0] ), .B1(n330), .Y(
        n263) );
  AOI22X2 U127 ( .A0(\mem[5][0] ), .A1(n335), .B0(\mem[1][0] ), .B1(n330), .Y(
        n265) );
  AOI22X2 U128 ( .A0(\mem[4][1] ), .A1(n335), .B0(\mem[0][1] ), .B1(n330), .Y(
        n250) );
  AOI22X2 U129 ( .A0(\mem[5][1] ), .A1(n335), .B0(\mem[1][1] ), .B1(n330), .Y(
        n252) );
  AOI22X2 U130 ( .A0(\mem[4][2] ), .A1(n336), .B0(\mem[0][2] ), .B1(n331), .Y(
        n237) );
  AOI22X2 U131 ( .A0(\mem[5][2] ), .A1(n336), .B0(\mem[1][2] ), .B1(n331), .Y(
        n239) );
  AOI22X2 U132 ( .A0(\mem[4][3] ), .A1(n336), .B0(\mem[0][3] ), .B1(n331), .Y(
        n224) );
  AOI22X2 U133 ( .A0(\mem[5][3] ), .A1(n336), .B0(\mem[1][3] ), .B1(n331), .Y(
        n226) );
  AOI22X2 U134 ( .A0(\mem[4][4] ), .A1(n337), .B0(\mem[0][4] ), .B1(n332), .Y(
        n211) );
  AOI22X2 U135 ( .A0(\mem[5][4] ), .A1(n337), .B0(\mem[1][4] ), .B1(n332), .Y(
        n213) );
  AOI22X2 U136 ( .A0(\mem[4][5] ), .A1(n337), .B0(\mem[0][5] ), .B1(n332), .Y(
        n198) );
  AOI22X2 U137 ( .A0(\mem[5][5] ), .A1(n337), .B0(\mem[1][5] ), .B1(n332), .Y(
        n200) );
  AOI22X2 U138 ( .A0(\mem[4][6] ), .A1(n338), .B0(\mem[0][6] ), .B1(n333), .Y(
        n185) );
  AOI22X2 U139 ( .A0(\mem[5][6] ), .A1(n338), .B0(\mem[1][6] ), .B1(n333), .Y(
        n187) );
  AOI22X2 U140 ( .A0(\mem[4][7] ), .A1(n338), .B0(\mem[0][7] ), .B1(n333), .Y(
        n170) );
  AOI22X2 U141 ( .A0(\mem[5][7] ), .A1(n338), .B0(\mem[1][7] ), .B1(n333), .Y(
        n173) );
  AOI22X2 U142 ( .A0(\mem[12][0] ), .A1(n325), .B0(\mem[8][0] ), .B1(n320), 
        .Y(n262) );
  AOI22X2 U143 ( .A0(\mem[13][0] ), .A1(n325), .B0(\mem[9][0] ), .B1(n320), 
        .Y(n264) );
  AOI22X2 U144 ( .A0(\mem[12][1] ), .A1(n325), .B0(\mem[8][1] ), .B1(n320), 
        .Y(n249) );
  AOI22X2 U145 ( .A0(\mem[13][1] ), .A1(n325), .B0(\mem[9][1] ), .B1(n320), 
        .Y(n251) );
  AOI22X2 U146 ( .A0(\mem[12][2] ), .A1(n326), .B0(\mem[8][2] ), .B1(n321), 
        .Y(n236) );
  AOI22X2 U147 ( .A0(\mem[13][2] ), .A1(n326), .B0(\mem[9][2] ), .B1(n321), 
        .Y(n238) );
  AOI22X2 U148 ( .A0(\mem[12][3] ), .A1(n326), .B0(\mem[8][3] ), .B1(n321), 
        .Y(n223) );
  AOI22X2 U149 ( .A0(\mem[13][3] ), .A1(n326), .B0(\mem[9][3] ), .B1(n321), 
        .Y(n225) );
  AOI22X2 U150 ( .A0(\mem[12][4] ), .A1(n327), .B0(\mem[8][4] ), .B1(n322), 
        .Y(n210) );
  AOI22X2 U151 ( .A0(\mem[13][4] ), .A1(n327), .B0(\mem[9][4] ), .B1(n322), 
        .Y(n212) );
  AOI22X2 U152 ( .A0(\mem[12][5] ), .A1(n327), .B0(\mem[8][5] ), .B1(n322), 
        .Y(n197) );
  AOI22X2 U153 ( .A0(\mem[13][5] ), .A1(n327), .B0(\mem[9][5] ), .B1(n322), 
        .Y(n199) );
  AOI22X2 U154 ( .A0(\mem[12][6] ), .A1(n328), .B0(\mem[8][6] ), .B1(n323), 
        .Y(n184) );
  AOI22X2 U155 ( .A0(\mem[13][6] ), .A1(n328), .B0(\mem[9][6] ), .B1(n323), 
        .Y(n186) );
  AOI22X2 U156 ( .A0(\mem[12][7] ), .A1(n328), .B0(\mem[8][7] ), .B1(n323), 
        .Y(n169) );
  AOI22X2 U157 ( .A0(\mem[13][7] ), .A1(n328), .B0(\mem[9][7] ), .B1(n323), 
        .Y(n172) );
  AOI21X1 U158 ( .A0(n260), .A1(n261), .B0(n168), .Y(n256) );
  AOI22X2 U159 ( .A0(\mem[7][0] ), .A1(n335), .B0(\mem[3][0] ), .B1(n330), .Y(
        n261) );
  AOI22X2 U160 ( .A0(\mem[15][0] ), .A1(n325), .B0(\mem[11][0] ), .B1(n320), 
        .Y(n260) );
  AOI21X1 U161 ( .A0(n247), .A1(n248), .B0(n168), .Y(n243) );
  AOI22X2 U162 ( .A0(\mem[7][1] ), .A1(n335), .B0(\mem[3][1] ), .B1(n330), .Y(
        n248) );
  AOI22X2 U163 ( .A0(\mem[15][1] ), .A1(n325), .B0(\mem[11][1] ), .B1(n320), 
        .Y(n247) );
  AOI21X1 U164 ( .A0(n234), .A1(n235), .B0(n168), .Y(n230) );
  AOI22X2 U165 ( .A0(\mem[7][2] ), .A1(n336), .B0(\mem[3][2] ), .B1(n331), .Y(
        n235) );
  AOI22X2 U166 ( .A0(\mem[15][2] ), .A1(n326), .B0(\mem[11][2] ), .B1(n321), 
        .Y(n234) );
  AOI21X1 U167 ( .A0(n221), .A1(n222), .B0(n168), .Y(n217) );
  AOI22X2 U168 ( .A0(\mem[7][3] ), .A1(n336), .B0(\mem[3][3] ), .B1(n331), .Y(
        n222) );
  AOI22X2 U169 ( .A0(\mem[15][3] ), .A1(n326), .B0(\mem[11][3] ), .B1(n321), 
        .Y(n221) );
  AOI21X1 U170 ( .A0(n208), .A1(n209), .B0(n168), .Y(n204) );
  AOI22X2 U171 ( .A0(\mem[7][4] ), .A1(n337), .B0(\mem[3][4] ), .B1(n332), .Y(
        n209) );
  AOI22X2 U172 ( .A0(\mem[15][4] ), .A1(n327), .B0(\mem[11][4] ), .B1(n322), 
        .Y(n208) );
  AOI21X1 U173 ( .A0(n195), .A1(n196), .B0(n168), .Y(n191) );
  AOI22X2 U174 ( .A0(\mem[7][5] ), .A1(n337), .B0(\mem[3][5] ), .B1(n332), .Y(
        n196) );
  AOI22X2 U175 ( .A0(\mem[15][5] ), .A1(n327), .B0(\mem[11][5] ), .B1(n322), 
        .Y(n195) );
  AOI21X1 U176 ( .A0(n182), .A1(n183), .B0(n168), .Y(n178) );
  AOI22X2 U177 ( .A0(\mem[7][6] ), .A1(n338), .B0(\mem[3][6] ), .B1(n333), .Y(
        n183) );
  AOI22X2 U178 ( .A0(\mem[15][6] ), .A1(n328), .B0(\mem[11][6] ), .B1(n323), 
        .Y(n182) );
  AOI21X1 U179 ( .A0(n166), .A1(n167), .B0(n168), .Y(n157) );
  AOI22X2 U180 ( .A0(\mem[7][7] ), .A1(n338), .B0(\mem[3][7] ), .B1(n333), .Y(
        n167) );
  AOI22X2 U181 ( .A0(\mem[15][7] ), .A1(n328), .B0(\mem[11][7] ), .B1(n323), 
        .Y(n166) );
  AOI21X1 U182 ( .A0(n258), .A1(n259), .B0(n161), .Y(n257) );
  AOI22X2 U183 ( .A0(\mem[6][0] ), .A1(n335), .B0(\mem[2][0] ), .B1(n330), .Y(
        n259) );
  AOI22X2 U184 ( .A0(\mem[14][0] ), .A1(n325), .B0(\mem[10][0] ), .B1(n320), 
        .Y(n258) );
  AOI21X1 U185 ( .A0(n245), .A1(n246), .B0(n161), .Y(n244) );
  AOI22X2 U186 ( .A0(\mem[6][1] ), .A1(n335), .B0(\mem[2][1] ), .B1(n330), .Y(
        n246) );
  AOI22X2 U187 ( .A0(\mem[14][1] ), .A1(n325), .B0(\mem[10][1] ), .B1(n320), 
        .Y(n245) );
  AOI21X1 U188 ( .A0(n232), .A1(n233), .B0(n161), .Y(n231) );
  AOI22X2 U189 ( .A0(\mem[6][2] ), .A1(n336), .B0(\mem[2][2] ), .B1(n331), .Y(
        n233) );
  AOI22X2 U190 ( .A0(\mem[14][2] ), .A1(n326), .B0(\mem[10][2] ), .B1(n321), 
        .Y(n232) );
  AOI21X1 U191 ( .A0(n219), .A1(n220), .B0(n161), .Y(n218) );
  AOI22X2 U192 ( .A0(\mem[6][3] ), .A1(n336), .B0(\mem[2][3] ), .B1(n331), .Y(
        n220) );
  AOI22X2 U193 ( .A0(\mem[14][3] ), .A1(n326), .B0(\mem[10][3] ), .B1(n321), 
        .Y(n219) );
  AOI21X1 U194 ( .A0(n206), .A1(n207), .B0(n161), .Y(n205) );
  AOI22X2 U195 ( .A0(\mem[6][4] ), .A1(n337), .B0(\mem[2][4] ), .B1(n332), .Y(
        n207) );
  AOI22X2 U196 ( .A0(\mem[14][4] ), .A1(n327), .B0(\mem[10][4] ), .B1(n322), 
        .Y(n206) );
  AOI21X1 U197 ( .A0(n193), .A1(n194), .B0(n161), .Y(n192) );
  AOI22X2 U198 ( .A0(\mem[6][5] ), .A1(n337), .B0(\mem[2][5] ), .B1(n332), .Y(
        n194) );
  AOI22X2 U199 ( .A0(\mem[14][5] ), .A1(n327), .B0(\mem[10][5] ), .B1(n322), 
        .Y(n193) );
  AOI21X1 U200 ( .A0(n180), .A1(n181), .B0(n161), .Y(n179) );
  AOI22X2 U201 ( .A0(\mem[6][6] ), .A1(n338), .B0(\mem[2][6] ), .B1(n333), .Y(
        n181) );
  AOI22X2 U202 ( .A0(\mem[14][6] ), .A1(n328), .B0(\mem[10][6] ), .B1(n323), 
        .Y(n180) );
  AOI21X1 U203 ( .A0(n159), .A1(n160), .B0(n161), .Y(n158) );
  AOI22X2 U204 ( .A0(\mem[6][7] ), .A1(n338), .B0(\mem[2][7] ), .B1(n333), .Y(
        n160) );
  AOI22X2 U205 ( .A0(\mem[14][7] ), .A1(n328), .B0(\mem[10][7] ), .B1(n323), 
        .Y(n159) );
  INVX2 U206 ( .A(w_addr[0]), .Y(n340) );
  CLKINVX2 U207 ( .A(N12), .Y(n341) );
  CLKINVX2 U208 ( .A(N11), .Y(n342) );
  CLKINVX2 U209 ( .A(N14), .Y(n344) );
  CLKINVX2 U210 ( .A(N13), .Y(n343) );
endmodule


module UartFiFo_FIFO_WIDTH8_FIFO_DEPTH16_ADDR_WIDTH4 ( w_clk, w_rst_n, 
        w_pt_reset, w_en, w_data, r_clk, r_rst_n, r_pt_reset, r_en, r_data, 
        is_empty, is_full );
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_rst_n, w_pt_reset, w_en, r_clk, r_rst_n, r_pt_reset, r_en;
  output is_empty, is_full;
  wire   \w_pt[0] , N33, N34, N35, N39, \r_pt[4] , N74, N75, N76, N81, N82,
         N83, N84, N85, N116, N118, \add_129/carry[4] , \add_129/carry[3] ,
         \add_129/carry[2] , \add_58/carry[4] , \add_58/carry[3] ,
         \add_58/carry[2] , n1, n3, n5, n6, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n90, n91, n92, n93, n95, n96, n97, n98;
  wire   [7:0] r_data_nxt;
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

  OAI2B2X4 U16 ( .A1N(\w_pt[0] ), .A0(n73), .B0(\w_pt[0] ), .B1(n72), .Y(n89)
         );
  OAI2BB1X4 U18 ( .A0N(n71), .A1N(w_en), .B0(w_pt_reset), .Y(n73) );
  NAND3BX4 U26 ( .AN(r_en), .B(r_pt_reset), .C(n92), .Y(N118) );
  bin2gray_BIT_WIDTH5_0 bin2gray_ins_w ( .bin_data({n55, n5, n3, n1, n89}), 
        .gray_data(w_pt_gray_nxt) );
  gray2bin_BIT_WIDTH5_0 gray2bin_ins_w ( .gray_data(w_pt_syn2), .bin_data(
        w_pt_rdomain_nxt) );
  bin2gray_BIT_WIDTH5_1 bin2gray_ins_r ( .bin_data({\r_pt[4] , n67, n66, n69, 
        n68}), .gray_data(r_pt_gray_nxt) );
  gray2bin_BIT_WIDTH5_1 gray2bin_ins_r ( .gray_data(r_pt_syn2), .bin_data(
        r_pt_wdomain_nxt) );
  fifo_ram_DATA_WIDTH8_RAM_DEPTH16_ADDR_WIDTH4 fifo_ram_ins ( .w_clk(w_clk), 
        .r_clk(r_clk), .rst_n(n92), .r_en(r_en), .r_addr({n67, n66, n69, n68}), 
        .r_data(r_data_nxt), .w_en(w_en), .w_addr({n95, n97, n98, \w_pt[0] }), 
        .w_data(w_data) );
  ADDHX1 U61 ( .A(n66), .B(\add_129/carry[2] ), .CO(\add_129/carry[3] ), .S(
        N75) );
  ADDHX1 U62 ( .A(n69), .B(n68), .CO(\add_129/carry[2] ), .S(N74) );
  ADDHX1 U63 ( .A(n67), .B(\add_129/carry[3] ), .CO(\add_129/carry[4] ), .S(
        N76) );
  ADDHX1 U58 ( .A(n98), .B(\w_pt[0] ), .CO(\add_58/carry[2] ), .S(N33) );
  ADDHX1 U59 ( .A(n97), .B(\add_58/carry[2] ), .CO(\add_58/carry[3] ), .S(N34)
         );
  ADDHX2 U60 ( .A(n95), .B(\add_58/carry[3] ), .CO(\add_58/carry[4] ), .S(N35)
         );
  EDFFX2 \r_pt_reg[1]  ( .D(N82), .E(N118), .CK(r_clk), .QN(n54) );
  EDFFX2 \r_pt_reg[0]  ( .D(N81), .E(N118), .CK(r_clk), .QN(n58) );
  EDFFX2 \r_pt_reg[3]  ( .D(N84), .E(N118), .CK(r_clk), .QN(n53) );
  EDFFX2 \r_pt_reg[2]  ( .D(N83), .E(N118), .CK(r_clk), .QN(n57) );
  MX2X1 \r_pt_reg[4]/U3  ( .A(\r_pt[4] ), .B(N85), .S0(N118), .Y(n70) );
  DFFHQX8 \w_pt_reg[0]  ( .D(N39), .CK(w_clk), .Q(\w_pt[0] ) );
  DFFTRX4 \w_pt_reg[1]  ( .D(n1), .RN(n59), .CK(w_clk), .Q(n98) );
  DFFTRX4 \w_pt_reg[2]  ( .D(n3), .RN(n60), .CK(w_clk), .Q(n97) );
  DFFQX4 \r_pt_reg[4]  ( .D(n70), .CK(r_clk), .Q(\r_pt[4] ) );
  DFFTRX2 \r_pt_gray_reg[4]  ( .D(n64), .RN(r_pt_gray_nxt[4]), .CK(r_clk), .Q(
        r_pt_gray[4]) );
  DFFTRX4 \w_pt_reg[3]  ( .D(n5), .RN(w_rst_n), .CK(w_clk), .Q(n95) );
  DFFQX2 is_empty_reg ( .D(N116), .CK(r_clk), .Q(is_empty) );
  DFFTRX2 \r_pt_syn2_reg[4]  ( .D(r_pt_syn1[4]), .RN(n59), .CK(w_clk), .Q(
        r_pt_syn2[4]) );
  DFFTRX2 \r_pt_wdomain_reg[4]  ( .D(r_pt_wdomain_nxt[4]), .RN(n61), .CK(w_clk), .Q(r_pt_wdomain[4]) );
  DFFTRX2 \w_pt_syn2_reg[4]  ( .D(w_pt_syn1[4]), .RN(n64), .CK(r_clk), .Q(
        w_pt_syn2[4]) );
  DFFTRX2 \w_pt_rdomain_reg[4]  ( .D(w_pt_rdomain_nxt[4]), .RN(n65), .CK(r_clk), .Q(w_pt_rdomain[4]) );
  DFFTRX2 \w_pt_reg[4]  ( .D(n55), .RN(n60), .CK(w_clk), .Q(n96), .QN(n6) );
  DFFTRX2 \r_data_reg[3]  ( .D(r_data_nxt[3]), .RN(r_rst_n), .CK(r_clk), .Q(
        r_data[3]) );
  DFFTRX2 \r_data_reg[1]  ( .D(r_data_nxt[1]), .RN(n65), .CK(r_clk), .Q(
        r_data[1]) );
  DFFTRX2 \r_data_reg[7]  ( .D(r_data_nxt[7]), .RN(n64), .CK(r_clk), .Q(
        r_data[7]) );
  DFFTRX2 \r_data_reg[5]  ( .D(r_data_nxt[5]), .RN(r_rst_n), .CK(r_clk), .Q(
        r_data[5]) );
  DFFTRX2 \r_data_reg[0]  ( .D(r_data_nxt[0]), .RN(n92), .CK(r_clk), .Q(
        r_data[0]) );
  DFFTRX2 \r_data_reg[6]  ( .D(r_data_nxt[6]), .RN(n65), .CK(r_clk), .Q(
        r_data[6]) );
  DFFTRX2 \r_data_reg[4]  ( .D(r_data_nxt[4]), .RN(n64), .CK(r_clk), .Q(
        r_data[4]) );
  DFFTRX2 \r_data_reg[2]  ( .D(r_data_nxt[2]), .RN(r_rst_n), .CK(r_clk), .Q(
        r_data[2]) );
  DFFTRX1 \r_pt_syn2_reg[0]  ( .D(r_pt_syn1[0]), .RN(n60), .CK(w_clk), .Q(
        r_pt_syn2[0]) );
  DFFTRX1 \r_pt_syn1_reg[0]  ( .D(r_pt_gray[0]), .RN(n59), .CK(w_clk), .Q(
        r_pt_syn1[0]) );
  DFFTRX1 \w_pt_syn2_reg[0]  ( .D(w_pt_syn1[0]), .RN(n65), .CK(r_clk), .Q(
        w_pt_syn2[0]) );
  DFFTRX1 \w_pt_syn1_reg[0]  ( .D(w_pt_gray[0]), .RN(r_rst_n), .CK(r_clk), .Q(
        w_pt_syn1[0]) );
  DFFTRX2 \w_pt_rdomain_reg[3]  ( .D(w_pt_rdomain_nxt[3]), .RN(n65), .CK(r_clk), .Q(w_pt_rdomain[3]) );
  DFFTRX2 \w_pt_rdomain_reg[0]  ( .D(w_pt_rdomain_nxt[0]), .RN(n64), .CK(r_clk), .Q(w_pt_rdomain[0]) );
  DFFTRX2 \r_pt_wdomain_reg[1]  ( .D(r_pt_wdomain_nxt[1]), .RN(n61), .CK(w_clk), .Q(r_pt_wdomain[1]) );
  DFFTRX2 \r_pt_wdomain_reg[2]  ( .D(r_pt_wdomain_nxt[2]), .RN(n59), .CK(w_clk), .Q(r_pt_wdomain[2]) );
  DFFTRX2 \w_pt_rdomain_reg[2]  ( .D(w_pt_rdomain_nxt[2]), .RN(r_rst_n), .CK(
        r_clk), .Q(w_pt_rdomain[2]) );
  DFFTRX2 \w_pt_rdomain_reg[1]  ( .D(w_pt_rdomain_nxt[1]), .RN(n65), .CK(r_clk), .Q(w_pt_rdomain[1]) );
  DFFTRX1 \r_pt_syn2_reg[3]  ( .D(r_pt_syn1[3]), .RN(n59), .CK(w_clk), .Q(
        r_pt_syn2[3]) );
  DFFTRX1 \r_pt_syn1_reg[3]  ( .D(r_pt_gray[3]), .RN(n61), .CK(w_clk), .Q(
        r_pt_syn1[3]) );
  DFFTRX1 \r_pt_syn2_reg[2]  ( .D(r_pt_syn1[2]), .RN(n61), .CK(w_clk), .Q(
        r_pt_syn2[2]) );
  DFFTRX1 \r_pt_syn1_reg[2]  ( .D(r_pt_gray[2]), .RN(n60), .CK(w_clk), .Q(
        r_pt_syn1[2]) );
  DFFTRX1 \r_pt_syn2_reg[1]  ( .D(r_pt_syn1[1]), .RN(n60), .CK(w_clk), .Q(
        r_pt_syn2[1]) );
  DFFTRX1 \r_pt_syn1_reg[1]  ( .D(r_pt_gray[1]), .RN(n59), .CK(w_clk), .Q(
        r_pt_syn1[1]) );
  DFFTRX1 \w_pt_syn2_reg[3]  ( .D(w_pt_syn1[3]), .RN(n65), .CK(r_clk), .Q(
        w_pt_syn2[3]) );
  DFFTRX1 \w_pt_syn1_reg[3]  ( .D(w_pt_gray[3]), .RN(n63), .CK(r_clk), .Q(
        w_pt_syn1[3]) );
  DFFTRX1 \w_pt_syn2_reg[2]  ( .D(w_pt_syn1[2]), .RN(r_rst_n), .CK(r_clk), .Q(
        w_pt_syn2[2]) );
  DFFTRX1 \w_pt_syn1_reg[2]  ( .D(w_pt_gray[2]), .RN(n64), .CK(r_clk), .Q(
        w_pt_syn1[2]) );
  DFFTRX1 \w_pt_syn2_reg[1]  ( .D(w_pt_syn1[1]), .RN(n64), .CK(r_clk), .Q(
        w_pt_syn2[1]) );
  DFFTRX1 \w_pt_syn1_reg[1]  ( .D(w_pt_gray[1]), .RN(n65), .CK(r_clk), .Q(
        w_pt_syn1[1]) );
  DFFTRX2 \r_pt_wdomain_reg[3]  ( .D(r_pt_wdomain_nxt[3]), .RN(n60), .CK(w_clk), .Q(r_pt_wdomain[3]) );
  DFFTRX2 \r_pt_wdomain_reg[0]  ( .D(r_pt_wdomain_nxt[0]), .RN(n61), .CK(w_clk), .Q(r_pt_wdomain[0]) );
  DFFTRX2 \r_pt_syn1_reg[4]  ( .D(r_pt_gray[4]), .RN(n59), .CK(w_clk), .Q(
        r_pt_syn1[4]) );
  DFFTRX1 \w_pt_syn1_reg[4]  ( .D(w_pt_gray[4]), .RN(r_rst_n), .CK(r_clk), .Q(
        w_pt_syn1[4]) );
  DFFTRX2 \w_pt_gray_reg[4]  ( .D(w_pt_gray_nxt[4]), .RN(n60), .CK(w_clk), .Q(
        w_pt_gray[4]) );
  DFFTRX2 \w_pt_gray_reg[0]  ( .D(w_pt_gray_nxt[0]), .RN(n61), .CK(w_clk), .Q(
        w_pt_gray[0]) );
  DFFTRX2 \w_pt_gray_reg[2]  ( .D(w_pt_gray_nxt[2]), .RN(n59), .CK(w_clk), .Q(
        w_pt_gray[2]) );
  DFFTRX2 \w_pt_gray_reg[1]  ( .D(w_pt_gray_nxt[1]), .RN(n60), .CK(w_clk), .Q(
        w_pt_gray[1]) );
  DFFTRX2 \w_pt_gray_reg[3]  ( .D(w_pt_gray_nxt[3]), .RN(n61), .CK(w_clk), .Q(
        w_pt_gray[3]) );
  DFFTRX2 \r_pt_gray_reg[3]  ( .D(r_pt_gray_nxt[3]), .RN(n64), .CK(r_clk), .Q(
        r_pt_gray[3]) );
  DFFTRX2 \r_pt_gray_reg[2]  ( .D(r_pt_gray_nxt[2]), .RN(n63), .CK(r_clk), .Q(
        r_pt_gray[2]) );
  DFFTRX2 \r_pt_gray_reg[1]  ( .D(r_pt_gray_nxt[1]), .RN(n63), .CK(r_clk), .Q(
        r_pt_gray[1]) );
  DFFTRX2 \r_pt_gray_reg[0]  ( .D(r_pt_gray_nxt[0]), .RN(n63), .CK(r_clk), .Q(
        r_pt_gray[0]) );
  AO2B2BX2 U3 ( .A0(N35), .A1N(n72), .B0(n95), .B1N(n73), .Y(n5) );
  AO2B2BX2 U4 ( .A0(N34), .A1N(n72), .B0(n97), .B1N(n73), .Y(n3) );
  AO2B2BX2 U5 ( .A0(N33), .A1N(n72), .B0(n98), .B1N(n73), .Y(n1) );
  INVX2 U6 ( .A(r_rst_n), .Y(n62) );
  OR2X2 U7 ( .A(n90), .B(n91), .Y(n55) );
  CLKBUFX4 U8 ( .A(n63), .Y(n92) );
  OR2X2 U9 ( .A(n93), .B(n96), .Y(n56) );
  BUFX5 U10 ( .A(w_rst_n), .Y(n59) );
  BUFX5 U11 ( .A(w_rst_n), .Y(n60) );
  CLKBUFX4 U12 ( .A(w_rst_n), .Y(n61) );
  INVX4 U13 ( .A(n62), .Y(n63) );
  INVX5 U14 ( .A(n62), .Y(n64) );
  INVX5 U15 ( .A(n62), .Y(n65) );
  INVX5 U17 ( .A(n57), .Y(n66) );
  INVX5 U19 ( .A(n53), .Y(n67) );
  INVX5 U20 ( .A(n58), .Y(n68) );
  INVX5 U21 ( .A(n54), .Y(n69) );
  NOR2X2 U22 ( .A(n72), .B(n56), .Y(n90) );
  NOR2X1 U23 ( .A(n6), .B(n74), .Y(n91) );
  INVX2 U24 ( .A(\add_58/carry[4] ), .Y(n93) );
  OA21X1 U25 ( .A0(n72), .A1(\add_58/carry[4] ), .B0(n73), .Y(n74) );
  NOR2X1 U27 ( .A(n68), .B(n76), .Y(N81) );
  NAND3X3 U28 ( .A(r_pt_reset), .B(r_en), .C(n92), .Y(n76) );
  NOR2BX1 U29 ( .AN(N76), .B(n76), .Y(N84) );
  NOR2BX1 U30 ( .AN(N75), .B(n76), .Y(N83) );
  NOR2BX1 U31 ( .AN(N74), .B(n76), .Y(N82) );
  NAND3X4 U32 ( .A(w_en), .B(n71), .C(w_pt_reset), .Y(n72) );
  AND2X2 U33 ( .A(n89), .B(w_rst_n), .Y(N39) );
  OAI31X2 U34 ( .A0(n83), .A1(n84), .A2(n85), .B0(n92), .Y(N116) );
  XOR2X1 U35 ( .A(w_pt_rdomain[3]), .B(n67), .Y(n85) );
  XOR2X1 U36 ( .A(w_pt_rdomain[0]), .B(n68), .Y(n84) );
  NAND3X2 U37 ( .A(n86), .B(n87), .C(n88), .Y(n83) );
  INVX2 U38 ( .A(n71), .Y(is_full) );
  NOR2X2 U39 ( .A(n75), .B(n76), .Y(N85) );
  XNOR2X1 U40 ( .A(\r_pt[4] ), .B(\add_129/carry[4] ), .Y(n75) );
  NAND4X4 U41 ( .A(n77), .B(n78), .C(w_rst_n), .D(n79), .Y(n71) );
  XNOR2X1 U42 ( .A(r_pt_wdomain[1]), .B(n98), .Y(n78) );
  XNOR2X1 U43 ( .A(r_pt_wdomain[2]), .B(n97), .Y(n77) );
  NOR3X2 U44 ( .A(n80), .B(n81), .C(n82), .Y(n79) );
  XNOR2X1 U45 ( .A(r_pt_wdomain[4]), .B(n96), .Y(n81) );
  XOR2X1 U46 ( .A(\w_pt[0] ), .B(r_pt_wdomain[0]), .Y(n82) );
  XOR2X1 U47 ( .A(n95), .B(r_pt_wdomain[3]), .Y(n80) );
  XNOR2X1 U48 ( .A(w_pt_rdomain[2]), .B(n66), .Y(n88) );
  XNOR2X1 U49 ( .A(w_pt_rdomain[1]), .B(n69), .Y(n87) );
  XNOR2X1 U50 ( .A(\r_pt[4] ), .B(w_pt_rdomain[4]), .Y(n86) );
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
  ADDHX1 U4 ( .A(cnt_p[1]), .B(cnt_p[0]), .CO(\add_34/carry[2] ), .S(N6) );
  ADDHX1 U15 ( .A(cnt_p[3]), .B(\add_34/carry[3] ), .CO(\add_34/carry[4] ), 
        .S(N8) );
  XOR2X1 U3 ( .A(clk_out), .B(n1), .Y(n3) );
  CLKBUFX4 U5 ( .A(rst_n), .Y(n6) );
  NOR2BX1 U6 ( .AN(N6), .B(n1), .Y(N11) );
  NOR2BX1 U7 ( .AN(N7), .B(n1), .Y(N12) );
  NOR2BX1 U8 ( .AN(N8), .B(n1), .Y(N13) );
  AND3X4 U9 ( .A(cnt_p[2]), .B(cnt_p[1]), .C(n5), .Y(n1) );
  NOR3X2 U10 ( .A(n7), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n5) );
  NOR2X2 U11 ( .A(n1), .B(n4), .Y(N14) );
  XNOR2X1 U12 ( .A(cnt_p[4]), .B(\add_34/carry[4] ), .Y(n4) );
  INVX2 U13 ( .A(cnt_p[0]), .Y(n7) );
endmodule


module UartIf ( clk_uart, rst_n, txd_from_fifo, fifo_empty, r_en, txd, 
        rxd_int_in, rxd, r_data, rxd_int );
  input [7:0] txd_from_fifo;
  output [7:0] r_data;
  input clk_uart, rst_n, fifo_empty, rxd_int_in, rxd;
  output r_en, txd, rxd_int;
  wire   n107, n108, clk_tx, tx_status, N47, N48, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, N59, N60, N61, N62, N63, N64, int_hold, rx_status,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N117, N118, N119, N120, N122, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N139, N147, N150, n1, n94, n96,
         n98, n100, n101, n102, n103, n104, n105, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n109, n110, n111, n112, n113, n114, n115, n116, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148;
  wire   [3:0] tx_bit_cnt;
  wire   [11:0] tx_tmp;
  wire   [2:0] start_cnt;
  wire   [3:0] sample_cnt;
  wire   [3:0] bit_cnt;
  wire   [8:0] rx_tmp;

  NOR2X8 U87 ( .A(n129), .B(n94), .Y(n40) );
  ClkDiv_DIV_NUM16 ClkDiv_tx ( .clk_in(clk_uart), .rst_n(n127), .clk_out(
        clk_tx) );
  EDFFX2 \rx_tmp_reg[6]  ( .D(N130), .E(n124), .CK(clk_uart), .Q(rx_tmp[6]), 
        .QN(n101) );
  EDFFX2 \rx_tmp_reg[2]  ( .D(N126), .E(n124), .CK(clk_uart), .Q(rx_tmp[2]), 
        .QN(n105) );
  EDFFX2 \rx_tmp_reg[4]  ( .D(N128), .E(n124), .CK(clk_uart), .Q(rx_tmp[4]), 
        .QN(n103) );
  EDFFX2 \rx_tmp_reg[1]  ( .D(N125), .E(n124), .CK(clk_uart), .Q(rx_tmp[1]), 
        .QN(n1) );
  EDFFX2 \bit_cnt_reg[1]  ( .D(N120), .E(N150), .CK(clk_uart), .QN(n96) );
  EDFFX2 \rx_tmp_reg[8]  ( .D(N132), .E(N139), .CK(clk_uart), .Q(rx_tmp[8]) );
  EDFFX2 \start_cnt_reg[2]  ( .D(N114), .E(n140), .CK(clk_uart), .Q(
        start_cnt[2]) );
  EDFFX2 \sample_cnt_reg[3]  ( .D(N118), .E(n116), .CK(clk_uart), .Q(
        sample_cnt[3]) );
  EDFFX2 \bit_cnt_reg[3]  ( .D(N122), .E(N150), .CK(clk_uart), .QN(n98) );
  EDFFX2 \bit_cnt_reg[2]  ( .D(n88), .E(N150), .CK(clk_uart), .Q(bit_cnt[2]), 
        .QN(n139) );
  EDFFX2 \sample_cnt_reg[0]  ( .D(N115), .E(n116), .CK(clk_uart), .Q(
        sample_cnt[0]) );
  EDFFX2 \rx_tmp_reg[7]  ( .D(N131), .E(n124), .CK(clk_uart), .QN(n100) );
  EDFFX2 \rx_tmp_reg[5]  ( .D(N129), .E(n124), .CK(clk_uart), .QN(n102) );
  EDFFX2 \rx_tmp_reg[3]  ( .D(N127), .E(n124), .CK(clk_uart), .QN(n104) );
  EDFFX1 \r_data_out_reg[4]  ( .D(N107), .E(n123), .CK(clk_uart), .Q(r_data[4]) );
  EDFFX1 \r_data_out_reg[3]  ( .D(N106), .E(n123), .CK(clk_uart), .Q(r_data[3]) );
  EDFFX1 \r_data_out_reg[2]  ( .D(N105), .E(n123), .CK(clk_uart), .Q(r_data[2]) );
  EDFFX1 \r_data_out_reg[1]  ( .D(N104), .E(n123), .CK(clk_uart), .Q(r_data[1]) );
  EDFFX1 \r_data_out_reg[0]  ( .D(N103), .E(n123), .CK(clk_uart), .Q(r_data[0]) );
  EDFFX1 \r_data_out_reg[7]  ( .D(N110), .E(n123), .CK(clk_uart), .Q(r_data[7]) );
  EDFFX1 \r_data_out_reg[6]  ( .D(N109), .E(n109), .CK(clk_uart), .Q(r_data[6]) );
  EDFFX1 \r_data_out_reg[5]  ( .D(N108), .E(n109), .CK(clk_uart), .Q(r_data[5]) );
  MX2X1 \start_cnt_reg[0]/U3  ( .A(start_cnt[0]), .B(N112), .S0(n140), .Y(n113) );
  MX2X1 \start_cnt_reg[1]/U3  ( .A(start_cnt[1]), .B(N113), .S0(n140), .Y(n112) );
  AND2X1 \rx_status_reg/U2  ( .A(n147), .B(n135), .Y(n111) );
  MX2X1 \bit_cnt_reg[0]/U3  ( .A(bit_cnt[0]), .B(N119), .S0(N150), .Y(n110) );
  DFFQX4 \start_cnt_reg[0]  ( .D(n113), .CK(clk_uart), .Q(start_cnt[0]) );
  DFFQX2 rx_status_reg ( .D(n111), .CK(clk_uart), .Q(rx_status) );
  DFFQX4 tx_status_reg ( .D(N47), .CK(clk_tx), .Q(tx_status) );
  DFFQX4 \start_cnt_reg[1]  ( .D(n112), .CK(clk_uart), .Q(start_cnt[1]) );
  DFFQX4 \bit_cnt_reg[0]  ( .D(n110), .CK(clk_uart), .Q(bit_cnt[0]) );
  DFFQX2 \tx_bit_cnt_reg[3]  ( .D(N64), .CK(clk_tx), .Q(tx_bit_cnt[3]) );
  DFFQX2 \tx_bit_cnt_reg[0]  ( .D(N61), .CK(clk_tx), .Q(tx_bit_cnt[0]) );
  DFFQX2 rxd_int_out_reg ( .D(N111), .CK(clk_uart), .Q(rxd_int) );
  DFFQX2 \tx_bit_cnt_reg[1]  ( .D(N62), .CK(clk_tx), .Q(tx_bit_cnt[1]) );
  DFFQX2 \tx_bit_cnt_reg[2]  ( .D(N63), .CK(clk_tx), .Q(tx_bit_cnt[2]) );
  DFFQX2 \tx_tmp_reg[6]  ( .D(N55), .CK(clk_tx), .Q(tx_tmp[6]) );
  DFFQX2 \tx_tmp_reg[4]  ( .D(N53), .CK(clk_tx), .Q(tx_tmp[4]) );
  DFFQX2 \tx_tmp_reg[2]  ( .D(N51), .CK(clk_tx), .Q(tx_tmp[2]) );
  DFFQX2 \tx_tmp_reg[8]  ( .D(N57), .CK(clk_tx), .Q(tx_tmp[8]) );
  DFFQX2 \tx_tmp_reg[0]  ( .D(n141), .CK(clk_tx), .Q(tx_tmp[0]) );
  DFFQX2 int_hold_reg ( .D(N133), .CK(clk_uart), .Q(int_hold) );
  DFFQX2 \tx_tmp_reg[10]  ( .D(N59), .CK(clk_tx), .Q(tx_tmp[10]) );
  DFFQX2 \tx_tmp_reg[11]  ( .D(N60), .CK(clk_tx), .Q(tx_tmp[11]) );
  DFFQX2 \tx_tmp_reg[5]  ( .D(N54), .CK(clk_tx), .Q(tx_tmp[5]) );
  DFFQX2 \tx_tmp_reg[3]  ( .D(N52), .CK(clk_tx), .Q(tx_tmp[3]) );
  DFFQX2 \tx_tmp_reg[7]  ( .D(N56), .CK(clk_tx), .Q(tx_tmp[7]) );
  DFFQX2 \tx_tmp_reg[1]  ( .D(N50), .CK(clk_tx), .Q(tx_tmp[1]) );
  DFFQX2 \tx_tmp_reg[9]  ( .D(N58), .CK(clk_tx), .Q(tx_tmp[9]) );
  EDFFX2 \sample_cnt_reg[1]  ( .D(n136), .E(N147), .CK(clk_uart), .Q(
        sample_cnt[1]) );
  EDFFX2 \sample_cnt_reg[2]  ( .D(N117), .E(N147), .CK(clk_uart), .QN(n138) );
  EDFFX2 \rx_tmp_reg[0]  ( .D(N124), .E(N139), .CK(clk_uart), .Q(rx_tmp[0]) );
  DFFQX2 txd_out_reg ( .D(N48), .CK(clk_tx), .Q(n108) );
  BUFX2 U3 ( .A(N147), .Y(n116) );
  OAI21X4 U4 ( .A0(n94), .A1(n41), .B0(n127), .Y(n109) );
  OAI33X2 U5 ( .A0(n146), .A1(rxd_int_in), .A2(n123), .B0(n41), .B1(rxd_int), 
        .B2(n140), .Y(N133) );
  OAI211X4 U6 ( .A0(rxd), .A1(n134), .B0(n128), .C0(n94), .Y(N147) );
  OAI2B11X1 U7 ( .A1N(txd_from_fifo[0]), .A0(n121), .B0(n128), .C0(n69), .Y(
        N50) );
  OAI2B11X1 U8 ( .A1N(txd_from_fifo[6]), .A0(n121), .B0(n127), .C0(n63), .Y(
        N56) );
  OAI2B11X1 U9 ( .A1N(txd_from_fifo[2]), .A0(n144), .B0(n128), .C0(n67), .Y(
        N52) );
  OAI2B11X1 U10 ( .A1N(txd_from_fifo[4]), .A0(n121), .B0(n128), .C0(n65), .Y(
        N54) );
  AOI221X1 U11 ( .A0(n125), .A1(tx_tmp[1]), .B0(n126), .B1(tx_tmp[0]), .C0(
        n131), .Y(n46) );
  AOI22X1 U12 ( .A0(tx_tmp[9]), .A1(n125), .B0(tx_tmp[8]), .B1(n126), .Y(n62)
         );
  AOI22X1 U13 ( .A0(tx_tmp[8]), .A1(n125), .B0(tx_tmp[7]), .B1(n126), .Y(n63)
         );
  AOI22X1 U14 ( .A0(tx_tmp[3]), .A1(n114), .B0(tx_tmp[2]), .B1(n115), .Y(n68)
         );
  AOI22X1 U15 ( .A0(tx_tmp[2]), .A1(n114), .B0(n115), .B1(tx_tmp[1]), .Y(n69)
         );
  AOI22X1 U16 ( .A0(tx_tmp[5]), .A1(n114), .B0(tx_tmp[4]), .B1(n115), .Y(n66)
         );
  AOI22X1 U17 ( .A0(tx_tmp[4]), .A1(n125), .B0(tx_tmp[3]), .B1(n126), .Y(n67)
         );
  AOI22X1 U18 ( .A0(tx_tmp[7]), .A1(n114), .B0(tx_tmp[6]), .B1(n115), .Y(n64)
         );
  AOI22X1 U19 ( .A0(tx_tmp[6]), .A1(n114), .B0(tx_tmp[5]), .B1(n126), .Y(n65)
         );
  NOR2X4 U20 ( .A(n129), .B(fifo_empty), .Y(N47) );
  NOR3X8 U21 ( .A(fifo_empty), .B(tx_bit_cnt[3]), .C(n49), .Y(n107) );
  AOI22X1 U22 ( .A0(rxd_int_in), .A1(n146), .B0(rxd_int), .B1(int_hold), .Y(
        n78) );
  INVX2 U23 ( .A(bit_cnt[0]), .Y(n120) );
  NOR3X6 U24 ( .A(start_cnt[1]), .B(start_cnt[2]), .C(start_cnt[0]), .Y(n39)
         );
  INVX4 U25 ( .A(rx_status), .Y(n94) );
  NOR2X1 U26 ( .A(start_cnt[0]), .B(start_cnt[1]), .Y(n76) );
  BUFX3 U27 ( .A(n47), .Y(n114) );
  AOI22X2 U28 ( .A0(n107), .A1(n55), .B0(tx_tmp[10]), .B1(n125), .Y(n54) );
  CLKBUFX4 U29 ( .A(n47), .Y(n125) );
  NOR2X2 U30 ( .A(n142), .B(n107), .Y(n47) );
  INVX4 U31 ( .A(n143), .Y(n115) );
  CLKBUFX4 U32 ( .A(n48), .Y(n126) );
  CLKBUFX20 U33 ( .A(n108), .Y(txd) );
  CLKINVX2 U34 ( .A(n144), .Y(r_en) );
  INVX2 U35 ( .A(n107), .Y(n144) );
  INVX5 U36 ( .A(n132), .Y(n127) );
  BUFX2 U37 ( .A(n133), .Y(n132) );
  CLKBUFX6 U38 ( .A(n109), .Y(n123) );
  NAND2X4 U39 ( .A(n98), .B(n73), .Y(n41) );
  BUFX2 U40 ( .A(n132), .Y(n129) );
  INVX5 U41 ( .A(n131), .Y(n128) );
  BUFX2 U42 ( .A(n132), .Y(n130) );
  BUFX2 U43 ( .A(n129), .Y(n131) );
  INVX2 U44 ( .A(rst_n), .Y(n133) );
  NOR2X2 U45 ( .A(n72), .B(n148), .Y(N132) );
  NOR2X6 U46 ( .A(n130), .B(rxd), .Y(n38) );
  INVX2 U47 ( .A(rxd), .Y(n148) );
  INVX5 U48 ( .A(n40), .Y(n140) );
  OAI211X2 U49 ( .A0(n43), .A1(n138), .B0(n75), .C0(n40), .Y(N117) );
  INVX4 U50 ( .A(n51), .Y(n145) );
  CLKBUFX6 U51 ( .A(n72), .Y(n122) );
  NAND2X2 U52 ( .A(n127), .B(n41), .Y(n72) );
  CLKBUFX6 U53 ( .A(N139), .Y(n124) );
  OR2X2 U54 ( .A(n71), .B(n123), .Y(N139) );
  NAND2X2 U55 ( .A(n43), .B(n138), .Y(n75) );
  INVX2 U56 ( .A(n39), .Y(n134) );
  INVX2 U57 ( .A(n44), .Y(n137) );
  CLKBUFX6 U58 ( .A(n144), .Y(n121) );
  INVX2 U59 ( .A(n126), .Y(n143) );
  INVX2 U60 ( .A(n37), .Y(n135) );
  AOI32X2 U61 ( .A0(n94), .A1(n38), .A2(n39), .B0(n40), .B1(n41), .Y(n37) );
  OAI2B11X2 U62 ( .A1N(start_cnt[2]), .A0(n76), .B0(n134), .C0(n38), .Y(N114)
         );
  NAND2X4 U63 ( .A(n70), .B(n127), .Y(N150) );
  AOI31X1 U64 ( .A0(n39), .A1(n148), .A2(n94), .B0(n71), .Y(n70) );
  NAND2X2 U65 ( .A(start_cnt[0]), .B(n38), .Y(N112) );
  NAND2X2 U66 ( .A(n38), .B(n77), .Y(N113) );
  XOR2X1 U67 ( .A(start_cnt[1]), .B(start_cnt[0]), .Y(n77) );
  NOR2X2 U68 ( .A(n140), .B(bit_cnt[0]), .Y(N119) );
  INVX2 U69 ( .A(n42), .Y(n136) );
  AOI211X2 U70 ( .A0(sample_cnt[0]), .A1(sample_cnt[1]), .B0(n43), .C0(n140), 
        .Y(n42) );
  OAI31X2 U71 ( .A0(n139), .A1(n140), .A2(n44), .B0(n45), .Y(n88) );
  NAND3X2 U72 ( .A(n96), .B(N119), .C(n139), .Y(n45) );
  NAND2X5 U73 ( .A(n127), .B(n80), .Y(n79) );
  XOR2X1 U74 ( .A(rx_tmp[8]), .B(n81), .Y(n80) );
  XOR2X1 U75 ( .A(n82), .B(n83), .Y(n81) );
  XOR2X1 U76 ( .A(n86), .B(n87), .Y(n82) );
  OAI21X4 U77 ( .A0(tx_bit_cnt[3]), .A1(n49), .B0(N47), .Y(n51) );
  OAI211X2 U78 ( .A0(n98), .A1(n73), .B0(n41), .C0(n40), .Y(N122) );
  OAI22X1 U79 ( .A0(n140), .A1(n41), .B0(n78), .B1(n131), .Y(N111) );
  OAI2B11X2 U80 ( .A1N(tx_tmp[9]), .A0(n143), .B0(n128), .C0(n54), .Y(N58) );
  XOR2X1 U81 ( .A(n56), .B(n57), .Y(n55) );
  XOR2X1 U82 ( .A(n60), .B(n61), .Y(n56) );
  OAI2B11X2 U83 ( .A1N(txd_from_fifo[1]), .A0(n121), .B0(n128), .C0(n68), .Y(
        N51) );
  OAI2B11X2 U84 ( .A1N(txd_from_fifo[3]), .A0(n121), .B0(n128), .C0(n66), .Y(
        N53) );
  OAI2B11X2 U85 ( .A1N(txd_from_fifo[5]), .A0(n121), .B0(n128), .C0(n64), .Y(
        N55) );
  OAI2B11X2 U86 ( .A1N(txd_from_fifo[7]), .A0(n121), .B0(n127), .C0(n62), .Y(
        N57) );
  OAI2B11X2 U88 ( .A1N(bit_cnt[0]), .A0(n96), .B0(n137), .C0(n40), .Y(N120) );
  NOR2X2 U89 ( .A(n1), .B(n79), .Y(N104) );
  NOR2X2 U90 ( .A(n105), .B(n79), .Y(N105) );
  NOR2X2 U91 ( .A(n104), .B(n79), .Y(N106) );
  NOR2X2 U92 ( .A(n103), .B(n79), .Y(N107) );
  NOR2X2 U93 ( .A(n102), .B(n79), .Y(N108) );
  NOR2X2 U94 ( .A(n101), .B(n79), .Y(N109) );
  NOR2X2 U95 ( .A(n100), .B(n79), .Y(N110) );
  NOR2BX1 U96 ( .AN(rx_tmp[0]), .B(n79), .Y(N103) );
  OAI2B11X2 U97 ( .A1N(tx_tmp[10]), .A0(tx_status), .B0(n121), .C0(n53), .Y(
        N59) );
  AOI21X1 U98 ( .A0(tx_tmp[11]), .A1(tx_status), .B0(n130), .Y(n53) );
  NAND2X2 U99 ( .A(sample_cnt[0]), .B(n40), .Y(N115) );
  NOR2X2 U100 ( .A(n104), .B(n122), .Y(N126) );
  NOR2X2 U101 ( .A(n100), .B(n122), .Y(N130) );
  NOR2X2 U102 ( .A(n102), .B(n122), .Y(N128) );
  OAI2BB1X1 U103 ( .A0N(n49), .A1N(tx_bit_cnt[3]), .B0(n145), .Y(N64) );
  NOR2X2 U104 ( .A(n105), .B(n122), .Y(N125) );
  NOR2X2 U105 ( .A(n1), .B(n122), .Y(N124) );
  NOR2X2 U106 ( .A(n103), .B(n122), .Y(N127) );
  NOR2X2 U107 ( .A(n101), .B(n122), .Y(N129) );
  NOR2BX1 U108 ( .AN(rx_tmp[8]), .B(n122), .Y(N131) );
  OAI2BB2X2 U109 ( .B0(n49), .B1(n51), .A0N(tx_bit_cnt[2]), .A1N(n119), .Y(N63) );
  OAI2BB1X1 U110 ( .A0N(tx_bit_cnt[1]), .A1N(n145), .B0(N61), .Y(n119) );
  NAND2X2 U111 ( .A(tx_bit_cnt[0]), .B(n145), .Y(N61) );
  INVX2 U112 ( .A(n46), .Y(n141) );
  NAND2X2 U113 ( .A(n74), .B(n127), .Y(N118) );
  AOI31X1 U114 ( .A0(rx_status), .A1(n75), .A2(sample_cnt[3]), .B0(n71), .Y(
        n74) );
  INVX2 U115 ( .A(rxd_int_in), .Y(n147) );
  NAND2X2 U116 ( .A(n145), .B(n52), .Y(N62) );
  XOR2X1 U117 ( .A(tx_bit_cnt[1]), .B(tx_bit_cnt[0]), .Y(n52) );
  OR3X2 U118 ( .A(n133), .B(tx_tmp[0]), .C(n142), .Y(N48) );
  OR3X2 U119 ( .A(n130), .B(tx_tmp[11]), .C(n143), .Y(N60) );
  NOR3X6 U120 ( .A(n94), .B(sample_cnt[3]), .C(n75), .Y(n71) );
  NOR2X4 U121 ( .A(sample_cnt[0]), .B(sample_cnt[1]), .Y(n43) );
  NOR2X4 U122 ( .A(n137), .B(bit_cnt[2]), .Y(n73) );
  AND2X2 U123 ( .A(n96), .B(n120), .Y(n44) );
  OR3X4 U124 ( .A(tx_bit_cnt[1]), .B(tx_bit_cnt[2]), .C(tx_bit_cnt[0]), .Y(n49) );
  XOR2X1 U125 ( .A(n84), .B(n85), .Y(n83) );
  XOR2X1 U126 ( .A(rx_tmp[0]), .B(n104), .Y(n84) );
  XOR2X1 U127 ( .A(n102), .B(n100), .Y(n85) );
  XOR2X1 U128 ( .A(txd_from_fifo[5]), .B(txd_from_fifo[4]), .Y(n61) );
  XOR2X1 U129 ( .A(n58), .B(n59), .Y(n57) );
  XOR2X1 U130 ( .A(txd_from_fifo[3]), .B(txd_from_fifo[2]), .Y(n58) );
  XOR2X1 U131 ( .A(txd_from_fifo[1]), .B(txd_from_fifo[0]), .Y(n59) );
  XOR2X1 U132 ( .A(rx_tmp[2]), .B(rx_tmp[1]), .Y(n87) );
  XOR2X1 U133 ( .A(txd_from_fifo[7]), .B(txd_from_fifo[6]), .Y(n60) );
  XOR2X1 U134 ( .A(rx_tmp[6]), .B(rx_tmp[4]), .Y(n86) );
  NOR2X1 U135 ( .A(n107), .B(tx_status), .Y(n48) );
  INVX2 U136 ( .A(int_hold), .Y(n146) );
  INVX2 U137 ( .A(tx_status), .Y(n142) );
endmodule


module Uart_FIFO_DEPTH16_FIFO_WIDTH8_ADDR_WIDTH4 ( fifo_w_clk, tx_clk, rst_n, 
        fifo_w_en, fifo_w_data, rxd_int_in, rxd, is_full, rxd_int, r_data, txd
 );
  input [7:0] fifo_w_data;
  output [7:0] r_data;
  input fifo_w_clk, tx_clk, rst_n, fifo_w_en, rxd_int_in, rxd;
  output is_full, rxd_int, txd;
  wire   fifo_r_en, is_empty, n6, n7, n8, n9, n10;
  wire   [7:0] fifo_r_data;

  UartFiFo_FIFO_WIDTH8_FIFO_DEPTH16_ADDR_WIDTH4 UartFiFo_ins ( .w_clk(
        fifo_w_clk), .w_rst_n(n8), .w_pt_reset(rst_n), .w_en(n9), .w_data(
        fifo_w_data), .r_clk(tx_clk), .r_rst_n(n6), .r_pt_reset(n8), .r_en(
        fifo_r_en), .r_data(fifo_r_data), .is_empty(is_empty), .is_full(
        is_full) );
  UartIf UartIf_ins ( .clk_uart(tx_clk), .rst_n(n10), .txd_from_fifo(
        fifo_r_data), .fifo_empty(is_empty), .r_en(fifo_r_en), .txd(txd), 
        .rxd_int_in(rxd_int_in), .rxd(rxd), .r_data(r_data), .rxd_int(rxd_int)
         );
  INVX2 U1 ( .A(n10), .Y(n7) );
  INVX5 U2 ( .A(n7), .Y(n6) );
  BUFX2 U3 ( .A(rst_n), .Y(n10) );
  INVX5 U4 ( .A(n7), .Y(n8) );
  BUFX2 U5 ( .A(fifo_w_en), .Y(n9) );
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
  wire   n103, t_s_early, N46, N47, N48, N49, N50, N51, N52, N53, n94, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n95, n96, n97, n98, n99, n100, n101, n102, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151;
  wire   [7:0] ini_val;
  assign t_o = n103;

  OAI211X4 U9 ( .A0(n43), .A1(n135), .B0(n44), .C0(n45), .Y(n38) );
  AOI2BB1X4 U12 ( .A0N(n47), .A1N(n138), .B0(n36), .Y(n42) );
  OAI2BB2X4 U13 ( .B0(n49), .B1(n137), .A0N(n43), .A1N(n123), .Y(n36) );
  OAI2B11X4 U32 ( .A1N(n66), .A0(n135), .B0(n146), .C0(n44), .Y(n68) );
  OAI2BB2X4 U35 ( .B0(n66), .B1(n120), .A0N(n64), .A1N(n146), .Y(n70) );
  OAI211X4 U42 ( .A0(n75), .A1(n135), .B0(t_s), .C0(n44), .Y(n76) );
  OA21X4 U43 ( .A0(t_s), .A1(n79), .B0(n80), .Y(n44) );
  NOR3X8 U45 ( .A(n145), .B(n81), .C(n79), .Y(n46) );
  NOR3BX4 U50 ( .AN(n84), .B(n85), .C(n86), .Y(n83) );
  AOI222X4 U62 ( .A0(n95), .A1(n134), .B0(n124), .B1(n93), .C0(n123), .C1(n91), 
        .Y(n97) );
  AOI31X4 U81 ( .A0(tmod[1]), .A1(n136), .A2(tmod[0]), .B0(n126), .Y(n80) );
  EDFFX2 \ini_val_reg[7]  ( .D(N53), .E(n121), .CK(clk), .Q(ini_val[7]) );
  EDFFX2 \ini_val_reg[6]  ( .D(N52), .E(n121), .CK(clk), .Q(ini_val[6]) );
  EDFFX2 \ini_val_reg[2]  ( .D(N48), .E(n121), .CK(clk), .Q(ini_val[2]) );
  EDFFX2 \ini_val_reg[4]  ( .D(N50), .E(n121), .CK(clk), .Q(ini_val[4]) );
  EDFFX2 \ini_val_reg[5]  ( .D(N51), .E(n121), .CK(clk), .Q(ini_val[5]) );
  EDFFX2 \ini_val_reg[0]  ( .D(N46), .E(n121), .CK(clk), .Q(ini_val[0]) );
  EDFFX1 \ini_val_reg[3]  ( .D(N49), .E(n119), .CK(clk), .Q(ini_val[3]) );
  EDFFX1 \ini_val_reg[1]  ( .D(N47), .E(n119), .CK(clk), .Q(ini_val[1]) );
  DFFTRX2 cnt_sig_early_reg ( .D(cnt_sig), .RN(rst_n), .CK(clk), .QN(n94) );
  DFFTRX2 t_s_early_reg ( .D(rst_n), .RN(t_s), .CK(clk), .Q(t_s_early) );
  OAI21X4 U3 ( .A0(t_s_early), .A1(n145), .B0(n128), .Y(n119) );
  BUFX2 U4 ( .A(rst_n), .Y(n129) );
  CLKBUFX4 U5 ( .A(n119), .Y(n121) );
  NOR3BX2 U6 ( .AN(n110), .B(th[7]), .C(th[6]), .Y(n118) );
  NOR2X6 U7 ( .A(th[5]), .B(th[4]), .Y(n92) );
  NOR2X6 U8 ( .A(th[3]), .B(th[2]), .Y(n100) );
  NOR3BX4 U10 ( .AN(n53), .B(tl[4]), .C(tl[5]), .Y(n43) );
  NOR3X8 U11 ( .A(tl[6]), .B(tl[7]), .C(n47), .Y(n81) );
  NOR2X6 U14 ( .A(th[1]), .B(th[0]), .Y(n110) );
  NOR4X6 U15 ( .A(n125), .B(tmod[0]), .C(tmod[1]), .D(tmod[2]), .Y(n48) );
  NOR2X6 U16 ( .A(tl[1]), .B(tl[0]), .Y(n72) );
  CLKAND2X2 U17 ( .A(tl[1]), .B(n128), .Y(N47) );
  NOR3X6 U18 ( .A(tl[2]), .B(tl[3]), .C(n65), .Y(n54) );
  NOR3X6 U19 ( .A(tl[2]), .B(tl[3]), .C(n66), .Y(n53) );
  NOR2X6 U20 ( .A(n61), .B(tl[4]), .Y(n57) );
  OAI2BB1X1 U21 ( .A0N(ini_val[7]), .A1N(n122), .B0(n35), .Y(tl_nxt[7]) );
  OAI2BB1X1 U22 ( .A0N(ini_val[6]), .A1N(n122), .B0(n41), .Y(tl_nxt[6]) );
  AOI2BB2X1 U23 ( .B0(tl[6]), .B1(n38), .A0N(n42), .A1N(tl[6]), .Y(n41) );
  OAI221X1 U24 ( .A0(tl[0]), .A1(n77), .B0(n133), .B1(n149), .C0(n78), .Y(
        tl_nxt[0]) );
  NAND2X2 U25 ( .A(ini_val[0]), .B(n122), .Y(n78) );
  AOI22X2 U26 ( .A0(n46), .A1(n57), .B0(ini_val[4]), .B1(n122), .Y(n60) );
  INVX2 U27 ( .A(n52), .Y(n120) );
  INVX4 U28 ( .A(n123), .Y(n135) );
  NAND2X2 U29 ( .A(ini_val[5]), .B(n122), .Y(n51) );
  NOR2X4 U30 ( .A(n136), .B(n125), .Y(n52) );
  OR3X2 U31 ( .A(n79), .B(n145), .C(n141), .Y(n34) );
  INVX5 U33 ( .A(n34), .Y(n122) );
  NOR2X2 U34 ( .A(n52), .B(n124), .Y(n40) );
  CLKBUFX6 U36 ( .A(n52), .Y(n123) );
  AND3X2 U37 ( .A(t_s), .B(n116), .C(n57), .Y(n111) );
  INVX2 U38 ( .A(tl[2]), .Y(n151) );
  INVX2 U39 ( .A(tmod[2]), .Y(n136) );
  INVX2 U40 ( .A(tl[4]), .Y(n150) );
  INVX5 U41 ( .A(n127), .Y(n125) );
  BUFX2 U44 ( .A(n129), .Y(n127) );
  BUFX2 U46 ( .A(n129), .Y(n128) );
  INVX2 U47 ( .A(n129), .Y(n126) );
  NOR2BX4 U48 ( .AN(n100), .B(n101), .Y(n91) );
  INVX2 U49 ( .A(n90), .Y(n132) );
  OAI222X1 U51 ( .A0(n85), .A1(n82), .B0(n137), .B1(n87), .C0(n135), .C1(n88), 
        .Y(n90) );
  INVX2 U52 ( .A(n108), .Y(n131) );
  OAI222X1 U53 ( .A0(n104), .A1(n82), .B0(n137), .B1(n102), .C0(n120), .C1(
        n101), .Y(n108) );
  NAND3BX2 U54 ( .AN(n98), .B(n84), .C(n95), .Y(n96) );
  OAI22X1 U55 ( .A0(n137), .A1(n93), .B0(n135), .B1(n91), .Y(n98) );
  NAND2X2 U56 ( .A(n91), .B(n92), .Y(n88) );
  NOR2BX4 U57 ( .AN(n100), .B(n104), .Y(n95) );
  NOR2BX4 U58 ( .AN(n100), .B(n102), .Y(n93) );
  INVX4 U59 ( .A(n46), .Y(n138) );
  NAND2X2 U60 ( .A(n139), .B(n110), .Y(n102) );
  NAND2X2 U61 ( .A(n95), .B(n92), .Y(n85) );
  NAND2X2 U63 ( .A(n93), .B(n92), .Y(n87) );
  NAND2X2 U64 ( .A(n82), .B(n137), .Y(n64) );
  INVX2 U65 ( .A(n82), .Y(n134) );
  AOI22X2 U66 ( .A0(n46), .A1(n47), .B0(n124), .B1(n49), .Y(n45) );
  AOI211X2 U67 ( .A0(n124), .A1(n147), .B0(n55), .C0(n56), .Y(n50) );
  OAI22X1 U68 ( .A0(n57), .A1(n138), .B0(n40), .B1(n150), .Y(n55) );
  AOI22X2 U69 ( .A0(n53), .A1(n123), .B0(n64), .B1(n54), .Y(n58) );
  NAND3X2 U70 ( .A(n84), .B(n111), .C(n114), .Y(n112) );
  AOI2BB2X2 U71 ( .B0(n124), .B1(n115), .A0N(n135), .A1N(n109), .Y(n114) );
  OAI21X4 U72 ( .A0(n53), .A1(n120), .B0(n44), .Y(n56) );
  OAI2BB2X2 U73 ( .B0(th[2]), .B1(n131), .A0N(n105), .A1N(th[2]), .Y(th_nxt[2]) );
  OAI2BB2X2 U74 ( .B0(th[0]), .B1(n113), .A0N(n112), .A1N(th[0]), .Y(th_nxt[0]) );
  AOI222X2 U75 ( .A0(n109), .A1(n123), .B0(n139), .B1(n124), .C0(n134), .C1(
        n111), .Y(n113) );
  OAI2B1X1 U76 ( .A1N(th[1]), .A0(n107), .B0(n131), .Y(th_nxt[1]) );
  NOR2X2 U77 ( .A(th[0]), .B(n112), .Y(n107) );
  OAI2BB2X2 U78 ( .B0(th[4]), .B1(n97), .A0N(n96), .A1N(th[4]), .Y(th_nxt[4])
         );
  OAI2B1X1 U79 ( .A1N(th[3]), .A0(n99), .B0(n97), .Y(th_nxt[3]) );
  NOR2X2 U80 ( .A(th[2]), .B(n105), .Y(n99) );
  NAND2X2 U82 ( .A(n75), .B(n72), .Y(n66) );
  NAND2X2 U83 ( .A(n109), .B(n110), .Y(n101) );
  NAND3BX2 U84 ( .AN(n104), .B(n84), .C(n106), .Y(n105) );
  AOI22X2 U85 ( .A0(n124), .A1(n102), .B0(n123), .B1(n101), .Y(n106) );
  OAI2B1X1 U86 ( .A1N(th[5]), .A0(n89), .B0(n132), .Y(th_nxt[5]) );
  NOR2X2 U87 ( .A(th[4]), .B(n96), .Y(n89) );
  INVX2 U88 ( .A(n76), .Y(n133) );
  AO22X2 U89 ( .A0(n124), .A1(n87), .B0(n123), .B1(n88), .Y(n86) );
  OAI32X2 U90 ( .A0(n141), .A1(tmod[0]), .A2(n144), .B0(n117), .B1(n116), .Y(
        n103) );
  AOI21X1 U91 ( .A0(n57), .A1(tmod[0]), .B0(n81), .Y(n117) );
  NAND2X2 U92 ( .A(n57), .B(n148), .Y(n47) );
  NAND2X2 U93 ( .A(n72), .B(n151), .Y(n67) );
  INVX2 U94 ( .A(n81), .Y(n141) );
  NAND2X2 U95 ( .A(n111), .B(n110), .Y(n104) );
  INVX2 U96 ( .A(n115), .Y(n139) );
  NAND4X4 U97 ( .A(tmod[0]), .B(n128), .C(n144), .D(n136), .Y(n82) );
  INVX4 U98 ( .A(n48), .Y(n137) );
  NAND3X2 U99 ( .A(n150), .B(n148), .C(n54), .Y(n49) );
  INVX2 U100 ( .A(n54), .Y(n147) );
  CLKAND2X3 U101 ( .A(n80), .B(n79), .Y(n84) );
  INVX2 U102 ( .A(tmod[1]), .Y(n144) );
  INVX2 U103 ( .A(n65), .Y(n146) );
  NOR2X2 U104 ( .A(n125), .B(n150), .Y(N50) );
  NOR2X2 U105 ( .A(n125), .B(n151), .Y(N48) );
  NOR2X2 U106 ( .A(n125), .B(n140), .Y(N52) );
  NOR2X2 U107 ( .A(n125), .B(n148), .Y(N51) );
  NOR2X2 U108 ( .A(n125), .B(n149), .Y(N46) );
  NOR2X2 U109 ( .A(n125), .B(n142), .Y(N53) );
  NOR3X6 U110 ( .A(cnt_sig), .B(n94), .C(n145), .Y(n75) );
  NOR3X6 U111 ( .A(cnt_sig), .B(n94), .C(n115), .Y(n109) );
  INVX2 U112 ( .A(n69), .Y(tl_nxt[2]) );
  AOI221X2 U113 ( .A0(n68), .A1(tl[2]), .B0(n151), .B1(n70), .C0(n71), .Y(n69)
         );
  AOI221X1 U114 ( .A0(n123), .A1(n75), .B0(t_s), .B1(n64), .C0(n46), .Y(n77)
         );
  OAI211X2 U115 ( .A0(n50), .A1(n148), .B0(n51), .C0(n42), .Y(tl_nxt[5]) );
  OAI2B11X2 U116 ( .A1N(n72), .A0(n138), .B0(n73), .C0(n74), .Y(tl_nxt[1]) );
  OAI21X1 U117 ( .A0(tl[0]), .A1(n76), .B0(tl[1]), .Y(n73) );
  OAI211X2 U118 ( .A0(n61), .A1(n138), .B0(n62), .C0(n63), .Y(tl_nxt[3]) );
  AOI21X1 U119 ( .A0(ini_val[1]), .A1(n122), .B0(n70), .Y(n74) );
  OAI22X1 U120 ( .A0(th[6]), .A1(n132), .B0(n83), .B1(n143), .Y(th_nxt[6]) );
  AOI31X1 U121 ( .A0(n140), .A1(n142), .A2(n36), .B0(n37), .Y(n35) );
  AOI2B1X1 U122 ( .A1N(n38), .A0(n39), .B0(n142), .Y(n37) );
  OAI2BB1X1 U123 ( .A0N(n138), .A1N(n40), .B0(tl[6]), .Y(n39) );
  OAI21X1 U124 ( .A0(n67), .A1(n68), .B0(tl[3]), .Y(n62) );
  OAI21X1 U125 ( .A0(n147), .A1(n56), .B0(tl[4]), .Y(n59) );
  OAI211X2 U126 ( .A0(tl[4]), .A1(n58), .B0(n59), .C0(n60), .Y(tl_nxt[4]) );
  AOI21BX1 U127 ( .A0(ini_val[3]), .A1(n122), .B0N(n58), .Y(n63) );
  AOI21BX2 U128 ( .A0(n83), .A1(n143), .B0N(th[7]), .Y(th_nxt[7]) );
  NAND3X2 U129 ( .A(n92), .B(n100), .C(n118), .Y(n116) );
  NAND3X2 U130 ( .A(t_s), .B(n116), .C(n81), .Y(n115) );
  CLKINVX3 U131 ( .A(t_s), .Y(n145) );
  OAI2BB2X1 U132 ( .B0(n138), .B1(n67), .A0N(ini_val[2]), .A1N(n122), .Y(n71)
         );
  INVX4 U133 ( .A(tl[5]), .Y(n148) );
  OR2X2 U134 ( .A(tl[3]), .B(n67), .Y(n61) );
  CLKBUFX6 U135 ( .A(n48), .Y(n124) );
  CLKNAND2X2 U136 ( .A(t_s), .B(n72), .Y(n65) );
  OR4X4 U137 ( .A(tmod[0]), .B(n144), .C(n126), .D(tmod[2]), .Y(n79) );
  CLKINVX2 U138 ( .A(tl[6]), .Y(n140) );
  INVX2 U139 ( .A(tl[0]), .Y(n149) );
  INVX2 U140 ( .A(tl[7]), .Y(n142) );
  INVX2 U141 ( .A(th[6]), .Y(n143) );
  AND2X2 U142 ( .A(tl[3]), .B(n127), .Y(N49) );
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
  wire   n151, t_s_early, N46, N47, N48, N49, N50, N51, N52, N53, n93, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184;
  wire   [7:0] ini_val;
  assign t_o = n151;

  OAI211X4 U9 ( .A0(n43), .A1(n168), .B0(n44), .C0(n45), .Y(n38) );
  AOI2BB1X4 U12 ( .A0N(n47), .A1N(n171), .B0(n36), .Y(n42) );
  OAI2BB2X4 U13 ( .B0(n49), .B1(n170), .A0N(n43), .A1N(n156), .Y(n36) );
  OAI2B11X4 U32 ( .A1N(n66), .A0(n168), .B0(n178), .C0(n44), .Y(n68) );
  OAI2BB2X4 U35 ( .B0(n66), .B1(n153), .A0N(n64), .A1N(n178), .Y(n70) );
  OAI211X4 U42 ( .A0(n75), .A1(n153), .B0(t_s), .C0(n44), .Y(n76) );
  OA21X4 U43 ( .A0(t_s), .A1(n79), .B0(n80), .Y(n44) );
  NOR3X8 U45 ( .A(n177), .B(n81), .C(n79), .Y(n46) );
  NOR3BX4 U50 ( .AN(n84), .B(n85), .C(n86), .Y(n83) );
  AOI222X4 U62 ( .A0(n95), .A1(n167), .B0(n157), .B1(n94), .C0(n156), .C1(n91), 
        .Y(n97) );
  EDFFX2 \ini_val_reg[7]  ( .D(N53), .E(n154), .CK(clk), .Q(ini_val[7]) );
  EDFFX2 \ini_val_reg[6]  ( .D(N52), .E(n154), .CK(clk), .Q(ini_val[6]) );
  EDFFX2 \ini_val_reg[2]  ( .D(N48), .E(n154), .CK(clk), .Q(ini_val[2]) );
  EDFFX2 \ini_val_reg[4]  ( .D(N50), .E(n154), .CK(clk), .Q(ini_val[4]) );
  EDFFX2 \ini_val_reg[5]  ( .D(N51), .E(n154), .CK(clk), .Q(ini_val[5]) );
  EDFFX2 \ini_val_reg[0]  ( .D(N46), .E(n154), .CK(clk), .Q(ini_val[0]) );
  EDFFX1 \ini_val_reg[3]  ( .D(N49), .E(n152), .CK(clk), .Q(ini_val[3]) );
  EDFFX1 \ini_val_reg[1]  ( .D(N47), .E(n152), .CK(clk), .Q(ini_val[1]) );
  DFFTRX2 cnt_sig_early_reg ( .D(cnt_sig), .RN(rst_n), .CK(clk), .QN(n93) );
  DFFTRX2 t_s_early_reg ( .D(n160), .RN(t_s), .CK(clk), .Q(t_s_early) );
  OAI21X4 U3 ( .A0(t_s_early), .A1(n177), .B0(n161), .Y(n152) );
  CLKBUFX4 U4 ( .A(n152), .Y(n154) );
  BUFX2 U5 ( .A(rst_n), .Y(n162) );
  NOR3BX2 U6 ( .AN(n109), .B(th[7]), .C(th[6]), .Y(n117) );
  NOR3BX4 U7 ( .AN(n53), .B(tl[4]), .C(tl[5]), .Y(n43) );
  NOR3X8 U8 ( .A(tl[6]), .B(tl[7]), .C(n47), .Y(n81) );
  AOI31X4 U10 ( .A0(tmod[1]), .A1(n169), .A2(tmod[0]), .B0(n159), .Y(n80) );
  NOR4X6 U11 ( .A(n158), .B(tmod[0]), .C(tmod[1]), .D(tmod[2]), .Y(n48) );
  NOR2X6 U14 ( .A(th[5]), .B(th[4]), .Y(n92) );
  NOR2X6 U15 ( .A(th[3]), .B(th[2]), .Y(n100) );
  NOR2X6 U16 ( .A(th[1]), .B(th[0]), .Y(n109) );
  NOR3X6 U17 ( .A(tl[2]), .B(tl[3]), .C(n66), .Y(n53) );
  NOR3X6 U18 ( .A(tl[2]), .B(tl[3]), .C(n65), .Y(n54) );
  NOR2X6 U19 ( .A(tl[1]), .B(tl[0]), .Y(n72) );
  NOR2X6 U20 ( .A(n61), .B(tl[4]), .Y(n57) );
  OAI2BB1X1 U21 ( .A0N(ini_val[7]), .A1N(n155), .B0(n35), .Y(tl_nxt[7]) );
  OAI2BB1X1 U22 ( .A0N(ini_val[6]), .A1N(n155), .B0(n41), .Y(tl_nxt[6]) );
  NAND2X2 U23 ( .A(ini_val[0]), .B(n155), .Y(n78) );
  AOI22X2 U24 ( .A0(n46), .A1(n57), .B0(ini_val[4]), .B1(n155), .Y(n60) );
  INVX2 U25 ( .A(n52), .Y(n153) );
  INVX4 U26 ( .A(n52), .Y(n168) );
  NAND2X2 U27 ( .A(ini_val[5]), .B(n155), .Y(n51) );
  NOR2X4 U28 ( .A(n169), .B(n158), .Y(n52) );
  OR3X2 U29 ( .A(n79), .B(n177), .C(n174), .Y(n34) );
  INVX5 U30 ( .A(n34), .Y(n155) );
  NOR2X2 U31 ( .A(n156), .B(n157), .Y(n40) );
  CLKBUFX6 U33 ( .A(n52), .Y(n156) );
  AND3X2 U34 ( .A(t_s), .B(n115), .C(n57), .Y(n110) );
  INVX2 U36 ( .A(tl[2]), .Y(n183) );
  INVX2 U37 ( .A(tmod[2]), .Y(n169) );
  INVX2 U38 ( .A(tl[4]), .Y(n182) );
  INVX5 U39 ( .A(n161), .Y(n158) );
  BUFX2 U40 ( .A(n162), .Y(n161) );
  INVX2 U41 ( .A(n160), .Y(n159) );
  BUFX2 U44 ( .A(n162), .Y(n160) );
  NOR2BX4 U46 ( .AN(n100), .B(n101), .Y(n91) );
  INVX2 U47 ( .A(n90), .Y(n165) );
  OAI222X1 U48 ( .A0(n85), .A1(n82), .B0(n170), .B1(n87), .C0(n168), .C1(n88), 
        .Y(n90) );
  INVX2 U49 ( .A(n107), .Y(n164) );
  OAI222X1 U51 ( .A0(n103), .A1(n82), .B0(n170), .B1(n102), .C0(n153), .C1(
        n101), .Y(n107) );
  NAND3BX2 U52 ( .AN(n98), .B(n84), .C(n95), .Y(n96) );
  OAI22X1 U53 ( .A0(n170), .A1(n94), .B0(n168), .B1(n91), .Y(n98) );
  NAND2X2 U54 ( .A(n91), .B(n92), .Y(n88) );
  NOR2BX4 U55 ( .AN(n100), .B(n103), .Y(n95) );
  NOR2BX4 U56 ( .AN(n100), .B(n102), .Y(n94) );
  INVX4 U57 ( .A(n46), .Y(n171) );
  NAND2X2 U58 ( .A(n172), .B(n109), .Y(n102) );
  NAND2X2 U59 ( .A(n95), .B(n92), .Y(n85) );
  NAND2X2 U60 ( .A(n94), .B(n92), .Y(n87) );
  NAND2X2 U61 ( .A(n82), .B(n170), .Y(n64) );
  INVX2 U63 ( .A(n82), .Y(n167) );
  AOI22X2 U64 ( .A0(n46), .A1(n47), .B0(n157), .B1(n49), .Y(n45) );
  AOI211X2 U65 ( .A0(n157), .A1(n179), .B0(n55), .C0(n56), .Y(n50) );
  OAI22X1 U66 ( .A0(n57), .A1(n171), .B0(n40), .B1(n182), .Y(n55) );
  AOI22X2 U67 ( .A0(n53), .A1(n156), .B0(n64), .B1(n54), .Y(n58) );
  NAND3X2 U68 ( .A(n84), .B(n110), .C(n113), .Y(n111) );
  AOI2BB2X2 U69 ( .B0(n157), .B1(n114), .A0N(n168), .A1N(n108), .Y(n113) );
  OAI21X4 U70 ( .A0(n53), .A1(n168), .B0(n44), .Y(n56) );
  OAI2BB2X2 U71 ( .B0(th[2]), .B1(n164), .A0N(n104), .A1N(th[2]), .Y(th_nxt[2]) );
  OAI2BB2X2 U72 ( .B0(th[0]), .B1(n112), .A0N(n111), .A1N(th[0]), .Y(th_nxt[0]) );
  AOI222X2 U73 ( .A0(n108), .A1(n156), .B0(n172), .B1(n157), .C0(n167), .C1(
        n110), .Y(n112) );
  OAI2B1X1 U74 ( .A1N(th[1]), .A0(n106), .B0(n164), .Y(th_nxt[1]) );
  NOR2X2 U75 ( .A(th[0]), .B(n111), .Y(n106) );
  OAI2BB2X2 U76 ( .B0(th[4]), .B1(n97), .A0N(n96), .A1N(th[4]), .Y(th_nxt[4])
         );
  OAI2B1X1 U77 ( .A1N(th[3]), .A0(n99), .B0(n97), .Y(th_nxt[3]) );
  NOR2X2 U78 ( .A(th[2]), .B(n104), .Y(n99) );
  NAND2X2 U79 ( .A(n75), .B(n72), .Y(n66) );
  NAND2X2 U80 ( .A(n108), .B(n109), .Y(n101) );
  NAND3BX2 U81 ( .AN(n103), .B(n84), .C(n105), .Y(n104) );
  AOI22X2 U82 ( .A0(n157), .A1(n102), .B0(n156), .B1(n101), .Y(n105) );
  OAI2B1X1 U83 ( .A1N(th[5]), .A0(n89), .B0(n165), .Y(th_nxt[5]) );
  NOR2X2 U84 ( .A(th[4]), .B(n96), .Y(n89) );
  INVX2 U85 ( .A(n76), .Y(n166) );
  AO22X2 U86 ( .A0(n157), .A1(n87), .B0(n156), .B1(n88), .Y(n86) );
  NAND2X2 U87 ( .A(n57), .B(n180), .Y(n47) );
  NAND2X2 U88 ( .A(n72), .B(n183), .Y(n67) );
  INVX2 U89 ( .A(n81), .Y(n174) );
  NAND2X2 U90 ( .A(n110), .B(n109), .Y(n103) );
  OAI32X2 U91 ( .A0(n174), .A1(tmod[0]), .A2(n176), .B0(n116), .B1(n115), .Y(
        n151) );
  AOI21X1 U92 ( .A0(n57), .A1(tmod[0]), .B0(n81), .Y(n116) );
  INVX2 U93 ( .A(n114), .Y(n172) );
  NAND4X4 U94 ( .A(tmod[0]), .B(n162), .C(n176), .D(n169), .Y(n82) );
  INVX4 U95 ( .A(n48), .Y(n170) );
  NAND3X2 U96 ( .A(n182), .B(n180), .C(n54), .Y(n49) );
  INVX2 U97 ( .A(n54), .Y(n179) );
  CLKAND2X3 U98 ( .A(n80), .B(n79), .Y(n84) );
  INVX2 U99 ( .A(tmod[1]), .Y(n176) );
  INVX2 U100 ( .A(n65), .Y(n178) );
  NOR2X2 U101 ( .A(n158), .B(n182), .Y(N50) );
  NOR2X2 U102 ( .A(n158), .B(n183), .Y(N48) );
  NOR2X2 U103 ( .A(n158), .B(n184), .Y(N52) );
  NOR2X2 U104 ( .A(n158), .B(n180), .Y(N51) );
  NOR2X2 U105 ( .A(n158), .B(n181), .Y(N46) );
  NOR2X2 U106 ( .A(n158), .B(n173), .Y(N53) );
  NOR3X6 U107 ( .A(cnt_sig), .B(n93), .C(n177), .Y(n75) );
  NOR3X6 U108 ( .A(cnt_sig), .B(n93), .C(n114), .Y(n108) );
  INVX2 U109 ( .A(n69), .Y(tl_nxt[2]) );
  AOI221X2 U110 ( .A0(n68), .A1(tl[2]), .B0(n183), .B1(n70), .C0(n71), .Y(n69)
         );
  AOI221X1 U111 ( .A0(n156), .A1(n75), .B0(t_s), .B1(n64), .C0(n46), .Y(n77)
         );
  OAI221X2 U112 ( .A0(tl[0]), .A1(n77), .B0(n166), .B1(n181), .C0(n78), .Y(
        tl_nxt[0]) );
  OAI211X2 U113 ( .A0(n61), .A1(n171), .B0(n62), .C0(n63), .Y(tl_nxt[3]) );
  OAI21X1 U114 ( .A0(n67), .A1(n68), .B0(tl[3]), .Y(n62) );
  OAI211X2 U115 ( .A0(tl[4]), .A1(n58), .B0(n59), .C0(n60), .Y(tl_nxt[4]) );
  AOI21X1 U116 ( .A0(ini_val[1]), .A1(n155), .B0(n70), .Y(n74) );
  OAI22X1 U117 ( .A0(th[6]), .A1(n165), .B0(n83), .B1(n175), .Y(th_nxt[6]) );
  AOI31X1 U118 ( .A0(n184), .A1(n173), .A2(n36), .B0(n37), .Y(n35) );
  AOI2BB2X2 U119 ( .B0(tl[6]), .B1(n38), .A0N(n42), .A1N(tl[6]), .Y(n41) );
  AOI2B1X1 U120 ( .A1N(n38), .A0(n39), .B0(n173), .Y(n37) );
  OAI2BB1X1 U121 ( .A0N(n171), .A1N(n40), .B0(tl[6]), .Y(n39) );
  OAI2B11X2 U122 ( .A1N(n72), .A0(n171), .B0(n73), .C0(n74), .Y(tl_nxt[1]) );
  OAI21X1 U123 ( .A0(tl[0]), .A1(n76), .B0(tl[1]), .Y(n73) );
  OAI21X1 U124 ( .A0(n179), .A1(n56), .B0(tl[4]), .Y(n59) );
  OAI211X2 U125 ( .A0(n50), .A1(n180), .B0(n51), .C0(n42), .Y(tl_nxt[5]) );
  AOI21BX1 U126 ( .A0(ini_val[3]), .A1(n155), .B0N(n58), .Y(n63) );
  AOI21BX2 U127 ( .A0(n83), .A1(n175), .B0N(th[7]), .Y(th_nxt[7]) );
  NAND3X2 U128 ( .A(n92), .B(n100), .C(n117), .Y(n115) );
  NAND3X2 U129 ( .A(t_s), .B(n115), .C(n81), .Y(n114) );
  CLKINVX3 U130 ( .A(t_s), .Y(n177) );
  OAI2BB2X1 U131 ( .B0(n171), .B1(n67), .A0N(ini_val[2]), .A1N(n155), .Y(n71)
         );
  INVX4 U132 ( .A(tl[5]), .Y(n180) );
  OR2X2 U133 ( .A(tl[3]), .B(n67), .Y(n61) );
  CLKNAND2X2 U134 ( .A(t_s), .B(n72), .Y(n65) );
  OR4X4 U135 ( .A(tmod[0]), .B(n176), .C(n159), .D(tmod[2]), .Y(n79) );
  CLKINVX2 U136 ( .A(tl[6]), .Y(n184) );
  INVX2 U137 ( .A(tl[0]), .Y(n181) );
  INVX2 U138 ( .A(tl[7]), .Y(n173) );
  CLKBUFX6 U139 ( .A(n48), .Y(n157) );
  INVX2 U140 ( .A(th[6]), .Y(n175) );
  AND2X2 U141 ( .A(tl[3]), .B(n161), .Y(N49) );
  AND2X2 U142 ( .A(tl[1]), .B(n160), .Y(N47) );
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

  OAI211X1 U2 ( .A0(SCON[1]), .A1(SCON[0]), .B0(n5), .C0(n4), .Y(n7) );
  NAND2X2 U3 ( .A(n10), .B(n6), .Y(n8) );
  INVX2 U4 ( .A(n4), .Y(int_early[2]) );
  INVX2 U5 ( .A(n6), .Y(int_early[1]) );
  INVX2 U6 ( .A(n5), .Y(int_early[3]) );
  NOR3BX2 U7 ( .AN(IE[4]), .B(n7), .C(n8), .Y(int_early[4]) );
  NAND3BX2 U8 ( .AN(n8), .B(IE[2]), .C(TCON[3]), .Y(n4) );
  AOI21BX2 U9 ( .A0(IE[0]), .A1(TCON[1]), .B0N(IE_7), .Y(n10) );
  NAND3X2 U10 ( .A(IE[1]), .B(n10), .C(TCON[0]), .Y(n6) );
  AND3X2 U11 ( .A(IE_7), .B(IE[0]), .C(TCON[1]), .Y(int_early[0]) );
  NAND3X2 U12 ( .A(TCON[2]), .B(IE[3]), .C(n9), .Y(n5) );
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
  ADDHX1 U14 ( .A(cnt_p[2]), .B(\add_34/carry[2] ), .CO(\add_34/carry[3] ), 
        .S(N7) );
  ADDHX1 U13 ( .A(cnt_p[1]), .B(cnt_p[0]), .CO(\add_34/carry[2] ), .S(N6) );
  ADDHX1 U15 ( .A(cnt_p[3]), .B(\add_34/carry[3] ), .CO(\add_34/carry[4] ), 
        .S(N8) );
  DFFSQX2 clk_o_reg ( .D(n3), .CK(clk_in), .SN(n8), .Q(clk_out) );
  NOR2X2 U3 ( .A(n7), .B(n2), .Y(N14) );
  NOR2X2 U4 ( .A(cnt_p[0]), .B(n7), .Y(N10) );
  NOR2BX1 U5 ( .AN(N7), .B(n7), .Y(N12) );
  NOR2BX1 U6 ( .AN(N8), .B(n7), .Y(N13) );
  NOR2BX1 U7 ( .AN(N6), .B(n7), .Y(N11) );
  CLKBUFX4 U8 ( .A(n1), .Y(n7) );
  NOR3BX2 U9 ( .AN(n4), .B(cnt_p[1]), .C(cnt_p[0]), .Y(n1) );
  CLKBUFX4 U10 ( .A(rst_n), .Y(n8) );
  XOR2X1 U11 ( .A(clk_out), .B(n7), .Y(n3) );
  XNOR2X1 U12 ( .A(cnt_p[4]), .B(\add_34/carry[4] ), .Y(n2) );
  NOR3X2 U16 ( .A(cnt_p[2]), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n4) );
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
  ADDHX1 U12 ( .A(cnt_p[2]), .B(\add_34/carry[2] ), .CO(\add_34/carry[3] ), 
        .S(N7) );
  ADDHX1 U11 ( .A(cnt_p[1]), .B(cnt_p[0]), .CO(\add_34/carry[2] ), .S(N6) );
  ADDHX1 U13 ( .A(cnt_p[3]), .B(\add_34/carry[3] ), .CO(\add_34/carry[4] ), 
        .S(N8) );
  DFFSQX2 clk_o_reg ( .D(n3), .CK(clk_in), .SN(rst_n), .Q(clk_out) );
  CLKBUFX4 U3 ( .A(rst_n), .Y(n6) );
  NOR2BX1 U4 ( .AN(N8), .B(n2), .Y(N13) );
  NOR2BX1 U5 ( .AN(N6), .B(n2), .Y(N11) );
  NOR2BX1 U6 ( .AN(N7), .B(n2), .Y(N12) );
  AND3X4 U7 ( .A(cnt_p[2]), .B(cnt_p[0]), .C(n5), .Y(n2) );
  NOR3X2 U8 ( .A(cnt_p[1]), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n5) );
  XOR2X1 U9 ( .A(clk_out), .B(n2), .Y(n3) );
  NOR2X2 U10 ( .A(n2), .B(n4), .Y(N14) );
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
  wire   N54, N55, n887, N1141, n720, n721, n722, n723, n724, n725, n726, n727,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n250, n251, n252, n253, n254, n255,
         n256, n257, n259, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899,
         n900, n901, n902, n904, n905, n906, n908, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
         n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121,
         n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131,
         n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141,
         n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151,
         n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160;
  wire   [7:0] tmp;
  assign a_data_from[3] = 1'b0;
  assign a_bit_location[2] = n887;

  NOR4BX4 U27 ( .AN(n217), .B(n218), .C(n219), .D(n220), .Y(n216) );
  NOR4BX4 U71 ( .AN(n301), .B(n302), .C(n303), .D(n304), .Y(n274) );
  NOR3BX4 U75 ( .AN(n308), .B(n309), .C(n973), .Y(n223) );
  NOR4BX4 U90 ( .AN(n331), .B(n309), .C(n332), .D(n333), .Y(n319) );
  OAI221X4 U96 ( .A0(n1023), .A1(n346), .B0(n347), .B1(n1124), .C0(n348), .Y(
        n887) );
  NAND4BBX4 U133 ( .AN(n387), .BN(n388), .C(n389), .D(n390), .Y(b_data_from[1]) );
  NOR4BX4 U149 ( .AN(n411), .B(n412), .C(n413), .D(n414), .Y(n403) );
  OAI211X4 U152 ( .A0(n398), .A1(n1107), .B0(n336), .C0(n421), .Y(n412) );
  NOR4BBX4 U168 ( .AN(n389), .BN(n423), .C(n433), .D(n441), .Y(n436) );
  OAI211X4 U171 ( .A0(n1012), .A1(n409), .B0(n411), .C0(n443), .Y(n419) );
  OAI2B11X4 U179 ( .A1N(n369), .A0(n455), .B0(n1081), .C0(n456), .Y(n376) );
  OAI221X4 U186 ( .A0(n1092), .A1(n954), .B0(n153), .B1(n889), .C0(n1031), .Y(
        n414) );
  OAI2B2X4 U187 ( .A1N(n957), .A0(n470), .B0(n1072), .B1(n471), .Y(n333) );
  OAI221X4 U190 ( .A0(n463), .A1(n1084), .B0(n474), .B1(n198), .C0(n475), .Y(
        n449) );
  AOI2BB1X4 U193 ( .A0N(n1038), .A1N(n179), .B0(n386), .Y(n331) );
  OAI31X4 U203 ( .A0(n1063), .A1(n1011), .A2(n487), .B0(n1062), .Y(n471) );
  AOI222X4 U204 ( .A0(n1160), .A1(n913), .B0(n262), .B1(n1115), .C0(n1029), 
        .C1(n270), .Y(n204) );
  OAI22X4 U206 ( .A0(n488), .A1(n1023), .B0(N55), .B1(n489), .Y(n432) );
  NOR4BX4 U224 ( .AN(n337), .B(n1088), .C(n973), .D(n211), .Y(n503) );
  AOI211X4 U227 ( .A0(n445), .A1(n1146), .B0(n327), .C0(n441), .Y(n406) );
  OAI22X4 U233 ( .A0(n243), .A1(n1085), .B0(n440), .B1(n1015), .Y(n340) );
  AOI21X8 U243 ( .A0(n1086), .A1(n1082), .B0(n516), .Y(n365) );
  NOR4BX4 U248 ( .AN(n521), .B(n522), .C(n523), .D(n524), .Y(n520) );
  NAND4BX4 U272 ( .AN(n538), .B(n558), .C(n559), .D(n560), .Y(
        addr_register_out[4]) );
  OAI211X4 U281 ( .A0(n956), .A1(n924), .B0(n959), .C0(n569), .Y(n538) );
  OAI2B11X4 U306 ( .A1N(n310), .A0(n1000), .B0(n1056), .C0(n595), .Y(n212) );
  AOI221X4 U309 ( .A0(n939), .A1(n1067), .B0(n936), .B1(n945), .C0(n192), .Y(
        n553) );
  OAI221X4 U310 ( .A0(n894), .A1(n1071), .B0(n941), .B1(n318), .C0(n596), .Y(
        n588) );
  NOR2X8 U311 ( .A(n1015), .B(n240), .Y(n540) );
  OAI2B11X4 U314 ( .A1N(n158), .A0(n291), .B0(n1084), .C0(n1085), .Y(n533) );
  AOI221X4 U321 ( .A0(n923), .A1(n945), .B0(n943), .B1(n1067), .C0(n192), .Y(
        n527) );
  NOR2BX8 U324 ( .AN(n578), .B(n526), .Y(n554) );
  AOI31X4 U326 ( .A0(n605), .A1(tmp[4]), .A2(tmp[3]), .B0(tmp[7]), .Y(n578) );
  OAI31X4 U348 ( .A0(n620), .A1(n1126), .A2(n1125), .B0(n1121), .Y(n566) );
  AOI221X4 U353 ( .A0(n316), .A1(n1093), .B0(n221), .B1(n299), .C0(n1045), .Y(
        n596) );
  OAI211X4 U356 ( .A0(n625), .A1(n954), .B0(n626), .C0(n627), .Y(n375) );
  AOI221X4 U362 ( .A0(n1013), .A1(n207), .B0(n228), .B1(n957), .C0(n1046), .Y(
        n594) );
  OAI211X4 U382 ( .A0(n899), .A1(n173), .B0(n1085), .C0(n649), .Y(n442) );
  AOI2BB1X4 U392 ( .A0N(n1079), .A1N(n652), .B0(n480), .Y(n595) );
  NOR2X8 U406 ( .A(n931), .B(n938), .Y(n242) );
  NOR3X8 U426 ( .A(n1082), .B(n1010), .C(n1150), .Y(n292) );
  NOR2X8 U428 ( .A(n931), .B(n316), .Y(n240) );
  NOR2X8 U432 ( .A(n898), .B(n1086), .Y(n232) );
  NOR2X8 U439 ( .A(n1137), .B(n1006), .Y(n316) );
  NOR4BX4 U446 ( .AN(n897), .B(n388), .C(n642), .D(n648), .Y(n661) );
  NOR2X8 U458 ( .A(n954), .B(n670), .Y(n158) );
  NOR2X8 U459 ( .A(n673), .B(n966), .Y(n169) );
  NOR2X8 U460 ( .A(n673), .B(n1104), .Y(n185) );
  NOR2X8 U485 ( .A(n1107), .B(n691), .Y(n326) );
  OAI22X4 U487 ( .A0(n1107), .A1(n673), .B0(n632), .B1(n1120), .Y(n391) );
  AOI2BB1X4 U490 ( .A0N(n474), .A1N(n198), .B0(n211), .Y(n301) );
  NOR3BX4 U504 ( .AN(n706), .B(n628), .C(n1114), .Y(n330) );
  NOR2X8 U520 ( .A(n398), .B(n670), .Y(n344) );
  NOR2X8 U525 ( .A(n1141), .B(n1158), .Y(n424) );
  NOR2X8 U533 ( .A(n675), .B(n1004), .Y(n345) );
  NOR2X8 U536 ( .A(n1142), .B(n1006), .Y(n228) );
  NOR2X8 U550 ( .A(n1107), .B(n516), .Y(n159) );
  NOR3X8 U556 ( .A(ram_data_register[1]), .B(ram_data_register[2]), .C(
        ram_data_register[0]), .Y(n574) );
  OA21X4 U584 ( .A0(n958), .A1(n924), .B0(n402), .Y(n347) );
  NOR2X8 U586 ( .A(n954), .B(n1082), .Y(n170) );
  NOR2X8 U597 ( .A(n1140), .B(n1004), .Y(n400) );
  DFFRQX4 \tmp_reg[3]  ( .D(n723), .CK(clk), .RN(n1016), .Q(tmp[3]) );
  DFFRQX4 \tmp_reg[4]  ( .D(n724), .CK(clk), .RN(n1016), .Q(tmp[4]) );
  DFFRQX4 \tmp_reg[6]  ( .D(n726), .CK(clk), .RN(n1016), .Q(tmp[6]) );
  DFFRQX4 \tmp_reg[1]  ( .D(n721), .CK(clk), .RN(n1016), .Q(N54) );
  DFFRQX4 \tmp_reg[2]  ( .D(n722), .CK(clk), .RN(n1016), .Q(N55) );
  DFFRQX4 \tmp_reg[0]  ( .D(n720), .CK(clk), .RN(n1016), .Q(N1141) );
  DFFRQX2 \tmp_reg[7]  ( .D(n727), .CK(clk), .RN(n1016), .Q(tmp[7]) );
  DFFRQX2 \tmp_reg[5]  ( .D(n725), .CK(clk), .RN(n1016), .Q(tmp[5]) );
  BUFX10 U3 ( .A(n901), .Y(n889) );
  AOI21X2 U4 ( .A0(n1100), .A1(n624), .B0(n1038), .Y(n656) );
  INVX18 U5 ( .A(n457), .Y(n1100) );
  BUFX20 U6 ( .A(n615), .Y(n890) );
  NAND2X1 U7 ( .A(n1145), .B(n1007), .Y(n615) );
  INVX20 U8 ( .A(n683), .Y(n1140) );
  INVX20 U9 ( .A(n925), .Y(n926) );
  NAND3X8 U10 ( .A(n197), .B(n1015), .C(n925), .Y(n171) );
  NAND3X2 U11 ( .A(n1031), .B(n925), .C(n426), .Y(n341) );
  CLKINVX16 U12 ( .A(n239), .Y(n925) );
  AOI31X4 U13 ( .A0(n1029), .A1(n1096), .A2(n936), .B0(n259), .Y(n713) );
  INVX4 U14 ( .A(n983), .Y(n1096) );
  NOR2BX8 U15 ( .AN(n958), .B(n362), .Y(n154) );
  BUFX20 U16 ( .A(n619), .Y(n958) );
  NAND4X8 U17 ( .A(n1009), .B(n1118), .C(n514), .D(n715), .Y(n267) );
  NAND3X1 U18 ( .A(n950), .B(n1003), .C(n1009), .Y(n469) );
  INVX8 U19 ( .A(n1009), .Y(n968) );
  BUFX20 U20 ( .A(instruction[4]), .Y(n1009) );
  AOI22X4 U21 ( .A0(n1068), .A1(n1050), .B0(n297), .B1(n182), .Y(n484) );
  CLKINVX6 U22 ( .A(n1012), .Y(n1050) );
  NOR2BX8 U23 ( .AN(n959), .B(n368), .Y(n178) );
  BUFX16 U24 ( .A(n568), .Y(n959) );
  AOI31X2 U25 ( .A0(n624), .A1(n890), .A2(n1097), .B0(n894), .Y(n623) );
  CLKINVX24 U26 ( .A(n375), .Y(n1097) );
  CLKNAND2X12 U28 ( .A(n1053), .B(n652), .Y(n310) );
  OAI21X8 U29 ( .A0(n1053), .A1(n1081), .B0(n352), .Y(n304) );
  OAI211X4 U30 ( .A0(n1053), .A1(n1106), .B0(n981), .C0(n399), .Y(n387) );
  INVX20 U31 ( .A(n228), .Y(n1053) );
  NAND2X8 U32 ( .A(n230), .B(n956), .Y(n182) );
  INVX5 U33 ( .A(n913), .Y(n956) );
  AOI22X2 U34 ( .A0(n367), .A1(n366), .B0(n344), .B1(n397), .Y(n394) );
  AO21X4 U35 ( .A0(n367), .A1(n1147), .B0(n507), .Y(n441) );
  INVX20 U36 ( .A(n367), .Y(n1107) );
  NOR2X8 U37 ( .A(n1120), .B(n1008), .Y(n367) );
  OAI2BB1X4 U38 ( .A0N(n687), .A1N(n979), .B0(n626), .Y(n433) );
  NAND2X8 U39 ( .A(n979), .B(n679), .Y(n261) );
  INVX18 U40 ( .A(n515), .Y(n979) );
  NOR2X6 U41 ( .A(n659), .B(n651), .Y(n640) );
  NAND2X8 U42 ( .A(n290), .B(n889), .Y(n659) );
  CLKINVX40 U43 ( .A(n1155), .Y(n980) );
  OR2X8 U44 ( .A(n1139), .B(n1006), .Y(n894) );
  OAI21X3 U45 ( .A0(n1000), .A1(n1139), .B0(n595), .Y(n448) );
  CLKNAND2X2 U46 ( .A(n463), .B(n1139), .Y(n369) );
  CLKINVX40 U47 ( .A(n400), .Y(n1139) );
  NOR3X8 U48 ( .A(n1143), .B(n1079), .C(n1041), .Y(n480) );
  NAND3X8 U49 ( .A(n1142), .B(n1143), .C(n1032), .Y(n312) );
  OR2X8 U50 ( .A(n1143), .B(n1005), .Y(n999) );
  INVX20 U51 ( .A(n257), .Y(n1143) );
  INVX6 U52 ( .A(n1013), .Y(n934) );
  CLKINVX24 U53 ( .A(n999), .Y(n1012) );
  NOR2X6 U54 ( .A(n1104), .B(n398), .Y(n207) );
  BUFX14 U55 ( .A(n329), .Y(n1015) );
  INVX4 U56 ( .A(n424), .Y(n1134) );
  OR4X2 U57 ( .A(n327), .B(n975), .C(n1055), .D(n307), .Y(n322) );
  AOI211X2 U58 ( .A0(n929), .A1(n384), .B0(n385), .C0(n1055), .Y(n383) );
  AOI31X2 U59 ( .A0(n959), .A1(n958), .A2(n393), .B0(n269), .Y(n657) );
  NOR2X4 U60 ( .A(n310), .B(n1047), .Y(n482) );
  INVX4 U61 ( .A(n240), .Y(n1047) );
  NAND3X2 U62 ( .A(n428), .B(n255), .C(n429), .Y(n410) );
  NAND2X2 U63 ( .A(n696), .B(n668), .Y(n501) );
  OAI2B2X1 U64 ( .A1N(n312), .A0(n1081), .B0(n453), .B1(n499), .Y(n498) );
  NOR4X4 U65 ( .A(n207), .B(n363), .C(n208), .D(n177), .Y(n504) );
  AND2X6 U66 ( .A(n701), .B(n966), .Y(n696) );
  CLKBUFX4 U67 ( .A(n460), .Y(n951) );
  BUFX14 U68 ( .A(n432), .Y(n900) );
  INVX2 U69 ( .A(n894), .Y(n931) );
  AND2X6 U70 ( .A(n701), .B(n1010), .Y(n671) );
  NAND2X4 U72 ( .A(n428), .B(n650), .Y(n227) );
  NOR3X4 U73 ( .A(n961), .B(n391), .C(n222), .Y(n390) );
  OAI21X6 U74 ( .A0(n284), .A1(n1000), .B0(n378), .Y(b_data_from[3]) );
  INVX4 U76 ( .A(n318), .Y(n1067) );
  BUFX8 U77 ( .A(n167), .Y(n1014) );
  BUFX10 U78 ( .A(n643), .Y(n899) );
  NAND2X8 U79 ( .A(n707), .B(n1003), .Y(n508) );
  INVX14 U80 ( .A(n953), .Y(n1111) );
  INVX2 U81 ( .A(n640), .Y(n1034) );
  INVX12 U82 ( .A(instruction[0]), .Y(n1155) );
  BUFX10 U83 ( .A(n406), .Y(n962) );
  AND2X2 U84 ( .A(n891), .B(n892), .Y(n411) );
  NOR2X2 U85 ( .A(n448), .B(n449), .Y(n891) );
  NOR2X2 U86 ( .A(n915), .B(n974), .Y(n892) );
  NAND2X2 U87 ( .A(n511), .B(n1008), .Y(n616) );
  AOI21X1 U88 ( .A0(n1148), .A1(n1091), .B0(n708), .Y(n706) );
  NOR2X4 U89 ( .A(n433), .B(n415), .Y(n380) );
  INVX6 U91 ( .A(instruction[6]), .Y(n1153) );
  INVX8 U92 ( .A(instruction[7]), .Y(n1156) );
  OR3X2 U93 ( .A(n976), .B(n257), .C(n227), .Y(n481) );
  INVX2 U94 ( .A(n544), .Y(n1017) );
  INVX4 U95 ( .A(n170), .Y(n1081) );
  INVX8 U97 ( .A(n625), .Y(n1094) );
  INVX4 U98 ( .A(n898), .Y(n1145) );
  NOR2X6 U99 ( .A(n530), .B(ram_data_register[7]), .Y(n199) );
  CLKBUFX4 U100 ( .A(n203), .Y(n897) );
  NAND2X6 U101 ( .A(n511), .B(n1094), .Y(n268) );
  INVX10 U102 ( .A(run_phase[0]), .Y(n1158) );
  INVX5 U103 ( .A(n911), .Y(n945) );
  AOI221X1 U104 ( .A0(n169), .A1(n1050), .B0(n158), .B1(n1040), .C0(n1068), 
        .Y(n682) );
  INVX6 U105 ( .A(n261), .Y(n1115) );
  INVX5 U106 ( .A(n514), .Y(n1150) );
  NOR2X4 U107 ( .A(n391), .B(n326), .Y(n217) );
  OAI21X4 U108 ( .A0(n1133), .A1(n542), .B0(n587), .Y(n586) );
  AO22X2 U109 ( .A0(n584), .A1(n922), .B0(rom_data_register[5]), .B1(n555), 
        .Y(n583) );
  NOR2X6 U110 ( .A(n516), .B(n625), .Y(n299) );
  OAI21X4 U111 ( .A0(n574), .A1(n542), .B0(n551), .Y(n564) );
  NAND2BX2 U112 ( .AN(n415), .B(n893), .Y(n916) );
  OAI21X1 U113 ( .A0(n923), .A1(n434), .B0(n1002), .Y(n893) );
  NAND2X5 U114 ( .A(n890), .B(n616), .Y(n183) );
  INVX4 U115 ( .A(n380), .Y(n1112) );
  NAND2X4 U116 ( .A(n701), .B(n967), .Y(n506) );
  INVX4 U117 ( .A(n674), .Y(n1086) );
  NAND4X4 U118 ( .A(n606), .B(n607), .C(n608), .D(n609), .Y(n567) );
  CLKINVX8 U119 ( .A(n999), .Y(n1013) );
  INVX5 U120 ( .A(N54), .Y(n1024) );
  NOR2X2 U121 ( .A(n1104), .B(n516), .Y(n168) );
  NAND4X6 U122 ( .A(n517), .B(n518), .C(n519), .D(n520), .Y(
        addr_register_out[7]) );
  NAND2X4 U123 ( .A(n535), .B(n906), .Y(addr_register_out[6]) );
  AOI211X2 U124 ( .A0(n540), .A1(n1019), .B0(n548), .C0(n539), .Y(n547) );
  AOI21X6 U125 ( .A0(n927), .A1(n939), .B0(n1049), .Y(n557) );
  AOI222X2 U126 ( .A0(n982), .A1(n577), .B0(N55), .B1(n585), .C0(
        ram_data_register[2]), .C1(n586), .Y(n580) );
  INVX6 U127 ( .A(n687), .Y(n1118) );
  NOR2X6 U128 ( .A(n1119), .B(n1154), .Y(n687) );
  INVX6 U129 ( .A(n630), .Y(n1046) );
  NAND3X6 U130 ( .A(n545), .B(n546), .C(n547), .Y(addr_register_out[5]) );
  CLKINVX6 U131 ( .A(n297), .Y(n1038) );
  CLKNAND2X4 U132 ( .A(n297), .B(n1091), .Y(n499) );
  AOI22X2 U134 ( .A0(n297), .A1(n1090), .B0(n344), .B1(n1006), .Y(n685) );
  AO22X1 U135 ( .A0(n1076), .A1(n1010), .B0(n297), .B1(n433), .Y(n918) );
  NAND2X8 U136 ( .A(n269), .B(n1140), .Y(n297) );
  NAND2X5 U137 ( .A(n668), .B(n1087), .Y(n704) );
  NOR2X8 U138 ( .A(n1119), .B(instruction[2]), .Y(n668) );
  NAND2X8 U139 ( .A(n612), .B(n613), .Y(n584) );
  AOI22X1 U140 ( .A0(n957), .A1(n481), .B0(n1111), .B1(n374), .Y(n649) );
  BUFX10 U141 ( .A(n661), .Y(n895) );
  AOI22X1 U142 ( .A0(n1057), .A1(n574), .B0(rom_data_register[2]), .B1(n588), 
        .Y(n579) );
  AOI32X4 U143 ( .A0(n574), .A1(n1131), .A2(n1057), .B0(rom_data_register[3]), 
        .B1(n575), .Y(n573) );
  AND3X8 U144 ( .A(n574), .B(n1131), .C(n1130), .Y(n550) );
  NOR4X6 U145 ( .A(n647), .B(n648), .C(n448), .D(n442), .Y(n646) );
  BUFX10 U146 ( .A(n503), .Y(n896) );
  INVX4 U147 ( .A(n624), .Y(n1088) );
  OAI2BB1X1 U148 ( .A0N(n290), .A1N(n454), .B0(n957), .Y(n608) );
  NOR2X8 U150 ( .A(n250), .B(n935), .Y(n454) );
  AOI222X1 U151 ( .A0(ram_data_register[0]), .A1(n532), .B0(
        rom_data_register[0]), .B1(n531), .C0(instruction[5]), .C1(n582), .Y(
        n598) );
  AOI21X1 U153 ( .A0(ram_data_register[7]), .A1(n532), .B0(n533), .Y(n519) );
  NAND4X6 U154 ( .A(n594), .B(n1000), .C(n1056), .D(n1079), .Y(n532) );
  CLKNAND2X12 U155 ( .A(n688), .B(n979), .Y(n626) );
  INVX4 U156 ( .A(n894), .Y(n932) );
  CLKBUFX40 U157 ( .A(n458), .Y(n898) );
  NOR3X6 U158 ( .A(n487), .B(n257), .C(n1063), .Y(n643) );
  INVX10 U159 ( .A(instruction[1]), .Y(n1119) );
  CLKAND2X12 U160 ( .A(n650), .B(n1041), .Y(n290) );
  AOI21X8 U161 ( .A0(n1004), .A1(run_phase[1]), .B0(n345), .Y(n650) );
  CLKINVX40 U162 ( .A(n934), .Y(n936) );
  NOR2X8 U163 ( .A(n1111), .B(n1115), .Y(n161) );
  AOI211X4 U164 ( .A0(n928), .A1(n677), .B0(n678), .C0(n1115), .Y(n676) );
  NOR2X8 U165 ( .A(n248), .B(n1089), .Y(n624) );
  NOR2X8 U166 ( .A(n898), .B(n1104), .Y(n248) );
  NAND3X8 U167 ( .A(n1159), .B(n1041), .C(n675), .Y(n226) );
  CLKINVX32 U169 ( .A(n1005), .Y(n1041) );
  INVX18 U170 ( .A(n428), .Y(n1063) );
  CLKAND2X12 U172 ( .A(n604), .B(n997), .Y(n428) );
  INVX20 U173 ( .A(n1012), .Y(n942) );
  OAI32X4 U174 ( .A0(n1087), .A1(n1012), .A2(n508), .B0(n509), .B1(n1038), .Y(
        n507) );
  NOR2X8 U175 ( .A(n226), .B(n424), .Y(n269) );
  AOI221X1 U176 ( .A0(n481), .A1(n926), .B0(n940), .B1(n170), .C0(n1108), .Y(
        n569) );
  NAND2X6 U177 ( .A(n511), .B(n634), .Y(n629) );
  BUFX20 U178 ( .A(n714), .Y(n963) );
  BUFX16 U180 ( .A(n469), .Y(n954) );
  CLKINVX32 U181 ( .A(n315), .Y(n1142) );
  NAND2X4 U182 ( .A(n552), .B(n1020), .Y(n528) );
  INVX4 U183 ( .A(n540), .Y(n1048) );
  INVX2 U184 ( .A(n208), .Y(n1098) );
  AND2X2 U185 ( .A(n577), .B(n1022), .Y(n563) );
  INVX1 U188 ( .A(n616), .Y(n1102) );
  INVX4 U189 ( .A(n542), .Y(n1057) );
  INVX4 U191 ( .A(n471), .Y(n1030) );
  INVX2 U192 ( .A(n1006), .Y(n997) );
  OAI21X4 U194 ( .A0(n1124), .A1(n401), .B0(n402), .Y(b_bit_location[2]) );
  INVX2 U195 ( .A(n324), .Y(n1054) );
  NOR2X4 U196 ( .A(n1148), .B(n1146), .Y(n691) );
  INVX6 U197 ( .A(n684), .Y(n1146) );
  OAI21X4 U198 ( .A0(n511), .A1(n1152), .B0(n963), .Y(n464) );
  INVX2 U199 ( .A(n333), .Y(n1031) );
  NOR4X6 U200 ( .A(n1135), .B(n315), .C(n943), .D(n1005), .Y(n639) );
  INVX6 U201 ( .A(n998), .Y(n257) );
  NAND2X4 U202 ( .A(n1158), .B(n1141), .Y(n675) );
  INVX4 U205 ( .A(n1004), .Y(n1159) );
  BUFX10 U207 ( .A(run_phase[2]), .Y(n1004) );
  AOI22X2 U208 ( .A0(n492), .A1(n1024), .B0(N54), .B1(n493), .Y(n488) );
  AOI22X2 U209 ( .A0(n490), .A1(n1024), .B0(N54), .B1(n491), .Y(n489) );
  OAI21X4 U210 ( .A0(n1158), .A1(n1159), .B0(n650), .Y(n487) );
  INVX2 U211 ( .A(n292), .Y(n1078) );
  BUFX6 U212 ( .A(run_phase[3]), .Y(n1005) );
  INVX6 U213 ( .A(run_phase[1]), .Y(n1141) );
  NAND3X2 U214 ( .A(n1004), .B(n1041), .C(n424), .Y(n652) );
  NAND2X4 U215 ( .A(n709), .B(n950), .Y(n458) );
  INVX2 U216 ( .A(n912), .Y(n944) );
  INVX4 U217 ( .A(n632), .Y(n988) );
  NOR4X6 U218 ( .A(n184), .B(n185), .C(n169), .D(n158), .Y(n337) );
  AND3X4 U219 ( .A(n950), .B(n967), .C(n1003), .Y(n511) );
  NAND2X4 U220 ( .A(n691), .B(n453), .Y(n633) );
  INVX4 U221 ( .A(n658), .Y(n1055) );
  INVX2 U222 ( .A(n178), .Y(n1073) );
  AOI22X2 U223 ( .A0(n1014), .A1(n711), .B0(n943), .B1(n344), .Y(n710) );
  NAND3X6 U225 ( .A(n1157), .B(n1129), .C(n550), .Y(n530) );
  NOR2X4 U226 ( .A(n1113), .B(n1118), .Y(n415) );
  INVX2 U228 ( .A(n453), .Y(n1147) );
  BUFX16 U229 ( .A(instruction[3]), .Y(n1008) );
  NOR2X6 U230 ( .A(n1087), .B(n1150), .Y(n368) );
  BUFX3 U231 ( .A(n672), .Y(n960) );
  AOI21X1 U232 ( .A0(n684), .A1(n453), .B0(n1104), .Y(n708) );
  NAND2X2 U234 ( .A(rom_data_register[5]), .B(rom_data_register[6]), .Y(n620)
         );
  INVX6 U235 ( .A(n233), .Y(n975) );
  XOR2X3 U236 ( .A(n900), .B(n968), .Y(n262) );
  INVX4 U237 ( .A(n494), .Y(n1040) );
  BUFX5 U238 ( .A(n241), .Y(n953) );
  INVX2 U239 ( .A(n183), .Y(n1101) );
  AOI21X2 U240 ( .A0(n696), .A1(n1010), .B0(n980), .Y(n699) );
  INVX2 U241 ( .A(n673), .Y(n1152) );
  CLKBUFX4 U242 ( .A(n1083), .Y(n1002) );
  OAI21BX1 U244 ( .A0(n248), .A1(n975), .B0N(n1061), .Y(n919) );
  NAND2X2 U245 ( .A(n1001), .B(n228), .Y(n352) );
  AOI21X1 U246 ( .A0(n527), .A1(n1117), .B0(n1025), .Y(n601) );
  INVX4 U247 ( .A(n899), .Y(n1062) );
  NOR2X2 U249 ( .A(n1093), .B(n292), .Y(n160) );
  INVX5 U250 ( .A(n963), .Y(n1082) );
  NOR2X4 U251 ( .A(n538), .B(n539), .Y(n518) );
  AOI31X1 U252 ( .A0(n525), .A1(n526), .A2(n527), .B0(n1026), .Y(n524) );
  INVX4 U253 ( .A(n430), .Y(n1138) );
  INVX2 U254 ( .A(n330), .Y(n1090) );
  INVX4 U255 ( .A(n244), .Y(n1093) );
  INVX5 U256 ( .A(n1015), .Y(n1116) );
  NAND2X4 U257 ( .A(n1044), .B(n565), .Y(n537) );
  NOR2X6 U258 ( .A(n1158), .B(run_phase[1]), .Y(n251) );
  INVX4 U259 ( .A(ram_data_register[7]), .Y(n1160) );
  INVX4 U260 ( .A(tmp[5]), .Y(n1020) );
  INVX5 U261 ( .A(N1141), .Y(n1025) );
  INVX2 U262 ( .A(N55), .Y(n1023) );
  INVX4 U263 ( .A(rom_data_register[1]), .Y(n1123) );
  INVX2 U264 ( .A(ram_data_register[6]), .Y(n1129) );
  INVX2 U265 ( .A(tmp[4]), .Y(n1021) );
  INVX2 U266 ( .A(rom_data_register[3]), .Y(n1125) );
  INVX2 U267 ( .A(tmp[3]), .Y(n1022) );
  BUFX8 U268 ( .A(n168), .Y(n957) );
  NAND2X4 U269 ( .A(n217), .B(n914), .Y(n165) );
  NAND3X6 U270 ( .A(n579), .B(n580), .C(n581), .Y(addr_register_out[2]) );
  INVX4 U271 ( .A(n1080), .Y(n981) );
  AOI22X2 U273 ( .A0(n555), .A1(rom_data_register[6]), .B0(n554), .B1(tmp[6]), 
        .Y(n570) );
  NAND3X4 U274 ( .A(n589), .B(n590), .C(n591), .Y(addr_register_out[1]) );
  NOR2X6 U275 ( .A(n1086), .B(n673), .Y(n176) );
  INVX4 U276 ( .A(n172), .Y(n973) );
  NOR2X4 U277 ( .A(n1093), .B(n472), .Y(n173) );
  NOR3X2 U278 ( .A(n554), .B(n555), .C(n1108), .Y(n546) );
  NAND4X4 U279 ( .A(n186), .B(n187), .C(n188), .D(n189), .Y(next_status[2]) );
  OR2X4 U280 ( .A(n1134), .B(n1004), .Y(n901) );
  OR2X2 U282 ( .A(n908), .B(n918), .Y(n902) );
  OR2X4 U283 ( .A(n991), .B(n910), .Y(a_bit_location[1]) );
  AND2X2 U284 ( .A(n919), .B(n994), .Y(n904) );
  AO21X2 U285 ( .A0(n540), .A1(n528), .B0(n544), .Y(n905) );
  INVX6 U286 ( .A(n1008), .Y(n966) );
  INVX5 U287 ( .A(n1008), .Y(n1087) );
  AND2X2 U288 ( .A(n536), .B(n972), .Y(n906) );
  OR2X6 U289 ( .A(n902), .B(n916), .Y(alu_op[2]) );
  OR4X2 U290 ( .A(n341), .B(n412), .C(n419), .D(n420), .Y(n908) );
  OR2X6 U291 ( .A(n991), .B(n917), .Y(a_bit_location[0]) );
  OR2X2 U292 ( .A(n977), .B(n978), .Y(n910) );
  OR2X2 U293 ( .A(n506), .B(n670), .Y(n911) );
  CLKINVX8 U294 ( .A(n344), .Y(n1070) );
  NAND3X6 U295 ( .A(n1010), .B(n1154), .C(n960), .Y(n198) );
  OR3X2 U296 ( .A(n670), .B(n968), .C(n508), .Y(n912) );
  INVX4 U297 ( .A(n889), .Y(n943) );
  AND3X2 U298 ( .A(n679), .B(n968), .C(n964), .Y(n913) );
  AND2X2 U299 ( .A(n689), .B(n1098), .Y(n914) );
  BUFX5 U300 ( .A(instruction[4]), .Y(n1010) );
  INVX4 U301 ( .A(instruction[4]), .Y(n967) );
  INVX2 U302 ( .A(tmp[6]), .Y(n1018) );
  OR4X2 U303 ( .A(n450), .B(n451), .C(n1116), .D(n190), .Y(n915) );
  OR2X2 U304 ( .A(n989), .B(n990), .Y(n917) );
  OA21X2 U305 ( .A0(n959), .A1(n924), .B0(n401), .Y(n348) );
  INVX2 U307 ( .A(n348), .Y(n991) );
  OR3X2 U308 ( .A(n170), .B(n1001), .C(n171), .Y(n920) );
  OR3X1 U312 ( .A(n184), .B(n159), .C(n185), .Y(n921) );
  INVX2 U313 ( .A(n455), .Y(n1066) );
  NOR2X6 U315 ( .A(n1067), .B(n945), .Y(n455) );
  INVX2 U316 ( .A(n1154), .Y(n922) );
  INVX16 U317 ( .A(instruction[2]), .Y(n1154) );
  INVX6 U318 ( .A(n998), .Y(n923) );
  INVX4 U319 ( .A(n932), .Y(n924) );
  AOI211X2 U320 ( .A0(n1011), .A1(n257), .B0(n430), .C0(n943), .Y(n429) );
  BUFX16 U322 ( .A(n199), .Y(n1011) );
  CLKINVX4 U323 ( .A(n925), .Y(n927) );
  CLKINVX3 U325 ( .A(n198), .Y(n928) );
  INVX4 U327 ( .A(n198), .Y(n929) );
  NOR3X4 U328 ( .A(instruction[1]), .B(n1007), .C(n1155), .Y(n672) );
  NOR3X6 U329 ( .A(instruction[1]), .B(instruction[2]), .C(n980), .Y(n679) );
  BUFX2 U330 ( .A(n1003), .Y(n930) );
  OAI21X1 U331 ( .A0(n1003), .A1(n505), .B0(n508), .Y(n690) );
  CLKAND2X6 U332 ( .A(n703), .B(n1003), .Y(n701) );
  BUFX12 U333 ( .A(n1149), .Y(n1003) );
  CLKINVX3 U334 ( .A(n894), .Y(n933) );
  INVX4 U335 ( .A(n934), .Y(n935) );
  INVX4 U336 ( .A(n193), .Y(n937) );
  CLKINVX3 U337 ( .A(n937), .Y(n938) );
  INVX4 U338 ( .A(n937), .Y(n939) );
  CLKINVX3 U339 ( .A(n937), .Y(n940) );
  INVX5 U340 ( .A(n1013), .Y(n941) );
  AOI31X1 U341 ( .A0(n629), .A1(n616), .A2(n1098), .B0(n942), .Y(n622) );
  NOR2X2 U342 ( .A(n1081), .B(n942), .Y(n196) );
  OAI2BB2X2 U343 ( .B0(n494), .B1(n1078), .A0N(n391), .A1N(n942), .Y(n483) );
  NAND2X2 U344 ( .A(n1136), .B(n1138), .Y(n300) );
  INVX2 U345 ( .A(n345), .Y(n1136) );
  NOR4X6 U346 ( .A(n306), .B(n1108), .C(n176), .D(n307), .Y(n271) );
  NAND2X4 U347 ( .A(n986), .B(n987), .Y(n306) );
  NAND2X5 U349 ( .A(n964), .B(n688), .Y(n509) );
  NOR4X4 U350 ( .A(n307), .B(n472), .C(n1111), .D(n368), .Y(n613) );
  NAND2X5 U351 ( .A(n969), .B(n970), .Y(n307) );
  OAI21X1 U352 ( .A0(n889), .A1(n900), .B0(n290), .Y(n427) );
  NOR2X4 U354 ( .A(n684), .B(n670), .Y(n270) );
  NAND2X6 U355 ( .A(n709), .B(n707), .Y(n684) );
  OAI221X1 U357 ( .A0(n981), .A1(n240), .B0(n228), .B1(n965), .C0(n667), .Y(
        n664) );
  NOR3X4 U358 ( .A(n1063), .B(n923), .C(n300), .Y(n314) );
  NOR4X4 U359 ( .A(n169), .B(n1068), .C(n185), .D(n368), .Y(n359) );
  INVX6 U360 ( .A(n289), .Y(n1068) );
  NOR4X2 U361 ( .A(n167), .B(n957), .C(n169), .D(n1068), .Y(n166) );
  NOR4X4 U363 ( .A(n1109), .B(n176), .C(n177), .D(n164), .Y(n175) );
  AOI21X1 U364 ( .A0(n1041), .A1(n1142), .B0(n983), .Y(n311) );
  OAI22X1 U365 ( .A0(n1160), .A1(n956), .B0(n261), .B1(n262), .Y(n252) );
  AOI21X1 U366 ( .A0(n228), .A1(n171), .B0(n229), .Y(n224) );
  AOI21X1 U367 ( .A0(n1011), .A1(n209), .B0(n171), .Y(n205) );
  NAND2X2 U368 ( .A(n163), .B(n261), .Y(n373) );
  AOI32X2 U369 ( .A0(n611), .A1(n1158), .A2(n185), .B0(n1105), .B1(n938), .Y(
        n610) );
  AOI21X1 U370 ( .A0(n452), .A1(n1087), .B0(n453), .Y(n451) );
  INVX2 U371 ( .A(n921), .Y(n946) );
  AOI2B1X1 U372 ( .A1N(n169), .A0(n890), .B0(n1050), .Y(n614) );
  NAND4X4 U373 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(next_status[0]) );
  AOI221X2 U374 ( .A0(n976), .A1(n1065), .B0(n1093), .B1(n316), .C0(n317), .Y(
        n272) );
  OAI22X1 U375 ( .A0(run_phase[0]), .A1(n1103), .B0(n680), .B1(n1070), .Y(n678) );
  AOI21X1 U376 ( .A0(n243), .A1(n1139), .B0(n244), .Y(n235) );
  NOR3X6 U377 ( .A(n943), .B(n1005), .C(n487), .Y(n243) );
  AOI21X1 U378 ( .A0(n440), .A1(n1139), .B0(n983), .Y(n439) );
  AOI32X2 U379 ( .A0(n950), .A1(n930), .A2(n674), .B0(n964), .B1(n668), .Y(
        n693) );
  BUFX5 U380 ( .A(n461), .Y(n964) );
  AOI221X2 U381 ( .A0(n957), .A1(n312), .B0(n939), .B1(n1080), .C0(n313), .Y(
        n273) );
  CLKINVX1 U383 ( .A(n466), .Y(n947) );
  INVX2 U384 ( .A(n947), .Y(n948) );
  AOI221X1 U385 ( .A0(n365), .A1(n283), .B0(n400), .B1(n511), .C0(n512), .Y(
        n466) );
  AOI222X1 U386 ( .A0(n344), .A1(n345), .B0(n292), .B1(n1040), .C0(n932), .C1(
        n1080), .Y(n338) );
  INVX4 U387 ( .A(n152), .Y(n1080) );
  NAND4X4 U388 ( .A(n597), .B(n517), .C(n598), .D(n599), .Y(
        addr_register_out[0]) );
  AOI22X1 U389 ( .A0(n158), .A1(n939), .B0(n176), .B1(n1062), .Y(n597) );
  NAND2X2 U390 ( .A(n511), .B(n1069), .Y(n289) );
  INVX5 U391 ( .A(n409), .Y(n1108) );
  INVX2 U393 ( .A(n920), .Y(n949) );
  AOI21X1 U394 ( .A0(n160), .A1(n261), .B0(n291), .Y(n285) );
  OA21X2 U395 ( .A0(n1027), .A1(n542), .B0(n551), .Y(n587) );
  OAI221X4 U396 ( .A0(n966), .A1(n508), .B0(n1120), .B1(n1113), .C0(n509), .Y(
        n420) );
  AND3X2 U397 ( .A(n611), .B(run_phase[0]), .C(n185), .Y(n191) );
  AOI21X6 U398 ( .A0(n345), .A1(n1006), .B0(n221), .Y(n334) );
  NOR2X6 U399 ( .A(n1138), .B(n1005), .Y(n221) );
  INVX2 U400 ( .A(n255), .Y(n1135) );
  AND3X2 U401 ( .A(n510), .B(n255), .C(n1041), .Y(n440) );
  AOI21X6 U402 ( .A0(n1004), .A1(n424), .B0(n345), .Y(n255) );
  NOR4X4 U403 ( .A(n207), .B(n1002), .C(n169), .D(n208), .Y(n206) );
  AOI221X2 U404 ( .A0(n1002), .A1(n659), .B0(n1012), .B1(n1014), .C0(n660), 
        .Y(n645) );
  AOI2BB2X2 U405 ( .B0(n1002), .B1(n434), .A0N(n266), .A1N(n455), .Y(n654) );
  AOI221X1 U407 ( .A0(n1116), .A1(n1059), .B0(n1002), .B1(n369), .C0(n177), 
        .Y(n358) );
  BUFX20 U408 ( .A(n692), .Y(n950) );
  NOR2X1 U409 ( .A(n1156), .B(instruction[6]), .Y(n692) );
  OA21X4 U410 ( .A0(n550), .A1(n542), .B0(n551), .Y(n543) );
  NOR2BX8 U411 ( .AN(n594), .B(n212), .Y(n551) );
  OAI221X1 U412 ( .A0(n1038), .A1(n1099), .B0(n611), .B1(n1103), .C0(n682), 
        .Y(n681) );
  INVX2 U413 ( .A(n185), .Y(n1103) );
  NOR3X4 U414 ( .A(instruction[0]), .B(instruction[1]), .C(n1154), .Y(n460) );
  BUFX20 U415 ( .A(n553), .Y(n952) );
  NAND2X1 U416 ( .A(n671), .B(n1007), .Y(n241) );
  INVX20 U417 ( .A(n176), .Y(n1085) );
  BUFX10 U418 ( .A(n319), .Y(n955) );
  AOI21X8 U419 ( .A0(n228), .A1(n299), .B0(n1112), .Y(n324) );
  AOI211X4 U420 ( .A0(n975), .A1(n938), .B0(n191), .C0(n631), .Y(n630) );
  AOI2BB1X4 U421 ( .A0N(n306), .A1N(n1105), .B0(n894), .Y(n631) );
  OAI22X2 U422 ( .A0(n1156), .A1(n670), .B0(n1153), .B1(n704), .Y(n702) );
  NOR3X8 U423 ( .A(n1082), .B(n968), .C(n1150), .Y(n167) );
  NAND3X6 U424 ( .A(n1010), .B(n950), .C(instruction[5]), .Y(n516) );
  AOI222X2 U425 ( .A0(n1069), .A1(n950), .B0(n702), .B1(n967), .C0(n1077), 
        .C1(n703), .Y(n700) );
  INVX14 U427 ( .A(n617), .Y(n1049) );
  AOI211X4 U429 ( .A0(n939), .A1(n1115), .B0(n304), .C0(n618), .Y(n617) );
  AOI22X2 U430 ( .A0(n1151), .A1(n963), .B0(n1155), .B1(n1076), .Y(n619) );
  CLKNAND2X12 U431 ( .A(instruction[2]), .B(n960), .Y(n625) );
  AOI22X1 U433 ( .A0(n1151), .A1(n674), .B0(n980), .B1(n1076), .Y(n568) );
  NOR2X8 U434 ( .A(n957), .B(n472), .Y(n153) );
  OAI22X4 U435 ( .A0(n700), .A1(n930), .B0(n966), .B1(n506), .Y(n697) );
  AOI22X1 U436 ( .A0(n1002), .A1(n427), .B0(n410), .B1(n1096), .Y(n426) );
  NOR4X4 U437 ( .A(n365), .B(n396), .C(n945), .D(n232), .Y(n395) );
  INVX10 U438 ( .A(n621), .Y(n1045) );
  AOI211X4 U440 ( .A0(n362), .A1(n1051), .B0(n622), .C0(n623), .Y(n621) );
  NOR2X8 U441 ( .A(n1013), .B(n938), .Y(n291) );
  AOI222X1 U442 ( .A0(n554), .A1(tmp[4]), .B0(instruction[1]), .B1(n584), .C0(
        n555), .C1(rom_data_register[4]), .Y(n590) );
  NOR2X8 U443 ( .A(n566), .B(n557), .Y(n555) );
  AOI211X4 U444 ( .A0(rom_data_register[0]), .A1(n326), .B0(n328), .C0(n171), 
        .Y(n320) );
  AOI211X4 U445 ( .A0(n1093), .A1(n943), .B0(n483), .C0(n425), .Y(n477) );
  NOR2X6 U447 ( .A(n675), .B(n1159), .Y(n651) );
  AOI221X4 U448 ( .A0(n1057), .A1(n1028), .B0(rom_data_register[6]), .B1(n537), 
        .C0(n1043), .Y(n536) );
  NAND4BBX4 U449 ( .AN(n343), .BN(n182), .C(n1037), .D(n676), .Y(n648) );
  NAND3X8 U450 ( .A(n685), .B(n301), .C(n686), .Y(n343) );
  INVX14 U451 ( .A(n995), .Y(n709) );
  NOR3BX4 U452 ( .AN(n600), .B(n601), .C(n602), .Y(n599) );
  NAND4X8 U453 ( .A(n336), .B(n337), .C(n338), .D(n339), .Y(a_data_from[1]) );
  NOR3X8 U454 ( .A(n1108), .B(n307), .C(n207), .Y(n689) );
  OAI221X4 U455 ( .A0(n1139), .A1(n1071), .B0(n1143), .B1(n318), .C0(n596), 
        .Y(n531) );
  OAI31X4 U456 ( .A0(n1049), .A1(n927), .A2(n531), .B0(rom_data_register[7]), 
        .Y(n521) );
  AOI21X8 U457 ( .A0(n453), .A1(n684), .B0(n625), .Y(n628) );
  NAND2X5 U461 ( .A(n709), .B(n703), .Y(n453) );
  CLKBUFX24 U462 ( .A(n381), .Y(n961) );
  NAND4BX4 U463 ( .AN(n392), .B(n393), .C(n394), .D(n395), .Y(n381) );
  AOI211X4 U464 ( .A0(n1116), .A1(n923), .B0(n332), .C0(n457), .Y(n495) );
  NOR2X4 U465 ( .A(n508), .B(n1007), .Y(n461) );
  AOI32X1 U466 ( .A0(n1019), .A1(n1018), .A2(n540), .B0(ram_data_register[6]), 
        .B1(n541), .Y(n535) );
  AOI22X1 U467 ( .A0(n232), .A1(n659), .B0(n316), .B1(n1014), .Y(n653) );
  AOI22X1 U468 ( .A0(n540), .A1(n563), .B0(psw[3]), .B1(n567), .Y(n571) );
  AO22X1 U469 ( .A0(n227), .A1(n1067), .B0(n250), .B1(n1014), .Y(n641) );
  AOI211X4 U470 ( .A0(n1014), .A1(n1035), .B0(n479), .C0(n480), .Y(n478) );
  INVX20 U471 ( .A(n1014), .Y(n1079) );
  AOI22X1 U472 ( .A0(n540), .A1(n552), .B0(rom_data_register[4]), .B1(n537), 
        .Y(n559) );
  NOR2X3 U473 ( .A(n964), .B(n979), .Y(n632) );
  CLKINVX2 U474 ( .A(n1116), .Y(n965) );
  NAND3X1 U475 ( .A(n668), .B(n1155), .C(n979), .Y(n329) );
  NOR2X6 U476 ( .A(n966), .B(n398), .Y(n177) );
  CLKINVX2 U477 ( .A(n966), .Y(n971) );
  NAND2X1 U478 ( .A(n690), .B(n971), .Y(n969) );
  CLKNAND2X8 U479 ( .A(n633), .B(n971), .Y(n970) );
  CLKNAND2X2 U480 ( .A(tmp[6]), .B(n905), .Y(n972) );
  OA22X1 U481 ( .A0(n505), .A1(n1086), .B0(n1107), .B1(n506), .Y(n172) );
  CLKINVX1 U482 ( .A(n446), .Y(n974) );
  OR2X1 U483 ( .A(n1104), .B(n1150), .Y(n233) );
  CLKINVX4 U484 ( .A(n1142), .Y(n976) );
  NOR2X4 U486 ( .A(n1159), .B(n1144), .Y(n315) );
  NOR2X1 U488 ( .A(n347), .B(n1123), .Y(n977) );
  NOR2X1 U489 ( .A(n1024), .B(n346), .Y(n978) );
  OR3X1 U491 ( .A(n1003), .B(n1008), .C(n505), .Y(n515) );
  AOI222X4 U492 ( .A0(rom_data_register[3]), .A1(n555), .B0(n567), .B1(n980), 
        .C0(tmp[3]), .C1(n554), .Y(n600) );
  AOI211X2 U493 ( .A0(n980), .A1(n506), .B0(n1154), .C0(n699), .Y(n698) );
  NOR2X4 U494 ( .A(n1014), .B(n928), .Y(n152) );
  CLKINVX2 U495 ( .A(n1048), .Y(n982) );
  OR2X1 U496 ( .A(n299), .B(n159), .Y(n256) );
  INVX16 U497 ( .A(n256), .Y(n983) );
  CLKINVX2 U498 ( .A(n1107), .Y(n984) );
  OAI31X4 U499 ( .A0(n620), .A1(n1126), .A2(n1125), .B0(n1121), .Y(n985) );
  INVX2 U500 ( .A(rom_data_register[7]), .Y(n1121) );
  INVX2 U501 ( .A(rom_data_register[4]), .Y(n1126) );
  NAND2X1 U502 ( .A(n633), .B(n634), .Y(n986) );
  NAND2X1 U503 ( .A(n687), .B(n988), .Y(n987) );
  NOR4X4 U505 ( .A(n259), .B(n211), .C(n238), .D(n306), .Y(n355) );
  NOR2X1 U506 ( .A(n347), .B(n1122), .Y(n989) );
  NOR2X1 U507 ( .A(n1025), .B(n346), .Y(n990) );
  NAND2X5 U508 ( .A(n992), .B(n993), .Y(n349) );
  INVX2 U509 ( .A(n1057), .Y(n994) );
  NAND2X1 U510 ( .A(n1053), .B(n904), .Y(n992) );
  NAND2X1 U511 ( .A(n455), .B(n904), .Y(n993) );
  NAND3X8 U512 ( .A(n644), .B(n645), .C(n646), .Y(a_data_from[2]) );
  NAND2BX2 U513 ( .AN(n1003), .B(n967), .Y(n995) );
  NAND2X2 U514 ( .A(n897), .B(n330), .Y(n328) );
  AOI211X4 U515 ( .A0(n941), .A1(n165), .B0(n363), .C0(n327), .Y(n686) );
  NOR4X4 U516 ( .A(n371), .B(n973), .C(n182), .D(n165), .Y(n356) );
  OAI21X3 U517 ( .A0(n1013), .A1(n473), .B0(n499), .Y(n445) );
  CLKNAND2X2 U518 ( .A(n639), .B(n510), .Y(n397) );
  CLKINVX2 U519 ( .A(n639), .Y(n1060) );
  OR2X2 U521 ( .A(n1144), .B(n1004), .Y(n998) );
  AO21X4 U522 ( .A0(n696), .A1(n687), .B0(n697), .Y(n996) );
  NOR2X8 U523 ( .A(n996), .B(n698), .Y(n695) );
  NAND3X8 U524 ( .A(n693), .B(n694), .C(n695), .Y(n211) );
  INVX6 U526 ( .A(n452), .Y(n1091) );
  NAND2X3 U527 ( .A(n179), .B(n1078), .Y(n222) );
  CLKNAND2X2 U528 ( .A(n153), .B(n953), .Y(n259) );
  NOR2X5 U529 ( .A(n673), .B(n625), .Y(n184) );
  OAI21X1 U530 ( .A0(n1157), .A1(n542), .B0(n543), .Y(n541) );
  INVX3 U531 ( .A(ram_data_register[0]), .Y(n1027) );
  NOR2X4 U532 ( .A(n1038), .B(n380), .Y(n327) );
  NOR2X8 U534 ( .A(n944), .B(n270), .Y(n230) );
  NOR2X4 U535 ( .A(n430), .B(n651), .Y(n510) );
  NOR2X8 U537 ( .A(n400), .B(n651), .Y(n604) );
  NOR4X4 U538 ( .A(n1055), .B(n170), .C(n656), .D(n657), .Y(n655) );
  INVX20 U539 ( .A(n501), .Y(n1076) );
  INVX18 U540 ( .A(n954), .Y(n1148) );
  CLKINVX1 U541 ( .A(n530), .Y(n1028) );
  INVX18 U542 ( .A(n951), .Y(n1120) );
  INVX2 U543 ( .A(ram_data_register[2]), .Y(n1132) );
  INVX3 U544 ( .A(ram_data_register[1]), .Y(n1133) );
  INVX18 U545 ( .A(ram_data_register[5]), .Y(n1157) );
  CLKINVX2 U546 ( .A(tmp[7]), .Y(n1026) );
  CLKNAND2X2 U547 ( .A(n1142), .B(n1137), .Y(n434) );
  CLKINVX12 U548 ( .A(n588), .Y(n1044) );
  AND3X1 U549 ( .A(n161), .B(n949), .C(n163), .Y(n155) );
  CLKNAND2X2 U551 ( .A(n1000), .B(n1085), .Y(n238) );
  INVX2 U552 ( .A(n659), .Y(n1032) );
  NAND2X3 U553 ( .A(n1001), .B(n935), .Y(n526) );
  NAND2X3 U554 ( .A(n242), .B(n1058), .Y(n250) );
  NAND2X1 U555 ( .A(n557), .B(n1044), .Y(n556) );
  NOR2X1 U557 ( .A(n457), .B(n222), .Y(n456) );
  CLKINVX2 U558 ( .A(n393), .Y(n1074) );
  OAI21X3 U559 ( .A0(n944), .A1(n259), .B0(n1012), .Y(n202) );
  AOI2BB1X1 U560 ( .A0N(n238), .A1N(n927), .B0(n240), .Y(n237) );
  OAI2BB2X1 U561 ( .B0(n314), .B1(n1070), .A0N(n248), .A1N(n1040), .Y(n313) );
  NAND4BX4 U562 ( .AN(n340), .B(n962), .C(n495), .D(n496), .Y(n392) );
  AOI211X4 U563 ( .A0(n1033), .A1(n926), .B0(n497), .C0(n498), .Y(n496) );
  OAI211X4 U564 ( .A0(n936), .A1(n500), .B0(n318), .C0(n501), .Y(n497) );
  NAND2X8 U565 ( .A(n896), .B(n504), .Y(n332) );
  AOI22X1 U566 ( .A0(n292), .A1(n374), .B0(n928), .B1(n310), .Y(n667) );
  NOR2X8 U567 ( .A(n1034), .B(n923), .Y(n463) );
  CLKNAND2X4 U568 ( .A(n671), .B(n1069), .Y(n318) );
  OAI21X3 U569 ( .A0(n334), .A1(n1079), .B0(n335), .Y(n309) );
  AOI21X3 U570 ( .A0(n424), .A1(n1115), .B0(n425), .Y(n336) );
  NAND2X3 U571 ( .A(n671), .B(n1094), .Y(n244) );
  CLKINVX2 U572 ( .A(n964), .Y(n1113) );
  CLKINVX2 U573 ( .A(n159), .Y(n1106) );
  CLKNAND2X2 U574 ( .A(n494), .B(n1144), .Y(n374) );
  NOR2X5 U575 ( .A(n659), .B(n400), .Y(n266) );
  NOR2X3 U576 ( .A(n933), .B(n935), .Y(n284) );
  NOR2X3 U577 ( .A(n198), .B(n334), .Y(n476) );
  AOI2BB1X1 U578 ( .A0N(n384), .A1N(n1013), .B0(n198), .Y(n638) );
  CLKINVX2 U579 ( .A(n316), .Y(n1058) );
  CLKINVX2 U580 ( .A(n299), .Y(n1095) );
  NOR2X1 U581 ( .A(n257), .B(n1135), .Y(n680) );
  CLKINVX2 U582 ( .A(n940), .Y(n1061) );
  CLKNAND2X4 U583 ( .A(n269), .B(n1144), .Y(n283) );
  OAI211X1 U585 ( .A0(n407), .A1(n267), .B0(n408), .C0(n409), .Y(n405) );
  CLKINVX1 U587 ( .A(n962), .Y(n1036) );
  NAND2X4 U588 ( .A(n403), .B(n404), .Y(alu_op[3]) );
  CLKNAND2X2 U589 ( .A(n452), .B(n473), .Y(n444) );
  NAND2X3 U590 ( .A(n932), .B(n927), .Y(n401) );
  NAND2X3 U591 ( .A(n1001), .B(n933), .Y(n346) );
  AOI221X1 U592 ( .A0(n929), .A1(n310), .B0(n1013), .B1(n1080), .C0(n311), .Y(
        n308) );
  NAND3BX1 U593 ( .AN(n222), .B(n223), .C(n1037), .Y(n219) );
  OAI211X1 U594 ( .A0(n1097), .A1(n1039), .B0(n224), .C0(n225), .Y(n218) );
  CLKINVX1 U595 ( .A(n370), .Y(n1059) );
  OAI2B11X1 U596 ( .A1N(n270), .A0(n1029), .B0(n1070), .C0(n271), .Y(n263) );
  AOI22X1 U598 ( .A0(n159), .A1(n1135), .B0(n1111), .B1(n924), .Y(n305) );
  NAND3X1 U599 ( .A(n223), .B(n271), .C(n305), .Y(n302) );
  AOI22X1 U600 ( .A0(n373), .A1(n374), .B0(n184), .B1(n283), .Y(n372) );
  AOI222X1 U601 ( .A0(n297), .A1(n1073), .B0(n932), .B1(n298), .C0(n299), .C1(
        n300), .Y(n276) );
  NAND2X1 U602 ( .A(n1100), .B(n268), .Y(n298) );
  OAI211X1 U603 ( .A0(n924), .A1(n1099), .B0(n352), .C0(n353), .Y(n351) );
  NAND2X1 U604 ( .A(n160), .B(n1085), .Y(n157) );
  NAND3X6 U605 ( .A(n484), .B(n204), .C(n485), .Y(n425) );
  AOI222X4 U606 ( .A0(n1030), .A1(n1093), .B0(n1011), .B1(n486), .C0(n1040), 
        .C1(n1110), .Y(n485) );
  AO21X1 U607 ( .A0(n251), .A1(n1111), .B0(n944), .Y(n486) );
  NOR2X5 U608 ( .A(n1150), .B(n625), .Y(n362) );
  NOR2X8 U609 ( .A(n1118), .B(n1007), .Y(n634) );
  NAND3X2 U610 ( .A(n950), .B(n968), .C(n367), .Y(n409) );
  NAND3X8 U611 ( .A(n895), .B(n662), .C(n663), .Y(a_data_from[0]) );
  NOR3BX4 U612 ( .AN(n163), .B(n669), .C(n1065), .Y(n662) );
  NOR2X1 U613 ( .A(n1114), .B(n628), .Y(n627) );
  CLKNAND2X2 U614 ( .A(n1014), .B(n705), .Y(n658) );
  CLKNAND2X2 U615 ( .A(n474), .B(n482), .Y(n384) );
  NOR2BX8 U616 ( .AN(n900), .B(n481), .Y(n407) );
  NOR2X5 U617 ( .A(n966), .B(n516), .Y(n472) );
  NAND3X4 U618 ( .A(n1154), .B(n968), .C(n960), .Y(n179) );
  CLKNAND2X2 U619 ( .A(n1150), .B(n398), .Y(n366) );
  OAI21X3 U620 ( .A0(n1082), .A1(n898), .B0(n459), .Y(n413) );
  OAI21X4 U621 ( .A0(n1123), .A1(n401), .B0(n402), .Y(b_bit_location[1]) );
  AOI221X1 U622 ( .A0(n251), .A1(n252), .B0(n253), .B1(n1029), .C0(n254), .Y(
        n214) );
  NAND4X1 U623 ( .A(n897), .B(n204), .C(n205), .D(n206), .Y(n201) );
  NAND4BBX1 U624 ( .AN(n164), .BN(n165), .C(n949), .D(n166), .Y(
        run_phase_init[1]) );
  NAND4BX4 U625 ( .AN(n961), .B(n1031), .C(n382), .D(n383), .Y(b_data_from[2])
         );
  AOI222X1 U626 ( .A0(rom_data_register[1]), .A1(n326), .B0(
        ram_data_register[1]), .B1(n1054), .C0(n1116), .C1(n400), .Y(n399) );
  NAND3X8 U627 ( .A(n955), .B(n320), .C(n321), .Y(b_data_from[0]) );
  CLKBUFX6 U628 ( .A(instruction[3]), .Y(n1007) );
  NOR2X8 U629 ( .A(n1153), .B(instruction[7]), .Y(n707) );
  INVX12 U630 ( .A(ram_data_register[4]), .Y(n1130) );
  INVX18 U631 ( .A(ram_data_register[3]), .Y(n1131) );
  NOR3X4 U632 ( .A(n1155), .B(instruction[1]), .C(n1154), .Y(n688) );
  AOI22X1 U633 ( .A0(ram_data_register[4]), .A1(n561), .B0(tmp[4]), .B1(n562), 
        .Y(n560) );
  AOI22X1 U634 ( .A0(n1057), .A1(n550), .B0(psw[4]), .B1(n567), .Y(n558) );
  NAND2X1 U635 ( .A(ram_data_register[7]), .B(n530), .Y(n529) );
  CLKINVX2 U636 ( .A(rom_data_register[0]), .Y(n1122) );
  CLKINVX1 U637 ( .A(rom_data_register[5]), .Y(n1127) );
  CLKINVX1 U638 ( .A(rom_data_register[6]), .Y(n1128) );
  CLKINVX2 U639 ( .A(rom_data_register[2]), .Y(n1124) );
  NAND4X1 U640 ( .A(n153), .B(n154), .C(n155), .D(n156), .Y(run_phase_init[2])
         );
  CLKNAND2X12 U641 ( .A(n679), .B(n1087), .Y(n670) );
  BUFX5 U642 ( .A(rst_n), .Y(n1016) );
  NOR3X6 U643 ( .A(n1073), .B(n1075), .C(n457), .Y(n203) );
  INVX2 U644 ( .A(n161), .Y(n1110) );
  INVX2 U645 ( .A(n482), .Y(n1035) );
  OAI22X1 U646 ( .A0(n925), .A1(n640), .B0(n510), .B1(n1070), .Y(n665) );
  AOI21X1 U647 ( .A0(n1032), .A1(n1142), .B0(n1081), .Y(n666) );
  INVX2 U648 ( .A(n197), .Y(n1065) );
  INVX2 U649 ( .A(n518), .Y(n1043) );
  INVX2 U650 ( .A(n202), .Y(n1052) );
  NOR2X4 U651 ( .A(n1066), .B(n232), .Y(n197) );
  INVX4 U652 ( .A(n651), .Y(n1137) );
  NAND2X4 U653 ( .A(n1101), .B(n629), .Y(n457) );
  INVX2 U654 ( .A(n154), .Y(n1075) );
  INVX2 U655 ( .A(n463), .Y(n1033) );
  INVX2 U656 ( .A(n268), .Y(n1089) );
  AND2X2 U657 ( .A(n445), .B(n1148), .Y(n396) );
  NOR2X5 U658 ( .A(n1088), .B(n975), .Y(n163) );
  AOI21X4 U659 ( .A0(n1099), .A1(n163), .B0(n942), .Y(n192) );
  NOR2X4 U660 ( .A(n1079), .B(n1053), .Y(n190) );
  NOR3X4 U661 ( .A(n1068), .B(n1115), .C(n182), .Y(n389) );
  CLKINVX4 U662 ( .A(n232), .Y(n1084) );
  CLKINVX2 U663 ( .A(n945), .Y(n1071) );
  OAI21X3 U664 ( .A0(n983), .A1(n242), .B0(n230), .Y(n539) );
  INVX4 U665 ( .A(n629), .Y(n1105) );
  INVX2 U666 ( .A(n291), .Y(n1051) );
  INVX2 U667 ( .A(n364), .Y(n1117) );
  INVX2 U668 ( .A(n476), .Y(n1056) );
  BUFX5 U669 ( .A(n1070), .Y(n1000) );
  CLKBUFX4 U670 ( .A(n1083), .Y(n1001) );
  OR3X2 U671 ( .A(n222), .B(n927), .C(n342), .Y(n647) );
  OAI22X1 U672 ( .A0(n370), .A1(n1070), .B0(n981), .B1(n454), .Y(n450) );
  AOI21X3 U673 ( .A0(n889), .A1(n1143), .B0(n983), .Y(n280) );
  OAI21X1 U674 ( .A0(n983), .A1(n1053), .B0(n331), .Y(n468) );
  NAND3X2 U675 ( .A(n348), .B(n346), .C(n347), .Y(bit_en) );
  CLKNAND2X2 U676 ( .A(n983), .B(n244), .Y(n209) );
  OAI22X1 U677 ( .A0(n1032), .A1(n318), .B0(n266), .B1(n1084), .Y(n317) );
  NOR2X2 U678 ( .A(n929), .B(n1116), .Y(n174) );
  AOI21X1 U679 ( .A0(n240), .A1(n1061), .B0(n1081), .Y(n296) );
  AOI21X1 U680 ( .A0(n217), .A1(n289), .B0(n941), .Y(n288) );
  INVX2 U681 ( .A(n283), .Y(n1039) );
  INVX2 U682 ( .A(n335), .Y(n1109) );
  NOR3X6 U683 ( .A(n975), .B(n362), .C(n368), .Y(n393) );
  NAND2X2 U684 ( .A(n477), .B(n478), .Y(n386) );
  NOR2X4 U685 ( .A(n1094), .B(n634), .Y(n452) );
  NOR2X4 U686 ( .A(n704), .B(n1155), .Y(n674) );
  INVX5 U687 ( .A(n634), .Y(n1104) );
  OAI22X1 U688 ( .A0(n161), .A1(n1134), .B0(n407), .B1(n267), .Y(n479) );
  INVX4 U689 ( .A(n670), .Y(n1069) );
  NAND3X2 U690 ( .A(n244), .B(n267), .C(n713), .Y(n388) );
  INVX2 U691 ( .A(n472), .Y(n1072) );
  OAI21X1 U692 ( .A0(n1082), .A1(n898), .B0(n464), .Y(n239) );
  NOR4X4 U693 ( .A(n340), .B(n341), .C(n342), .D(n343), .Y(n339) );
  NAND2X5 U694 ( .A(n1116), .B(n221), .Y(n542) );
  NOR2X4 U695 ( .A(n1015), .B(n604), .Y(n364) );
  NOR2X4 U696 ( .A(n1140), .B(n1159), .Y(n430) );
  NOR2X4 U697 ( .A(n1060), .B(n923), .Y(n370) );
  AOI211X2 U698 ( .A0(n1102), .A1(n932), .B0(n177), .C0(n614), .Y(n612) );
  OAI22X1 U699 ( .A0(n316), .A1(n1085), .B0(n942), .B1(n179), .Y(n669) );
  OAI21X3 U700 ( .A0(n1147), .A1(n366), .B0(n984), .Y(n335) );
  OAI21X1 U701 ( .A0(n933), .A1(n226), .B0(n975), .Y(n607) );
  OAI21BX1 U702 ( .A0(n248), .A1(n306), .B0N(n269), .Y(n606) );
  AOI211X2 U703 ( .A0(n936), .A1(n306), .B0(n584), .C0(n303), .Y(n609) );
  OAI2B2X1 U704 ( .A1N(n397), .A0(n1015), .B0(n981), .B1(n242), .Y(n660) );
  OAI22X1 U705 ( .A0(n370), .A1(n1015), .B0(n314), .B1(n1070), .Y(n637) );
  NAND3BX2 U706 ( .AN(n190), .B(n658), .C(n710), .Y(n642) );
  NAND2X2 U707 ( .A(n334), .B(n941), .Y(n711) );
  INVX2 U708 ( .A(n184), .Y(n1099) );
  OAI21BX1 U709 ( .A0(n291), .A1(n958), .B0N(n196), .Y(n618) );
  NAND3X2 U710 ( .A(n653), .B(n654), .C(n655), .Y(n342) );
  OAI21X1 U711 ( .A0(n563), .A1(n1048), .B0(n1017), .Y(n562) );
  INVX2 U712 ( .A(n681), .Y(n1037) );
  INVX2 U713 ( .A(n267), .Y(n1083) );
  INVX2 U714 ( .A(n509), .Y(n1114) );
  AND2X2 U715 ( .A(n635), .B(n636), .Y(n517) );
  AOI211X2 U716 ( .A0(n976), .A1(n1066), .B0(n641), .C0(n642), .Y(n635) );
  AOI211X2 U717 ( .A0(n945), .A1(n1034), .B0(n637), .C0(n638), .Y(n636) );
  OAI21X4 U718 ( .A0(n198), .A1(n1061), .B0(n179), .Y(n582) );
  INVX2 U719 ( .A(n528), .Y(n1019) );
  AOI21X1 U720 ( .A0(n1146), .A1(n444), .B0(n396), .Y(n443) );
  INVX2 U721 ( .A(n444), .Y(n1092) );
  AOI211X2 U722 ( .A0(n1076), .A1(n968), .B0(n405), .C0(n1036), .Y(n404) );
  NAND3X6 U723 ( .A(n465), .B(n948), .C(n467), .Y(alu_op[0]) );
  AOI222X1 U724 ( .A0(n344), .A1(n1060), .B0(n945), .B1(n369), .C0(n929), .C1(
        n250), .Y(n465) );
  NOR4X4 U725 ( .A(n392), .B(n468), .C(n449), .D(n414), .Y(n467) );
  NAND2X3 U726 ( .A(n932), .B(n170), .Y(n402) );
  AOI211X2 U727 ( .A0(n1152), .A1(n984), .B0(n376), .C0(n332), .Y(n446) );
  NOR3X2 U728 ( .A(n442), .B(n413), .C(n419), .Y(n435) );
  OAI21X1 U729 ( .A0(n976), .A1(n410), .B0(n1096), .Y(n408) );
  OAI2B2X1 U730 ( .A1N(n221), .A0(n1070), .B0(n1138), .B1(n1106), .Y(n220) );
  AND4X6 U731 ( .A(n354), .B(n355), .C(n356), .D(n357), .Y(n350) );
  AND4X2 U732 ( .A(n358), .B(n359), .C(n360), .D(n361), .Y(n357) );
  AOI211X2 U733 ( .A0(n933), .A1(n1096), .B0(n211), .C0(n212), .Y(n186) );
  NOR4X2 U734 ( .A(n157), .B(n158), .C(n1105), .D(n159), .Y(n156) );
  INVX5 U735 ( .A(n351), .Y(n1042) );
  OAI21X1 U736 ( .A0(n1089), .A1(n1115), .B0(n940), .Y(n353) );
  AND4X2 U737 ( .A(n276), .B(n277), .C(n278), .D(n279), .Y(n275) );
  NOR4X4 U738 ( .A(n1055), .B(n280), .C(n281), .D(n282), .Y(n279) );
  AOI21X1 U739 ( .A0(n230), .A1(n179), .B0(n1039), .Y(n282) );
  AOI21X1 U740 ( .A0(n1097), .A1(n956), .B0(n284), .Y(n281) );
  NOR4X2 U741 ( .A(n365), .B(n1109), .C(n158), .D(n232), .Y(n360) );
  NOR4X4 U742 ( .A(n285), .B(n286), .C(n287), .D(n288), .Y(n278) );
  AOI21X1 U743 ( .A0(n290), .A1(n1139), .B0(n1071), .Y(n287) );
  AOI21X1 U744 ( .A0(n154), .A1(n267), .B0(n242), .Y(n286) );
  NOR4X4 U745 ( .A(n293), .B(n294), .C(n295), .D(n296), .Y(n277) );
  AOI21X1 U746 ( .A0(n243), .A1(n1143), .B0(n1072), .Y(n294) );
  AOI21X1 U747 ( .A0(n266), .A1(n1142), .B0(n925), .Y(n295) );
  AOI2BB1X1 U748 ( .A0N(n1116), .A1N(n975), .B0(n936), .Y(n293) );
  AOI222X1 U749 ( .A0(n1105), .A1(n226), .B0(n170), .B1(n227), .C0(n208), .C1(
        n942), .Y(n225) );
  AOI31X1 U750 ( .A0(n956), .A1(n268), .A2(n1101), .B0(n269), .Y(n264) );
  NAND4X2 U751 ( .A(n178), .B(n179), .C(n946), .D(n181), .Y(n164) );
  NOR4X4 U752 ( .A(n182), .B(n1112), .C(n1090), .D(n183), .Y(n181) );
  NOR3X2 U753 ( .A(n209), .B(n375), .C(n376), .Y(n354) );
  AOI31X1 U754 ( .A0(n178), .A1(n230), .A2(n231), .B0(n924), .Y(n229) );
  NOR3X1 U755 ( .A(n232), .B(n975), .C(n1067), .Y(n231) );
  AOI21X1 U756 ( .A0(n255), .A1(n1137), .B0(n983), .Y(n254) );
  AOI21X1 U757 ( .A0(n197), .A1(n198), .B0(n1058), .Y(n195) );
  AOI21X1 U758 ( .A0(n266), .A1(n1137), .B0(n267), .Y(n265) );
  NAND3X2 U759 ( .A(n245), .B(n246), .C(n247), .Y(n234) );
  OAI21X1 U760 ( .A0(n248), .A1(n945), .B0(n939), .Y(n247) );
  OAI21X1 U761 ( .A0(n1115), .A1(n1075), .B0(n1040), .Y(n246) );
  OAI2BB1X1 U762 ( .A0N(n1079), .A1N(n153), .B0(n250), .Y(n245) );
  AOI21X1 U763 ( .A0(n174), .A1(n953), .B0(n242), .Y(n236) );
  OAI2BB1X1 U764 ( .A0N(n209), .A1N(n923), .B0(n202), .Y(n253) );
  NAND3X1 U765 ( .A(n925), .B(n981), .C(n372), .Y(n371) );
  NOR4X4 U766 ( .A(n362), .B(n363), .C(n364), .D(n1076), .Y(n361) );
  NOR3X6 U767 ( .A(n670), .B(n1009), .C(n1150), .Y(n363) );
  NOR4X4 U768 ( .A(n1007), .B(n980), .C(n951), .D(n963), .Y(n715) );
  NOR2X6 U769 ( .A(n398), .B(n625), .Y(n208) );
  AOI211X2 U770 ( .A0(n1011), .A1(n923), .B0(n227), .C0(n976), .Y(n470) );
  NOR2X6 U771 ( .A(n704), .B(n980), .Y(n714) );
  NOR2X6 U772 ( .A(n1153), .B(n1156), .Y(n703) );
  NOR2X4 U773 ( .A(n226), .B(n683), .Y(n494) );
  NOR3X4 U774 ( .A(n505), .B(n930), .C(n966), .Y(n502) );
  AOI211X2 U775 ( .A0(n1147), .A1(n1008), .B0(n502), .C0(n1108), .Y(n500) );
  NOR4X4 U776 ( .A(n664), .B(n665), .C(n480), .D(n666), .Y(n663) );
  AOI22X2 U777 ( .A0(n1152), .A1(n1069), .B0(n1145), .B1(n1094), .Y(n694) );
  NOR2X3 U778 ( .A(n1008), .B(n367), .Y(n473) );
  INVX2 U779 ( .A(n704), .Y(n1077) );
  NAND2X4 U780 ( .A(n1153), .B(n1156), .Y(n505) );
  INVX4 U781 ( .A(n251), .Y(n1144) );
  INVX4 U782 ( .A(n1011), .Y(n1029) );
  OAI21X1 U783 ( .A0(n324), .A1(n1027), .B0(n325), .Y(n323) );
  OAI31X2 U784 ( .A0(n238), .A1(n326), .A2(n928), .B0(n941), .Y(n325) );
  INVX2 U785 ( .A(n516), .Y(n1151) );
  AOI222X1 U786 ( .A0(n1053), .A1(n1096), .B0(n221), .B1(n929), .C0(n344), 
        .C1(n976), .Y(n644) );
  OAI21X3 U787 ( .A0(n578), .A1(n526), .B0(n952), .Y(n544) );
  OAI22X1 U788 ( .A0(n1044), .A1(n1123), .B0(n952), .B1(n1024), .Y(n592) );
  OAI2B2X1 U789 ( .A1N(n549), .A0(n1020), .B0(n543), .B1(n1157), .Y(n548) );
  OAI211X1 U790 ( .A0(n1048), .A1(n552), .B0(n952), .C0(n526), .Y(n549) );
  OAI21BX1 U791 ( .A0(n1131), .A1(n542), .B0N(n564), .Y(n561) );
  OAI2B1X1 U792 ( .A1N(n985), .A0(n557), .B0(n1044), .Y(n575) );
  OAI2BB1X2 U793 ( .A0N(n942), .A1N(n207), .B0(n610), .Y(n303) );
  OAI21X1 U794 ( .A0(n927), .A1(n1049), .B0(n985), .Y(n565) );
  NOR2X2 U795 ( .A(n889), .B(n1005), .Y(n193) );
  OAI21X1 U796 ( .A0(n577), .A1(n1048), .B0(n1017), .Y(n576) );
  NOR3X6 U797 ( .A(run_phase[2]), .B(n1006), .C(n1141), .Y(n611) );
  OAI21X1 U798 ( .A0(n1024), .A1(n1048), .B0(n952), .Y(n585) );
  AND2X2 U799 ( .A(n563), .B(n1021), .Y(n552) );
  AOI211X2 U800 ( .A0(n283), .A1(n1074), .B0(n1055), .C0(n476), .Y(n475) );
  AOI211X2 U801 ( .A0(n1076), .A1(n283), .B0(n365), .C0(n422), .Y(n421) );
  AOI21X1 U802 ( .A0(n423), .A1(n1085), .B0(n936), .Y(n422) );
  AOI31X1 U803 ( .A0(n951), .A1(n942), .A2(n964), .B0(n462), .Y(n459) );
  AOI21X1 U804 ( .A0(n463), .A1(n1142), .B0(n464), .Y(n462) );
  OAI21X6 U805 ( .A0(n1122), .A1(n401), .B0(n402), .Y(b_bit_location[0]) );
  NAND4X4 U806 ( .A(n213), .B(n214), .C(n215), .D(n216), .Y(next_status[1]) );
  AOI211X2 U807 ( .A0(n1013), .A1(n263), .B0(n264), .C0(n265), .Y(n213) );
  NOR4X4 U808 ( .A(n234), .B(n235), .C(n236), .D(n237), .Y(n215) );
  AOI21X4 U809 ( .A0(n951), .A1(n979), .B0(n502), .Y(n423) );
  AOI31X1 U810 ( .A0(n1064), .A1(n423), .A2(n513), .B0(n968), .Y(n512) );
  INVX2 U811 ( .A(n420), .Y(n1064) );
  AOI211X2 U812 ( .A0(n984), .A1(n514), .B0(n1074), .C0(n1112), .Y(n513) );
  OAI222X1 U813 ( .A0(n349), .A1(n1160), .B0(n350), .B1(n1026), .C0(n1042), 
        .C1(n1121), .Y(n727) );
  OAI222X1 U814 ( .A0(n349), .A1(n1027), .B0(n350), .B1(n1025), .C0(n1042), 
        .C1(n1122), .Y(n720) );
  OAI222X1 U815 ( .A0(n349), .A1(n1133), .B0(n350), .B1(n1024), .C0(n1042), 
        .C1(n1123), .Y(n721) );
  OAI222X1 U816 ( .A0(n349), .A1(n1132), .B0(n350), .B1(n1023), .C0(n1042), 
        .C1(n1124), .Y(n722) );
  OAI222X1 U817 ( .A0(n349), .A1(n1131), .B0(n350), .B1(n1022), .C0(n1042), 
        .C1(n1125), .Y(n723) );
  OAI222X1 U818 ( .A0(n349), .A1(n1130), .B0(n350), .B1(n1021), .C0(n1042), 
        .C1(n1126), .Y(n724) );
  AOI211X2 U819 ( .A0(n940), .A1(n194), .B0(n195), .C0(n196), .Y(n188) );
  NOR4X4 U820 ( .A(n190), .B(n191), .C(n177), .D(n192), .Y(n189) );
  AOI222X1 U821 ( .A0(n158), .A1(n1051), .B0(n935), .B1(n201), .C0(n1052), 
        .C1(n199), .Y(n187) );
  NAND4BX1 U822 ( .AN(n973), .B(n173), .C(n174), .D(n175), .Y(
        run_phase_init[0]) );
  OAI21X1 U823 ( .A0(n1011), .A1(n1084), .B0(n1000), .Y(n194) );
  OAI22X1 U824 ( .A0(n1025), .A1(n1160), .B0(N1141), .B1(n1129), .Y(n493) );
  NAND3X6 U825 ( .A(instruction[5]), .B(n1009), .C(n703), .Y(n398) );
  NAND3X6 U826 ( .A(instruction[5]), .B(n1009), .C(n707), .Y(n673) );
  NOR2X4 U827 ( .A(n505), .B(instruction[5]), .Y(n514) );
  AOI21X1 U828 ( .A0(rom_data_register[2]), .A1(n326), .B0(n386), .Y(n382) );
  OAI22X1 U829 ( .A0(n152), .A1(n334), .B0(n324), .B1(n1132), .Y(n385) );
  NAND2X2 U830 ( .A(n1136), .B(n941), .Y(n677) );
  NOR4X4 U831 ( .A(n322), .B(n323), .C(n170), .D(n1108), .Y(n321) );
  NOR2X4 U832 ( .A(n1141), .B(run_phase[0]), .Y(n683) );
  OAI22X1 U833 ( .A0(n1025), .A1(n1133), .B0(N1141), .B1(n1027), .Y(n490) );
  OAI22X1 U834 ( .A0(n1025), .A1(n1131), .B0(N1141), .B1(n1132), .Y(n491) );
  OAI22X1 U835 ( .A0(n1025), .A1(n1157), .B0(N1141), .B1(n1130), .Y(n492) );
  CLKINVX1 U836 ( .A(instruction[5]), .Y(n1149) );
  CLKBUFX6 U837 ( .A(run_phase[3]), .Y(n1006) );
  OAI32X2 U838 ( .A0(n542), .A1(ram_data_register[1]), .A2(
        ram_data_register[0]), .B0(n587), .B1(n1133), .Y(n593) );
  AOI21X4 U839 ( .A0(run_phase[0]), .A1(n1005), .B0(n705), .Y(n474) );
  AOI211X2 U840 ( .A0(n1029), .A1(n529), .B0(n1015), .C0(n1138), .Y(n523) );
  AOI32X2 U841 ( .A0(n550), .A1(n1157), .A2(n1057), .B0(rom_data_register[5]), 
        .B1(n556), .Y(n545) );
  NAND4X4 U842 ( .A(n570), .B(n571), .C(n572), .D(n573), .Y(
        addr_register_out[3]) );
  AOI22X2 U843 ( .A0(tmp[3]), .A1(n576), .B0(ram_data_register[3]), .B1(n564), 
        .Y(n572) );
  OAI21X4 U844 ( .A0(n1006), .A1(n1136), .B0(n712), .Y(n705) );
  OAI21X1 U845 ( .A0(run_phase[1]), .A1(run_phase[2]), .B0(n1005), .Y(n712) );
  AOI221X2 U846 ( .A0(n554), .A1(tmp[5]), .B0(instruction[7]), .B1(n582), .C0(
        n583), .Y(n581) );
  AOI21X1 U847 ( .A0(instruction[6]), .A1(n582), .B0(n533), .Y(n589) );
  AOI211X2 U848 ( .A0(n982), .A1(n1024), .B0(n592), .C0(n593), .Y(n591) );
  OAI21X1 U849 ( .A0(tmp[6]), .A1(n528), .B0(n364), .Y(n525) );
  AOI32X2 U850 ( .A0(n326), .A1(n935), .A2(rom_data_register[3]), .B0(
        ram_data_register[3]), .B1(n379), .Y(n378) );
  OAI22X1 U851 ( .A0(n1053), .A1(n1095), .B0(n380), .B1(n941), .Y(n379) );
  NOR4X4 U852 ( .A(tmp[7]), .B(tmp[6]), .C(n528), .D(n1117), .Y(n522) );
  NOR2X2 U853 ( .A(n1020), .B(n1018), .Y(n605) );
  OAI32X2 U854 ( .A0(n965), .A1(ram_data_register[0]), .A2(n1138), .B0(n603), 
        .B1(n1084), .Y(n602) );
  AOI21X1 U855 ( .A0(n1011), .A1(n940), .B0(n935), .Y(n603) );
  NOR2X4 U856 ( .A(N55), .B(N54), .Y(n577) );
  NAND4X6 U857 ( .A(n435), .B(n436), .C(n437), .D(n438), .Y(alu_op[1]) );
  AOI222X1 U858 ( .A0(n1108), .A1(instruction[5]), .B0(n415), .B1(n297), .C0(
        n365), .C1(n283), .Y(n437) );
  NOR4X4 U859 ( .A(n1076), .B(n280), .C(n1001), .D(n439), .Y(n438) );
  OAI222X1 U860 ( .A0(n349), .A1(n1157), .B0(n350), .B1(n1020), .C0(n1042), 
        .C1(n1127), .Y(n725) );
  OAI222X1 U861 ( .A0(n349), .A1(n1129), .B0(n350), .B1(n1018), .C0(n1042), 
        .C1(n1128), .Y(n726) );
  NAND3X1 U862 ( .A(n1000), .B(n1095), .C(n981), .Y(run_phase_init[3]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [8:0] carry;

  ADDFX1 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX1 U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX1 U2_2 ( .A(A[2]), .B(n12), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX1 U2_5 ( .A(A[5]), .B(n15), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX1 U2_0 ( .A(A[0]), .B(n10), .CI(n17), .CO(carry[1]), .S(DIFF[0]) );
  ADDFX1 U2_6 ( .A(A[6]), .B(n16), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CLKINVX1 U1 ( .A(B[6]), .Y(n16) );
  XNOR3X1 U2 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(DIFF[7]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n10) );
  INVX2 U4 ( .A(CI), .Y(n17) );
  INVX2 U5 ( .A(B[5]), .Y(n15) );
  INVX2 U6 ( .A(B[4]), .Y(n14) );
  INVX2 U7 ( .A(B[2]), .Y(n12) );
  INVX2 U8 ( .A(B[3]), .Y(n13) );
  INVX2 U9 ( .A(B[1]), .Y(n11) );
endmodule


module ALU_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n2;
  wire   [7:2] carry;

  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(n2), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  INVX2 U2 ( .A(n2), .Y(SUM[0]) );
  BUFX2 U3 ( .A(A[0]), .Y(n2) );
endmodule


module ALU_DW01_add_3 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX1 U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
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

  ADDFX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  BUFX2 U1 ( .A(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  AND2X2 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n144,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200;

  NAND2X1 U98 ( .A(b[6]), .B(n192), .Y(n175) );
  INVX2 U99 ( .A(b[6]), .Y(n200) );
  NAND2X2 U100 ( .A(b[7]), .B(a[1]), .Y(n164) );
  AND2X2 U101 ( .A(b[7]), .B(n189), .Y(n92) );
  INVX5 U102 ( .A(b[0]), .Y(n180) );
  ADDHX1 U103 ( .A(n82), .B(n76), .CO(n53), .S(n54) );
  INVX4 U104 ( .A(b[2]), .Y(n182) );
  INVX5 U105 ( .A(b[1]), .Y(n181) );
  INVX2 U106 ( .A(b[5]), .Y(n187) );
  INVX4 U107 ( .A(n192), .Y(n191) );
  INVX4 U108 ( .A(n194), .Y(n193) );
  INVX2 U109 ( .A(n198), .Y(n197) );
  ADDFX1 U110 ( .A(n28), .B(n37), .CI(n4), .CO(n3), .S(product[6]) );
  ADDFX1 U111 ( .A(n8), .B(n83), .CI(n56), .CO(n7), .S(product[2]) );
  NOR2X2 U112 ( .A(n191), .B(n180), .Y(n83) );
  ADDFX1 U113 ( .A(n52), .B(n54), .CI(n7), .CO(n6), .S(product[3]) );
  ADDFX1 U114 ( .A(n38), .B(n45), .CI(n5), .CO(n4), .S(product[5]) );
  ADDFX1 U115 ( .A(n46), .B(n51), .CI(n6), .CO(n5), .S(product[4]) );
  INVX5 U116 ( .A(a[1]), .Y(n190) );
  INVX5 U117 ( .A(n189), .Y(n188) );
  CLKBUFX4 U118 ( .A(n179), .Y(n178) );
  INVX2 U119 ( .A(a[4]), .Y(n179) );
  BUFX2 U120 ( .A(a[3]), .Y(n194) );
  BUFX2 U121 ( .A(a[2]), .Y(n192) );
  BUFX2 U122 ( .A(a[6]), .Y(n198) );
  INVX2 U123 ( .A(n196), .Y(n195) );
  BUFX2 U124 ( .A(a[7]), .Y(n199) );
  NOR2X2 U125 ( .A(n188), .B(n180), .Y(product[0]) );
  XNOR2X1 U126 ( .A(n2), .B(n15), .Y(n176) );
  ADDFX1 U127 ( .A(n39), .B(n32), .CI(n30), .CO(n27), .S(n28) );
  ADDFX1 U128 ( .A(n16), .B(n27), .CI(n3), .CO(n2), .S(product[7]) );
  ADDHX1 U129 ( .A(n64), .B(n61), .CO(n35), .S(n36) );
  NOR2X2 U130 ( .A(n195), .B(n181), .Y(n64) );
  NOR2X2 U131 ( .A(n197), .B(n180), .Y(n61) );
  ADDHX1 U132 ( .A(n60), .B(n58), .CO(n25), .S(n26) );
  AND2X2 U133 ( .A(n199), .B(b[0]), .Y(n58) );
  NOR2X2 U134 ( .A(n197), .B(n181), .Y(n60) );
  NOR2X2 U135 ( .A(n191), .B(n181), .Y(n82) );
  NOR2X2 U136 ( .A(n193), .B(n180), .Y(n76) );
  ADDFX1 U137 ( .A(n74), .B(n94), .CI(n80), .CO(n41), .S(n42) );
  NOR2X2 U138 ( .A(n183), .B(n191), .Y(n80) );
  NOR2X2 U139 ( .A(n187), .B(n188), .Y(n94) );
  NOR2X2 U140 ( .A(n193), .B(n182), .Y(n74) );
  ADDHX1 U141 ( .A(n69), .B(n65), .CO(n43), .S(n44) );
  NOR2X2 U142 ( .A(n178), .B(n181), .Y(n69) );
  NOR2X2 U143 ( .A(n195), .B(n180), .Y(n65) );
  ADDHX1 U144 ( .A(n75), .B(n70), .CO(n49), .S(n50) );
  NOR2X2 U145 ( .A(n193), .B(n181), .Y(n75) );
  NOR2X2 U146 ( .A(n178), .B(n180), .Y(n70) );
  ADDHX1 U147 ( .A(n97), .B(n90), .CO(n55), .S(n56) );
  NOR2X2 U148 ( .A(n182), .B(n188), .Y(n97) );
  NOR2X2 U149 ( .A(n190), .B(n181), .Y(n90) );
  ADDFX1 U150 ( .A(n48), .B(n53), .CI(n50), .CO(n45), .S(n46) );
  ADDFX1 U151 ( .A(n44), .B(n42), .CI(n40), .CO(n37), .S(n38) );
  ADDFX1 U152 ( .A(n89), .B(n96), .CI(n55), .CO(n51), .S(n52) );
  NOR2X2 U153 ( .A(n183), .B(n188), .Y(n96) );
  NOR2X2 U154 ( .A(n190), .B(n182), .Y(n89) );
  ADDHX1 U155 ( .A(n91), .B(n98), .CO(n8), .S(product[1]) );
  NOR2X2 U156 ( .A(n181), .B(n188), .Y(n98) );
  NOR2X2 U157 ( .A(n190), .B(n180), .Y(n91) );
  BUFX2 U158 ( .A(a[5]), .Y(n196) );
  BUFX2 U159 ( .A(a[0]), .Y(n189) );
  XOR2X1 U160 ( .A(n169), .B(n170), .Y(n168) );
  XOR2X1 U161 ( .A(n171), .B(n17), .Y(n170) );
  XNOR2X1 U162 ( .A(n25), .B(n19), .Y(n169) );
  NAND2X2 U163 ( .A(b[2]), .B(n198), .Y(n171) );
  ADDFX1 U164 ( .A(n29), .B(n20), .CI(n18), .CO(n15), .S(n16) );
  ADDFX1 U165 ( .A(n33), .B(n35), .CI(n22), .CO(n19), .S(n20) );
  ADDFX1 U166 ( .A(n34), .B(n41), .CI(n36), .CO(n29), .S(n30) );
  ADDFX1 U167 ( .A(n79), .B(n86), .CI(n43), .CO(n31), .S(n32) );
  NOR2X2 U168 ( .A(n190), .B(n187), .Y(n86) );
  NOR2X2 U169 ( .A(n185), .B(n191), .Y(n79) );
  ADDFX1 U170 ( .A(n81), .B(n95), .CI(n88), .CO(n47), .S(n48) );
  NOR2X2 U171 ( .A(n183), .B(n190), .Y(n88) );
  NOR2X2 U172 ( .A(n185), .B(n188), .Y(n95) );
  NOR2X2 U173 ( .A(n191), .B(n182), .Y(n81) );
  ADDFX1 U174 ( .A(n49), .B(n87), .CI(n47), .CO(n39), .S(n40) );
  NOR2X2 U175 ( .A(n190), .B(n185), .Y(n87) );
  INVX4 U176 ( .A(n184), .Y(n183) );
  NAND2X2 U177 ( .A(b[5]), .B(n194), .Y(n172) );
  ADDFX1 U178 ( .A(n78), .B(n72), .CI(n85), .CO(n21), .S(n22) );
  NOR2X2 U179 ( .A(n185), .B(n193), .Y(n72) );
  NOR2X2 U180 ( .A(n191), .B(n187), .Y(n78) );
  NOR2X1 U181 ( .A(n190), .B(n200), .Y(n85) );
  XOR2X1 U182 ( .A(n160), .B(n161), .Y(product[8]) );
  XNOR2X1 U183 ( .A(n144), .B(n162), .Y(n161) );
  XOR2X1 U184 ( .A(n176), .B(n177), .Y(n160) );
  XNOR2X1 U185 ( .A(n165), .B(n166), .Y(n144) );
  NOR2X2 U186 ( .A(n178), .B(n185), .Y(n166) );
  XOR2X1 U187 ( .A(n167), .B(n168), .Y(n165) );
  XOR2X1 U188 ( .A(n172), .B(n173), .Y(n167) );
  ADDFX1 U189 ( .A(n68), .B(n93), .CI(n73), .CO(n33), .S(n34) );
  NOR2X2 U190 ( .A(n183), .B(n193), .Y(n73) );
  NOR2X2 U191 ( .A(n178), .B(n182), .Y(n68) );
  NOR2X1 U192 ( .A(n200), .B(n188), .Y(n93) );
  XOR2X1 U193 ( .A(n23), .B(n21), .Y(n177) );
  ADDFX1 U194 ( .A(n26), .B(n24), .CI(n31), .CO(n17), .S(n18) );
  BUFX2 U195 ( .A(b[3]), .Y(n184) );
  CLKBUFX4 U196 ( .A(n186), .Y(n185) );
  INVX2 U197 ( .A(b[4]), .Y(n186) );
  XOR2X1 U198 ( .A(n174), .B(n175), .Y(n173) );
  NAND2X2 U199 ( .A(b[1]), .B(n199), .Y(n174) );
  XOR2X1 U200 ( .A(n163), .B(n164), .Y(n162) );
  NAND2X2 U201 ( .A(n184), .B(n196), .Y(n163) );
  ADDFX1 U202 ( .A(n63), .B(n92), .CI(n67), .CO(n23), .S(n24) );
  NOR2X2 U203 ( .A(n183), .B(n178), .Y(n67) );
  NOR2X2 U204 ( .A(n195), .B(n182), .Y(n63) );
endmodule


module ALU_DW_div_uns_6_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] ,
         \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] ,
         \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] ,
         \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] ,
         \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] ,
         \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] ,
         \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] ,
         \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] ,
         \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] ,
         \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] ,
         \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] ,
         \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] ,
         \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] ,
         \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] ,
         \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] ,
         \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] ,
         \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] ,
         \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] ,
         \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] ,
         \u_div/CryTmp[6][2] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;
  wire   [7:0] \u_div/BInv ;

  ADDFX1 \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFX1 \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/BInv [7]), .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX1 \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFX1 \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFX1 \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), 
        .S(\u_div/SumTmp[1][5] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_2_4  ( .A(n5), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_4_2  ( .A(n8), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), 
        .S(\u_div/SumTmp[1][1] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_2_1  ( .A(n9), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_5_1  ( .A(n19), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX1 \u_div/u_fa_PartRem_0_3_4  ( .A(n3), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_2_5  ( .A(n20), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), 
        .S(\u_div/SumTmp[1][6] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_5_2  ( .A(n6), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_4_3  ( .A(n7), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2 \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), 
        .S(\u_div/SumTmp[1][2] ) );
  ADDFX2 \u_div/u_fa_PartRem_0_3_2  ( .A(n4), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_4_1  ( .A(n10), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFX4 \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] )
         );
  ADDFX4 \u_div/u_fa_PartRem_0_1_3  ( .A(n1), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_3_3  ( .A(n2), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_2_3  ( .A(n18), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), 
        .S(\u_div/SumTmp[1][4] ) );
  ADDFX4 \u_div/u_fa_PartRem_0_3_1  ( .A(n16), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), 
        .S(\u_div/SumTmp[6][1] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_2_2  ( .A(n13), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX4 \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] )
         );
  MXI2X4 U1 ( .A(n35), .B(n22), .S0(quotient[1]), .Y(\u_div/PartRem[1][1] ) );
  INVX8 U2 ( .A(b[0]), .Y(n15) );
  XNOR2X2 U3 ( .A(n15), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  INVX16 U4 ( .A(n29), .Y(\u_div/PartRem[7][1] ) );
  INVX16 U5 ( .A(n27), .Y(\u_div/PartRem[2][1] ) );
  MX2X2 U6 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(n19) );
  XNOR2X1 U7 ( .A(n15), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  INVX2 U8 ( .A(n23), .Y(\u_div/PartRem[2][6] ) );
  OR2X2 U9 ( .A(a[6]), .B(n14), .Y(\u_div/CryTmp[6][1] ) );
  BUFX6 U10 ( .A(b[7]), .Y(n48) );
  MX2X2 U11 ( .A(n13), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n1) );
  MX2X2 U12 ( .A(n8), .B(\u_div/SumTmp[4][2] ), .S0(quotient[4]), .Y(n2) );
  MX2X2 U13 ( .A(n7), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n3) );
  MXI2X6 U14 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(n29)
         );
  NOR2X8 U15 ( .A(a[7]), .B(n15), .Y(n11) );
  XNOR2X2 U16 ( .A(n15), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X4 U17 ( .A(a[5]), .B(n14), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2 U18 ( .A(a[4]), .B(n14), .Y(\u_div/CryTmp[4][1] ) );
  INVX2 U19 ( .A(n25), .Y(\u_div/PartRem[2][4] ) );
  INVX16 U20 ( .A(n44), .Y(quotient[3]) );
  INVX6 U21 ( .A(\u_div/CryTmp[3][5] ), .Y(n45) );
  INVX16 U22 ( .A(n46), .Y(quotient[2]) );
  INVX12 U23 ( .A(n47), .Y(quotient[1]) );
  OR3X6 U24 ( .A(b[2]), .B(n36), .C(n39), .Y(n38) );
  INVX12 U25 ( .A(n40), .Y(quotient[5]) );
  INVX12 U26 ( .A(n42), .Y(quotient[4]) );
  MX2X2 U27 ( .A(n10), .B(\u_div/SumTmp[4][1] ), .S0(quotient[4]), .Y(n4) );
  MX2X2 U28 ( .A(n2), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n5) );
  MX2X2 U29 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(n6) );
  MX2X2 U30 ( .A(n6), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n7) );
  MX2X2 U31 ( .A(n19), .B(\u_div/SumTmp[5][1] ), .S0(quotient[5]), .Y(n8) );
  MX2X4 U32 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(n9) );
  INVX2 U33 ( .A(n1), .Y(n12) );
  MX2X2 U34 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(n10) );
  MX2X1 U35 ( .A(n16), .B(\u_div/SumTmp[3][1] ), .S0(quotient[3]), .Y(n17) );
  MXI2X1 U36 ( .A(n27), .B(n34), .S0(quotient[1]), .Y(\u_div/PartRem[1][2] )
         );
  BUFX3 U37 ( .A(n17), .Y(n13) );
  MXI2X8 U38 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(n27)
         );
  MX2X6 U39 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(n16) );
  NAND2BX8 U40 ( .AN(n36), .B(\u_div/CryTmp[5][3] ), .Y(n40) );
  NAND2BX4 U41 ( .AN(n41), .B(\u_div/BInv [3]), .Y(n36) );
  NOR3X8 U42 ( .A(n36), .B(n37), .C(n11), .Y(quotient[7]) );
  OR3X8 U43 ( .A(n43), .B(b[4]), .C(b[5]), .Y(n41) );
  OR3X6 U44 ( .A(b[5]), .B(n43), .C(n45), .Y(n44) );
  OR2X1 U45 ( .A(a[2]), .B(n14), .Y(\u_div/CryTmp[2][1] ) );
  INVX5 U46 ( .A(b[0]), .Y(n14) );
  OR2X1 U47 ( .A(a[3]), .B(n14), .Y(\u_div/CryTmp[3][1] ) );
  OR2X1 U48 ( .A(a[1]), .B(n14), .Y(\u_div/CryTmp[1][1] ) );
  MXI2X2 U49 ( .A(n5), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n24) );
  INVX4 U50 ( .A(n26), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2 U51 ( .A(n4), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n18)
         );
  CLKMX2X2 U52 ( .A(n3), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n20)
         );
  INVX18 U53 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  CLKINVX2 U54 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  OR2X1 U55 ( .A(a[0]), .B(n14), .Y(\u_div/CryTmp[0][1] ) );
  OR2X8 U56 ( .A(n48), .B(b[6]), .Y(n43) );
  CLKINVX1 U57 ( .A(n48), .Y(\u_div/BInv [7]) );
  INVX5 U58 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  INVX4 U59 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  CLKINVX2 U60 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  MXI2X2 U61 ( .A(n9), .B(\u_div/SumTmp[2][1] ), .S0(quotient[2]), .Y(n26) );
  MXI2X2 U62 ( .A(n18), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n25) );
  MXI2X2 U63 ( .A(n20), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n23) );
  XNOR2X1 U64 ( .A(n15), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X1 U65 ( .A(n15), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  INVX2 U66 ( .A(\u_div/SumTmp[1][6] ), .Y(n28) );
  XOR2X1 U67 ( .A(n15), .B(a[1]), .Y(n22) );
  NAND2BX2 U68 ( .AN(n43), .B(\u_div/CryTmp[2][6] ), .Y(n46) );
  NAND2BX2 U69 ( .AN(n41), .B(\u_div/CryTmp[4][4] ), .Y(n42) );
  INVX2 U70 ( .A(\u_div/SumTmp[1][1] ), .Y(n34) );
  MXI2X1 U71 ( .A(n12), .B(n32), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  INVX2 U72 ( .A(\u_div/SumTmp[1][3] ), .Y(n32) );
  MXI2X1 U73 ( .A(n24), .B(n30), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  INVX2 U74 ( .A(\u_div/SumTmp[1][5] ), .Y(n30) );
  XNOR2X1 U75 ( .A(n15), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  INVX2 U76 ( .A(a[1]), .Y(n35) );
  MXI2X1 U77 ( .A(n26), .B(n33), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  INVX2 U78 ( .A(\u_div/SumTmp[1][2] ), .Y(n33) );
  INVX2 U79 ( .A(n24), .Y(\u_div/PartRem[2][5] ) );
  MXI2X1 U80 ( .A(n25), .B(n31), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  INVX2 U81 ( .A(\u_div/SumTmp[1][4] ), .Y(n31) );
  NAND2BX2 U82 ( .AN(n48), .B(\u_div/CryTmp[1][7] ), .Y(n47) );
  INVX4 U83 ( .A(n38), .Y(quotient[6]) );
  INVX2 U84 ( .A(\u_div/CryTmp[6][2] ), .Y(n39) );
  OR2X2 U85 ( .A(b[2]), .B(b[1]), .Y(n37) );
  MXI2X1 U86 ( .A(n23), .B(n28), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  INVX4 U87 ( .A(b[4]), .Y(\u_div/BInv [4]) );
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
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314;
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

  NOR3BX4 U28 ( .AN(n75), .B(n256), .C(n285), .Y(n59) );
  OAI221X4 U109 ( .A0(n306), .A1(n138), .B0(n139), .B1(n312), .C0(n140), .Y(
        n128) );
  NOR4X8 U118 ( .A(n302), .B(n311), .C(n306), .D(alu_op[3]), .Y(n44) );
  OAI2B2X4 U126 ( .A1N(N39), .A0(n149), .B0(N39), .B1(n150), .Y(n146) );
  OAI22X4 U133 ( .A0(n155), .A1(n296), .B0(N36), .B1(n156), .Y(n145) );
  ALU_DW01_sub_0 sub_1_root_sub_33_2 ( .A({n288, n285, n283, a_data[4], n278, 
        n275, n272, n267}), .B({n247, b_data[6], n266, n265, b_data[3], n264, 
        n263, n261}), .CI(psw_in[7]), .DIFF({N118, N117, N116, N115, N114, 
        N113, N112, N111}) );
  ALU_DW01_inc_0 add_28 ( .A({n288, n285, n283, n258, n278, n275, n272, n267}), 
        .SUM({N94, N93, N92, N91, N90, N89, N88, N87}) );
  ALU_DW01_add_3 add_1_root_add_26_2 ( .A({1'b0, n288, n285, n283, n258, n278, 
        n275, n272, n267}), .B({1'b0, n247, b_data[6], n266, n265, b_data[3], 
        n264, n263, n261}), .CI(psw_in[7]), .SUM({N86, N85, N84, N83, N82, N81, 
        N80, N79, N78}) );
  ALU_DW01_add_4 add_25 ( .A({1'b0, n288, n285, n283, a_data[4], n278, n275, 
        n272, n267}), .B({1'b0, n247, b_data[6], n266, n265, b_data[3], n264, 
        n263, n261}), .CI(1'b0), .SUM({N68, N67, N66, N65, N64, N63, N62, N61, 
        N60}) );
  ALU_DW_mult_uns_0 mult_34 ( .a({n288, n285, n283, n258, n278, n275, n272, 
        n267}), .b({n247, b_data[6], n266, n265, b_data[3], n264, n263, n261}), 
        .product({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119}) );
  ALU_DW_div_uns_6_0 div_35 ( .a({a_data[7:4], n279, a_data[2:1], n267}), .b({
        n247, b_data[6:1], n261}), .quotient({N135, N134, N133, N132, N131, 
        N130, N129, N128}) );
  BUFX20 U3 ( .A(b_data[7]), .Y(n247) );
  INVX5 U4 ( .A(alu_op[1]), .Y(n311) );
  INVX14 U7 ( .A(n262), .Y(n261) );
  OAI222X1 U8 ( .A0(n65), .A1(n119), .B0(n120), .B1(n273), .C0(n252), .C1(n121), .Y(ans[1]) );
  OR4X2 U9 ( .A(n311), .B(n308), .C(alu_op[0]), .D(alu_op[2]), .Y(n236) );
  AND3X8 U10 ( .A(n131), .B(n132), .C(n133), .Y(n130) );
  INVX8 U11 ( .A(b_data[0]), .Y(n262) );
  AOI22X2 U12 ( .A0(n153), .A1(n314), .B0(N38), .B1(n154), .Y(n149) );
  AOI22X2 U13 ( .A0(n151), .A1(n314), .B0(N38), .B1(n152), .Y(n150) );
  OAI21X6 U14 ( .A0(n308), .A1(n148), .B0(n140), .Y(n43) );
  INVX5 U15 ( .A(n281), .Y(n278) );
  OAI222X1 U16 ( .A0(n79), .A1(n100), .B0(n110), .B1(n276), .C0(n253), .C1(
        n111), .Y(ans[2]) );
  INVX2 U17 ( .A(a_data[3]), .Y(n282) );
  BUFX2 U18 ( .A(n271), .Y(n270) );
  INVX4 U19 ( .A(a_data[5]), .Y(n284) );
  BUFX2 U20 ( .A(n274), .Y(n273) );
  INVX4 U21 ( .A(alu_op[2]), .Y(n306) );
  AND2X2 U22 ( .A(n304), .B(n306), .Y(n237) );
  BUFX2 U23 ( .A(n291), .Y(n289) );
  BUFX2 U24 ( .A(n277), .Y(n276) );
  BUFX2 U25 ( .A(n287), .Y(n286) );
  BUFX2 U26 ( .A(n282), .Y(n281) );
  CLKAND2X6 U27 ( .A(n249), .B(n237), .Y(n238) );
  NAND2X2 U29 ( .A(alu_op[0]), .B(alu_op[3]), .Y(n138) );
  INVX2 U30 ( .A(n48), .Y(n239) );
  CLKINVX3 U31 ( .A(n239), .Y(n240) );
  CLKINVX3 U32 ( .A(n239), .Y(n241) );
  CLKINVX2 U33 ( .A(n46), .Y(n242) );
  INVX2 U34 ( .A(n242), .Y(n243) );
  CLKINVX4 U35 ( .A(n242), .Y(n244) );
  CLKINVX3 U36 ( .A(n236), .Y(n245) );
  CLKINVX3 U37 ( .A(n236), .Y(n246) );
  AOI22X2 U38 ( .A0(N118), .A1(n238), .B0(N94), .B1(n297), .Y(n53) );
  AOI22X1 U39 ( .A0(N133), .A1(n257), .B0(n250), .B1(n284), .Y(n85) );
  AOI22X1 U40 ( .A0(N131), .A1(n257), .B0(n250), .B1(n282), .Y(n105) );
  AOI22X1 U41 ( .A0(N129), .A1(n257), .B0(n250), .B1(n274), .Y(n124) );
  CLKBUFX6 U42 ( .A(b_data[4]), .Y(n265) );
  AOI22X1 U43 ( .A0(N130), .A1(n257), .B0(n250), .B1(n277), .Y(n114) );
  NOR2X4 U44 ( .A(n148), .B(alu_op[3]), .Y(n61) );
  CLKBUFX6 U45 ( .A(b_data[5]), .Y(n266) );
  AOI22X1 U46 ( .A0(N132), .A1(n257), .B0(n250), .B1(n259), .Y(n95) );
  INVX5 U47 ( .A(n286), .Y(n285) );
  NOR4X6 U48 ( .A(n308), .B(alu_op[0]), .C(alu_op[1]), .D(alu_op[2]), .Y(n45)
         );
  AOI22X2 U49 ( .A0(n159), .A1(n309), .B0(N35), .B1(n160), .Y(n155) );
  AOI22X2 U50 ( .A0(n157), .A1(n309), .B0(N35), .B1(n158), .Y(n156) );
  INVX5 U51 ( .A(N35), .Y(n309) );
  INVX4 U52 ( .A(n289), .Y(n288) );
  CLKBUFX6 U53 ( .A(b_data[1]), .Y(n263) );
  INVX5 U54 ( .A(n284), .Y(n283) );
  INVX5 U55 ( .A(n276), .Y(n275) );
  CLKBUFX4 U56 ( .A(n301), .Y(n248) );
  INVX4 U57 ( .A(n255), .Y(n301) );
  INVX2 U58 ( .A(alu_op[1]), .Y(n249) );
  INVX4 U59 ( .A(n260), .Y(n258) );
  CLKBUFX6 U60 ( .A(b_data[2]), .Y(n264) );
  INVX5 U61 ( .A(n273), .Y(n272) );
  CLKINVX4 U62 ( .A(n303), .Y(n250) );
  INVX2 U63 ( .A(n60), .Y(n303) );
  NOR4X6 U64 ( .A(n306), .B(n308), .C(alu_op[0]), .D(alu_op[1]), .Y(n60) );
  INVX2 U65 ( .A(a_data[2]), .Y(n277) );
  AOI221X4 U66 ( .A0(n42), .A1(n271), .B0(N128), .B1(n257), .C0(n134), .Y(n133) );
  OAI222X4 U67 ( .A0(n79), .A1(n119), .B0(n129), .B1(n271), .C0(n254), .C1(
        n130), .Y(ans[0]) );
  INVX4 U68 ( .A(n270), .Y(n267) );
  OAI221X1 U69 ( .A0(n90), .A1(n259), .B0(n258), .B1(n301), .C0(n298), .Y(n98)
         );
  OAI221X1 U70 ( .A0(n90), .A1(n277), .B0(n275), .B1(n301), .C0(n298), .Y(n117) );
  OAI221X1 U71 ( .A0(n90), .A1(n282), .B0(n278), .B1(n248), .C0(n298), .Y(n108) );
  OAI221X1 U72 ( .A0(n90), .A1(n284), .B0(n283), .B1(n301), .C0(n298), .Y(n87)
         );
  INVX2 U73 ( .A(bit_en), .Y(n251) );
  AOI221X1 U74 ( .A0(N135), .A1(n45), .B0(N126), .B1(n245), .C0(n55), .Y(n54)
         );
  AOI221X1 U75 ( .A0(n288), .A1(n307), .B0(n255), .B1(n290), .C0(n43), .Y(n57)
         );
  CLKBUFX6 U76 ( .A(n61), .Y(n255) );
  INVX4 U77 ( .A(N36), .Y(n296) );
  NOR2BX4 U78 ( .AN(n118), .B(n275), .Y(n109) );
  NOR2BX4 U79 ( .AN(n99), .B(n258), .Y(n89) );
  NOR2BX4 U80 ( .AN(n109), .B(n278), .Y(n99) );
  NOR2X4 U81 ( .A(n272), .B(n268), .Y(n118) );
  NOR2BX4 U82 ( .AN(n89), .B(n283), .Y(n75) );
  BUFX2 U83 ( .A(n260), .Y(n259) );
  BUFX2 U84 ( .A(n291), .Y(n290) );
  INVX2 U85 ( .A(n64), .Y(n300) );
  AOI21X1 U86 ( .A0(n63), .A1(n64), .B0(n289), .Y(n50) );
  AOI21X1 U87 ( .A0(n253), .A1(n119), .B0(n299), .Y(n129) );
  AOI21X1 U88 ( .A0(n254), .A1(n119), .B0(n300), .Y(n120) );
  NAND2X2 U89 ( .A(n307), .B(n302), .Y(n140) );
  INVX2 U90 ( .A(n138), .Y(n304) );
  INVX2 U91 ( .A(n280), .Y(n279) );
  BUFX2 U92 ( .A(n281), .Y(n280) );
  INVX5 U93 ( .A(n251), .Y(n252) );
  INVX5 U94 ( .A(n251), .Y(n254) );
  INVX5 U95 ( .A(n251), .Y(n253) );
  INVX2 U96 ( .A(a_data[7]), .Y(n291) );
  INVX2 U97 ( .A(a_data[6]), .Y(n287) );
  INVX2 U98 ( .A(a_data[4]), .Y(n260) );
  INVX2 U99 ( .A(n141), .Y(n292) );
  OAI31X2 U100 ( .A0(n142), .A1(n44), .A2(n143), .B0(n254), .Y(n141) );
  AOI21X1 U101 ( .A0(n303), .A1(n144), .B0(n145), .Y(n143) );
  OAI2B2X1 U102 ( .A1N(n145), .A0(n147), .B0(n298), .B1(n293), .Y(n142) );
  NOR3X2 U103 ( .A(n65), .B(n309), .C(n296), .Y(n49) );
  NAND2X4 U104 ( .A(n292), .B(n310), .Y(n79) );
  NOR3X2 U105 ( .A(n79), .B(n309), .C(n296), .Y(n66) );
  BUFX2 U106 ( .A(n270), .Y(n269) );
  INVX2 U107 ( .A(n270), .Y(n268) );
  AOI21X4 U108 ( .A0(n310), .A1(n252), .B0(n128), .Y(n64) );
  INVX5 U110 ( .A(n39), .Y(n297) );
  INVX4 U111 ( .A(n90), .Y(n307) );
  INVX4 U112 ( .A(n43), .Y(n298) );
  OAI221X2 U113 ( .A0(n90), .A1(n274), .B0(n272), .B1(n248), .C0(n298), .Y(
        n127) );
  INVX4 U114 ( .A(alu_op[0]), .Y(n302) );
  OA21X2 U115 ( .A0(n75), .A1(n256), .B0(n78), .Y(n63) );
  OAI21X1 U116 ( .A0(n309), .A1(n296), .B0(n253), .Y(n78) );
  INVX4 U117 ( .A(alu_op[3]), .Y(n308) );
  INVX4 U119 ( .A(n76), .Y(n305) );
  INVX2 U120 ( .A(n77), .Y(n299) );
  AOI21X1 U121 ( .A0(n77), .A1(n63), .B0(n287), .Y(n67) );
  AOI21X1 U122 ( .A0(n252), .A1(n100), .B0(n299), .Y(n110) );
  AOI21X1 U123 ( .A0(n253), .A1(n100), .B0(n300), .Y(n101) );
  AOI21X1 U124 ( .A0(n252), .A1(n80), .B0(n300), .Y(n81) );
  AOI21X1 U125 ( .A0(n254), .A1(n80), .B0(n299), .Y(n91) );
  NAND2X2 U127 ( .A(n256), .B(n303), .Y(n42) );
  NAND2X4 U128 ( .A(n296), .B(n309), .Y(n119) );
  AOI22X2 U129 ( .A0(N60), .A1(n241), .B0(N78), .B1(n244), .Y(n131) );
  AOI222X1 U130 ( .A0(N87), .A1(n297), .B0(N119), .B1(n246), .C0(N111), .C1(
        n238), .Y(n132) );
  AND4X2 U131 ( .A(n122), .B(n123), .C(n124), .D(n125), .Y(n121) );
  AOI222X2 U132 ( .A0(n305), .A1(n118), .B0(a_data[1]), .B1(n126), .C0(n263), 
        .C1(n127), .Y(n125) );
  AOI22X2 U134 ( .A0(N61), .A1(n241), .B0(N79), .B1(n244), .Y(n122) );
  AOI222X1 U135 ( .A0(N88), .A1(n297), .B0(N120), .B1(n246), .C0(N112), .C1(
        n238), .Y(n123) );
  AND4X2 U136 ( .A(n112), .B(n113), .C(n114), .D(n115), .Y(n111) );
  AOI222X2 U137 ( .A0(n305), .A1(n109), .B0(n275), .B1(n116), .C0(n264), .C1(
        n117), .Y(n115) );
  AOI22X2 U138 ( .A0(N62), .A1(n241), .B0(N80), .B1(n244), .Y(n112) );
  AOI222X1 U139 ( .A0(N89), .A1(n297), .B0(N121), .B1(n246), .C0(N113), .C1(
        n238), .Y(n113) );
  AND4X2 U140 ( .A(n103), .B(n104), .C(n105), .D(n106), .Y(n102) );
  AOI222X2 U141 ( .A0(n305), .A1(n99), .B0(n278), .B1(n107), .C0(b_data[3]), 
        .C1(n108), .Y(n106) );
  AOI22X2 U142 ( .A0(N63), .A1(n241), .B0(N81), .B1(n244), .Y(n103) );
  AOI222X1 U143 ( .A0(N90), .A1(n297), .B0(N122), .B1(n246), .C0(N114), .C1(
        n238), .Y(n104) );
  NAND2X3 U144 ( .A(n292), .B(N34), .Y(n65) );
  OAI22X1 U145 ( .A0(n313), .A1(n295), .B0(N37), .B1(n294), .Y(n154) );
  AOI22X2 U146 ( .A0(n293), .A1(n61), .B0(n307), .B1(n146), .Y(n147) );
  INVX2 U147 ( .A(n146), .Y(n293) );
  AOI222X2 U148 ( .A0(N86), .A1(n243), .B0(N127), .B1(n245), .C0(N68), .C1(
        n240), .Y(n37) );
  AND4X2 U149 ( .A(n83), .B(n84), .C(n85), .D(n86), .Y(n82) );
  AOI222X2 U150 ( .A0(n266), .A1(n87), .B0(n283), .B1(n88), .C0(n75), .C1(n305), .Y(n86) );
  AOI22X2 U151 ( .A0(N65), .A1(n240), .B0(N83), .B1(n244), .Y(n83) );
  AOI222X1 U152 ( .A0(N92), .A1(n297), .B0(N124), .B1(n245), .C0(N116), .C1(
        n238), .Y(n84) );
  AND4X2 U153 ( .A(n93), .B(n94), .C(n95), .D(n96), .Y(n92) );
  AOI222X2 U154 ( .A0(n305), .A1(n89), .B0(n258), .B1(n97), .C0(n265), .C1(n98), .Y(n96) );
  AOI22X2 U155 ( .A0(N64), .A1(n241), .B0(N82), .B1(n244), .Y(n93) );
  AOI222X1 U156 ( .A0(N91), .A1(n297), .B0(N123), .B1(n246), .C0(N115), .C1(
        n238), .Y(n94) );
  AOI31X1 U157 ( .A0(n69), .A1(n70), .A2(n71), .B0(n252), .Y(n68) );
  AOI22X2 U158 ( .A0(N66), .A1(n240), .B0(N84), .B1(n243), .Y(n69) );
  AOI222X1 U159 ( .A0(N93), .A1(n297), .B0(N125), .B1(n245), .C0(N117), .C1(
        n238), .Y(n70) );
  AOI221X1 U160 ( .A0(N134), .A1(n257), .B0(n250), .B1(n286), .C0(n72), .Y(n71) );
  OAI22X1 U161 ( .A0(n310), .A1(n280), .B0(N34), .B1(n276), .Y(n158) );
  OAI22X1 U162 ( .A0(n310), .A1(n290), .B0(N34), .B1(n287), .Y(n160) );
  OAI22X1 U163 ( .A0(n310), .A1(n273), .B0(N34), .B1(n269), .Y(n157) );
  OAI221X2 U164 ( .A0(n56), .A1(n289), .B0(n57), .B1(n295), .C0(n58), .Y(n55)
         );
  OAI21X1 U165 ( .A0(n59), .A1(n60), .B0(n290), .Y(n58) );
  OAI21X1 U166 ( .A0(n73), .A1(n294), .B0(n74), .Y(n72) );
  AOI221X2 U167 ( .A0(n285), .A1(n307), .B0(n255), .B1(n286), .C0(n43), .Y(n73) );
  AOI31X1 U168 ( .A0(n285), .A1(n294), .A2(n255), .B0(n59), .Y(n74) );
  OAI22X1 U169 ( .A0(n310), .A1(n284), .B0(N34), .B1(n259), .Y(n159) );
  AOI31X1 U170 ( .A0(n52), .A1(n53), .A2(n54), .B0(n253), .Y(n51) );
  AOI22X2 U171 ( .A0(N67), .A1(n240), .B0(N85), .B1(n243), .Y(n52) );
  OAI2B2X1 U172 ( .A1N(n263), .A0(n313), .B0(N37), .B1(n262), .Y(n151) );
  AOI22X2 U173 ( .A0(n255), .A1(n295), .B0(n305), .B1(a_data[6]), .Y(n56) );
  NAND2X2 U174 ( .A(n255), .B(n146), .Y(n144) );
  AO22X2 U175 ( .A0(N37), .A1(b_data[3]), .B0(n313), .B1(n264), .Y(n152) );
  AO22X2 U176 ( .A0(N37), .A1(n266), .B0(n313), .B1(n265), .Y(n153) );
  INVX2 U177 ( .A(a_data[1]), .Y(n274) );
  INVX2 U178 ( .A(a_data[0]), .Y(n271) );
  INVX2 U179 ( .A(n252), .Y(n312) );
  AOI22X2 U180 ( .A0(n304), .A1(n311), .B0(n138), .B1(n306), .Y(n139) );
  CLKINVX4 U181 ( .A(N34), .Y(n310) );
  NAND3X4 U182 ( .A(n311), .B(n308), .C(alu_op[2]), .Y(n90) );
  NOR2X5 U183 ( .A(alu_op[3]), .B(alu_op[2]), .Y(n137) );
  AOI21X3 U184 ( .A0(N34), .A1(n254), .B0(n128), .Y(n77) );
  NOR3BX2 U185 ( .AN(n137), .B(n311), .C(alu_op[0]), .Y(n48) );
  NOR3BX2 U186 ( .AN(n137), .B(n302), .C(n311), .Y(n46) );
  NAND4X2 U187 ( .A(n248), .B(n39), .C(n40), .D(n41), .Y(n38) );
  NOR3X2 U188 ( .A(n44), .B(n253), .C(n257), .Y(n40) );
  NOR4X4 U189 ( .A(n307), .B(n304), .C(n42), .D(n43), .Y(n41) );
  OAI21X1 U190 ( .A0(n135), .A1(n262), .B0(n136), .Y(n134) );
  AOI221X2 U191 ( .A0(n268), .A1(n307), .B0(n255), .B1(n269), .C0(n43), .Y(
        n135) );
  AOI31X1 U192 ( .A0(n268), .A1(n262), .A2(n255), .B0(n44), .Y(n136) );
  OAI22X1 U193 ( .A0(n269), .A1(n256), .B0(n263), .B1(n248), .Y(n126) );
  OAI22X1 U194 ( .A0(n266), .A1(n301), .B0(n89), .B1(n256), .Y(n88) );
  OAI22X1 U195 ( .A0(n265), .A1(n301), .B0(n99), .B1(n256), .Y(n97) );
  OAI22X1 U196 ( .A0(n264), .A1(n248), .B0(n118), .B1(n256), .Y(n116) );
  OAI22X1 U197 ( .A0(b_data[3]), .A1(n248), .B0(n109), .B1(n256), .Y(n107) );
  NAND3X2 U198 ( .A(n302), .B(n311), .C(n137), .Y(n39) );
  CLKBUFX6 U199 ( .A(n76), .Y(n256) );
  NAND3X2 U200 ( .A(alu_op[0]), .B(n311), .C(n137), .Y(n76) );
  NAND2X3 U201 ( .A(N35), .B(n296), .Y(n100) );
  NAND2X3 U202 ( .A(N36), .B(n309), .Y(n80) );
  INVX4 U203 ( .A(N37), .Y(n313) );
  INVX2 U204 ( .A(N38), .Y(n314) );
  OAI222X1 U205 ( .A0(n65), .A1(n100), .B0(n101), .B1(n281), .C0(n254), .C1(
        n102), .Y(ans[3]) );
  CLKINVX2 U206 ( .A(b_data[6]), .Y(n294) );
  OAI222X1 U207 ( .A0(n65), .A1(n80), .B0(n81), .B1(n284), .C0(n253), .C1(n82), 
        .Y(ans[5]) );
  OAI222X1 U208 ( .A0(n79), .A1(n80), .B0(n91), .B1(n260), .C0(n252), .C1(n92), 
        .Y(ans[4]) );
  OR3X2 U209 ( .A(n49), .B(n50), .C(n51), .Y(ans[7]) );
  CLKINVX2 U210 ( .A(n247), .Y(n295) );
  OR3X2 U211 ( .A(n66), .B(n67), .C(n68), .Y(ans[6]) );
  CLKBUFX6 U212 ( .A(n45), .Y(n257) );
  NAND3X2 U213 ( .A(alu_op[2]), .B(n302), .C(alu_op[1]), .Y(n148) );
  OAI2BB2X2 U214 ( .B0(n254), .B1(n37), .A0N(psw_in[7]), .A1N(n38), .Y(
        psw_out[7]) );
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
  wire   n120, n73, n74, n75, n121, n76, n77, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n78,
         n79, n80, n81, n82, n83, n84, n87, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119;
  wire   [7:0] alu_ans;
  wire   [7:0] alu_psw_out;
  assign ans[0] = n77;

  OAI2BB2X4 U13 ( .B0(n23), .B1(n113), .A0N(alu_ans[0]), .A1N(n81), .Y(n77) );
  ALU alu ( .psw_in(psw_in), .a_data({n109, n107, n106, n94, a_data[3], n103, 
        n100, a_data[0]}), .b_data({b_data[7:4], n97, n96, b_data[1:0]}), 
        .a_bit_location(a_bit_location), .b_bit_location(b_bit_location), 
        .bit_en(bit_en), .alu_op(alu_op), .ans(alu_ans), .psw_out(alu_psw_out)
         );
  CLKINVX32 U2 ( .A(a_data[6]), .Y(n108) );
  BUFX8 U3 ( .A(b_data[3]), .Y(n97) );
  INVX2 U4 ( .A(a_data[3]), .Y(n105) );
  BUFX5 U5 ( .A(b_data[2]), .Y(n96) );
  INVX14 U6 ( .A(n108), .Y(n107) );
  BUFX5 U7 ( .A(a_data[5]), .Y(n106) );
  INVX4 U8 ( .A(a_data[7]), .Y(n111) );
  INVX2 U9 ( .A(a_data[4]), .Y(n95) );
  INVX5 U10 ( .A(n95), .Y(n94) );
  OAI21X6 U11 ( .A0(n119), .A1(n27), .B0(n21), .Y(n33) );
  INVX16 U12 ( .A(n111), .Y(n109) );
  INVX4 U14 ( .A(n87), .Y(ans[1]) );
  INVX2 U15 ( .A(n76), .Y(n87) );
  OAI2BB2X2 U16 ( .B0(n29), .B1(n113), .A0N(alu_ans[1]), .A1N(n93), .Y(n76) );
  OAI2BB2X2 U17 ( .B0(n44), .B1(n113), .A0N(alu_ans[2]), .A1N(n81), .Y(n121)
         );
  INVX2 U18 ( .A(a_data[2]), .Y(n104) );
  NOR2X4 U19 ( .A(n80), .B(instruction[3]), .Y(n19) );
  BUFX5 U20 ( .A(n16), .Y(n93) );
  OR2X2 U21 ( .A(instruction[1]), .B(instruction[2]), .Y(n78) );
  INVX2 U22 ( .A(n93), .Y(n79) );
  INVX2 U23 ( .A(n79), .Y(n80) );
  INVX5 U24 ( .A(n79), .Y(n81) );
  CLKBUFX4 U25 ( .A(n121), .Y(ans[2]) );
  NAND2X4 U26 ( .A(n82), .B(n83), .Y(ans[4]) );
  CLKINVX1 U27 ( .A(n42), .Y(n84) );
  NAND2X2 U28 ( .A(alu_ans[4]), .B(n81), .Y(n82) );
  NAND2X2 U29 ( .A(n19), .B(n84), .Y(n83) );
  AOI221X1 U30 ( .A0(n106), .A1(n32), .B0(a_data[3]), .B1(n33), .C0(n43), .Y(
        n42) );
  INVX5 U31 ( .A(n19), .Y(n113) );
  CLKBUFX4 U32 ( .A(n73), .Y(ans[6]) );
  OAI2BB2X2 U33 ( .B0(n37), .B1(n113), .A0N(alu_ans[6]), .A1N(n81), .Y(n73) );
  CLKBUFX4 U34 ( .A(n75), .Y(ans[3]) );
  OAI2BB2X2 U35 ( .B0(n31), .B1(n113), .A0N(alu_ans[3]), .A1N(n93), .Y(n75) );
  CLKBUFX4 U36 ( .A(n74), .Y(ans[5]) );
  OAI2BB2X2 U37 ( .B0(n35), .B1(n113), .A0N(alu_ans[5]), .A1N(n93), .Y(n74) );
  INVX4 U38 ( .A(n104), .Y(n103) );
  OAI21X6 U39 ( .A0(instruction[5]), .A1(n27), .B0(n22), .Y(n32) );
  CLKBUFX4 U40 ( .A(n120), .Y(ans[7]) );
  OAI2BB2X2 U41 ( .B0(n39), .B1(n113), .A0N(alu_ans[7]), .A1N(n93), .Y(n120)
         );
  INVX4 U42 ( .A(n101), .Y(n100) );
  NOR2X6 U43 ( .A(n92), .B(n78), .Y(n24) );
  CLKINVX1 U44 ( .A(instruction[0]), .Y(n92) );
  AOI221X1 U45 ( .A0(n107), .A1(n32), .B0(n94), .B1(n33), .C0(n36), .Y(n35) );
  BUFX2 U46 ( .A(n99), .Y(n98) );
  BUFX2 U47 ( .A(n102), .Y(n101) );
  AOI221X1 U48 ( .A0(n109), .A1(n32), .B0(n106), .B1(n33), .C0(n38), .Y(n37)
         );
  AO21X1 U49 ( .A0(n21), .A1(n22), .B0(instruction[3]), .Y(n18) );
  AND3X2 U50 ( .A(instruction[1]), .B(instruction[0]), .C(n47), .Y(n46) );
  NAND3X3 U51 ( .A(n46), .B(n119), .C(instruction[4]), .Y(n22) );
  INVX5 U52 ( .A(n80), .Y(n112) );
  INVX2 U53 ( .A(psw_in[7]), .Y(n114) );
  BUFX2 U54 ( .A(n111), .Y(n110) );
  INVX2 U55 ( .A(n33), .Y(n117) );
  AO22X2 U56 ( .A0(alu_psw_out[0]), .A1(n80), .B0(psw_in[0]), .B1(n112), .Y(
        psw_out[0]) );
  AOI221X1 U57 ( .A0(n106), .A1(n115), .B0(b_data[1]), .B1(n24), .C0(n30), .Y(
        n29) );
  OAI22X1 U58 ( .A0(n117), .A1(n98), .B0(n118), .B1(n104), .Y(n30) );
  AOI211X2 U59 ( .A0(b_data[0]), .A1(n24), .B0(n25), .C0(n26), .Y(n23) );
  OAI22X1 U60 ( .A0(n114), .A1(n21), .B0(n118), .B1(n102), .Y(n25) );
  AOI221X1 U61 ( .A0(n107), .A1(n115), .B0(n96), .B1(n24), .C0(n45), .Y(n44)
         );
  OAI22X1 U62 ( .A0(n117), .A1(n102), .B0(n118), .B1(n105), .Y(n45) );
  AOI221X2 U63 ( .A0(n94), .A1(n32), .B0(n103), .B1(n33), .C0(n34), .Y(n31) );
  OAI22X1 U64 ( .A0(n116), .A1(n105), .B0(n110), .B1(n28), .Y(n34) );
  OAI2B2X1 U65 ( .A1N(n106), .A0(n116), .B0(n28), .B1(n101), .Y(n36) );
  OAI22X1 U66 ( .A0(n95), .A1(n116), .B0(n98), .B1(n28), .Y(n43) );
  AOI211X2 U67 ( .A0(n24), .A1(n109), .B0(n40), .C0(n41), .Y(n39) );
  OAI22X1 U68 ( .A0(n117), .A1(n108), .B0(n114), .B1(n22), .Y(n40) );
  INVX2 U69 ( .A(a_data[1]), .Y(n102) );
  OAI22X1 U70 ( .A0(n116), .A1(n108), .B0(n28), .B1(n104), .Y(n38) );
  INVX2 U71 ( .A(a_data[0]), .Y(n99) );
  AO22X2 U72 ( .A0(alu_psw_out[4]), .A1(n93), .B0(psw_in[4]), .B1(n112), .Y(
        psw_out[4]) );
  AO22X2 U73 ( .A0(alu_psw_out[3]), .A1(n81), .B0(psw_in[3]), .B1(n112), .Y(
        psw_out[3]) );
  AO22X2 U74 ( .A0(alu_psw_out[1]), .A1(n93), .B0(psw_in[1]), .B1(n112), .Y(
        psw_out[1]) );
  AO22X2 U75 ( .A0(alu_psw_out[2]), .A1(n81), .B0(psw_in[2]), .B1(n112), .Y(
        psw_out[2]) );
  AO22X2 U76 ( .A0(alu_psw_out[5]), .A1(n93), .B0(psw_in[5]), .B1(n112), .Y(
        psw_out[5]) );
  AO22X2 U77 ( .A0(alu_psw_out[6]), .A1(n81), .B0(psw_in[6]), .B1(n112), .Y(
        psw_out[6]) );
  OAI32X2 U78 ( .A0(n27), .A1(n119), .A2(n110), .B0(n28), .B1(n95), .Y(n26) );
  NAND4X1 U79 ( .A(alu_op[3]), .B(alu_op[2]), .C(alu_op[1]), .D(alu_op[0]), 
        .Y(n16) );
  OAI22X1 U80 ( .A0(n21), .A1(n110), .B0(n22), .B1(n99), .Y(n20) );
  CLKINVX3 U81 ( .A(n24), .Y(n116) );
  INVX2 U82 ( .A(n32), .Y(n118) );
  INVX2 U83 ( .A(n28), .Y(n115) );
  OAI2BB1X2 U84 ( .A0N(alu_psw_out[7]), .A1N(n81), .B0(n17), .Y(psw_out[7]) );
  AOI32X2 U85 ( .A0(n112), .A1(n18), .A2(psw_in[7]), .B0(n19), .B1(n20), .Y(
        n17) );
  OAI32X2 U86 ( .A0(n27), .A1(instruction[5]), .A2(n99), .B0(n28), .B1(n105), 
        .Y(n41) );
  NAND3X3 U87 ( .A(instruction[4]), .B(n46), .C(instruction[5]), .Y(n21) );
  NAND4X6 U88 ( .A(instruction[6]), .B(instruction[2]), .C(instruction[7]), 
        .D(n48), .Y(n28) );
  NOR4X4 U89 ( .A(instruction[5]), .B(instruction[4]), .C(instruction[1]), .D(
        instruction[0]), .Y(n48) );
  CLKINVX2 U90 ( .A(instruction[5]), .Y(n119) );
  NOR3X2 U91 ( .A(instruction[2]), .B(instruction[7]), .C(instruction[6]), .Y(
        n47) );
  NAND2BX4 U92 ( .AN(instruction[4]), .B(n46), .Y(n27) );
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
  INVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module CPU_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
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
  wire   n944, n723, n724, interupt_en, bit_en, get_ins_done, ram_read_done,
         rom_read_done, ram_write_done, get_ins_done_nxt, ram_write_done_nxt,
         ram_read_done_nxt, rom_read_done_nxt, read_en_nxt, N203, N204, N205,
         N206, N207, N208, N209, N210, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n407, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n438, n439,
         n440, n451, n156, n159, n695, n138, n139, n140, n141, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n157, n158, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n190, n191,
         n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n406, n408, n437, n441, n442, n443, n444,
         n445, n447, n450, n452, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n814, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878,
         n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889,
         n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, n900,
         n901, n902, n903, n904, n905, n906, n907, n908, n909, n910, n911,
         n912, n913, n914, n915, n916, n917, n918, n919, n920, n921, n922,
         n923, n924, n925, n926, n927, n928, n929, n930, n931, n932, n933,
         n934, n935, n936, n937, n938, n939, n940, n941, n942, n943;
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

  DFFRHQX8 \ram_data_register_reg[0]  ( .D(n433), .CK(clk), .RN(n819), .Q(
        ram_data_register[0]) );
  DFFRHQX8 \status_reg[2]  ( .D(n428), .CK(clk), .RN(n820), .Q(status[2]) );
  DFFRHQX8 \ins_register_reg[1]  ( .D(n159), .CK(clk), .RN(n820), .Q(
        ins_register[1]) );
  DFFRHQX8 \rom_data_register_reg[3]  ( .D(n400), .CK(clk), .RN(n820), .Q(
        rom_data_register[3]) );
  DFFRHQX8 \rom_data_register_reg[6]  ( .D(n397), .CK(clk), .RN(n820), .Q(
        rom_data_register[6]) );
  DFFRHQX8 \ram_data_register_reg[1]  ( .D(n367), .CK(clk), .RN(n822), .Q(
        ram_data_register[1]) );
  DFFRHQX8 \addr_bus_reg[4]  ( .D(n337), .CK(clk), .RN(n818), .Q(addr_bus[4])
         );
  DFFRHQX8 \addr_bus_reg[5]  ( .D(n336), .CK(clk), .RN(n824), .Q(addr_bus[5])
         );
  OAI2BB2X4 U3 ( .B0(read_en), .B1(n9), .A0N(n723), .A1N(data_bus[1]), .Y(n8)
         );
  OAI2BB2X4 U5 ( .B0(read_en), .B1(n10), .A0N(data_bus[2]), .A1N(n814), .Y(n7)
         );
  OAI2BB2X4 U6 ( .B0(read_en), .B1(n11), .A0N(data_bus[3]), .A1N(n814), .Y(n6)
         );
  OAI2BB2X4 U7 ( .B0(read_en), .B1(n12), .A0N(data_bus[4]), .A1N(n814), .Y(n5)
         );
  OAI2BB2X4 U8 ( .B0(read_en), .B1(n13), .A0N(data_bus[5]), .A1N(n814), .Y(n4)
         );
  OAI2BB2X4 U9 ( .B0(read_en), .B1(n14), .A0N(data_bus[6]), .A1N(n814), .Y(n3)
         );
  OAI2BB2X4 U10 ( .B0(n814), .B1(n15), .A0N(data_bus[7]), .A1N(n814), .Y(n2)
         );
  CLKINVX16 U272 ( .A(n1), .Y(n16) );
  OAI2BB2X4 U11 ( .B0(n814), .B1(n16), .A0N(data_bus[0]), .A1N(read_en), .Y(n1) );
  CLKINVX12 U276 ( .A(n7), .Y(n10) );
  CLKINVX12 U281 ( .A(n5), .Y(n12) );
  CLKINVX12 U284 ( .A(n4), .Y(n13) );
  CLKINVX12 U287 ( .A(n3), .Y(n14) );
  CLKINVX12 U291 ( .A(n2), .Y(n15) );
  DFFRHQX8 \ins_register_reg[5]  ( .D(n410), .CK(clk), .RN(n825), .Q(
        ins_register[5]) );
  DFFRHQX8 \ins_register_reg[6]  ( .D(n411), .CK(clk), .RN(n825), .Q(
        ins_register[6]) );
  DFFRHQX8 \ins_register_reg[2]  ( .D(n407), .CK(clk), .RN(n825), .Q(
        ins_register[2]) );
  DFFRHQX8 \ins_register_reg[7]  ( .D(n412), .CK(clk), .RN(n825), .Q(
        ins_register[7]) );
  DFFRHQX8 \ins_register_reg[4]  ( .D(n409), .CK(clk), .RN(n824), .Q(
        ins_register[4]) );
  DFFRHQX8 \run_phase_reg[0]  ( .D(n431), .CK(clk), .RN(n824), .Q(run_phase[0]) );
  DFFRHQX8 \ram_data_register_reg[7]  ( .D(n379), .CK(clk), .RN(n823), .Q(
        ram_data_register[7]) );
  NOR3BX4 U56 ( .AN(n180), .B(n861), .C(b_data_from[3]), .Y(n147) );
  AOI22X4 U88 ( .A0(n1), .A1(n733), .B0(n197), .B1(b[0]), .Y(n191) );
  OAI211X4 U129 ( .A0(n15), .A1(n756), .B0(n229), .C0(n230), .Y(n412) );
  OAI211X4 U131 ( .A0(n14), .A1(n756), .B0(n231), .C0(n230), .Y(n411) );
  OAI211X4 U133 ( .A0(n13), .A1(n756), .B0(n232), .C0(n230), .Y(n410) );
  OAI211X4 U135 ( .A0(n12), .A1(n756), .B0(n233), .C0(n230), .Y(n409) );
  OAI2B2X4 U137 ( .A1N(ins_register[2]), .A0(n807), .B0(n10), .B1(n925), .Y(
        n407) );
  OAI2B2X4 U138 ( .A1N(ins_register[0]), .A0(n808), .B0(n16), .B1(n925), .Y(
        n405) );
  CLKINVX12 U140 ( .A(n2), .Y(n237) );
  CLKINVX12 U142 ( .A(n1), .Y(n238) );
  OAI222X4 U143 ( .A0(n736), .A1(n893), .B0(n235), .B1(n841), .C0(n9), .C1(
        n236), .Y(n402) );
  CLKINVX12 U145 ( .A(n7), .Y(n239) );
  OAI222X4 U146 ( .A0(n736), .A1(n895), .B0(n235), .B1(n842), .C0(n11), .C1(
        n236), .Y(n400) );
  CLKINVX12 U148 ( .A(n5), .Y(n240) );
  CLKINVX12 U150 ( .A(n4), .Y(n241) );
  CLKINVX12 U152 ( .A(n3), .Y(n242) );
  NAND2BX8 U154 ( .AN(n244), .B(n750), .Y(n235) );
  AOI211X4 U168 ( .A0(n856), .A1(n253), .B0(n254), .C0(n839), .Y(n247) );
  AOI22X4 U205 ( .A0(n2), .A1(n733), .B0(n197), .B1(b[7]), .Y(n290) );
  OAI211X4 U207 ( .A0(n917), .A1(n804), .B0(n292), .C0(n293), .Y(n259) );
  AOI22X4 U213 ( .A0(n3), .A1(n733), .B0(n197), .B1(b[6]), .Y(n295) );
  OAI2B11X4 U215 ( .A1N(n806), .A0(n897), .B0(n297), .C0(n298), .Y(n262) );
  AOI22X4 U221 ( .A0(n4), .A1(n733), .B0(n197), .B1(b[5]), .Y(n300) );
  OAI211X4 U223 ( .A0(n915), .A1(n804), .B0(n302), .C0(n303), .Y(n264) );
  AOI22X4 U229 ( .A0(n5), .A1(n733), .B0(n197), .B1(b[4]), .Y(n305) );
  OAI211X4 U231 ( .A0(n914), .A1(n804), .B0(n307), .C0(n308), .Y(n266) );
  AOI22X4 U237 ( .A0(n733), .A1(n6), .B0(n197), .B1(b[3]), .Y(n310) );
  OAI211X4 U239 ( .A0(n913), .A1(n804), .B0(n312), .C0(n313), .Y(n268) );
  AOI22X4 U245 ( .A0(n7), .A1(n733), .B0(n197), .B1(b[2]), .Y(n315) );
  OAI211X4 U252 ( .A0(n912), .A1(n804), .B0(n320), .C0(n321), .Y(n270) );
  NOR2X8 U259 ( .A(n877), .B(n866), .Y(n260) );
  AOI31X4 U262 ( .A0(n323), .A1(n324), .A2(status[6]), .B0(n884), .Y(n319) );
  AND3X6 U270 ( .A(n330), .B(n856), .C(n331), .Y(n193) );
  AOI22X4 U271 ( .A0(n733), .A1(n8), .B0(n197), .B1(b[1]), .Y(n326) );
  AND3X6 U273 ( .A(n331), .B(addr_register_out[5]), .C(n255), .Y(n197) );
  NAND4BX4 U279 ( .AN(addr_register_out[0]), .B(addr_register_out[7]), .C(
        addr_register_out[6]), .D(n406), .Y(n318) );
  NOR2BX8 U282 ( .AN(n767), .B(n890), .Y(n331) );
  AOI221X4 U348 ( .A0(n183), .A1(rom_read_done), .B0(n478), .B1(get_ins_done), 
        .C0(n884), .Y(n477) );
  OAI2B11X4 U391 ( .A1N(ram_read_done), .A0(n890), .B0(n493), .C0(n494), .Y(
        n492) );
  AOI211X4 U394 ( .A0(status[5]), .A1(n212), .B0(n808), .C0(status[2]), .Y(
        n493) );
  NOR2X8 U398 ( .A(n807), .B(status[4]), .Y(n324) );
  OAI2B2X4 U399 ( .A1N(n739), .A0(n807), .B0(n9), .B1(n925), .Y(n159) );
  CLKINVX12 U400 ( .A(n8), .Y(n9) );
  OAI2B2X4 U401 ( .A1N(ins_register[3]), .A0(n808), .B0(n11), .B1(n925), .Y(
        n156) );
  CLKINVX12 U402 ( .A(n6), .Y(n11) );
  ClkDiv_DIV_NUM2 clk_6 ( .clk_in(clk), .rst_n(n817), .clk_out(clk_6M) );
  ClkDiv_DIV_NUM12 clk_1 ( .clk_in(clk), .rst_n(n817), .clk_out(clk_1M) );
  InsDecoder insdecoder ( .clk(clk), .rst_n(n817), .instruction({
        ins_register[7:6], n760, ins_register[4:0]}), .run_phase(run_phase), 
        .psw(psw), .ram_data_register(ram_data_register), .rom_data_register(
        rom_data_register), .interupt_en(interupt_en), .run_phase_init(
        run_phase_init), .a_data_from({SYNOPSYS_UNCONNECTED__0, 
        a_data_from[2:0]}), .b_data_from(b_data_from), .alu_op(alu_op), 
        .a_bit_location(a_bit_location), .b_bit_location(b_bit_location), 
        .bit_en(bit_en), .addr_register_out(addr_register_out), .next_status(
        decoder_next_status) );
  Process pro ( .psw_in({n496, pro_psw_in[6:0]}), .a_data({pro_a[7:5], n495, 
        n812, pro_a[2:0]}), .b_data({pro_b[7], n764, n811, pro_b[4:2], n810, 
        n809}), .a_bit_location(a_bit_location), .b_bit_location(
        b_bit_location), .bit_en(bit_en), .alu_op(alu_op), .instruction({
        ins_register[7:6], n761, ins_register[4:2], n739, ins_register[0]}), 
        .ans(pro_ans), .psw_out({pro_psw_out[7:1], SYNOPSYS_UNCONNECTED__1})
         );
  CPU_DW01_inc_0 add_352 ( .A(program_counter[15:8]), .SUM({N210, N209, N208, 
        N207, N206, N205, N204, N203}) );
  CPU_DW01_inc_1 add_105 ( .A(program_counter), .SUM(program_counter_plus1) );
  DFFRQX2 \addr_bus_reg[15]  ( .D(n364), .CK(clk), .RN(n817), .Q(addr_bus[15])
         );
  DFFRQX2 \addr_bus_reg[8]  ( .D(n354), .CK(clk), .RN(n830), .Q(addr_bus[8])
         );
  DFFRQX2 \addr_bus_reg[9]  ( .D(n352), .CK(clk), .RN(n831), .Q(addr_bus[9])
         );
  DFFRQX2 \addr_bus_reg[10]  ( .D(n350), .CK(clk), .RN(n830), .Q(addr_bus[10])
         );
  DFFRQX2 \addr_bus_reg[11]  ( .D(n348), .CK(clk), .RN(n831), .Q(addr_bus[11])
         );
  DFFRQX2 \addr_bus_reg[12]  ( .D(n346), .CK(clk), .RN(n830), .Q(addr_bus[12])
         );
  DFFRQX2 \addr_bus_reg[13]  ( .D(n344), .CK(clk), .RN(n829), .Q(addr_bus[13])
         );
  DFFRQX2 \addr_bus_reg[14]  ( .D(n342), .CK(clk), .RN(n830), .Q(addr_bus[14])
         );
  DFFRQX2 \psw_reg[0]  ( .D(n381), .CK(clk), .RN(n830), .Q(psw[0]) );
  DFFRQX2 \nop_cnt_reg[0]  ( .D(n422), .CK(clk), .RN(n830), .Q(nop_cnt[0]) );
  DFFRQX2 \psw_reg[6]  ( .D(n387), .CK(clk), .RN(n829), .Q(psw[6]) );
  DFFRQX2 \psw_reg[5]  ( .D(n386), .CK(clk), .RN(n830), .Q(psw[5]) );
  DFFRQX2 \psw_reg[2]  ( .D(n383), .CK(clk), .RN(n829), .Q(psw[2]) );
  DFFRQX2 \psw_reg[1]  ( .D(n382), .CK(clk), .RN(n829), .Q(psw[1]) );
  DFFRQX2 \data_out_reg[7]  ( .D(n420), .CK(clk), .RN(n826), .Q(data_out[7])
         );
  DFFRQX2 \data_out_reg[0]  ( .D(n419), .CK(clk), .RN(n826), .Q(data_out[0])
         );
  DFFRQX2 \data_out_reg[1]  ( .D(n418), .CK(clk), .RN(n826), .Q(data_out[1])
         );
  DFFRQX2 \data_out_reg[2]  ( .D(n417), .CK(clk), .RN(n826), .Q(data_out[2])
         );
  DFFRQX2 \data_out_reg[3]  ( .D(n416), .CK(clk), .RN(n826), .Q(data_out[3])
         );
  DFFRQX2 \data_out_reg[4]  ( .D(n415), .CK(clk), .RN(n826), .Q(data_out[4])
         );
  DFFRQX2 \data_out_reg[5]  ( .D(n414), .CK(clk), .RN(n825), .Q(data_out[5])
         );
  DFFRQX2 \data_out_reg[6]  ( .D(n413), .CK(clk), .RN(n826), .Q(data_out[6])
         );
  DFFRQX2 ram_read_done_reg ( .D(ram_read_done_nxt), .CK(clk), .RN(n827), .Q(
        ram_read_done) );
  DFFRQX2 get_ins_done_reg ( .D(get_ins_done_nxt), .CK(clk), .RN(n826), .Q(
        get_ins_done) );
  DFFRQX2 write_en_reg ( .D(ram_write_done_nxt), .CK(clk), .RN(n827), .Q(n724)
         );
  DFFRQX2 rom_read_done_reg ( .D(rom_read_done_nxt), .CK(clk), .RN(n830), .Q(
        rom_read_done) );
  DFFRQX2 \psw_reg[7]  ( .D(n388), .CK(clk), .RN(n828), .Q(psw[7]) );
  DFFRQX2 \addr_bus_reg[6]  ( .D(n335), .CK(clk), .RN(n829), .Q(addr_bus[6])
         );
  DFFRQX2 \addr_bus_reg[7]  ( .D(n334), .CK(clk), .RN(n829), .Q(addr_bus[7])
         );
  DFFRQX4 \addr_bus_reg[1]  ( .D(n340), .CK(clk), .RN(n818), .Q(addr_bus[1])
         );
  DFFRQX4 \addr_bus_reg[3]  ( .D(n338), .CK(clk), .RN(n818), .Q(addr_bus[3])
         );
  DFFRQX2 \int_addr_reg[4]  ( .D(n439), .CK(clk), .RN(n828), .Q(int_addr[4])
         );
  DFFRQX2 \int_addr_reg[3]  ( .D(n438), .CK(clk), .RN(n827), .Q(int_addr[3])
         );
  DFFRQX2 \int_addr_reg[1]  ( .D(n436), .CK(clk), .RN(n828), .Q(int_addr[1])
         );
  DFFRQX2 \psw_reg[3]  ( .D(n384), .CK(clk), .RN(n825), .Q(psw[3]) );
  DFFRQX2 \psw_reg[4]  ( .D(n385), .CK(clk), .RN(n824), .Q(psw[4]) );
  DFFRQX2 \int_addr_reg[5]  ( .D(n440), .CK(clk), .RN(n825), .Q(int_addr[5])
         );
  DFFRQX2 \b_reg[1]  ( .D(n390), .CK(clk), .RN(n827), .Q(b[1]) );
  DFFRQX2 \b_reg[0]  ( .D(n389), .CK(clk), .RN(n827), .Q(b[0]) );
  DFFRQX4 \acc_reg[5]  ( .D(n376), .CK(clk), .RN(n821), .Q(acc[5]) );
  DFFRQX4 \acc_reg[4]  ( .D(n374), .CK(clk), .RN(n821), .Q(acc[4]) );
  DFFRQX4 \acc_reg[3]  ( .D(n372), .CK(clk), .RN(n821), .Q(acc[3]) );
  DFFRQX4 \acc_reg[1]  ( .D(n368), .CK(clk), .RN(n822), .Q(acc[1]) );
  DFFRQX4 \acc_reg[7]  ( .D(n380), .CK(clk), .RN(n821), .Q(acc[7]) );
  DFFRQX4 \acc_reg[6]  ( .D(n378), .CK(clk), .RN(n820), .Q(acc[6]) );
  DFFRQX4 \acc_reg[2]  ( .D(n370), .CK(clk), .RN(n821), .Q(acc[2]) );
  DFFRQX4 \program_counter_reg[1]  ( .D(n362), .CK(clk), .RN(n823), .Q(
        program_counter[1]) );
  DFFRQX4 \program_counter_reg[3]  ( .D(n360), .CK(clk), .RN(n823), .Q(
        program_counter[3]) );
  DFFRQX4 \program_counter_reg[4]  ( .D(n359), .CK(clk), .RN(n822), .Q(
        program_counter[4]) );
  DFFRQX4 \program_counter_reg[2]  ( .D(n361), .CK(clk), .RN(n822), .Q(
        program_counter[2]) );
  DFFRQX4 \program_counter_reg[5]  ( .D(n358), .CK(clk), .RN(n823), .Q(
        program_counter[5]) );
  DFFRQX4 \program_counter_reg[6]  ( .D(n357), .CK(clk), .RN(n823), .Q(
        program_counter[6]) );
  DFFRQX4 \program_counter_reg[7]  ( .D(n356), .CK(clk), .RN(n823), .Q(
        program_counter[7]) );
  DFFRQX4 \program_counter_reg[0]  ( .D(n363), .CK(clk), .RN(n822), .Q(
        program_counter[0]) );
  DFFRQX4 \program_counter_reg[15]  ( .D(n365), .CK(clk), .RN(n822), .Q(
        program_counter[15]) );
  DFFRQX4 \program_counter_reg[9]  ( .D(n353), .CK(clk), .RN(n823), .Q(
        program_counter[9]) );
  DFFRQX4 \program_counter_reg[11]  ( .D(n349), .CK(clk), .RN(n817), .Q(
        program_counter[11]) );
  DFFRQX4 \program_counter_reg[12]  ( .D(n347), .CK(clk), .RN(n817), .Q(
        program_counter[12]) );
  DFFRQX4 \program_counter_reg[13]  ( .D(n345), .CK(clk), .RN(n818), .Q(
        program_counter[13]) );
  DFFRQX4 \program_counter_reg[10]  ( .D(n351), .CK(clk), .RN(n818), .Q(
        program_counter[10]) );
  DFFRQX4 \program_counter_reg[14]  ( .D(n343), .CK(clk), .RN(n818), .Q(
        program_counter[14]) );
  DFFRQX4 \status_reg[5]  ( .D(n429), .CK(clk), .RN(n819), .Q(status[5]) );
  DFFRQX4 \status_reg[4]  ( .D(n426), .CK(clk), .RN(n819), .Q(status[4]) );
  DFFRQX4 \status_reg[3]  ( .D(n425), .CK(clk), .RN(n819), .Q(status[3]) );
  DFFRQX4 \rom_data_register_reg[7]  ( .D(n404), .CK(clk), .RN(n820), .Q(
        rom_data_register[7]) );
  DFFRQX4 \rom_data_register_reg[1]  ( .D(n402), .CK(clk), .RN(n819), .Q(
        rom_data_register[1]) );
  DFFRQX4 \ram_data_register_reg[5]  ( .D(n375), .CK(clk), .RN(n824), .Q(
        ram_data_register[5]) );
  DFFRQX4 \run_phase_reg[3]  ( .D(n432), .CK(clk), .RN(n818), .Q(run_phase[3])
         );
  DFFRQX4 \ram_data_register_reg[6]  ( .D(n377), .CK(clk), .RN(n822), .Q(
        ram_data_register[6]) );
  DFFRQX4 \ram_data_register_reg[4]  ( .D(n373), .CK(clk), .RN(n821), .Q(
        ram_data_register[4]) );
  DFFRQX4 \ram_data_register_reg[3]  ( .D(n371), .CK(clk), .RN(n821), .Q(
        ram_data_register[3]) );
  TBUFX2 \data_bus_tri[6]  ( .A(data_out[6]), .OE(write_en), .Y(data_bus[6])
         );
  TBUFX2 \data_bus_tri[0]  ( .A(data_out[0]), .OE(write_en), .Y(data_bus[0])
         );
  TBUFX2 \data_bus_tri[2]  ( .A(data_out[2]), .OE(write_en), .Y(data_bus[2])
         );
  TBUFX2 \data_bus_tri[3]  ( .A(data_out[3]), .OE(write_en), .Y(data_bus[3])
         );
  TBUFX2 \data_bus_tri[4]  ( .A(data_out[4]), .OE(write_en), .Y(data_bus[4])
         );
  TBUFX2 \data_bus_tri[5]  ( .A(data_out[5]), .OE(write_en), .Y(data_bus[5])
         );
  TBUFX2 \data_bus_tri[7]  ( .A(data_out[7]), .OE(write_en), .Y(data_bus[7])
         );
  TBUFX2 \data_bus_tri[1]  ( .A(data_out[1]), .OE(n724), .Y(data_bus[1]) );
  DFFRQX2 interupt_en_reg ( .D(n451), .CK(clk), .RN(n828), .Q(interupt_en) );
  DFFRQX2 \addr_bus_reg[2]  ( .D(n339), .CK(clk), .RN(n828), .Q(addr_bus[2])
         );
  DFFRQX2 ram_write_done_reg ( .D(ram_write_done_nxt), .CK(clk), .RN(n829), 
        .Q(ram_write_done) );
  DFFRQX2 read_en_reg ( .D(read_en_nxt), .CK(clk), .RN(n829), .Q(n723) );
  DFFRQX2 \b_reg[2]  ( .D(n391), .CK(clk), .RN(n827), .Q(b[2]) );
  DFFRQX2 \b_reg[3]  ( .D(n392), .CK(clk), .RN(n827), .Q(b[3]) );
  DFFRHQX8 \run_phase_reg[1]  ( .D(n333), .CK(clk), .RN(n817), .Q(run_phase[1]) );
  DFFRQX2 \b_reg[4]  ( .D(n393), .CK(clk), .RN(n828), .Q(b[4]) );
  DFFRQX2 \b_reg[6]  ( .D(n395), .CK(clk), .RN(n828), .Q(b[6]) );
  DFFRQX2 \b_reg[5]  ( .D(n394), .CK(clk), .RN(n827), .Q(b[5]) );
  DFFRHQX8 \ins_register_reg[0]  ( .D(n405), .CK(clk), .RN(n825), .Q(
        ins_register[0]) );
  DFFRQX2 \status_reg[1]  ( .D(n430), .CK(clk), .RN(n824), .Q(status[1]) );
  DFFRHQX8 \run_phase_reg[2]  ( .D(n332), .CK(clk), .RN(n824), .Q(run_phase[2]) );
  DFFRQX2 \addr_bus_reg[0]  ( .D(n341), .CK(clk), .RN(n818), .Q(n944) );
  DFFRHQX8 \ins_register_reg[3]  ( .D(n156), .CK(clk), .RN(n819), .Q(
        ins_register[3]) );
  DFFSQX2 \nop_cnt_reg[1]  ( .D(n423), .CK(clk), .SN(n831), .Q(nop_cnt[1]) );
  DFFRX2 \b_reg[7]  ( .D(n396), .CK(clk), .RN(rst_n), .Q(b[7]), .QN(n695) );
  DFFRX2 \acc_reg[0]  ( .D(n434), .CK(clk), .RN(rst_n), .Q(acc[0]), .QN(n871)
         );
  DFFSQX2 memory_select_reg ( .D(n366), .CK(clk), .SN(n831), .Q(memory_select)
         );
  DFFSQX2 \nop_cnt_reg[2]  ( .D(n421), .CK(clk), .SN(n831), .Q(nop_cnt[2]) );
  DFFSQX2 \status_reg[0]  ( .D(n424), .CK(clk), .SN(n831), .Q(status[0]) );
  DFFRQX4 \rom_data_register_reg[0]  ( .D(n403), .CK(clk), .RN(n819), .Q(
        rom_data_register[0]) );
  DFFRQX4 \rom_data_register_reg[2]  ( .D(n401), .CK(clk), .RN(n820), .Q(
        rom_data_register[2]) );
  DFFRQX4 \rom_data_register_reg[4]  ( .D(n399), .CK(clk), .RN(n820), .Q(
        rom_data_register[4]) );
  DFFRQX4 \rom_data_register_reg[5]  ( .D(n398), .CK(clk), .RN(n821), .Q(
        rom_data_register[5]) );
  DFFRHQX4 \ram_data_register_reg[2]  ( .D(n369), .CK(clk), .RN(n822), .Q(
        ram_data_register[2]) );
  DFFRQX4 \program_counter_reg[8]  ( .D(n355), .CK(clk), .RN(n823), .Q(
        program_counter[8]) );
  DFFRQX4 \status_reg[6]  ( .D(n427), .CK(clk), .RN(n824), .Q(status[6]) );
  DFFRQX2 \int_addr_reg[0]  ( .D(n435), .CK(clk), .RN(n828), .Q(int_addr[0])
         );
  CLKAND2X12 U4 ( .A(n788), .B(n884), .Y(pro_b[7]) );
  AOI22X4 U12 ( .A0(program_counter[15]), .A1(n794), .B0(acc[7]), .B1(n148), 
        .Y(n139) );
  AOI22X2 U13 ( .A0(program_counter[14]), .A1(n794), .B0(acc[6]), .B1(n148), 
        .Y(n149) );
  CLKBUFX40 U14 ( .A(n279), .Y(n725) );
  NAND2X8 U15 ( .A(n476), .B(a_data_from[0]), .Y(n279) );
  BUFX20 U16 ( .A(n753), .Y(n726) );
  INVX10 U17 ( .A(n146), .Y(n753) );
  NOR2X6 U18 ( .A(n849), .B(n751), .Y(pro_a[6]) );
  BUFX20 U19 ( .A(pro_b[6]), .Y(n764) );
  AOI2BB2X2 U20 ( .B0(program_counter[7]), .B1(n726), .A0N(n860), .A1N(n695), 
        .Y(n140) );
  BUFX5 U21 ( .A(pro_b[5]), .Y(n811) );
  NAND3X2 U22 ( .A(n139), .B(n141), .C(n140), .Y(n788) );
  CLKINVX16 U23 ( .A(b_data_from[0]), .Y(n859) );
  BUFX8 U24 ( .A(b_data_from[1]), .Y(n746) );
  NOR2BX1 U25 ( .AN(a_data_from[2]), .B(n745), .Y(n476) );
  BUFX5 U26 ( .A(n182), .Y(n805) );
  INVX8 U27 ( .A(n725), .Y(n863) );
  INVX12 U28 ( .A(n276), .Y(n782) );
  INVX16 U29 ( .A(n790), .Y(n277) );
  BUFX12 U30 ( .A(n273), .Y(n804) );
  BUFX5 U31 ( .A(n245), .Y(n806) );
  BUFX8 U32 ( .A(pro_b[0]), .Y(n809) );
  BUFX10 U33 ( .A(n249), .Y(n729) );
  INVX4 U34 ( .A(n262), .Y(n854) );
  NOR2BX1 U35 ( .AN(n331), .B(n255), .Y(n734) );
  OR2X2 U36 ( .A(n324), .B(n477), .Y(n727) );
  NOR2X2 U37 ( .A(n854), .B(n752), .Y(pro_a[5]) );
  AOI22X2 U38 ( .A0(int_addr[3]), .A1(n158), .B0(addr_register_out[3]), .B1(
        n772), .Y(n164) );
  AOI221X4 U39 ( .A0(n782), .A1(addr_register_out[6]), .B0(n277), .B1(
        ram_data_register[6]), .C0(n294), .Y(n293) );
  OAI22X2 U40 ( .A0(n747), .A1(n909), .B0(n860), .B1(n931), .Y(n167) );
  BUFX5 U41 ( .A(n146), .Y(n747) );
  BUFX3 U42 ( .A(addr_register_out[4]), .Y(n728) );
  OAI2BB2X4 U43 ( .B0(n928), .B1(n729), .A0N(program_counter[6]), .A1N(n863), 
        .Y(n294) );
  INVX6 U44 ( .A(n730), .Y(n860) );
  OAI22X1 U45 ( .A0(n747), .A1(n908), .B0(n860), .B1(n933), .Y(n174) );
  OAI2B2X1 U46 ( .A1N(program_counter[5]), .A0(n747), .B0(n860), .B1(n929), 
        .Y(n157) );
  OAI22X1 U47 ( .A0(n747), .A1(n910), .B0(n860), .B1(n930), .Y(n163) );
  CLKINVX4 U48 ( .A(n728), .Y(n856) );
  AOI22X4 U49 ( .A0(int_addr[4]), .A1(n158), .B0(n728), .B1(n772), .Y(n160) );
  AOI221X1 U50 ( .A0(n782), .A1(n728), .B0(n277), .B1(ram_data_register[4]), 
        .C0(n304), .Y(n303) );
  NAND2X1 U51 ( .A(n880), .B(n728), .Y(n770) );
  AOI22X1 U52 ( .A0(n480), .A1(program_counter[4]), .B0(n774), .B1(n728), .Y(
        n485) );
  BUFX8 U53 ( .A(n147), .Y(n794) );
  AOI22X4 U54 ( .A0(rom_data_register[0]), .A1(n784), .B0(ram_data_register[0]), .B1(n789), .Y(n176) );
  AOI222X4 U55 ( .A0(addr_register_out[7]), .A1(n772), .B0(
        rom_data_register[7]), .B1(n784), .C0(ram_data_register[7]), .C1(n789), 
        .Y(n141) );
  AOI22X2 U57 ( .A0(rom_data_register[3]), .A1(n784), .B0(ram_data_register[3]), .B1(n789), .Y(n165) );
  BUFX6 U58 ( .A(n145), .Y(n789) );
  NOR2X8 U59 ( .A(n858), .B(n752), .Y(pro_a[7]) );
  AOI22X4 U60 ( .A0(int_addr[0]), .A1(n158), .B0(addr_register_out[0]), .B1(
        n772), .Y(n175) );
  OAI22X4 U61 ( .A0(n747), .A1(n907), .B0(n860), .B1(n934), .Y(n178) );
  NOR3X4 U62 ( .A(a_data_from[0]), .B(a_data_from[2]), .C(n862), .Y(n245) );
  INVX3 U63 ( .A(n745), .Y(n862) );
  NOR3X4 U64 ( .A(n745), .B(a_data_from[2]), .C(a_data_from[0]), .Y(n182) );
  NAND3X2 U65 ( .A(n745), .B(n872), .C(a_data_from[2]), .Y(n249) );
  AOI221X4 U66 ( .A0(program_counter[8]), .A1(n794), .B0(acc[0]), .B1(n148), 
        .C0(n178), .Y(n177) );
  BUFX20 U67 ( .A(n152), .Y(n730) );
  NOR4X4 U68 ( .A(n861), .B(n873), .C(b_data_from[0]), .D(b_data_from[3]), .Y(
        n152) );
  AOI221X4 U69 ( .A0(n863), .A1(program_counter[7]), .B0(b[7]), .B1(n868), 
        .C0(n289), .Y(n288) );
  AO22X4 U70 ( .A0(ram_data_register[7]), .A1(n277), .B0(addr_register_out[7]), 
        .B1(n782), .Y(n289) );
  INVX8 U71 ( .A(n729), .Y(n868) );
  AOI22X1 U72 ( .A0(n806), .A1(rom_data_register[3]), .B0(n805), .B1(acc[3]), 
        .Y(n307) );
  AOI221X2 U73 ( .A0(n782), .A1(addr_register_out[3]), .B0(n277), .B1(
        ram_data_register[3]), .C0(n309), .Y(n308) );
  INVX2 U74 ( .A(program_counter[0]), .Y(n907) );
  NOR2X6 U75 ( .A(status[3]), .B(status[2]), .Y(n325) );
  CLKAND2X6 U76 ( .A(n744), .B(n180), .Y(n148) );
  BUFX2 U77 ( .A(pro_a[3]), .Y(n812) );
  NOR2X2 U78 ( .A(n853), .B(n752), .Y(pro_a[3]) );
  INVX5 U79 ( .A(n793), .Y(n751) );
  BUFX5 U80 ( .A(n143), .Y(n772) );
  BUFX5 U81 ( .A(n144), .Y(n784) );
  INVX2 U82 ( .A(program_counter[4]), .Y(n910) );
  INVX2 U83 ( .A(program_counter[3]), .Y(n909) );
  INVX2 U84 ( .A(program_counter[1]), .Y(n908) );
  INVX6 U85 ( .A(ins_register[5]), .Y(n759) );
  INVX2 U86 ( .A(b[5]), .Y(n929) );
  INVX2 U87 ( .A(b[4]), .Y(n930) );
  INVX2 U89 ( .A(b[3]), .Y(n931) );
  INVX2 U90 ( .A(b[0]), .Y(n934) );
  INVX2 U91 ( .A(b[1]), .Y(n933) );
  AOI22X2 U92 ( .A0(n806), .A1(rom_data_register[4]), .B0(n805), .B1(acc[4]), 
        .Y(n302) );
  INVX8 U93 ( .A(n286), .Y(n858) );
  AOI22X2 U94 ( .A0(n806), .A1(rom_data_register[7]), .B0(n805), .B1(acc[7]), 
        .Y(n287) );
  AOI22X2 U95 ( .A0(n277), .A1(ram_data_register[5]), .B0(n868), .B1(b[5]), 
        .Y(n297) );
  OAI2B2X1 U96 ( .A1N(n782), .A0(n855), .B0(n916), .B1(n804), .Y(n299) );
  AOI22X2 U97 ( .A0(n806), .A1(rom_data_register[6]), .B0(n805), .B1(acc[6]), 
        .Y(n292) );
  INVX2 U98 ( .A(program_counter[15]), .Y(n906) );
  NOR2X6 U99 ( .A(n884), .B(n493), .Y(n203) );
  CLKINVX16 U100 ( .A(n748), .Y(n840) );
  OAI222X1 U101 ( .A0(n755), .A1(n843), .B0(n852), .B1(n763), .C0(n732), .C1(
        n904), .Y(n370) );
  OAI222X1 U102 ( .A0(n755), .A1(n841), .B0(n851), .B1(n763), .C0(n732), .C1(
        n905), .Y(n368) );
  CLKBUFX4 U103 ( .A(status[1]), .Y(n807) );
  OAI211X2 U104 ( .A0(n919), .A1(n190), .B0(n191), .C0(n192), .Y(n433) );
  NOR2X2 U105 ( .A(n857), .B(n751), .Y(n495) );
  AOI31X1 U106 ( .A0(n168), .A1(n169), .A2(n170), .B0(n751), .Y(pro_b[2]) );
  OR2X2 U107 ( .A(n864), .B(n848), .Y(n731) );
  CLKAND2X6 U108 ( .A(n771), .B(n735), .Y(n732) );
  CLKAND2X6 U109 ( .A(n786), .B(n734), .Y(n733) );
  OR4X2 U110 ( .A(n859), .B(n861), .C(n746), .D(b_data_from[3]), .Y(n146) );
  AOI31X2 U111 ( .A0(n164), .A1(n165), .A2(n166), .B0(n751), .Y(pro_b[3]) );
  AND2X2 U112 ( .A(n769), .B(n770), .Y(n735) );
  OR2X6 U113 ( .A(n779), .B(n780), .Y(n736) );
  AND2X2 U114 ( .A(status[6]), .B(n879), .Y(n737) );
  OA21X1 U115 ( .A0(n863), .A1(n461), .B0(n882), .Y(n738) );
  AOI22X2 U116 ( .A0(n803), .A1(pro_ans[1]), .B0(program_counter[1]), .B1(n743), .Y(n454) );
  AOI22X2 U117 ( .A0(n766), .A1(pro_ans[1]), .B0(N204), .B1(n742), .Y(n465) );
  CLKBUFX4 U118 ( .A(ins_register[1]), .Y(n739) );
  INVX5 U119 ( .A(n727), .Y(n740) );
  INVX5 U120 ( .A(n727), .Y(n741) );
  INVX5 U121 ( .A(n731), .Y(n742) );
  INVX5 U122 ( .A(n738), .Y(n743) );
  AOI22X2 U123 ( .A0(b[6]), .A1(n730), .B0(program_counter[6]), .B1(n726), .Y(
        n150) );
  OAI21X1 U124 ( .A0(n785), .A1(n938), .B0(n263), .Y(n385) );
  OAI21X1 U125 ( .A0(n785), .A1(n936), .B0(n265), .Y(n384) );
  OAI21X1 U126 ( .A0(n785), .A1(n924), .B0(n269), .Y(n382) );
  OAI21X1 U127 ( .A0(n785), .A1(n923), .B0(n267), .Y(n383) );
  OAI21X1 U128 ( .A0(n785), .A1(n922), .B0(n261), .Y(n386) );
  OAI21X1 U130 ( .A0(n785), .A1(n921), .B0(n258), .Y(n387) );
  AOI22X1 U132 ( .A0(n757), .A1(pro_ans[6]), .B0(program_counter[6]), .B1(n743), .Y(n459) );
  AOI22X1 U134 ( .A0(n757), .A1(pro_ans[4]), .B0(program_counter[4]), .B1(n743), .Y(n457) );
  AOI22X1 U136 ( .A0(n757), .A1(pro_ans[5]), .B0(program_counter[5]), .B1(n743), .Y(n458) );
  AOI22X1 U139 ( .A0(n803), .A1(pro_ans[3]), .B0(program_counter[3]), .B1(n743), .Y(n456) );
  AOI22X1 U141 ( .A0(n803), .A1(pro_ans[2]), .B0(program_counter[2]), .B1(n743), .Y(n455) );
  AOI22X1 U144 ( .A0(n803), .A1(n748), .B0(program_counter[0]), .B1(n743), .Y(
        n450) );
  AOI22X1 U147 ( .A0(n803), .A1(pro_ans[7]), .B0(program_counter[7]), .B1(n743), .Y(n460) );
  AOI22X2 U149 ( .A0(n480), .A1(program_counter[3]), .B0(n774), .B1(
        addr_register_out[3]), .Y(n484) );
  AOI22X1 U151 ( .A0(n766), .A1(pro_ans[5]), .B0(N208), .B1(n742), .Y(n473) );
  AOI22X1 U153 ( .A0(n766), .A1(pro_ans[4]), .B0(N207), .B1(n742), .Y(n471) );
  AOI22X1 U155 ( .A0(n766), .A1(pro_ans[3]), .B0(N206), .B1(n742), .Y(n469) );
  AOI22X1 U156 ( .A0(n766), .A1(pro_ans[2]), .B0(N205), .B1(n742), .Y(n467) );
  AOI22X1 U157 ( .A0(n766), .A1(pro_ans[7]), .B0(N210), .B1(n742), .Y(n444) );
  AOI22X1 U158 ( .A0(n766), .A1(pro_ans[6]), .B0(N209), .B1(n742), .Y(n475) );
  OAI22X1 U159 ( .A0(n933), .A1(n729), .B0(n908), .B1(n725), .Y(n322) );
  OAI22X1 U160 ( .A0(n934), .A1(n729), .B0(n907), .B1(n725), .Y(n278) );
  NOR2X2 U161 ( .A(n461), .B(n725), .Y(n452) );
  AOI22X2 U162 ( .A0(program_counter[14]), .A1(n783), .B0(
        program_counter_plus1[14]), .B1(n740), .Y(n474) );
  OAI22X1 U163 ( .A0(n931), .A1(n729), .B0(n909), .B1(n725), .Y(n309) );
  OAI22X1 U164 ( .A0(n930), .A1(n729), .B0(n910), .B1(n725), .Y(n304) );
  NOR2X4 U165 ( .A(nop_cnt[2]), .B(nop_cnt[1]), .Y(n224) );
  INVX2 U166 ( .A(pro_ans[4]), .Y(n847) );
  AOI22X2 U167 ( .A0(int_addr[1]), .A1(n158), .B0(addr_register_out[1]), .B1(
        n772), .Y(n171) );
  AND3X4 U169 ( .A(n180), .B(n861), .C(b_data_from[3]), .Y(n158) );
  AOI222X2 U170 ( .A0(addr_register_out[6]), .A1(n772), .B0(
        rom_data_register[6]), .B1(n784), .C0(ram_data_register[6]), .C1(n789), 
        .Y(n151) );
  BUFX20 U171 ( .A(n179), .Y(n744) );
  NOR2X2 U172 ( .A(b_data_from[2]), .B(b_data_from[3]), .Y(n179) );
  AOI221X4 U173 ( .A0(program_counter[11]), .A1(n794), .B0(acc[3]), .B1(n148), 
        .C0(n167), .Y(n166) );
  BUFX8 U174 ( .A(pro_b[1]), .Y(n810) );
  AOI31X4 U175 ( .A0(n171), .A1(n172), .A2(n173), .B0(n752), .Y(pro_b[1]) );
  NOR3BX4 U176 ( .AN(n744), .B(n859), .C(n746), .Y(n145) );
  AOI221X4 U177 ( .A0(program_counter[12]), .A1(n794), .B0(acc[4]), .B1(n148), 
        .C0(n163), .Y(n162) );
  NOR2X8 U178 ( .A(b_data_from[0]), .B(n746), .Y(n180) );
  AOI221X4 U179 ( .A0(program_counter[13]), .A1(n794), .B0(acc[5]), .B1(n148), 
        .C0(n157), .Y(n155) );
  AOI22X1 U180 ( .A0(n766), .A1(n748), .B0(N203), .B1(n742), .Y(n463) );
  AOI222X1 U181 ( .A0(n193), .A1(acc[0]), .B0(n762), .B1(n748), .C0(
        ram_data_register[0]), .C1(n775), .Y(n192) );
  XOR2X8 U182 ( .A(n840), .B(pro_ans[1]), .Y(n284) );
  AOI221X4 U183 ( .A0(program_counter[9]), .A1(n794), .B0(acc[1]), .B1(n148), 
        .C0(n174), .Y(n173) );
  AOI31X4 U184 ( .A0(n149), .A1(n150), .A2(n151), .B0(n752), .Y(pro_b[6]) );
  AOI31X4 U185 ( .A0(n175), .A1(n176), .A2(n177), .B0(n752), .Y(pro_b[0]) );
  OAI222X4 U186 ( .A0(n271), .A1(n755), .B0(n850), .B1(n256), .C0(n785), .C1(
        n919), .Y(n381) );
  BUFX20 U187 ( .A(a_data_from[1]), .Y(n745) );
  NOR3BX4 U188 ( .AN(n744), .B(n859), .C(n873), .Y(n143) );
  NOR3BX4 U189 ( .AN(n744), .B(n873), .C(b_data_from[0]), .Y(n144) );
  CLKINVX20 U190 ( .A(n746), .Y(n873) );
  BUFX20 U191 ( .A(pro_ans[0]), .Y(n748) );
  AOI22X1 U192 ( .A0(n480), .A1(program_counter[1]), .B0(n774), .B1(
        addr_register_out[1]), .Y(n482) );
  AOI31X4 U193 ( .A0(n160), .A1(n161), .A2(n162), .B0(n751), .Y(pro_b[4]) );
  AOI22X1 U194 ( .A0(rom_data_register[4]), .A1(n784), .B0(
        ram_data_register[4]), .B1(n789), .Y(n161) );
  AOI22X2 U195 ( .A0(program_counter[15]), .A1(n783), .B0(
        program_counter_plus1[15]), .B1(n740), .Y(n443) );
  INVX2 U196 ( .A(pro_ans[6]), .Y(n845) );
  AOI22X1 U197 ( .A0(n480), .A1(program_counter[0]), .B0(n774), .B1(
        addr_register_out[0]), .Y(n479) );
  AOI22X1 U198 ( .A0(b[2]), .A1(n730), .B0(program_counter[2]), .B1(n726), .Y(
        n169) );
  AOI31X4 U199 ( .A0(n153), .A1(n154), .A2(n155), .B0(n751), .Y(pro_b[5]) );
  AOI22X1 U200 ( .A0(rom_data_register[5]), .A1(n784), .B0(
        ram_data_register[5]), .B1(n789), .Y(n154) );
  AOI22X2 U201 ( .A0(program_counter[13]), .A1(n783), .B0(
        program_counter_plus1[13]), .B1(n740), .Y(n472) );
  AOI22X1 U202 ( .A0(rom_data_register[1]), .A1(n784), .B0(
        ram_data_register[1]), .B1(n789), .Y(n172) );
  AOI22X1 U203 ( .A0(int_addr[5]), .A1(n158), .B0(addr_register_out[5]), .B1(
        n772), .Y(n153) );
  CLKNAND2X2 U204 ( .A(n787), .B(n872), .Y(n273) );
  AOI22X1 U206 ( .A0(n480), .A1(program_counter[7]), .B0(n774), .B1(
        addr_register_out[7]), .Y(n488) );
  AOI32X1 U208 ( .A0(b[7]), .A1(n729), .A2(n250), .B0(n867), .B1(pro_ans[7]), 
        .Y(n248) );
  AOI22X2 U209 ( .A0(program_counter[12]), .A1(n783), .B0(
        program_counter_plus1[12]), .B1(n740), .Y(n470) );
  CLKINVX2 U210 ( .A(n790), .Y(n749) );
  AOI22X1 U211 ( .A0(n480), .A1(program_counter[6]), .B0(n774), .B1(
        addr_register_out[6]), .Y(n487) );
  AOI22X2 U212 ( .A0(program_counter[10]), .A1(n783), .B0(
        program_counter_plus1[10]), .B1(n740), .Y(n466) );
  INVX2 U214 ( .A(pro_ans[7]), .Y(n846) );
  INVX2 U216 ( .A(pro_ans[5]), .Y(n844) );
  CLKINVX2 U217 ( .A(n778), .Y(n750) );
  CLKINVX2 U218 ( .A(n806), .Y(n778) );
  INVX5 U219 ( .A(n793), .Y(n752) );
  NOR2X2 U220 ( .A(n852), .B(n751), .Y(pro_a[2]) );
  AND3X2 U222 ( .A(n324), .B(n325), .C(status[5]), .Y(n793) );
  AOI22X1 U224 ( .A0(n480), .A1(program_counter[5]), .B0(n774), .B1(
        addr_register_out[5]), .Y(n486) );
  AOI22X2 U225 ( .A0(program_counter[11]), .A1(n783), .B0(
        program_counter_plus1[11]), .B1(n740), .Y(n468) );
  OA21X1 U226 ( .A0(n749), .A1(n328), .B0(n767), .Y(n195) );
  NAND2X2 U227 ( .A(n767), .B(n890), .Y(n328) );
  BUFX5 U228 ( .A(n944), .Y(addr_bus[0]) );
  CLKBUFX4 U230 ( .A(n865), .Y(n755) );
  CLKBUFX4 U232 ( .A(n865), .Y(n795) );
  INVX4 U233 ( .A(status[1]), .Y(n756) );
  INVX5 U234 ( .A(n808), .Y(n940) );
  AOI22X1 U235 ( .A0(n480), .A1(program_counter[2]), .B0(n774), .B1(
        addr_register_out[2]), .Y(n483) );
  AOI22X2 U236 ( .A0(program_counter[9]), .A1(n783), .B0(
        program_counter_plus1[9]), .B1(n740), .Y(n464) );
  INVX2 U238 ( .A(n864), .Y(n757) );
  CLKBUFX4 U240 ( .A(n452), .Y(n803) );
  CLKINVX2 U241 ( .A(n866), .Y(n758) );
  AOI22X1 U242 ( .A0(n806), .A1(rom_data_register[2]), .B0(n805), .B1(acc[2]), 
        .Y(n312) );
  CLKINVX3 U243 ( .A(n805), .Y(n866) );
  INVX20 U244 ( .A(n759), .Y(n760) );
  CLKINVX4 U246 ( .A(n759), .Y(n761) );
  OAI31X2 U247 ( .A0(n926), .A1(n888), .A2(n324), .B0(memory_select), .Y(n442)
         );
  BUFX5 U248 ( .A(n194), .Y(n762) );
  NOR2BX1 U249 ( .AN(n749), .B(n328), .Y(n194) );
  CLKBUFX6 U250 ( .A(n188), .Y(n763) );
  NAND4BX2 U251 ( .AN(n318), .B(n253), .C(n881), .D(n856), .Y(n188) );
  AOI22X2 U253 ( .A0(program_counter[8]), .A1(n783), .B0(
        program_counter_plus1[8]), .B1(n740), .Y(n462) );
  INVX2 U254 ( .A(n878), .Y(n765) );
  BUFX5 U255 ( .A(n207), .Y(n802) );
  OR2X1 U256 ( .A(n461), .B(n804), .Y(n445) );
  INVX5 U257 ( .A(n445), .Y(n766) );
  BUFX2 U258 ( .A(n329), .Y(n767) );
  AOI211X2 U260 ( .A0(n890), .A1(n880), .B0(status[2]), .C0(n408), .Y(n329) );
  OR4X1 U261 ( .A(n181), .B(n758), .C(n879), .D(n183), .Y(n138) );
  INVX5 U263 ( .A(n138), .Y(n768) );
  CLKNAND2X2 U264 ( .A(n866), .B(n250), .Y(n769) );
  CLKINVX1 U265 ( .A(n839), .Y(n771) );
  NOR2X6 U266 ( .A(n880), .B(n319), .Y(n250) );
  INVX5 U267 ( .A(status[5]), .Y(n880) );
  AOI22X1 U268 ( .A0(program_counter[10]), .A1(n794), .B0(acc[2]), .B1(n148), 
        .Y(n168) );
  NAND2X1 U269 ( .A(n761), .B(n940), .Y(n232) );
  CLKBUFX6 U274 ( .A(n252), .Y(n773) );
  OA21X1 U275 ( .A0(n868), .A1(n877), .B0(n247), .Y(n252) );
  OR2X2 U277 ( .A(n408), .B(n802), .Y(n481) );
  INVX5 U278 ( .A(n481), .Y(n774) );
  INVX5 U280 ( .A(n195), .Y(n775) );
  INVX2 U283 ( .A(n243), .Y(n776) );
  CLKINVX1 U285 ( .A(n244), .Y(n777) );
  NOR2X1 U286 ( .A(n776), .B(n777), .Y(n779) );
  NOR2X1 U288 ( .A(n776), .B(n778), .Y(n780) );
  CLKBUFX4 U289 ( .A(n215), .Y(n781) );
  AOI31X1 U290 ( .A0(decoder_next_status[1]), .A1(n888), .A2(
        decoder_next_status[2]), .B0(n878), .Y(n215) );
  OR3X1 U292 ( .A(n872), .B(a_data_from[2]), .C(n862), .Y(n276) );
  CLKINVX24 U293 ( .A(a_data_from[0]), .Y(n872) );
  CLKBUFX6 U294 ( .A(n447), .Y(n783) );
  OAI221X1 U295 ( .A0(pro_psw_out[7]), .A1(n864), .B0(n787), .B1(n461), .C0(
        n882), .Y(n447) );
  AOI222X1 U296 ( .A0(addr_register_out[2]), .A1(n772), .B0(
        rom_data_register[2]), .B1(n784), .C0(ram_data_register[2]), .C1(n789), 
        .Y(n170) );
  CLKBUFX6 U297 ( .A(n257), .Y(n785) );
  AOI211X2 U298 ( .A0(n866), .A1(n250), .B0(n253), .C0(n839), .Y(n257) );
  CLKINVX1 U299 ( .A(n330), .Y(n786) );
  NOR2X3 U300 ( .A(n318), .B(n855), .Y(n330) );
  NOR2X6 U301 ( .A(n318), .B(n856), .Y(n255) );
  XNOR2X4 U302 ( .A(n791), .B(n281), .Y(n271) );
  NOR2BX4 U303 ( .AN(a_data_from[2]), .B(n745), .Y(n787) );
  CLKNAND2X2 U304 ( .A(n325), .B(n940), .Y(n181) );
  BUFX2 U305 ( .A(n816), .Y(n837) );
  OR3X2 U306 ( .A(n745), .B(a_data_from[2]), .C(n872), .Y(n790) );
  NOR2X2 U307 ( .A(interupt[3]), .B(interupt[2]), .Y(n186) );
  XNOR2X2 U308 ( .A(n284), .B(n285), .Y(n791) );
  CLKINVX3 U309 ( .A(addr_register_out[5]), .Y(n855) );
  NAND3X2 U310 ( .A(n254), .B(n881), .C(n255), .Y(n256) );
  OR2X2 U311 ( .A(rom_read_done_nxt), .B(get_ins_done_nxt), .Y(n792) );
  INVX2 U312 ( .A(n477), .Y(n882) );
  INVX5 U313 ( .A(n225), .Y(n888) );
  INVX2 U314 ( .A(n319), .Y(n881) );
  CLKINVX1 U315 ( .A(rom_data_register[0]), .Y(n892) );
  OAI211X4 U316 ( .A0(n906), .A1(n273), .B0(n287), .C0(n288), .Y(n286) );
  NAND2X1 U317 ( .A(n462), .B(n463), .Y(n355) );
  CLKINVX1 U318 ( .A(acc[1]), .Y(n905) );
  AOI221X1 U319 ( .A0(n863), .A1(program_counter[5]), .B0(n805), .B1(acc[5]), 
        .C0(n299), .Y(n298) );
  NAND2X1 U320 ( .A(n464), .B(n465), .Y(n353) );
  CLKINVX1 U321 ( .A(acc[2]), .Y(n904) );
  CLKINVX1 U322 ( .A(rom_data_register[2]), .Y(n894) );
  NAND2X1 U323 ( .A(n466), .B(n467), .Y(n351) );
  CLKINVX1 U324 ( .A(acc[3]), .Y(n903) );
  CLKINVX2 U325 ( .A(program_counter[14]), .Y(n917) );
  NAND2X1 U326 ( .A(n468), .B(n469), .Y(n349) );
  CLKINVX1 U327 ( .A(acc[4]), .Y(n902) );
  CLKINVX1 U328 ( .A(acc[5]), .Y(n901) );
  CLKINVX1 U329 ( .A(rom_data_register[4]), .Y(n896) );
  AOI22X1 U330 ( .A0(n750), .A1(rom_data_register[1]), .B0(n758), .B1(acc[1]), 
        .Y(n320) );
  OAI211X1 U331 ( .A0(n911), .A1(n804), .B0(n274), .C0(n275), .Y(n272) );
  AOI22X1 U332 ( .A0(n750), .A1(rom_data_register[0]), .B0(n758), .B1(acc[0]), 
        .Y(n274) );
  CLKINVX2 U333 ( .A(program_counter[12]), .Y(n915) );
  CLKINVX2 U334 ( .A(program_counter[11]), .Y(n914) );
  CLKINVX2 U335 ( .A(rom_data_register[5]), .Y(n897) );
  CLKINVX2 U336 ( .A(program_counter[13]), .Y(n916) );
  NAND2X1 U337 ( .A(n470), .B(n471), .Y(n347) );
  NAND2X1 U338 ( .A(n474), .B(n475), .Y(n343) );
  NAND2X1 U339 ( .A(n472), .B(n473), .Y(n345) );
  NAND2X1 U340 ( .A(n443), .B(n444), .Y(n365) );
  CLKINVX1 U341 ( .A(acc[6]), .Y(n900) );
  CLKINVX1 U342 ( .A(acc[7]), .Y(n899) );
  CLKINVX1 U343 ( .A(rom_data_register[6]), .Y(n898) );
  CLKINVX1 U344 ( .A(rom_data_register[7]), .Y(n891) );
  OAI221X1 U345 ( .A0(n858), .A1(n246), .B0(n695), .B1(n247), .C0(n248), .Y(
        n396) );
  CLKINVX2 U346 ( .A(b[2]), .Y(n932) );
  CLKINVX2 U347 ( .A(program_counter[10]), .Y(n913) );
  CLKINVX2 U349 ( .A(program_counter[9]), .Y(n912) );
  NOR2X5 U350 ( .A(n855), .B(status[5]), .Y(n253) );
  CLKINVX2 U351 ( .A(program_counter[8]), .Y(n911) );
  CLKINVX3 U352 ( .A(status[4]), .Y(n889) );
  OAI2BB2X1 U353 ( .B0(n857), .B1(n796), .A0N(data_out[4]), .A1N(n796), .Y(
        n415) );
  OAI2BB2X1 U354 ( .B0(n849), .B1(n797), .A0N(data_out[6]), .A1N(n797), .Y(
        n413) );
  OAI2BB2X1 U355 ( .B0(n854), .B1(n798), .A0N(data_out[5]), .A1N(n798), .Y(
        n414) );
  OAI2BB2X1 U356 ( .B0(n853), .B1(n797), .A0N(data_out[3]), .A1N(n797), .Y(
        n416) );
  OAI2BB2X1 U357 ( .B0(n852), .B1(n798), .A0N(data_out[2]), .A1N(n798), .Y(
        n417) );
  OAI2BB2X1 U358 ( .B0(n858), .B1(n798), .A0N(data_out[7]), .A1N(n798), .Y(
        n420) );
  NOR2X2 U359 ( .A(n887), .B(rom_read_done), .Y(rom_read_done_nxt) );
  NOR2X2 U360 ( .A(n925), .B(get_ins_done), .Y(get_ins_done_nxt) );
  CLKINVX2 U361 ( .A(run_phase[2]), .Y(n941) );
  CLKINVX4 U362 ( .A(status[3]), .Y(n890) );
  CLKINVX1 U363 ( .A(int_addr[5]), .Y(n935) );
  CLKINVX2 U364 ( .A(status[2]), .Y(n886) );
  NOR2X5 U365 ( .A(status[3]), .B(status[4]), .Y(n212) );
  NAND2X5 U366 ( .A(status[4]), .B(n243), .Y(n236) );
  CLKNAND2X2 U367 ( .A(status[2]), .B(n940), .Y(n225) );
  OAI2BB2X1 U368 ( .B0(n800), .B1(n906), .A0N(addr_bus[15]), .A1N(n800), .Y(
        n364) );
  OAI2BB2X1 U369 ( .B0(n799), .B1(n917), .A0N(addr_bus[14]), .A1N(n801), .Y(
        n342) );
  OAI2BB2X1 U370 ( .B0(n799), .B1(n915), .A0N(addr_bus[12]), .A1N(n801), .Y(
        n346) );
  OAI2BB2X1 U371 ( .B0(n799), .B1(n916), .A0N(addr_bus[13]), .A1N(n800), .Y(
        n344) );
  NOR2X2 U372 ( .A(n441), .B(ram_read_done), .Y(ram_read_done_nxt) );
  OR2X1 U373 ( .A(int_addr[0]), .B(n942), .Y(n435) );
  OR2X1 U374 ( .A(int_addr[1]), .B(n942), .Y(n436) );
  CLKINVX2 U375 ( .A(run_phase[3]), .Y(n875) );
  CLKINVX2 U376 ( .A(run_phase[0]), .Y(n939) );
  CLKNAND2X4 U377 ( .A(interupt_en), .B(n807), .Y(n230) );
  CLKINVX4 U378 ( .A(run_phase[1]), .Y(n918) );
  INVX2 U379 ( .A(nop_cnt[0]), .Y(n920) );
  CLKINVX2 U380 ( .A(psw[4]), .Y(n938) );
  CLKINVX2 U381 ( .A(psw[3]), .Y(n936) );
  NAND3X1 U382 ( .A(n437), .B(n441), .C(n442), .Y(n366) );
  INVX2 U383 ( .A(psw[5]), .Y(n922) );
  INVX2 U384 ( .A(psw[1]), .Y(n924) );
  INVX2 U385 ( .A(psw[2]), .Y(n923) );
  INVX2 U386 ( .A(psw[6]), .Y(n921) );
  NAND2X1 U387 ( .A(ins_register[4]), .B(n940), .Y(n233) );
  NAND2X1 U388 ( .A(ins_register[6]), .B(n940), .Y(n231) );
  NAND2X1 U389 ( .A(ins_register[7]), .B(n756), .Y(n229) );
  CLKINVX1 U390 ( .A(rom_data_register[1]), .Y(n893) );
  CLKINVX1 U392 ( .A(rom_data_register[3]), .Y(n895) );
  BUFX5 U393 ( .A(n834), .Y(n825) );
  BUFX5 U395 ( .A(n833), .Y(n826) );
  BUFX5 U396 ( .A(n833), .Y(n827) );
  BUFX5 U397 ( .A(n832), .Y(n828) );
  BUFX5 U403 ( .A(n832), .Y(n829) );
  BUFX5 U404 ( .A(n833), .Y(n830) );
  BUFX5 U405 ( .A(n834), .Y(n824) );
  BUFX5 U406 ( .A(n816), .Y(n823) );
  BUFX5 U407 ( .A(n835), .Y(n822) );
  CLKBUFX4 U408 ( .A(n834), .Y(n831) );
  BUFX5 U409 ( .A(n835), .Y(n821) );
  BUFX5 U410 ( .A(n835), .Y(n820) );
  BUFX5 U411 ( .A(n836), .Y(n818) );
  BUFX5 U412 ( .A(n836), .Y(n819) );
  BUFX2 U413 ( .A(n832), .Y(n833) );
  BUFX2 U414 ( .A(n836), .Y(n834) );
  BUFX2 U415 ( .A(n816), .Y(n832) );
  INVX2 U416 ( .A(n260), .Y(n865) );
  CLKBUFX6 U417 ( .A(n837), .Y(n817) );
  BUFX2 U418 ( .A(n837), .Y(n835) );
  BUFX2 U419 ( .A(n837), .Y(n836) );
  INVX2 U420 ( .A(n803), .Y(n864) );
  INVX4 U421 ( .A(decoder_next_status[0]), .Y(n874) );
  INVX2 U422 ( .A(n186), .Y(n943) );
  CLKINVX2 U423 ( .A(pro_ans[2]), .Y(n843) );
  CLKINVX2 U424 ( .A(pro_ans[1]), .Y(n841) );
  XOR2X1 U425 ( .A(pro_ans[3]), .B(pro_ans[2]), .Y(n285) );
  CLKINVX2 U426 ( .A(pro_ans[3]), .Y(n842) );
  XOR2X1 U427 ( .A(pro_ans[7]), .B(pro_ans[6]), .Y(n282) );
  XOR2X1 U428 ( .A(pro_ans[5]), .B(pro_ans[4]), .Y(n283) );
  NAND3X6 U429 ( .A(n331), .B(n855), .C(n255), .Y(n190) );
  NAND2X5 U430 ( .A(n250), .B(n868), .Y(n251) );
  INVX4 U431 ( .A(n256), .Y(n838) );
  INVX2 U432 ( .A(n228), .Y(n879) );
  INVX4 U433 ( .A(decoder_next_status[1]), .Y(n870) );
  INVX2 U434 ( .A(n250), .Y(n877) );
  AND3X2 U435 ( .A(decoder_next_status[2]), .B(n888), .C(n870), .Y(n209) );
  INVX2 U436 ( .A(n220), .Y(n869) );
  NOR2BX4 U437 ( .AN(n796), .B(n884), .Y(n213) );
  INVX2 U438 ( .A(n203), .Y(n883) );
  INVX4 U439 ( .A(n802), .Y(n878) );
  INVX2 U440 ( .A(n183), .Y(n887) );
  INVX2 U441 ( .A(n204), .Y(n885) );
  INVX4 U442 ( .A(n792), .Y(n801) );
  INVX4 U443 ( .A(n792), .Y(n800) );
  INVX4 U444 ( .A(n792), .Y(n799) );
  BUFX2 U445 ( .A(rst_n), .Y(n816) );
  OAI222X1 U446 ( .A0(n850), .A1(n246), .B0(n840), .B1(n251), .C0(n773), .C1(
        n934), .Y(n389) );
  INVX4 U447 ( .A(b_data_from[2]), .Y(n861) );
  XOR2X1 U448 ( .A(n282), .B(n283), .Y(n281) );
  OAI222X1 U449 ( .A0(n851), .A1(n246), .B0(n841), .B1(n251), .C0(n773), .C1(
        n933), .Y(n390) );
  OAI222X1 U450 ( .A0(n852), .A1(n246), .B0(n843), .B1(n251), .C0(n773), .C1(
        n932), .Y(n391) );
  INVX4 U451 ( .A(n259), .Y(n849) );
  OAI222X1 U452 ( .A0(n853), .A1(n246), .B0(n842), .B1(n251), .C0(n773), .C1(
        n931), .Y(n392) );
  INVX4 U453 ( .A(n266), .Y(n853) );
  INVX4 U454 ( .A(n264), .Y(n857) );
  OAI222X1 U455 ( .A0(n857), .A1(n246), .B0(n847), .B1(n251), .C0(n773), .C1(
        n930), .Y(n393) );
  OAI222X1 U456 ( .A0(n854), .A1(n246), .B0(n844), .B1(n251), .C0(n773), .C1(
        n929), .Y(n394) );
  INVX4 U457 ( .A(n268), .Y(n852) );
  OAI222X1 U458 ( .A0(n755), .A1(n848), .B0(n858), .B1(n256), .C0(n785), .C1(
        n927), .Y(n388) );
  NOR2X6 U459 ( .A(n768), .B(n927), .Y(n496) );
  OAI222X1 U460 ( .A0(n849), .A1(n246), .B0(n845), .B1(n251), .C0(n773), .C1(
        n928), .Y(n395) );
  INVX4 U461 ( .A(n270), .Y(n851) );
  NOR2X2 U462 ( .A(n851), .B(n752), .Y(pro_a[1]) );
  INVX2 U463 ( .A(pro_psw_out[7]), .Y(n848) );
  NOR2X2 U464 ( .A(n850), .B(n752), .Y(pro_a[0]) );
  NOR3X2 U465 ( .A(addr_register_out[1]), .B(addr_register_out[3]), .C(
        addr_register_out[2]), .Y(n406) );
  AOI22X1 U466 ( .A0(n838), .A1(n264), .B0(pro_psw_out[4]), .B1(n260), .Y(n263) );
  NOR2X2 U467 ( .A(n768), .B(n938), .Y(pro_psw_in[4]) );
  AOI22X1 U468 ( .A0(n838), .A1(n266), .B0(pro_psw_out[3]), .B1(n260), .Y(n265) );
  NOR2X2 U469 ( .A(n768), .B(n936), .Y(pro_psw_in[3]) );
  AOI22X1 U470 ( .A0(n838), .A1(n270), .B0(pro_psw_out[1]), .B1(n260), .Y(n269) );
  NOR2X2 U471 ( .A(n768), .B(n924), .Y(pro_psw_in[1]) );
  AOI22X1 U472 ( .A0(n838), .A1(n268), .B0(pro_psw_out[2]), .B1(n260), .Y(n267) );
  NOR2X2 U473 ( .A(n768), .B(n923), .Y(pro_psw_in[2]) );
  AOI22X1 U474 ( .A0(n838), .A1(n262), .B0(pro_psw_out[5]), .B1(n260), .Y(n261) );
  NOR2X2 U475 ( .A(n768), .B(n922), .Y(pro_psw_in[5]) );
  AOI22X1 U476 ( .A0(n838), .A1(n259), .B0(pro_psw_out[6]), .B1(n260), .Y(n258) );
  NOR2X2 U477 ( .A(n768), .B(n921), .Y(pro_psw_in[6]) );
  INVX2 U478 ( .A(n317), .Y(n839) );
  AOI221X2 U479 ( .A0(n856), .A1(n254), .B0(n880), .B1(n318), .C0(n319), .Y(
        n317) );
  NAND3X6 U480 ( .A(n253), .B(n881), .C(n255), .Y(n246) );
  OAI32X2 U481 ( .A0(n869), .A1(decoder_next_status[1]), .A2(n874), .B0(n781), 
        .B1(n890), .Y(n425) );
  OAI32X2 U482 ( .A0(n870), .A1(decoder_next_status[0]), .A2(n869), .B0(n781), 
        .B1(n889), .Y(n426) );
  NOR2X4 U483 ( .A(n889), .B(n181), .Y(n183) );
  OAI32X2 U484 ( .A0(n870), .A1(n874), .A2(n869), .B0(n781), .B1(n880), .Y(
        n429) );
  NAND3X2 U485 ( .A(n325), .B(n880), .C(n324), .Y(n228) );
  NAND2X3 U486 ( .A(n324), .B(n882), .Y(n461) );
  OAI221X2 U487 ( .A0(n202), .A1(n939), .B0(n203), .B1(n204), .C0(n205), .Y(
        n431) );
  NAND4X2 U488 ( .A(run_phase_init[0]), .B(n206), .C(n888), .D(n918), .Y(n205)
         );
  NOR2X4 U489 ( .A(n225), .B(decoder_next_status[2]), .Y(n220) );
  OAI21X1 U490 ( .A0(n781), .A1(n937), .B0(n221), .Y(n424) );
  AOI32X2 U491 ( .A0(n874), .A1(n870), .A2(n220), .B0(n222), .B1(n223), .Y(
        n221) );
  NAND2X2 U492 ( .A(n224), .B(n920), .Y(n223) );
  INVX4 U493 ( .A(n751), .Y(n884) );
  OAI221X2 U494 ( .A0(n203), .A1(n198), .B0(n489), .B1(n918), .C0(n490), .Y(
        n333) );
  NAND4X2 U495 ( .A(run_phase_init[1]), .B(n206), .C(n888), .D(n885), .Y(n490)
         );
  OAI21X4 U496 ( .A0(n181), .A1(n880), .B0(n887), .Y(n243) );
  CLKAND2X6 U497 ( .A(n408), .B(n878), .Y(n480) );
  OAI21X4 U498 ( .A0(n203), .A1(n918), .B0(n489), .Y(n201) );
  NAND2X4 U499 ( .A(n222), .B(n920), .Y(n226) );
  INVX4 U500 ( .A(n185), .Y(n942) );
  OAI22X1 U501 ( .A0(n222), .A1(n920), .B0(n224), .B1(n226), .Y(n422) );
  OA21X2 U502 ( .A0(n203), .A1(n939), .B0(n202), .Y(n489) );
  NOR2BX4 U503 ( .AN(n492), .B(n888), .Y(n202) );
  NOR2BX4 U504 ( .AN(n224), .B(n226), .Y(n211) );
  INVX4 U505 ( .A(n478), .Y(n925) );
  OR2X2 U506 ( .A(interupt[0]), .B(interupt[1]), .Y(n184) );
  NAND2X2 U507 ( .A(n939), .B(n492), .Y(n204) );
  NAND2X2 U508 ( .A(n243), .B(n889), .Y(n244) );
  NAND2X2 U509 ( .A(n885), .B(n918), .Y(n198) );
  NAND2BX2 U510 ( .AN(ram_read_done_nxt), .B(n799), .Y(read_en_nxt) );
  NOR2X2 U511 ( .A(ram_write_done_nxt), .B(read_en_nxt), .Y(n207) );
  INVX4 U512 ( .A(n737), .Y(n796) );
  INVX4 U513 ( .A(n737), .Y(n797) );
  INVX4 U514 ( .A(n737), .Y(n798) );
  NOR2X2 U515 ( .A(n768), .B(n919), .Y(pro_psw_in[0]) );
  OAI222X1 U516 ( .A0(n795), .A1(n840), .B0(n850), .B1(n763), .C0(n732), .C1(
        n871), .Y(n434) );
  OAI222X1 U517 ( .A0(n736), .A1(n892), .B0(n840), .B1(n235), .C0(n238), .C1(
        n236), .Y(n403) );
  OAI2BB1X1 U518 ( .A0N(program_counter_plus1[0]), .A1N(n741), .B0(n450), .Y(
        n363) );
  OAI222X1 U519 ( .A0(n736), .A1(n894), .B0(n235), .B1(n843), .C0(n236), .C1(
        n239), .Y(n401) );
  OAI211X2 U520 ( .A0(n924), .A1(n190), .B0(n326), .C0(n327), .Y(n367) );
  AOI222X1 U521 ( .A0(n193), .A1(acc[1]), .B0(pro_ans[1]), .B1(n762), .C0(
        ram_data_register[1]), .C1(n775), .Y(n327) );
  OAI211X2 U522 ( .A0(n923), .A1(n190), .B0(n315), .C0(n316), .Y(n369) );
  AOI222X1 U523 ( .A0(n193), .A1(acc[2]), .B0(pro_ans[2]), .B1(n762), .C0(
        ram_data_register[2]), .C1(n775), .Y(n316) );
  OAI2BB1X1 U524 ( .A0N(program_counter_plus1[2]), .A1N(n741), .B0(n455), .Y(
        n361) );
  OAI2BB1X1 U525 ( .A0N(program_counter_plus1[1]), .A1N(n741), .B0(n454), .Y(
        n362) );
  OAI222X1 U526 ( .A0(n795), .A1(n842), .B0(n853), .B1(n763), .C0(n732), .C1(
        n903), .Y(n372) );
  OAI211X2 U527 ( .A0(n936), .A1(n190), .B0(n310), .C0(n311), .Y(n371) );
  AOI222X1 U528 ( .A0(n193), .A1(acc[3]), .B0(pro_ans[3]), .B1(n762), .C0(
        ram_data_register[3]), .C1(n775), .Y(n311) );
  OAI2BB1X1 U529 ( .A0N(program_counter_plus1[3]), .A1N(n741), .B0(n456), .Y(
        n360) );
  OAI222X1 U530 ( .A0(n795), .A1(n847), .B0(n857), .B1(n763), .C0(n732), .C1(
        n902), .Y(n374) );
  OAI222X1 U531 ( .A0(n795), .A1(n844), .B0(n854), .B1(n763), .C0(n732), .C1(
        n901), .Y(n376) );
  AOI221X1 U532 ( .A0(n782), .A1(addr_register_out[2]), .B0(n277), .B1(
        ram_data_register[2]), .C0(n314), .Y(n313) );
  OAI2BB2X2 U533 ( .B0(n932), .B1(n729), .A0N(program_counter[2]), .A1N(n863), 
        .Y(n314) );
  OAI211X2 U534 ( .A0(n922), .A1(n190), .B0(n300), .C0(n301), .Y(n375) );
  AOI222X1 U535 ( .A0(n193), .A1(acc[5]), .B0(pro_ans[5]), .B1(n762), .C0(
        ram_data_register[5]), .C1(n775), .Y(n301) );
  OAI222X1 U536 ( .A0(n736), .A1(n897), .B0(n235), .B1(n844), .C0(n236), .C1(
        n241), .Y(n398) );
  OAI222X1 U537 ( .A0(n736), .A1(n896), .B0(n235), .B1(n847), .C0(n236), .C1(
        n240), .Y(n399) );
  OAI211X2 U538 ( .A0(n938), .A1(n190), .B0(n305), .C0(n306), .Y(n373) );
  AOI222X1 U539 ( .A0(n193), .A1(acc[4]), .B0(pro_ans[4]), .B1(n762), .C0(
        ram_data_register[4]), .C1(n775), .Y(n306) );
  OAI2BB1X1 U540 ( .A0N(program_counter_plus1[5]), .A1N(n741), .B0(n458), .Y(
        n358) );
  OAI2BB1X1 U541 ( .A0N(program_counter_plus1[4]), .A1N(n741), .B0(n457), .Y(
        n359) );
  INVX2 U542 ( .A(b[6]), .Y(n928) );
  OAI222X1 U543 ( .A0(n795), .A1(n845), .B0(n849), .B1(n763), .C0(n732), .C1(
        n900), .Y(n378) );
  OAI222X1 U544 ( .A0(n755), .A1(n846), .B0(n858), .B1(n763), .C0(n732), .C1(
        n899), .Y(n380) );
  AOI221X1 U545 ( .A0(n782), .A1(addr_register_out[1]), .B0(n277), .B1(
        ram_data_register[1]), .C0(n322), .Y(n321) );
  OAI211X2 U546 ( .A0(n927), .A1(n190), .B0(n290), .C0(n291), .Y(n379) );
  AOI222X1 U547 ( .A0(n193), .A1(acc[7]), .B0(pro_ans[7]), .B1(n762), .C0(
        ram_data_register[7]), .C1(n775), .Y(n291) );
  INVX4 U548 ( .A(n272), .Y(n850) );
  AOI221X1 U549 ( .A0(n782), .A1(addr_register_out[0]), .B0(n277), .B1(
        ram_data_register[0]), .C0(n278), .Y(n275) );
  OAI211X2 U550 ( .A0(n921), .A1(n190), .B0(n295), .C0(n296), .Y(n377) );
  AOI222X1 U551 ( .A0(n193), .A1(acc[6]), .B0(pro_ans[6]), .B1(n762), .C0(
        ram_data_register[6]), .C1(n775), .Y(n296) );
  INVX2 U552 ( .A(n251), .Y(n867) );
  OAI2BB1X1 U553 ( .A0N(program_counter_plus1[7]), .A1N(n741), .B0(n460), .Y(
        n356) );
  OAI222X1 U554 ( .A0(n736), .A1(n898), .B0(n235), .B1(n845), .C0(n236), .C1(
        n242), .Y(n397) );
  OAI222X1 U555 ( .A0(n736), .A1(n891), .B0(n235), .B1(n846), .C0(n236), .C1(
        n237), .Y(n404) );
  OAI2BB1X1 U556 ( .A0N(program_counter_plus1[6]), .A1N(n741), .B0(n459), .Y(
        n357) );
  NOR2X4 U557 ( .A(addr_register_out[5]), .B(status[5]), .Y(n254) );
  OAI2BB2X2 U558 ( .B0(n851), .B1(n796), .A0N(data_out[1]), .A1N(n796), .Y(
        n418) );
  OAI2BB2X2 U559 ( .B0(n850), .B1(n797), .A0N(data_out[0]), .A1N(n797), .Y(
        n419) );
  AO2B2X1 U560 ( .B0(n209), .B1(n874), .A0(status[6]), .A1N(n781), .Y(n427) );
  CLKBUFX4 U561 ( .A(status[1]), .Y(n808) );
  NOR2BX1 U562 ( .AN(n325), .B(ram_write_done), .Y(n323) );
  OAI21X4 U563 ( .A0(status[3]), .A1(n889), .B0(n940), .Y(n408) );
  OAI22X1 U564 ( .A0(n802), .A1(n756), .B0(n208), .B1(n878), .Y(n430) );
  AOI221X2 U565 ( .A0(decoder_next_status[0]), .A1(n209), .B0(n876), .B1(n210), 
        .C0(n211), .Y(n208) );
  INVX2 U566 ( .A(n214), .Y(n876) );
  OAI31X2 U567 ( .A0(n212), .A1(status[2]), .A2(n807), .B0(n213), .Y(n210) );
  OAI2BB1X1 U568 ( .A0N(addr_bus[4]), .A1N(n802), .B0(n485), .Y(n337) );
  OAI2BB1X1 U569 ( .A0N(addr_bus[6]), .A1N(n765), .B0(n487), .Y(n335) );
  NOR2X4 U570 ( .A(n940), .B(interupt_en), .Y(n478) );
  OAI2B2X1 U571 ( .A1N(n201), .A0(n941), .B0(n491), .B1(n198), .Y(n332) );
  AOI32X2 U572 ( .A0(n888), .A1(n875), .A2(run_phase_init[2]), .B0(n883), .B1(
        n941), .Y(n491) );
  OAI32X2 U573 ( .A0(n198), .A1(run_phase[2]), .A2(n199), .B0(n200), .B1(n875), 
        .Y(n432) );
  AOI21X1 U574 ( .A0(run_phase[2]), .A1(n883), .B0(n201), .Y(n200) );
  AOI22X2 U575 ( .A0(n883), .A1(n875), .B0(run_phase_init[3]), .B1(n888), .Y(
        n199) );
  OAI22X1 U576 ( .A0(n216), .A1(n878), .B0(n217), .B1(n886), .Y(n428) );
  AOI21X1 U577 ( .A0(n218), .A1(n214), .B0(n808), .Y(n216) );
  AOI21X1 U578 ( .A0(decoder_next_status[1]), .A1(decoder_next_status[2]), 
        .B0(n878), .Y(n217) );
  OAI21X1 U579 ( .A0(status[2]), .A1(n212), .B0(n213), .Y(n218) );
  OAI2BB1X1 U580 ( .A0N(addr_bus[2]), .A1N(n765), .B0(n483), .Y(n339) );
  OAI2BB1X1 U581 ( .A0N(addr_bus[7]), .A1N(n802), .B0(n488), .Y(n334) );
  OAI2BB1X1 U582 ( .A0N(addr_bus[5]), .A1N(n802), .B0(n486), .Y(n336) );
  OAI2BB1X1 U583 ( .A0N(addr_bus[3]), .A1N(n802), .B0(n484), .Y(n338) );
  OAI2BB1X1 U584 ( .A0N(addr_bus[1]), .A1N(n765), .B0(n482), .Y(n340) );
  OAI2BB1X1 U585 ( .A0N(n944), .A1N(n802), .B0(n479), .Y(n341) );
  INVX2 U586 ( .A(psw[7]), .Y(n927) );
  NOR3X6 U587 ( .A(n228), .B(status[6]), .C(n937), .Y(n222) );
  AOI33X1 U588 ( .A0(n212), .A1(status[6]), .A2(ram_write_done), .B0(status[4]), .B1(n890), .B2(rom_read_done), .Y(n494) );
  NOR2X4 U589 ( .A(run_phase[2]), .B(run_phase[3]), .Y(n206) );
  NOR3X4 U590 ( .A(interupt[4]), .B(n943), .C(n184), .Y(n185) );
  OAI32X2 U591 ( .A0(n184), .A1(n185), .A2(n943), .B0(n935), .B1(n942), .Y(
        n440) );
  NOR2X4 U592 ( .A(n796), .B(ram_write_done), .Y(ram_write_done_nxt) );
  OAI2B2X1 U593 ( .A1N(int_addr[4]), .A0(n942), .B0(n186), .B1(n184), .Y(n439)
         );
  OAI2B2X1 U594 ( .A1N(int_addr[3]), .A0(n942), .B0(interupt[0]), .B1(n187), 
        .Y(n438) );
  AOI2B1X1 U595 ( .A1N(interupt[2]), .A0(interupt[3]), .B0(interupt[1]), .Y(
        n187) );
  XNOR2X1 U596 ( .A(nop_cnt[1]), .B(n226), .Y(n423) );
  OAI2BB2X2 U597 ( .B0(n801), .B1(n911), .A0N(addr_bus[8]), .A1N(n801), .Y(
        n354) );
  OAI2BB2X2 U598 ( .B0(n799), .B1(n914), .A0N(addr_bus[11]), .A1N(n800), .Y(
        n348) );
  OAI2BB2X2 U599 ( .B0(n801), .B1(n913), .A0N(addr_bus[10]), .A1N(n801), .Y(
        n350) );
  OAI2BB2X2 U600 ( .B0(n800), .B1(n912), .A0N(addr_bus[9]), .A1N(n800), .Y(
        n352) );
  NAND3X2 U601 ( .A(run_phase[0]), .B(n918), .C(n206), .Y(n214) );
  NAND3X2 U602 ( .A(n940), .B(n886), .C(status[3]), .Y(n441) );
  XOR2X1 U603 ( .A(n942), .B(interupt_en), .Y(n451) );
  NAND4X1 U604 ( .A(status[6]), .B(n324), .C(n886), .D(n880), .Y(n437) );
  INVX2 U605 ( .A(n230), .Y(n926) );
  CLKBUFX6 U606 ( .A(n724), .Y(write_en) );
  BUFX5 U607 ( .A(n723), .Y(n814) );
  BUFX5 U608 ( .A(n723), .Y(read_en) );
  INVX2 U609 ( .A(status[0]), .Y(n937) );
  NAND2BX2 U610 ( .AN(n211), .B(n227), .Y(n421) );
  OAI21X1 U611 ( .A0(nop_cnt[1]), .A1(n226), .B0(nop_cnt[2]), .Y(n227) );
  INVX2 U612 ( .A(psw[0]), .Y(n919) );
endmodule


module Mcu ( reset, clk, tx_clk, cnt_0, cnt_1, inti0, inti1, rxd, txd );
  input reset, clk, tx_clk, cnt_0, cnt_1, inti0, inti1, rxd;
  output txd;
  wire   rst_n, N85, N86, N87, N88, N89, N90, fifo_w_en, to0, to1, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106,
         N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117,
         N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128,
         N129, N130, N131, N132, N133, N134, N135, N136, N137, N139, N140,
         N141, N142, N143, N144, N147, N148, N149, N150, N151, N152, N153,
         N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164,
         N165, N166, N167, N168, N169, N170, N171, N172, N173, N174, N175,
         N176, N177, N178, N179, N180, N181, N182, N183, N184, N185, N186,
         N187, N188, N189, N190, N191, N192, N193, N194, N195, N196, N197,
         N198, N199, N200, N201, N202, N203, N204, N205, N206, N207, N208,
         N209, N210, N211, N212, N213, N214, N219, N220, N229, N230, N231,
         N232, N233, N234, N235, N236, read_en, memory_select,
         \data_from_cpu[7] , \data_from_cpu[6] , \data_from_cpu[5] ,
         \data_from_cpu[4] , \data_from_cpu[3] , \data_from_cpu[2] ,
         \data_from_cpu[1] , \data_from_cpu[0] , n397, n398, n399, n400, n401,
         n402, n403, n404, n407, n409, n410, n415, n416, n417, n421, n422,
         n423, n424, n427, n428, n429, n430, n431, n436, n437, n438, n439,
         n440, n441, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n806, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n819, n820, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1152,
         n1153, n1154, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1172, n1173, n1175, n1176, n1177, n1178, n1179,
         n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189,
         n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199,
         n1200, n1201, n1202, n1203, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1257, n1261, n1263, n1264, n1265, n1266, n1267, n1268,
         n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278,
         n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288,
         n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298,
         n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1308, n1309,
         n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319,
         n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329,
         n1330, n1331, n1332, n1333, n1334, n1336, n1337, n1338, n1339, n1340,
         n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350,
         n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360,
         n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370,
         n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380,
         n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390,
         n1391, n1392, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536,
         n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546,
         n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556,
         n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566,
         n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576,
         n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586,
         n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596,
         n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606,
         n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616,
         n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626,
         n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636,
         n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646,
         n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656,
         n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666,
         n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676,
         n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686,
         n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696,
         n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706,
         n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716;
  wire   [3:0] cnt_rst;
  wire   [7:0] fifo_w_data;
  wire   [7:0] tcon;
  wire   [7:0] r_data;
  wire   [7:0] tmod;
  wire   [7:0] th0;
  wire   [7:0] th0_out;
  wire   [7:0] tl0_out;
  wire   [7:0] th1;
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

  AO22X4 U3 ( .A0(n1630), .A1(\data_from_cpu[6] ), .B0(n1624), .B1(data_bus[6]), .Y(\data_from_cpu[6] ) );
  AO22X4 U4 ( .A0(n1629), .A1(\data_from_cpu[5] ), .B0(data_bus[5]), .B1(n1625), .Y(\data_from_cpu[5] ) );
  AO22X4 U5 ( .A0(n1628), .A1(\data_from_cpu[4] ), .B0(data_bus[4]), .B1(n1625), .Y(\data_from_cpu[4] ) );
  AO22X4 U6 ( .A0(n1627), .A1(\data_from_cpu[3] ), .B0(data_bus[3]), .B1(n1624), .Y(\data_from_cpu[3] ) );
  AO22X4 U7 ( .A0(n1627), .A1(\data_from_cpu[2] ), .B0(data_bus[2]), .B1(n1625), .Y(\data_from_cpu[2] ) );
  AO22X4 U8 ( .A0(n1628), .A1(\data_from_cpu[1] ), .B0(data_bus[1]), .B1(n1625), .Y(\data_from_cpu[1] ) );
  AO22X4 U9 ( .A0(n1629), .A1(\data_from_cpu[0] ), .B0(data_bus[0]), .B1(n1625), .Y(\data_from_cpu[0] ) );
  AO22X4 U10 ( .A0(n1627), .A1(\data_from_cpu[7] ), .B0(data_bus[7]), .B1(
        n1625), .Y(\data_from_cpu[7] ) );
  EDFFX4 \cnt_rst_reg[1]  ( .D(N87), .E(N85), .CK(clk), .QN(n430) );
  NAND2BX8 U669 ( .AN(n1552), .B(n1570), .Y(n1144) );
  NAND4BX4 U687 ( .AN(n430), .B(n417), .C(N86), .D(cnt_rst[3]), .Y(N85) );
  NOR4BX4 U941 ( .AN(n1534), .B(n1547), .C(n1331), .D(n1642), .Y(n1328) );
  OAI2BB1X4 U993 ( .A0N(n1315), .A1N(n1339), .B0(n1381), .Y(n1338) );
  NOR4X8 U1003 ( .A(n1277), .B(n1343), .C(n1656), .D(n1652), .Y(n1332) );
  CLKNAND2X12 U1029 ( .A(\data_from_cpu[6] ), .B(n1623), .Y(n1246) );
  CLKNAND2X12 U1031 ( .A(\data_from_cpu[5] ), .B(n1623), .Y(n1145) );
  CLKNAND2X12 U1033 ( .A(\data_from_cpu[4] ), .B(n1623), .Y(n1247) );
  CLKNAND2X12 U1035 ( .A(\data_from_cpu[3] ), .B(n1623), .Y(n1148) );
  CLKNAND2X12 U1037 ( .A(\data_from_cpu[2] ), .B(n1623), .Y(n1146) );
  CLKNAND2X12 U1039 ( .A(\data_from_cpu[1] ), .B(n1623), .Y(n1149) );
  CLKNAND2X12 U1042 ( .A(\data_from_cpu[0] ), .B(n1623), .Y(n1147) );
  CLKNAND2X12 U1051 ( .A(\data_from_cpu[7] ), .B(n1624), .Y(n1150) );
  AND3X6 U1052 ( .A(n1552), .B(n1624), .C(n1248), .Y(n1250) );
  NOR3BX4 U1054 ( .AN(n1357), .B(n1278), .C(n1536), .Y(n1348) );
  OAI221X4 U1063 ( .A0(n1363), .A1(n1664), .B0(n1659), .B1(n1361), .C0(n1364), 
        .Y(n1343) );
  NOR3X8 U1066 ( .A(n1646), .B(n1547), .C(n1331), .Y(n1304) );
  NOR3X8 U1070 ( .A(n1660), .B(addr_bus[2]), .C(n1657), .Y(n1360) );
  NOR3X8 U1081 ( .A(addr_bus[0]), .B(addr_bus[3]), .C(n1362), .Y(n1355) );
  NAND3BX4 U1083 ( .AN(addr_bus[6]), .B(addr_bus[7]), .C(memory_select), .Y(
        n1340) );
  Uart_FIFO_DEPTH16_FIFO_WIDTH8_ADDR_WIDTH4 Uart_ins ( .fifo_w_clk(clk), 
        .tx_clk(tx_clk), .rst_n(n1378), .fifo_w_en(n1623), .fifo_w_data({n1389, 
        n1388, n1387, n1386, n1382, n1384, n1383, n1385}), .rxd_int_in(tcon[4]), .rxd(rxd), .is_full(tcon_nxt[5]), .rxd_int(tcon_nxt[4]), .r_data(r_data), 
        .txd(txd) );
  Timer_0 Timer_ins_0 ( .clk(clk), .rst_n(n1379), .cnt_sig(cnt_0), .t_s(n1541), 
        .tmod({tmod[2], n1685, n1392}), .th({th0[7:6], n1672, n1671, n1670, 
        n1669, n1668, n1667}), .tl({n1684, n1680, n1692, n1704, n1703, n1716, 
        n1715, n1702}), .th_nxt(th0_out), .tl_nxt(tl0_out), .t_o(to0) );
  Timer_1 Timer_ins_1 ( .clk(clk), .rst_n(rst_n), .cnt_sig(cnt_1), .t_s(n1542), 
        .tmod({tmod[6], n1686, n1683}), .th({th1[7:6], n1679, n1678, n1677, 
        n1676, n1675, n1674}), .tl({tl1[7:3], n1707, n1706, n1701}), .th_nxt(
        th1_out), .tl_nxt(tl1_out), .t_o(to1) );
  IntControl IntControl_ins ( .clk(clk), .rst_n(n1615), .IE(ie), .TCON({n1542, 
        n1541, tcon[5:0]}), .SCON(scon[1:0]), .interupt(interupt) );
  CPU cpu ( .clk(clk), .rst_n(n1379), .data_bus(data_bus), .addr_bus({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, addr_bus[7:0]}), 
        .interupt(interupt), .read_en(read_en), .write_en(fifo_w_en), 
        .memory_select(memory_select) );
  EDFFX2 \cnt_rst_reg[2]  ( .D(N88), .E(N85), .CK(clk), .Q(cnt_rst[2]), .QN(
        n417) );
  EDFFX2 rst_n_reg ( .D(reset), .E(N90), .CK(clk), .Q(rst_n), .QN(n407) );
  TBUFX2 \data_bus_tri[6]  ( .A(n398), .OE(n1621), .Y(data_bus[6]) );
  TBUFX2 \data_bus_tri[0]  ( .A(n404), .OE(n1622), .Y(data_bus[0]) );
  TBUFX2 \data_bus_tri[2]  ( .A(n402), .OE(n1622), .Y(data_bus[2]) );
  TBUFX2 \data_bus_tri[3]  ( .A(n401), .OE(n1622), .Y(data_bus[3]) );
  TBUFX2 \data_bus_tri[7]  ( .A(n397), .OE(n1622), .Y(data_bus[7]) );
  TBUFX2 \data_bus_tri[4]  ( .A(n400), .OE(n1622), .Y(data_bus[4]) );
  TBUFX2 \data_bus_tri[5]  ( .A(n399), .OE(n1622), .Y(data_bus[5]) );
  TBUFX2 \data_bus_tri[1]  ( .A(n403), .OE(n1622), .Y(data_bus[1]) );
  DFFTRX2 \sbuf_reg[2]  ( .D(r_data[2]), .RN(n1613), .CK(clk), .QN(n841) );
  DFFTRX2 \sbuf_reg[1]  ( .D(r_data[1]), .RN(n1614), .CK(clk), .QN(n824) );
  DFFTRX2 \sbuf_reg[0]  ( .D(r_data[0]), .RN(n1375), .CK(clk), .QN(n823) );
  DFFTRX2 \tmod_reg[0]  ( .D(1'b1), .RN(N173), .CK(clk), .QN(n409) );
  DFFTRX4 \tl1_reg[2]  ( .D(1'b1), .RN(N191), .CK(clk), .Q(n1707) );
  DFFTRX4 \tl0_reg[2]  ( .D(1'b1), .RN(N183), .CK(clk), .Q(n1716) );
  DFFTRX4 \tmod_reg[4]  ( .D(1'b1), .RN(N177), .CK(clk), .Q(n1683), .QN(n410)
         );
  DFFTRX4 \tl0_reg[4]  ( .D(1'b1), .RN(N185), .CK(clk), .Q(n1704), .QN(n889)
         );
  DFFTRX4 \tl1_reg[0]  ( .D(1'b1), .RN(N189), .CK(clk), .Q(n1701) );
  DFFTRX4 \th0_reg[0]  ( .D(1'b1), .RN(N197), .CK(clk), .Q(n1667) );
  DFFTRX4 \th1_reg[0]  ( .D(1'b1), .RN(N205), .CK(clk), .Q(n1674) );
  DFFTRX4 \th0_reg[2]  ( .D(1'b1), .RN(N199), .CK(clk), .Q(n1669) );
  DFFTRX4 \th1_reg[2]  ( .D(1'b1), .RN(N207), .CK(clk), .Q(n1676) );
  DFFTRX4 \tl0_reg[6]  ( .D(1'b1), .RN(N187), .CK(clk), .Q(n1680), .QN(n819)
         );
  DFFTRX4 \tl0_reg[0]  ( .D(1'b1), .RN(N181), .CK(clk), .Q(n1702) );
  DFFTRX4 \tl0_reg[3]  ( .D(1'b1), .RN(N184), .CK(clk), .Q(n1703), .QN(n869)
         );
  DFFTRX4 \tl1_reg[4]  ( .D(1'b1), .RN(N193), .CK(clk), .Q(tl1[4]), .QN(n888)
         );
  DFFTRX4 \tl1_reg[6]  ( .D(1'b1), .RN(N195), .CK(clk), .Q(tl1[6]), .QN(n816)
         );
  DFFTRX4 \th0_reg[4]  ( .D(1'b1), .RN(N201), .CK(clk), .Q(n1671), .QN(n887)
         );
  DFFTRX4 \th1_reg[4]  ( .D(1'b1), .RN(N209), .CK(clk), .Q(n1678), .QN(n886)
         );
  DFFTRX4 \tmod_reg[2]  ( .D(1'b1), .RN(N175), .CK(clk), .Q(tmod[2]) );
  DFFTRX4 \tl1_reg[1]  ( .D(1'b1), .RN(N190), .CK(clk), .Q(n1706) );
  DFFTRX4 \tl1_reg[3]  ( .D(1'b1), .RN(N192), .CK(clk), .Q(tl1[3]), .QN(n868)
         );
  DFFTRX4 \tl0_reg[1]  ( .D(1'b1), .RN(N182), .CK(clk), .Q(n1715) );
  DFFTRX4 \tmod_reg[1]  ( .D(1'b1), .RN(N174), .CK(clk), .Q(n1685), .QN(n416)
         );
  DFFTRX4 \th1_reg[1]  ( .D(1'b1), .RN(N206), .CK(clk), .Q(n1675) );
  DFFTRX4 \th0_reg[1]  ( .D(1'b1), .RN(N198), .CK(clk), .Q(n1668) );
  DFFTRX2 \tl0_reg[7]  ( .D(1'b1), .RN(N188), .CK(clk), .Q(n1684), .QN(n820)
         );
  DFFTRX2 \tl0_reg[5]  ( .D(1'b1), .RN(N186), .CK(clk), .Q(n1692), .QN(n902)
         );
  DFFTRX2 \tmod_reg[6]  ( .D(1'b1), .RN(N179), .CK(clk), .Q(tmod[6]), .QN(
        n1665) );
  DFFTRX2 \th0_reg[3]  ( .D(1'b1), .RN(N200), .CK(clk), .Q(n1670), .QN(n867)
         );
  DFFTRX2 \th1_reg[3]  ( .D(1'b1), .RN(N208), .CK(clk), .Q(n1677), .QN(n866)
         );
  DFFTRX2 \th0_reg[5]  ( .D(1'b1), .RN(N202), .CK(clk), .Q(n1672), .QN(n822)
         );
  DFFTRX2 \th1_reg[5]  ( .D(1'b1), .RN(N210), .CK(clk), .Q(n1679), .QN(n900)
         );
  DFFTRX2 \tmod_reg[5]  ( .D(1'b1), .RN(N178), .CK(clk), .Q(n1686), .QN(n415)
         );
  DFFTRX2 \th0_reg[6]  ( .D(1'b1), .RN(N203), .CK(clk), .Q(th0[6]), .QN(n907)
         );
  DFFTRX2 \th1_reg[6]  ( .D(1'b1), .RN(N211), .CK(clk), .Q(th1[6]), .QN(n808)
         );
  DFFTRX2 \tcon_reg[4]  ( .D(1'b1), .RN(N169), .CK(clk), .Q(tcon[4]), .QN(n878) );
  DFFTRX2 \tl1_reg[7]  ( .D(1'b1), .RN(N196), .CK(clk), .Q(tl1[7]), .QN(n806)
         );
  DFFTRX2 \tl1_reg[5]  ( .D(1'b1), .RN(N194), .CK(clk), .Q(tl1[5]), .QN(n901)
         );
  DFFTRX2 \scon_reg[1]  ( .D(1'b1), .RN(N214), .CK(clk), .Q(scon[1]), .QN(n826) );
  DFFTRX2 \p3_reg[7]  ( .D(1'b1), .RN(N124), .CK(clk), .QN(n913) );
  DFFTRX2 \p3_reg[6]  ( .D(1'b1), .RN(N123), .CK(clk), .QN(n909) );
  DFFTRX2 \p3_reg[5]  ( .D(1'b1), .RN(N122), .CK(clk), .QN(n904) );
  DFFTRX2 \p3_reg[4]  ( .D(1'b1), .RN(N121), .CK(clk), .QN(n890) );
  DFFTRX2 \p3_reg[3]  ( .D(1'b1), .RN(N120), .CK(clk), .QN(n871) );
  DFFTRX2 \p0_reg[7]  ( .D(1'b1), .RN(N100), .CK(clk), .QN(n916) );
  DFFTRX2 \p0_reg[6]  ( .D(1'b1), .RN(N99), .CK(clk), .QN(n815) );
  DFFTRX2 \p0_reg[5]  ( .D(1'b1), .RN(N98), .CK(clk), .QN(n899) );
  DFFTRX2 \p0_reg[4]  ( .D(1'b1), .RN(N97), .CK(clk), .QN(n885) );
  DFFTRX2 \p0_reg[3]  ( .D(1'b1), .RN(N96), .CK(clk), .QN(n865) );
  DFFTRX2 \p0_reg[2]  ( .D(1'b1), .RN(N95), .CK(clk), .QN(n848) );
  DFFTRX2 \p0_reg[1]  ( .D(1'b1), .RN(N94), .CK(clk), .QN(n831) );
  DFFTRX2 \p0_reg[0]  ( .D(1'b1), .RN(N93), .CK(clk), .QN(n792) );
  DFFTRX2 \p3_reg[2]  ( .D(1'b1), .RN(N119), .CK(clk), .QN(n855) );
  DFFTRX2 \p3_reg[1]  ( .D(1'b1), .RN(N118), .CK(clk), .QN(n838) );
  DFFTRX2 \p3_reg[0]  ( .D(1'b1), .RN(N117), .CK(clk), .QN(n918) );
  DFFTRX2 \tcon_reg[3]  ( .D(1'b1), .RN(N168), .CK(clk), .Q(tcon[3]), .QN(n870) );
  DFFTRX2 \ie_reg[2]  ( .D(1'b1), .RN(N151), .CK(clk), .Q(ie[2]), .QN(n845) );
  DFFTRX2 \scon_reg[0]  ( .D(1'b1), .RN(N213), .CK(clk), .Q(scon[0]), .QN(n790) );
  DFFTRX2 \pcon_reg[5]  ( .D(1'b1), .RN(N162), .CK(clk), .QN(n895) );
  DFFTRX2 \pcon_reg[4]  ( .D(1'b1), .RN(N161), .CK(clk), .QN(n881) );
  DFFTRX2 \pcon_reg[0]  ( .D(1'b1), .RN(N157), .CK(clk), .QN(n794) );
  DFFTRX2 \pcon_reg[1]  ( .D(1'b1), .RN(N158), .CK(clk), .QN(n827) );
  DFFTRX2 \pcon_reg[3]  ( .D(1'b1), .RN(N160), .CK(clk), .QN(n861) );
  DFFTRX2 \pcon_reg[7]  ( .D(1'b1), .RN(N164), .CK(clk), .QN(n800) );
  DFFTRX2 \pcon_reg[6]  ( .D(1'b1), .RN(N163), .CK(clk), .QN(n811) );
  DFFTRX2 \pcon_reg[2]  ( .D(1'b1), .RN(N159), .CK(clk), .QN(n844) );
  DFFTRX2 \sbuf_reg[7]  ( .D(r_data[7]), .RN(n1615), .CK(clk), .QN(n877) );
  DFFTRX2 \sbuf_reg[6]  ( .D(r_data[6]), .RN(n1620), .CK(clk), .QN(n876) );
  DFFTRX2 \sbuf_reg[5]  ( .D(r_data[5]), .RN(n1375), .CK(clk), .QN(n875) );
  DFFTRX2 \sbuf_reg[4]  ( .D(r_data[4]), .RN(n1375), .CK(clk), .QN(n874) );
  DFFTRX2 \sbuf_reg[3]  ( .D(r_data[3]), .RN(n1375), .CK(clk), .QN(n858) );
  DFFTRX2 \ip_reg[4]  ( .D(1'b1), .RN(N233), .CK(clk), .QN(n879) );
  DFFTRX2 \ip_reg[5]  ( .D(1'b1), .RN(N234), .CK(clk), .QN(n893) );
  DFFTRX2 \ip_reg[3]  ( .D(1'b1), .RN(N232), .CK(clk), .QN(n859) );
  DFFTRX2 \ip_reg[7]  ( .D(1'b1), .RN(N236), .CK(clk), .QN(n798) );
  DFFTRX2 \ip_reg[6]  ( .D(1'b1), .RN(N235), .CK(clk), .QN(n809) );
  DFFTRX2 \dph_reg[7]  ( .D(1'b1), .RN(N148), .CK(clk), .QN(n802) );
  DFFTRX2 \dph_reg[5]  ( .D(1'b1), .RN(n421), .CK(clk), .QN(n897) );
  DFFTRX2 \dph_reg[3]  ( .D(1'b1), .RN(N144), .CK(clk), .QN(n863) );
  DFFTRX2 \dph_reg[2]  ( .D(1'b1), .RN(N143), .CK(clk), .QN(n846) );
  DFFTRX2 \dph_reg[6]  ( .D(1'b1), .RN(N147), .CK(clk), .QN(n813) );
  DFFTRX2 \dph_reg[1]  ( .D(1'b1), .RN(N142), .CK(clk), .QN(n829) );
  DFFTRX2 \dph_reg[0]  ( .D(1'b1), .RN(N141), .CK(clk), .QN(n796) );
  DFFTRX2 \dph_reg[4]  ( .D(1'b1), .RN(n428), .CK(clk), .QN(n883) );
  DFFTRX2 \sp_reg[6]  ( .D(1'b1), .RN(N131), .CK(clk), .QN(n1710) );
  DFFTRX2 \sp_reg[7]  ( .D(1'b1), .RN(N132), .CK(clk), .QN(n1693) );
  DFFTRX2 \sp_reg[5]  ( .D(1'b1), .RN(N130), .CK(clk), .QN(n1695) );
  DFFTRX2 \sp_reg[4]  ( .D(1'b1), .RN(N129), .CK(clk), .QN(n1696) );
  DFFTRX2 \sp_reg[3]  ( .D(1'b1), .RN(N128), .CK(clk), .QN(n1694) );
  DFFTRX2 \ie_reg[7]  ( .D(1'b1), .RN(N156), .CK(clk), .Q(ie[7]), .QN(n801) );
  DFFTRX2 \ie_reg[6]  ( .D(1'b1), .RN(N155), .CK(clk), .Q(ie[6]), .QN(n812) );
  DFFTRX2 \ie_reg[5]  ( .D(1'b1), .RN(N154), .CK(clk), .Q(ie[5]), .QN(n896) );
  DFFTRX2 \ie_reg[4]  ( .D(1'b1), .RN(N153), .CK(clk), .Q(ie[4]), .QN(n882) );
  DFFTRX2 \ie_reg[3]  ( .D(1'b1), .RN(N152), .CK(clk), .Q(ie[3]), .QN(n862) );
  DFFTRX2 \tcon_reg[7]  ( .D(1'b1), .RN(N172), .CK(clk), .Q(tcon[7]), .QN(n804) );
  DFFTRX2 \tcon_reg[6]  ( .D(1'b1), .RN(N171), .CK(clk), .Q(tcon[6]), .QN(n817) );
  DFFTRX2 \tcon_reg[1]  ( .D(1'b1), .RN(N166), .CK(clk), .Q(tcon[1]), .QN(n836) );
  DFFTRX2 \tmod_reg[7]  ( .D(1'b1), .RN(N180), .CK(clk), .QN(n1708) );
  DFFTRX2 \tmod_reg[3]  ( .D(1'b1), .RN(N176), .CK(clk), .QN(n1709) );
  DFFTRX2 \ip_reg[1]  ( .D(1'b1), .RN(N230), .CK(clk), .QN(n825) );
  DFFTRX2 \ip_reg[0]  ( .D(1'b1), .RN(N229), .CK(clk), .QN(n793) );
  DFFTRX2 \ip_reg[2]  ( .D(1'b1), .RN(N231), .CK(clk), .QN(n842) );
  DFFTRX2 \ie_reg[1]  ( .D(1'b1), .RN(N150), .CK(clk), .Q(ie[1]), .QN(n828) );
  DFFTRX2 \ie_reg[0]  ( .D(1'b1), .RN(N149), .CK(clk), .Q(ie[0]), .QN(n795) );
  DFFTRX2 \tcon_reg[5]  ( .D(1'b1), .RN(N170), .CK(clk), .Q(tcon[5]), .QN(n903) );
  DFFTRX2 \tcon_reg[2]  ( .D(1'b1), .RN(N167), .CK(clk), .Q(tcon[2]), .QN(n853) );
  DFFTRX2 \tcon_reg[0]  ( .D(1'b1), .RN(N165), .CK(clk), .Q(tcon[0]), .QN(n791) );
  DFFTRX2 \th0_reg[7]  ( .D(1'b1), .RN(N204), .CK(clk), .Q(th0[7]), .QN(n908)
         );
  DFFTRX2 \th1_reg[7]  ( .D(1'b1), .RN(N212), .CK(clk), .Q(th1[7]), .QN(n912)
         );
  DFFTRX2 \p1_reg[7]  ( .D(1'b1), .RN(N108), .CK(clk), .Q(p1[7]), .QN(n915) );
  DFFTRX2 \p1_reg[0]  ( .D(1'b1), .RN(N101), .CK(clk), .Q(p1[0]), .QN(n920) );
  DFFTRX2 \p2_reg[7]  ( .D(1'b1), .RN(N116), .CK(clk), .Q(p2[7]), .QN(n914) );
  DFFTRX2 \p2_reg[6]  ( .D(1'b1), .RN(N115), .CK(clk), .Q(p2[6]), .QN(n910) );
  DFFTRX2 \p2_reg[5]  ( .D(1'b1), .RN(N114), .CK(clk), .Q(p2[5]), .QN(n905) );
  DFFTRX2 \p2_reg[4]  ( .D(1'b1), .RN(N113), .CK(clk), .Q(p2[4]), .QN(n891) );
  DFFTRX2 \p2_reg[3]  ( .D(1'b1), .RN(N112), .CK(clk), .Q(p2[3]), .QN(n872) );
  DFFTRX2 \p2_reg[2]  ( .D(1'b1), .RN(N111), .CK(clk), .Q(p2[2]), .QN(n856) );
  DFFTRX2 \p2_reg[1]  ( .D(1'b1), .RN(N110), .CK(clk), .Q(p2[1]), .QN(n839) );
  DFFTRX2 \p2_reg[0]  ( .D(1'b1), .RN(N109), .CK(clk), .Q(p2[0]), .QN(n919) );
  DFFTRX2 \p1_reg[6]  ( .D(1'b1), .RN(N107), .CK(clk), .Q(p1[6]), .QN(n911) );
  DFFTRX2 \p1_reg[5]  ( .D(1'b1), .RN(N106), .CK(clk), .Q(p1[5]), .QN(n906) );
  DFFTRX2 \p1_reg[4]  ( .D(1'b1), .RN(N105), .CK(clk), .Q(p1[4]), .QN(n892) );
  DFFTRX2 \p1_reg[3]  ( .D(1'b1), .RN(N104), .CK(clk), .Q(p1[3]), .QN(n873) );
  DFFTRX2 \p1_reg[2]  ( .D(1'b1), .RN(N103), .CK(clk), .Q(p1[2]), .QN(n857) );
  DFFTRX2 \p1_reg[1]  ( .D(1'b1), .RN(N102), .CK(clk), .Q(p1[1]), .QN(n840) );
  DFFTRX2 \sp_reg[2]  ( .D(1'b1), .RN(N127), .CK(clk), .Q(sp[2]), .QN(n854) );
  DFFTRX2 \sp_reg[1]  ( .D(1'b1), .RN(N126), .CK(clk), .Q(sp[1]), .QN(n837) );
  DFFTRX2 \sp_reg[0]  ( .D(1'b1), .RN(N125), .CK(clk), .Q(sp[0]), .QN(n917) );
  DFFTRX2 \dpl_reg[4]  ( .D(1'b1), .RN(N137), .CK(clk), .Q(n1697), .QN(n884)
         );
  DFFTRX2 \dpl_reg[3]  ( .D(1'b1), .RN(N136), .CK(clk), .Q(n1700), .QN(n864)
         );
  DFFTRX2 \dpl_reg[5]  ( .D(1'b1), .RN(n423), .CK(clk), .Q(n1705), .QN(n898)
         );
  DFFTRX2 \dpl_reg[7]  ( .D(1'b1), .RN(N140), .CK(clk), .Q(n1689), .QN(n803)
         );
  DFFTRX2 \dpl_reg[6]  ( .D(1'b1), .RN(N139), .CK(clk), .Q(n1698), .QN(n814)
         );
  DFFTRX2 \dpl_reg[2]  ( .D(1'b1), .RN(N135), .CK(clk), .Q(n1699), .QN(n847)
         );
  DFFTRX2 \dpl_reg[1]  ( .D(1'b1), .RN(N134), .CK(clk), .Q(n1687), .QN(n830)
         );
  DFFTRX2 \dpl_reg[0]  ( .D(1'b1), .RN(N133), .CK(clk), .Q(n1688), .QN(n797)
         );
  DFFTRX2 \scon_reg[6]  ( .D(1'b1), .RN(N219), .CK(clk), .Q(n1691), .QN(n810)
         );
  DFFTRX2 \scon_reg[5]  ( .D(1'b1), .RN(n422), .CK(clk), .Q(n1712), .QN(n894)
         );
  DFFTRX2 \scon_reg[7]  ( .D(1'b1), .RN(N220), .CK(clk), .Q(n1690), .QN(n799)
         );
  DFFTRX2 \scon_reg[3]  ( .D(1'b1), .RN(n424), .CK(clk), .Q(n1713), .QN(n860)
         );
  DFFTRX2 \scon_reg[2]  ( .D(1'b1), .RN(n427), .CK(clk), .Q(n1711), .QN(n843)
         );
  DFFTRX2 \scon_reg[4]  ( .D(1'b1), .RN(n429), .CK(clk), .Q(n1714), .QN(n880)
         );
  EDFFX2 \cnt_rst_reg[3]  ( .D(N89), .E(N85), .CK(clk), .Q(cnt_rst[3]), .QN(
        n789) );
  EDFFX2 \cnt_rst_reg[0]  ( .D(N86), .E(N85), .CK(clk), .Q(cnt_rst[0]), .QN(
        n431) );
  AND2X2 U1182 ( .A(n1315), .B(n1377), .Y(n1366) );
  NAND2X2 U1183 ( .A(n1154), .B(n1587), .Y(n1331) );
  NAND3X2 U1184 ( .A(n1332), .B(n1534), .C(n1337), .Y(n1334) );
  NOR3X2 U1185 ( .A(n1663), .B(n1626), .C(n1646), .Y(n1337) );
  NAND3X2 U1186 ( .A(n1315), .B(n1545), .C(n1336), .Y(n1261) );
  NAND4BX2 U1187 ( .AN(n1278), .B(n1344), .C(n1580), .D(n1624), .Y(n1264) );
  NAND3X2 U1188 ( .A(n1304), .B(n1590), .C(n1332), .Y(n1291) );
  BUFX2 U1189 ( .A(n1615), .Y(n1620) );
  NAND2X2 U1190 ( .A(n1304), .B(n1588), .Y(n1302) );
  INVX2 U1191 ( .A(n407), .Y(n1682) );
  OR2X6 U1192 ( .A(n1544), .B(n1366), .Y(n1367) );
  OR2X2 U1193 ( .A(n1334), .B(n1533), .Y(n1368) );
  OA21X1 U1194 ( .A0(n1643), .A1(n1261), .B0(n1381), .Y(n1369) );
  AND2X2 U1195 ( .A(n1356), .B(n1365), .Y(n1370) );
  AND2X2 U1196 ( .A(n1359), .B(addr_bus[0]), .Y(n1371) );
  AND2X2 U1197 ( .A(n1359), .B(n1647), .Y(n1372) );
  OAI21X1 U1198 ( .A0(n1291), .A1(n1303), .B0(n1380), .Y(n1373) );
  CLKBUFX6 U1199 ( .A(n1329), .Y(n1596) );
  BUFX2 U1200 ( .A(n439), .Y(n1385) );
  BUFX2 U1201 ( .A(n437), .Y(n1383) );
  BUFX2 U1202 ( .A(n440), .Y(n1384) );
  BUFX2 U1203 ( .A(n438), .Y(n1382) );
  BUFX2 U1204 ( .A(fifo_w_data[4]), .Y(n1386) );
  BUFX2 U1205 ( .A(n441), .Y(n1387) );
  BUFX2 U1206 ( .A(fifo_w_data[6]), .Y(n1388) );
  BUFX2 U1207 ( .A(n436), .Y(n1389) );
  CLKINVX2 U1208 ( .A(n1682), .Y(n1374) );
  INVX4 U1209 ( .A(n1374), .Y(n1375) );
  CLKINVX2 U1210 ( .A(n1596), .Y(n1376) );
  INVX2 U1211 ( .A(n1376), .Y(n1377) );
  INVX2 U1212 ( .A(n407), .Y(n1378) );
  CLKINVX4 U1213 ( .A(n407), .Y(n1379) );
  INVX4 U1214 ( .A(n1366), .Y(n1380) );
  INVX5 U1215 ( .A(n1366), .Y(n1381) );
  INVX5 U1216 ( .A(n1369), .Y(n1390) );
  AOI221X1 U1217 ( .A0(n1640), .A1(n1699), .B0(n1644), .B1(n1711), .C0(n1194), 
        .Y(n1188) );
  AOI221X1 U1218 ( .A0(n1640), .A1(n1698), .B0(n1644), .B1(n1691), .C0(n1235), 
        .Y(n1229) );
  AOI221X1 U1219 ( .A0(n1533), .A1(n1689), .B0(n1644), .B1(n1690), .C0(n1244), 
        .Y(n1238) );
  AOI221X1 U1220 ( .A0(n1533), .A1(n1705), .B0(n1644), .B1(n1712), .C0(n1226), 
        .Y(n1220) );
  AOI221X1 U1221 ( .A0(n1640), .A1(n1700), .B0(n1644), .B1(n1713), .C0(n1208), 
        .Y(n1197) );
  AOI221X1 U1222 ( .A0(n1640), .A1(n1697), .B0(n1644), .B1(n1714), .C0(n1217), 
        .Y(n1211) );
  AOI221X1 U1223 ( .A0(n1640), .A1(n1688), .B0(n1644), .B1(scon[0]), .C0(n1173), .Y(n1162) );
  AOI221X1 U1224 ( .A0(n1640), .A1(n1687), .B0(n1644), .B1(scon[1]), .C0(n1185), .Y(n1179) );
  AOI22X2 U1225 ( .A0(tl0_out[5]), .A1(n1306), .B0(n1391), .B1(n1692), .Y(
        n1309) );
  INVX5 U1226 ( .A(n1373), .Y(n1391) );
  AOI22X1 U1227 ( .A0(n1652), .A1(n1675), .B0(sp[1]), .B1(n1543), .Y(n1184) );
  AOI22X1 U1228 ( .A0(n1636), .A1(n1668), .B0(n1656), .B1(n1685), .Y(n1182) );
  AOI22X1 U1229 ( .A0(tl0_out[1]), .A1(n1306), .B0(n1391), .B1(n1715), .Y(
        n1313) );
  AOI22X2 U1230 ( .A0(n1655), .A1(n1706), .B0(n1638), .B1(n1715), .Y(n1183) );
  AOI22X1 U1231 ( .A0(tl0_out[3]), .A1(n1306), .B0(n1391), .B1(n1703), .Y(
        n1311) );
  AOI22X1 U1232 ( .A0(tl0_out[0]), .A1(n1306), .B0(n1391), .B1(n1702), .Y(
        n1314) );
  AOI22X1 U1233 ( .A0(tl0_out[6]), .A1(n1306), .B0(n1391), .B1(n1680), .Y(
        n1308) );
  AOI22X1 U1234 ( .A0(n1652), .A1(n1676), .B0(sp[2]), .B1(n1543), .Y(n1193) );
  AOI22X1 U1235 ( .A0(n1636), .A1(n1669), .B0(tmod[2]), .B1(n1656), .Y(n1191)
         );
  AOI22X1 U1236 ( .A0(n1652), .A1(n1674), .B0(sp[0]), .B1(n1543), .Y(n1168) );
  AOI22X1 U1237 ( .A0(n1655), .A1(n1701), .B0(n1638), .B1(n1702), .Y(n1167) );
  AOI22X1 U1238 ( .A0(tl0_out[4]), .A1(n1306), .B0(n1391), .B1(n1704), .Y(
        n1310) );
  AOI22X1 U1239 ( .A0(tl0_out[2]), .A1(n1306), .B0(n1391), .B1(n1716), .Y(
        n1312) );
  AOI22X1 U1240 ( .A0(n1655), .A1(n1707), .B0(n1638), .B1(n1716), .Y(n1192) );
  INVX5 U1241 ( .A(n409), .Y(n1392) );
  OAI22X1 U1242 ( .A0(n858), .A1(n1143), .B0(n1144), .B1(n1148), .Y(n438) );
  OAI22X1 U1243 ( .A0(n824), .A1(n1143), .B0(n1144), .B1(n1149), .Y(n437) );
  OAI22X1 U1244 ( .A0(n841), .A1(n1143), .B0(n1144), .B1(n1146), .Y(n440) );
  OAI22X1 U1245 ( .A0(n823), .A1(n1143), .B0(n1144), .B1(n1147), .Y(n439) );
  AOI22X1 U1246 ( .A0(tl0_out[7]), .A1(n1306), .B0(n1391), .B1(n1684), .Y(
        n1305) );
  AOI2BB2X1 U1247 ( .B0(tcon_nxt[4]), .B1(n1645), .A0N(n1635), .A1N(n878), .Y(
        n1324) );
  BUFX5 U1384 ( .A(n1257), .Y(n1529) );
  OAI21X1 U1385 ( .A0(n1641), .A1(n1261), .B0(n1381), .Y(n1257) );
  BUFX5 U1386 ( .A(n1333), .Y(n1530) );
  OAI21X1 U1387 ( .A0(n1331), .A1(n1334), .B0(n1381), .Y(n1333) );
  BUFX2 U1388 ( .A(n1269), .Y(n1531) );
  OAI31X2 U1389 ( .A0(n1277), .A1(n1663), .A2(n1278), .B0(n1380), .Y(n1269) );
  BUFX2 U1390 ( .A(n1282), .Y(n1532) );
  OAI31X2 U1391 ( .A0(n1290), .A1(n1663), .A2(n1291), .B0(n1380), .Y(n1282) );
  INVX2 U1392 ( .A(n1330), .Y(n1653) );
  INVX2 U1393 ( .A(n1159), .Y(n1533) );
  INVX4 U1394 ( .A(n1587), .Y(n1640) );
  OR4X2 U1395 ( .A(n1543), .B(n1638), .C(n1655), .D(n1636), .Y(n1319) );
  INVX4 U1396 ( .A(n1319), .Y(n1534) );
  CLKBUFX4 U1397 ( .A(n1294), .Y(n1535) );
  OAI31X2 U1398 ( .A0(n1302), .A1(n1642), .A2(n1303), .B0(n1380), .Y(n1294) );
  INVX2 U1399 ( .A(n1265), .Y(n1536) );
  INVX5 U1400 ( .A(n1265), .Y(n1650) );
  CLKBUFX6 U1401 ( .A(n1160), .Y(n1537) );
  OAI31X2 U1402 ( .A0(n1334), .A1(n1585), .A2(n1547), .B0(n1381), .Y(n1160) );
  INVX2 U1403 ( .A(n1266), .Y(n1538) );
  INVX5 U1404 ( .A(n1266), .Y(n1649) );
  INVX4 U1405 ( .A(n1550), .Y(n1539) );
  NAND4X4 U1406 ( .A(n1344), .B(n1265), .C(n1266), .D(n1579), .Y(n1277) );
  CLKBUFX4 U1407 ( .A(n1152), .Y(n1579) );
  INVX2 U1408 ( .A(n1651), .Y(n1540) );
  BUFX5 U1409 ( .A(n1176), .Y(n1595) );
  CLKBUFX6 U1410 ( .A(tcon[6]), .Y(n1541) );
  CLKBUFX6 U1411 ( .A(tcon[7]), .Y(n1542) );
  OR3X2 U1412 ( .A(n1361), .B(n1362), .C(n1660), .Y(n1169) );
  INVX4 U1413 ( .A(n1169), .Y(n1543) );
  NOR2X1 U1414 ( .A(n1547), .B(n1368), .Y(n1544) );
  INVX2 U1415 ( .A(n1648), .Y(n1545) );
  BUFX5 U1416 ( .A(n1172), .Y(n1578) );
  INVX5 U1417 ( .A(n1656), .Y(n1546) );
  BUFX5 U1418 ( .A(n1203), .Y(n1594) );
  CLKBUFX4 U1419 ( .A(n1330), .Y(n1547) );
  NOR4X6 U1420 ( .A(n1664), .B(n1657), .C(n1660), .D(n1361), .Y(n1330) );
  CLKBUFX6 U1421 ( .A(n1153), .Y(n1548) );
  OAI31X2 U1422 ( .A0(n1263), .A1(n1663), .A2(n1264), .B0(n1381), .Y(n1153) );
  INVX5 U1423 ( .A(n1585), .Y(n1549) );
  INVX5 U1424 ( .A(n1585), .Y(n1586) );
  INVX2 U1425 ( .A(n1152), .Y(n1550) );
  INVX5 U1426 ( .A(n1579), .Y(n1644) );
  BUFX2 U1427 ( .A(n1587), .Y(n1551) );
  CLKBUFX4 U1428 ( .A(n1177), .Y(n1552) );
  CLKBUFX4 U1429 ( .A(n1177), .Y(n1571) );
  CLKBUFX4 U1430 ( .A(n1169), .Y(n1553) );
  BUFX5 U1431 ( .A(n1169), .Y(n1554) );
  CLKBUFX6 U1432 ( .A(n1316), .Y(n1555) );
  OAI31X2 U1433 ( .A0(n1317), .A1(n1277), .A2(n1318), .B0(n1381), .Y(n1316) );
  INVX2 U1434 ( .A(n1582), .Y(n1646) );
  INVX5 U1435 ( .A(n1558), .Y(n1588) );
  INVX5 U1436 ( .A(n1371), .Y(n1580) );
  INVX5 U1437 ( .A(n1371), .Y(n1581) );
  CLKBUFX6 U1438 ( .A(n1159), .Y(n1587) );
  INVX2 U1439 ( .A(n1154), .Y(n1585) );
  CLKBUFX6 U1440 ( .A(n1662), .Y(n1570) );
  AND3X2 U1441 ( .A(n1365), .B(n1659), .C(addr_bus[5]), .Y(n1556) );
  AND3X2 U1442 ( .A(n1365), .B(addr_bus[4]), .C(addr_bus[5]), .Y(n1557) );
  AND3X2 U1443 ( .A(addr_bus[3]), .B(n1647), .C(n1360), .Y(n1558) );
  AND3X2 U1444 ( .A(addr_bus[0]), .B(addr_bus[3]), .C(n1360), .Y(n1559) );
  NOR2X4 U1445 ( .A(n1145), .B(n1596), .Y(n1560) );
  NOR2X4 U1446 ( .A(n1148), .B(n1596), .Y(n1561) );
  NOR2X4 U1447 ( .A(n1149), .B(n1596), .Y(n1562) );
  NOR2X4 U1448 ( .A(n1147), .B(n1329), .Y(n1563) );
  NOR2X4 U1449 ( .A(n1150), .B(n1596), .Y(n1564) );
  NOR2X4 U1450 ( .A(n1247), .B(n1596), .Y(n1565) );
  NOR2X4 U1451 ( .A(n1246), .B(n1596), .Y(n1566) );
  NOR2X4 U1452 ( .A(n1146), .B(n1596), .Y(n1567) );
  INVX4 U1453 ( .A(n1325), .Y(n1645) );
  CLKAND2X6 U1454 ( .A(n1279), .B(n1636), .Y(n1281) );
  NAND2X2 U1455 ( .A(n1279), .B(n1646), .Y(n1325) );
  NOR4X6 U1456 ( .A(n1291), .B(n1638), .C(n1636), .D(n1626), .Y(n1339) );
  CLKINVX2 U1457 ( .A(n1535), .Y(n1637) );
  CLKINVX4 U1458 ( .A(n1531), .Y(n1634) );
  CLKINVX4 U1459 ( .A(n1532), .Y(n1639) );
  INVX4 U1460 ( .A(n1321), .Y(n1635) );
  INVX4 U1461 ( .A(n1592), .Y(n1636) );
  BUFX5 U1462 ( .A(n1653), .Y(n1569) );
  NOR2X6 U1463 ( .A(n1377), .B(n1624), .Y(n1279) );
  CLKAND2X6 U1464 ( .A(n1279), .B(n1638), .Y(n1306) );
  CLKAND2X6 U1465 ( .A(n1279), .B(n1652), .Y(n1268) );
  CLKAND2X6 U1466 ( .A(n1279), .B(n1655), .Y(n1293) );
  INVX8 U1467 ( .A(n1630), .Y(n1623) );
  INVX6 U1468 ( .A(n1629), .Y(n1624) );
  BUFX5 U1469 ( .A(n1653), .Y(n1568) );
  BUFX2 U1470 ( .A(n1629), .Y(n1626) );
  INVX4 U1471 ( .A(n1628), .Y(n1625) );
  BUFX2 U1472 ( .A(n1629), .Y(n1627) );
  BUFX2 U1473 ( .A(n1629), .Y(n1628) );
  NAND2X2 U1474 ( .A(n1304), .B(n1654), .Y(n1318) );
  NAND4X1 U1475 ( .A(n1534), .B(n1315), .C(n1581), .D(n1624), .Y(n1317) );
  NAND2X2 U1476 ( .A(n1554), .B(n1589), .Y(n1290) );
  NOR3X2 U1477 ( .A(n1538), .B(n1550), .C(n1652), .Y(n1357) );
  OAI21X4 U1478 ( .A0(n1328), .A1(n1377), .B0(n1315), .Y(n1321) );
  CLKAND2X6 U1479 ( .A(n1248), .B(n1540), .Y(n1143) );
  CLKAND2X6 U1480 ( .A(n1336), .B(n1347), .Y(n1345) );
  INVX4 U1481 ( .A(n1580), .Y(n1652) );
  INVX4 U1482 ( .A(n1588), .Y(n1638) );
  INVX2 U1483 ( .A(n1332), .Y(n1642) );
  INVX4 U1484 ( .A(n1315), .Y(n1663) );
  INVX4 U1485 ( .A(n1590), .Y(n1655) );
  NAND3X2 U1486 ( .A(n1553), .B(n1592), .C(n1315), .Y(n1303) );
  INVX2 U1487 ( .A(n1575), .Y(n1643) );
  AND2X2 U1488 ( .A(n1339), .B(n1570), .Y(n1342) );
  INVX2 U1489 ( .A(n1595), .Y(n1651) );
  INVX5 U1490 ( .A(n1372), .Y(n1593) );
  INVX5 U1491 ( .A(n1372), .Y(n1592) );
  INVX4 U1492 ( .A(n1370), .Y(n1582) );
  NAND2X5 U1493 ( .A(n1538), .B(n1570), .Y(n1350) );
  NAND2X5 U1494 ( .A(n1536), .B(n1570), .Y(n1353) );
  NAND2X5 U1495 ( .A(n1648), .B(n1570), .Y(n1346) );
  NAND2X5 U1496 ( .A(n1651), .B(n1570), .Y(n1249) );
  NAND2X5 U1497 ( .A(n1622), .B(n1570), .Y(n1163) );
  CLKNAND2X2 U1498 ( .A(n1543), .B(n1570), .Y(n1341) );
  NAND2X2 U1499 ( .A(rst_n), .B(n1662), .Y(n1329) );
  BUFX5 U1500 ( .A(n1621), .Y(n1622) );
  INVX2 U1501 ( .A(n1572), .Y(n1641) );
  INVX4 U1502 ( .A(n1370), .Y(n1584) );
  INVX4 U1503 ( .A(n1370), .Y(n1583) );
  CLKBUFX4 U1504 ( .A(n1630), .Y(n1629) );
  BUFX5 U1505 ( .A(n1614), .Y(n1619) );
  BUFX5 U1506 ( .A(n1613), .Y(n1617) );
  BUFX5 U1507 ( .A(n1614), .Y(n1618) );
  BUFX5 U1508 ( .A(n1613), .Y(n1616) );
  OAI21X1 U1509 ( .A0(n1611), .A1(n1580), .B0(n1274), .Y(N207) );
  AOI22X2 U1510 ( .A0(th1_out[2]), .A1(n1268), .B0(n1634), .B1(n1676), .Y(
        n1274) );
  OAI21X1 U1511 ( .A0(n1580), .A1(n1607), .B0(n1276), .Y(N205) );
  AOI22X2 U1512 ( .A0(th1_out[0]), .A1(n1268), .B0(n1634), .B1(n1674), .Y(
        n1276) );
  OAI21X1 U1513 ( .A0(n1612), .A1(n1592), .B0(n1287), .Y(N199) );
  AOI22X2 U1514 ( .A0(th0_out[2]), .A1(n1281), .B0(n1639), .B1(n1669), .Y(
        n1287) );
  OAI21X1 U1515 ( .A0(n1592), .A1(n1608), .B0(n1289), .Y(N197) );
  AOI22X2 U1516 ( .A0(th0_out[0]), .A1(n1281), .B0(n1639), .B1(n1667), .Y(
        n1289) );
  OAI21X1 U1517 ( .A0(n1581), .A1(n1610), .B0(n1275), .Y(N206) );
  AOI22X2 U1518 ( .A0(th1_out[1]), .A1(n1268), .B0(n1634), .B1(n1675), .Y(
        n1275) );
  OAI21X1 U1519 ( .A0(n1592), .A1(n1609), .B0(n1288), .Y(N198) );
  AOI22X2 U1520 ( .A0(th0_out[1]), .A1(n1281), .B0(n1639), .B1(n1668), .Y(
        n1288) );
  OAI21X1 U1521 ( .A0(n1599), .A1(n1580), .B0(n1272), .Y(N209) );
  AOI22X2 U1522 ( .A0(th1_out[4]), .A1(n1268), .B0(n1634), .B1(n1678), .Y(
        n1272) );
  OAI21X1 U1523 ( .A0(n1597), .A1(n1581), .B0(n1273), .Y(N208) );
  AOI22X2 U1524 ( .A0(th1_out[3]), .A1(n1268), .B0(n1634), .B1(n1677), .Y(
        n1273) );
  OAI21X1 U1525 ( .A0(n1599), .A1(n1593), .B0(n1285), .Y(N201) );
  AOI22X2 U1526 ( .A0(th0_out[4]), .A1(n1281), .B0(n1639), .B1(n1671), .Y(
        n1285) );
  OAI21X1 U1527 ( .A0(n1597), .A1(n1593), .B0(n1286), .Y(N200) );
  AOI22X2 U1528 ( .A0(th0_out[3]), .A1(n1281), .B0(n1639), .B1(n1670), .Y(
        n1286) );
  OAI21X1 U1529 ( .A0(n1601), .A1(n1581), .B0(n1271), .Y(N210) );
  AOI22X2 U1530 ( .A0(th1_out[5]), .A1(n1268), .B0(n1634), .B1(n1679), .Y(
        n1271) );
  OAI21X1 U1531 ( .A0(n1601), .A1(n1593), .B0(n1284), .Y(N202) );
  AOI22X2 U1532 ( .A0(th0_out[5]), .A1(n1281), .B0(n1639), .B1(n1672), .Y(
        n1284) );
  NAND2X2 U1533 ( .A(n1265), .B(n1266), .Y(n1263) );
  OAI22X1 U1534 ( .A0(n1598), .A1(n1546), .B0(n1709), .B1(n1555), .Y(N176) );
  OAI22X1 U1535 ( .A0(n1546), .A1(n1606), .B0(n1708), .B1(n1555), .Y(N180) );
  OAI22X1 U1536 ( .A0(n1546), .A1(n1604), .B0(n1665), .B1(n1555), .Y(N179) );
  INVX2 U1537 ( .A(to0), .Y(n1666) );
  NOR3X4 U1538 ( .A(n1340), .B(n1550), .C(n1264), .Y(n1351) );
  NOR2X4 U1539 ( .A(n1658), .B(n1362), .Y(n1358) );
  NAND2X5 U1540 ( .A(n1682), .B(n1340), .Y(n1315) );
  NAND4X4 U1541 ( .A(n1304), .B(n1654), .C(n1534), .D(n1594), .Y(n1278) );
  CLKAND2X6 U1542 ( .A(n1351), .B(n1266), .Y(n1352) );
  CLKAND2X6 U1543 ( .A(n1351), .B(n1265), .Y(n1349) );
  INVX4 U1544 ( .A(n1356), .Y(n1660) );
  OAI22X1 U1545 ( .A0(n1710), .A1(n1338), .B0(n1554), .B1(n1603), .Y(N131) );
  OAI22X1 U1546 ( .A0(n1696), .A1(n1338), .B0(n1600), .B1(n1554), .Y(N129) );
  OAI22X1 U1547 ( .A0(n1695), .A1(n1338), .B0(n1602), .B1(n1554), .Y(N130) );
  OAI22X1 U1548 ( .A0(n1694), .A1(n1338), .B0(n1598), .B1(n1554), .Y(N128) );
  OAI22X1 U1549 ( .A0(n1693), .A1(n1338), .B0(n1554), .B1(n1605), .Y(N132) );
  AND3X2 U1550 ( .A(n1571), .B(n1574), .C(n1354), .Y(n1344) );
  NOR3X2 U1551 ( .A(n1648), .B(n1643), .C(n1651), .Y(n1354) );
  NAND2X4 U1552 ( .A(n1664), .B(n1657), .Y(n1362) );
  NAND2X2 U1553 ( .A(n1355), .B(n1356), .Y(n1176) );
  INVX2 U1554 ( .A(n1343), .Y(n1654) );
  CLKAND2X3 U1555 ( .A(n1358), .B(n1647), .Y(n1365) );
  INVX4 U1556 ( .A(n1594), .Y(n1656) );
  AND3X2 U1557 ( .A(n1347), .B(n1545), .C(n1348), .Y(n1248) );
  INVX2 U1558 ( .A(to1), .Y(n1673) );
  AND4X2 U1559 ( .A(n1348), .B(n1552), .C(n1540), .D(n1624), .Y(n1336) );
  NAND3X2 U1560 ( .A(n1647), .B(n1658), .C(n1360), .Y(n1159) );
  INVX5 U1561 ( .A(n1558), .Y(n1589) );
  INVX5 U1562 ( .A(n1559), .Y(n1591) );
  INVX2 U1563 ( .A(n1578), .Y(n1648) );
  INVX5 U1564 ( .A(n1559), .Y(n1590) );
  INVX5 U1565 ( .A(n1565), .Y(n1600) );
  INVX5 U1566 ( .A(n1561), .Y(n1598) );
  INVX5 U1567 ( .A(n1560), .Y(n1602) );
  INVX5 U1568 ( .A(n1564), .Y(n1606) );
  INVX5 U1569 ( .A(n1566), .Y(n1604) );
  INVX4 U1570 ( .A(n1560), .Y(n1601) );
  INVX4 U1571 ( .A(n1565), .Y(n1599) );
  NAND2BX2 U1572 ( .AN(n1361), .B(n1360), .Y(n1154) );
  INVX4 U1573 ( .A(n1561), .Y(n1597) );
  INVX4 U1574 ( .A(n1564), .Y(n1605) );
  INVX4 U1575 ( .A(n1566), .Y(n1603) );
  INVX4 U1576 ( .A(n1556), .Y(n1572) );
  INVX4 U1577 ( .A(n1567), .Y(n1611) );
  INVX4 U1578 ( .A(n1563), .Y(n1607) );
  INVX4 U1579 ( .A(n1562), .Y(n1609) );
  INVX4 U1580 ( .A(n1563), .Y(n1608) );
  INVX4 U1581 ( .A(n1567), .Y(n1612) );
  INVX4 U1582 ( .A(n1556), .Y(n1573) );
  INVX4 U1583 ( .A(n1562), .Y(n1610) );
  INVX4 U1584 ( .A(n1556), .Y(n1574) );
  INVX4 U1585 ( .A(n1557), .Y(n1575) );
  NOR3X4 U1586 ( .A(n1641), .B(n1643), .C(n1340), .Y(n1347) );
  INVX2 U1587 ( .A(n1340), .Y(n1662) );
  INVX4 U1588 ( .A(n1557), .Y(n1577) );
  INVX4 U1589 ( .A(n1557), .Y(n1576) );
  INVX2 U1590 ( .A(fifo_w_en), .Y(n1630) );
  BUFX2 U1591 ( .A(read_en), .Y(n1621) );
  BUFX2 U1592 ( .A(n1375), .Y(n1614) );
  BUFX2 U1593 ( .A(n1375), .Y(n1613) );
  BUFX2 U1594 ( .A(n1375), .Y(n1615) );
  INVX2 U1595 ( .A(reset), .Y(n1681) );
  OAI21X1 U1596 ( .A0(n1612), .A1(n1589), .B0(n1312), .Y(N183) );
  OAI21X1 U1597 ( .A0(n1611), .A1(n1590), .B0(n1299), .Y(N191) );
  AOI22X2 U1598 ( .A0(tl1_out[2]), .A1(n1293), .B0(n1637), .B1(n1707), .Y(
        n1299) );
  OAI21X1 U1599 ( .A0(n1589), .A1(n1608), .B0(n1314), .Y(N181) );
  OAI21X1 U1600 ( .A0(n1590), .A1(n1607), .B0(n1301), .Y(N189) );
  AOI22X2 U1601 ( .A0(tl1_out[0]), .A1(n1293), .B0(n1637), .B1(n1701), .Y(
        n1301) );
  OAI21X1 U1602 ( .A0(n1597), .A1(n1591), .B0(n1298), .Y(N192) );
  AOI2BB2X1 U1603 ( .B0(tl1_out[3]), .B1(n1293), .A0N(n1535), .A1N(n868), .Y(
        n1298) );
  OAI21X1 U1604 ( .A0(n1599), .A1(n1591), .B0(n1297), .Y(N193) );
  AOI2BB2X1 U1605 ( .B0(tl1_out[4]), .B1(n1293), .A0N(n1535), .A1N(n888), .Y(
        n1297) );
  OAI21X1 U1606 ( .A0(n1601), .A1(n1588), .B0(n1309), .Y(N186) );
  OAI21X1 U1607 ( .A0(n1588), .A1(n1609), .B0(n1313), .Y(N182) );
  OAI21X1 U1608 ( .A0(n1597), .A1(n1588), .B0(n1311), .Y(N184) );
  OAI21X1 U1609 ( .A0(n1580), .A1(n1603), .B0(n1270), .Y(N211) );
  AOI2BB2X1 U1610 ( .B0(th1_out[6]), .B1(n1268), .A0N(n1531), .A1N(n808), .Y(
        n1270) );
  OAI21X1 U1611 ( .A0(n1592), .A1(n1603), .B0(n1283), .Y(N203) );
  AOI2BB2X1 U1612 ( .B0(th0_out[6]), .B1(n1281), .A0N(n1532), .A1N(n907), .Y(
        n1283) );
  OAI21X1 U1613 ( .A0(n1590), .A1(n1605), .B0(n1292), .Y(N196) );
  AOI2BB2X1 U1614 ( .B0(tl1_out[7]), .B1(n1293), .A0N(n1535), .A1N(n806), .Y(
        n1292) );
  OAI21X1 U1615 ( .A0(n1590), .A1(n1603), .B0(n1295), .Y(N195) );
  AOI2BB2X1 U1616 ( .B0(tl1_out[6]), .B1(n1293), .A0N(n1535), .A1N(n816), .Y(
        n1295) );
  OAI21X1 U1617 ( .A0(n1590), .A1(n1610), .B0(n1300), .Y(N190) );
  AOI22X2 U1618 ( .A0(tl1_out[1]), .A1(n1293), .B0(n1637), .B1(n1706), .Y(
        n1300) );
  OAI21X1 U1619 ( .A0(n1588), .A1(n1605), .B0(n1305), .Y(N188) );
  OAI21X1 U1620 ( .A0(n1589), .A1(n1603), .B0(n1308), .Y(N187) );
  OAI21X1 U1621 ( .A0(n1599), .A1(n1589), .B0(n1310), .Y(N185) );
  OAI21X1 U1622 ( .A0(n1601), .A1(n1591), .B0(n1296), .Y(N194) );
  AOI2BB2X1 U1623 ( .B0(tl1_out[5]), .B1(n1293), .A0N(n1535), .A1N(n901), .Y(
        n1296) );
  OAI21X1 U1624 ( .A0(n1592), .A1(n1605), .B0(n1280), .Y(N204) );
  AOI2BB2X1 U1625 ( .B0(th0_out[7]), .B1(n1281), .A0N(n1532), .A1N(n908), .Y(
        n1280) );
  OAI21X1 U1626 ( .A0(n1581), .A1(n1605), .B0(n1267), .Y(N212) );
  AOI2BB2X1 U1627 ( .B0(th1_out[7]), .B1(n1268), .A0N(n1531), .A1N(n912), .Y(
        n1267) );
  OAI21X1 U1628 ( .A0(n1611), .A1(n1582), .B0(n1326), .Y(N167) );
  AOI2BB2X2 U1629 ( .B0(inti0), .B1(n1645), .A0N(n1635), .A1N(n853), .Y(n1326)
         );
  OAI21X1 U1630 ( .A0(n1582), .A1(n1607), .B0(n1327), .Y(N165) );
  AOI2BB2X2 U1631 ( .B0(inti1), .B1(n1645), .A0N(n1635), .A1N(n791), .Y(n1327)
         );
  OAI22X1 U1632 ( .A0(n847), .A1(n1537), .B0(n1611), .B1(n1587), .Y(N135) );
  OAI22X1 U1633 ( .A0(n797), .A1(n1537), .B0(n1587), .B1(n1608), .Y(N133) );
  OAI22X1 U1634 ( .A0(n830), .A1(n1537), .B0(n1587), .B1(n1609), .Y(N134) );
  OAI2B2X1 U1635 ( .A1N(tmod[2]), .A0(n1555), .B0(n1611), .B1(n1546), .Y(N175)
         );
  NOR4X6 U1636 ( .A(n1664), .B(n1660), .C(n1658), .D(addr_bus[1]), .Y(n1359)
         );
  NOR2X6 U1637 ( .A(addr_bus[4]), .B(addr_bus[5]), .Y(n1356) );
  OAI22X1 U1638 ( .A0(n1600), .A1(n1539), .B0(n880), .B1(n1548), .Y(n429) );
  OAI22X1 U1639 ( .A0(n1579), .A1(n1598), .B0(n860), .B1(n1548), .Y(n424) );
  OAI22X1 U1640 ( .A0(n1579), .A1(n1602), .B0(n894), .B1(n1548), .Y(n422) );
  OAI22X1 U1641 ( .A0(n1579), .A1(n1612), .B0(n843), .B1(n1548), .Y(n427) );
  OAI22X1 U1642 ( .A0(n1579), .A1(n1604), .B0(n810), .B1(n1548), .Y(N219) );
  OAI22X1 U1643 ( .A0(n1539), .A1(n1606), .B0(n799), .B1(n1548), .Y(N220) );
  OAI22X1 U1644 ( .A0(n1539), .A1(n1607), .B0(n790), .B1(n1548), .Y(N213) );
  OAI22X1 U1645 ( .A0(n1539), .A1(n1610), .B0(n826), .B1(n1548), .Y(N214) );
  OAI22X1 U1646 ( .A0(n1600), .A1(n1549), .B0(n883), .B1(n1367), .Y(n428) );
  OAI22X1 U1647 ( .A0(n1586), .A1(n1602), .B0(n897), .B1(n1367), .Y(n421) );
  OAI22X1 U1648 ( .A0(n1586), .A1(n1606), .B0(n802), .B1(n1367), .Y(N148) );
  OAI22X1 U1649 ( .A0(n1549), .A1(n1607), .B0(n796), .B1(n1367), .Y(N141) );
  OAI22X1 U1650 ( .A0(n1549), .A1(n1610), .B0(n829), .B1(n1367), .Y(N142) );
  OAI22X1 U1651 ( .A0(n1586), .A1(n1598), .B0(n863), .B1(n1367), .Y(N144) );
  OAI22X1 U1652 ( .A0(n1586), .A1(n1612), .B0(n846), .B1(n1367), .Y(N143) );
  OAI22X1 U1653 ( .A0(n1549), .A1(n1604), .B0(n813), .B1(n1367), .Y(N147) );
  OAI22X1 U1654 ( .A0(n1602), .A1(n1594), .B0(n415), .B1(n1555), .Y(N178) );
  OAI22X1 U1655 ( .A0(n1546), .A1(n1609), .B0(n416), .B1(n1555), .Y(N174) );
  OAI22X1 U1656 ( .A0(n1600), .A1(n1546), .B0(n410), .B1(n1555), .Y(N177) );
  OAI22X1 U1657 ( .A0(n1546), .A1(n1608), .B0(n409), .B1(n1555), .Y(N173) );
  OAI22X1 U1658 ( .A0(n1602), .A1(n1551), .B0(n898), .B1(n1537), .Y(n423) );
  OAI22X1 U1659 ( .A0(n1597), .A1(n1551), .B0(n864), .B1(n1537), .Y(N136) );
  OAI22X1 U1660 ( .A0(n1587), .A1(n1603), .B0(n814), .B1(n1537), .Y(N139) );
  OAI22X1 U1661 ( .A0(n1599), .A1(n1551), .B0(n884), .B1(n1537), .Y(N137) );
  OAI22X1 U1662 ( .A0(n1587), .A1(n1605), .B0(n803), .B1(n1537), .Y(N140) );
  NAND3X4 U1663 ( .A(addr_bus[5]), .B(n1659), .C(n1355), .Y(n1266) );
  NAND3X4 U1664 ( .A(addr_bus[4]), .B(n1661), .C(n1355), .Y(n1265) );
  OAI222X1 U1665 ( .A0(n827), .A1(n1569), .B0(n836), .B1(n1583), .C0(n829), 
        .C1(n1549), .Y(n1185) );
  OAI222X1 U1666 ( .A0(n895), .A1(n1569), .B0(n903), .B1(n1583), .C0(n897), 
        .C1(n1586), .Y(n1226) );
  OAI222X1 U1667 ( .A0(n881), .A1(n1569), .B0(n878), .B1(n1584), .C0(n883), 
        .C1(n1586), .Y(n1217) );
  OAI222X1 U1668 ( .A0(n844), .A1(n1569), .B0(n853), .B1(n1584), .C0(n846), 
        .C1(n1549), .Y(n1194) );
  OAI222X1 U1669 ( .A0(n794), .A1(n1569), .B0(n791), .B1(n1584), .C0(n796), 
        .C1(n1549), .Y(n1173) );
  OAI222X1 U1670 ( .A0(n800), .A1(n1569), .B0(n804), .B1(n1583), .C0(n802), 
        .C1(n1586), .Y(n1244) );
  OAI222X1 U1671 ( .A0(n861), .A1(n1569), .B0(n870), .B1(n1583), .C0(n863), 
        .C1(n1586), .Y(n1208) );
  OAI222X1 U1672 ( .A0(n811), .A1(n1569), .B0(n817), .B1(n1584), .C0(n813), 
        .C1(n1154), .Y(n1235) );
  OAI22X1 U1673 ( .A0(n874), .A1(n1143), .B0(n1144), .B1(n1247), .Y(
        fifo_w_data[4]) );
  OAI22X1 U1674 ( .A0(n875), .A1(n1143), .B0(n1144), .B1(n1145), .Y(n441) );
  OAI22X1 U1675 ( .A0(n876), .A1(n1143), .B0(n1144), .B1(n1246), .Y(
        fifo_w_data[6]) );
  OAI22X1 U1676 ( .A0(n877), .A1(n1143), .B0(n1144), .B1(n1150), .Y(n436) );
  OAI222X1 U1677 ( .A0(n1325), .A1(n1673), .B0(n870), .B1(n1635), .C0(n1597), 
        .C1(n1583), .Y(N168) );
  OAI222X1 U1678 ( .A0(n1325), .A1(n1666), .B0(n836), .B1(n1635), .C0(n1584), 
        .C1(n1610), .Y(N166) );
  NAND2X4 U1679 ( .A(addr_bus[0]), .B(n1658), .Y(n1361) );
  AOI31X1 U1680 ( .A0(n1219), .A1(n1220), .A2(n1221), .B0(n1163), .Y(n399) );
  AOI221X2 U1681 ( .A0(p1[5]), .A1(n1650), .B0(p2[5]), .B1(n1649), .C0(n1227), 
        .Y(n1219) );
  NOR4X4 U1682 ( .A(n1222), .B(n1223), .C(n1224), .D(n1225), .Y(n1221) );
  AOI31X1 U1683 ( .A0(n1210), .A1(n1211), .A2(n1212), .B0(n1163), .Y(n400) );
  AOI221X2 U1684 ( .A0(p1[4]), .A1(n1650), .B0(p2[4]), .B1(n1649), .C0(n1218), 
        .Y(n1210) );
  NOR4X4 U1685 ( .A(n1213), .B(n1214), .C(n1215), .D(n1216), .Y(n1212) );
  AOI31X1 U1686 ( .A0(n1237), .A1(n1238), .A2(n1239), .B0(n1163), .Y(n397) );
  AOI221X2 U1687 ( .A0(p1[7]), .A1(n1650), .B0(p2[7]), .B1(n1649), .C0(n1245), 
        .Y(n1237) );
  NOR4X4 U1688 ( .A(n1240), .B(n1241), .C(n1242), .D(n1243), .Y(n1239) );
  AOI31X1 U1689 ( .A0(n1196), .A1(n1197), .A2(n1198), .B0(n1163), .Y(n401) );
  AOI221X2 U1690 ( .A0(p1[3]), .A1(n1650), .B0(p2[3]), .B1(n1649), .C0(n1209), 
        .Y(n1196) );
  NOR4X4 U1691 ( .A(n1199), .B(n1200), .C(n1201), .D(n1202), .Y(n1198) );
  AOI31X1 U1692 ( .A0(n1228), .A1(n1229), .A2(n1230), .B0(n1163), .Y(n398) );
  AOI221X2 U1693 ( .A0(p1[6]), .A1(n1650), .B0(p2[6]), .B1(n1649), .C0(n1236), 
        .Y(n1228) );
  NOR4X4 U1694 ( .A(n1231), .B(n1232), .C(n1233), .D(n1234), .Y(n1230) );
  OAI22X1 U1695 ( .A0(n902), .A1(n1589), .B0(n901), .B1(n1591), .Y(n1224) );
  OAI22X1 U1696 ( .A0(n889), .A1(n1588), .B0(n888), .B1(n1591), .Y(n1215) );
  OAI22X1 U1697 ( .A0(n820), .A1(n1589), .B0(n806), .B1(n1591), .Y(n1242) );
  OAI22X1 U1698 ( .A0(n869), .A1(n1589), .B0(n868), .B1(n1591), .Y(n1201) );
  OAI22X1 U1699 ( .A0(n819), .A1(n1588), .B0(n816), .B1(n1591), .Y(n1233) );
  OAI22X1 U1700 ( .A0(n1553), .A1(n1695), .B0(n900), .B1(n1581), .Y(n1223) );
  OAI22X1 U1701 ( .A0(n1553), .A1(n1696), .B0(n886), .B1(n1580), .Y(n1214) );
  OAI22X1 U1702 ( .A0(n1553), .A1(n1694), .B0(n866), .B1(n1581), .Y(n1200) );
  OAI22X1 U1703 ( .A0(n1554), .A1(n1693), .B0(n912), .B1(n1581), .Y(n1241) );
  OAI22X1 U1704 ( .A0(n1554), .A1(n1710), .B0(n808), .B1(n1580), .Y(n1232) );
  OAI22X1 U1705 ( .A0(n415), .A1(n1594), .B0(n822), .B1(n1593), .Y(n1225) );
  OAI22X1 U1706 ( .A0(n410), .A1(n1594), .B0(n887), .B1(n1593), .Y(n1216) );
  OAI22X1 U1707 ( .A0(n1594), .A1(n1709), .B0(n867), .B1(n1593), .Y(n1202) );
  OAI22X1 U1708 ( .A0(n1594), .A1(n1708), .B0(n908), .B1(n1593), .Y(n1243) );
  OAI22X1 U1709 ( .A0(n1594), .A1(n1665), .B0(n907), .B1(n1593), .Y(n1234) );
  OAI221X2 U1710 ( .A0(n920), .A1(n1352), .B0(n1147), .B1(n1353), .C0(n1620), 
        .Y(N101) );
  OAI221X2 U1711 ( .A0(n915), .A1(n1352), .B0(n1150), .B1(n1353), .C0(n1619), 
        .Y(N108) );
  OAI221X2 U1712 ( .A0(n919), .A1(n1349), .B0(n1147), .B1(n1350), .C0(n1619), 
        .Y(N109) );
  OAI221X2 U1713 ( .A0(n839), .A1(n1349), .B0(n1149), .B1(n1350), .C0(n1619), 
        .Y(N110) );
  OAI221X2 U1714 ( .A0(n856), .A1(n1349), .B0(n1146), .B1(n1350), .C0(n1618), 
        .Y(N111) );
  OAI221X2 U1715 ( .A0(n872), .A1(n1349), .B0(n1148), .B1(n1350), .C0(n1618), 
        .Y(N112) );
  OAI221X2 U1716 ( .A0(n914), .A1(n1349), .B0(n1150), .B1(n1350), .C0(n1618), 
        .Y(N116) );
  OAI221X2 U1717 ( .A0(n910), .A1(n1349), .B0(n1246), .B1(n1350), .C0(n1618), 
        .Y(N115) );
  OAI221X2 U1718 ( .A0(n905), .A1(n1349), .B0(n1145), .B1(n1350), .C0(n1618), 
        .Y(N114) );
  OAI221X2 U1719 ( .A0(n891), .A1(n1349), .B0(n1247), .B1(n1350), .C0(n1618), 
        .Y(N113) );
  OAI221X2 U1720 ( .A0(n916), .A1(n1250), .B0(n1150), .B1(n1249), .C0(n1620), 
        .Y(N100) );
  OAI221X2 U1721 ( .A0(n909), .A1(n1345), .B0(n1246), .B1(n1346), .C0(n1617), 
        .Y(N123) );
  OAI221X2 U1722 ( .A0(n871), .A1(n1345), .B0(n1148), .B1(n1346), .C0(n1617), 
        .Y(N120) );
  OAI221X2 U1723 ( .A0(n890), .A1(n1345), .B0(n1247), .B1(n1346), .C0(n1617), 
        .Y(N121) );
  OAI221X2 U1724 ( .A0(n913), .A1(n1345), .B0(n1150), .B1(n1346), .C0(n1617), 
        .Y(N124) );
  OAI221X2 U1725 ( .A0(n904), .A1(n1345), .B0(n1145), .B1(n1346), .C0(n1617), 
        .Y(N122) );
  OAI221X2 U1726 ( .A0(n855), .A1(n1345), .B0(n1146), .B1(n1346), .C0(n1617), 
        .Y(N119) );
  OAI221X2 U1727 ( .A0(n918), .A1(n1345), .B0(n1147), .B1(n1346), .C0(n1618), 
        .Y(N117) );
  OAI221X2 U1728 ( .A0(n838), .A1(n1345), .B0(n1149), .B1(n1346), .C0(n1618), 
        .Y(N118) );
  OAI221X2 U1729 ( .A0(n1149), .A1(n1353), .B0(n840), .B1(n1352), .C0(n1619), 
        .Y(N102) );
  OAI221X2 U1730 ( .A0(n1146), .A1(n1353), .B0(n857), .B1(n1352), .C0(n1619), 
        .Y(N103) );
  OAI221X2 U1731 ( .A0(n1148), .A1(n1353), .B0(n873), .B1(n1352), .C0(n1615), 
        .Y(N104) );
  OAI221X2 U1732 ( .A0(n1247), .A1(n1353), .B0(n892), .B1(n1352), .C0(n1619), 
        .Y(N105) );
  OAI221X2 U1733 ( .A0(n1145), .A1(n1353), .B0(n906), .B1(n1352), .C0(n1619), 
        .Y(N106) );
  OAI221X2 U1734 ( .A0(n1246), .A1(n1353), .B0(n911), .B1(n1352), .C0(n1619), 
        .Y(N107) );
  OAI221X2 U1735 ( .A0(n1246), .A1(n1249), .B0(n815), .B1(n1250), .C0(n1616), 
        .Y(N99) );
  OAI221X2 U1736 ( .A0(n1147), .A1(n1249), .B0(n792), .B1(n1250), .C0(n1616), 
        .Y(N93) );
  OAI221X2 U1737 ( .A0(n1149), .A1(n1249), .B0(n831), .B1(n1250), .C0(n1616), 
        .Y(N94) );
  OAI221X2 U1738 ( .A0(n1148), .A1(n1249), .B0(n865), .B1(n1250), .C0(n1616), 
        .Y(N96) );
  OAI221X2 U1739 ( .A0(n1247), .A1(n1249), .B0(n885), .B1(n1250), .C0(n1616), 
        .Y(N97) );
  OAI221X2 U1740 ( .A0(n1145), .A1(n1249), .B0(n899), .B1(n1250), .C0(n1616), 
        .Y(N98) );
  OAI221X2 U1741 ( .A0(n1146), .A1(n1249), .B0(n848), .B1(n1250), .C0(n1616), 
        .Y(N95) );
  OAI221X2 U1742 ( .A0(n1146), .A1(n1341), .B0(n854), .B1(n1342), .C0(n1616), 
        .Y(N127) );
  OAI221X2 U1743 ( .A0(n1147), .A1(n1341), .B0(n917), .B1(n1342), .C0(n1617), 
        .Y(N125) );
  OAI221X2 U1744 ( .A0(n1149), .A1(n1341), .B0(n837), .B1(n1342), .C0(n1617), 
        .Y(N126) );
  OAI21X1 U1745 ( .A0(n1601), .A1(n1582), .B0(n1323), .Y(N170) );
  AOI2BB2X2 U1746 ( .B0(tcon_nxt[5]), .B1(n1645), .A0N(n1635), .A1N(n903), .Y(
        n1323) );
  OAI21X1 U1747 ( .A0(n1599), .A1(n1582), .B0(n1324), .Y(N169) );
  OAI22X1 U1748 ( .A0(n1600), .A1(n1568), .B0(n881), .B1(n1530), .Y(N161) );
  OAI22X1 U1749 ( .A0(n1602), .A1(n1568), .B0(n895), .B1(n1530), .Y(N162) );
  OAI22X1 U1750 ( .A0(n1598), .A1(n1568), .B0(n861), .B1(n1530), .Y(N160) );
  OAI22X1 U1751 ( .A0(n1568), .A1(n1604), .B0(n811), .B1(n1530), .Y(N163) );
  OAI22X1 U1752 ( .A0(n1568), .A1(n1606), .B0(n800), .B1(n1530), .Y(N164) );
  OAI22X1 U1753 ( .A0(n1611), .A1(n1568), .B0(n844), .B1(n1530), .Y(N159) );
  OAI22X1 U1754 ( .A0(n1568), .A1(n1607), .B0(n794), .B1(n1530), .Y(N157) );
  OAI22X1 U1755 ( .A0(n1568), .A1(n1610), .B0(n827), .B1(n1530), .Y(N158) );
  OAI22X1 U1756 ( .A0(n1600), .A1(n1576), .B0(n879), .B1(n1529), .Y(N233) );
  OAI22X1 U1757 ( .A0(n1602), .A1(n1577), .B0(n893), .B1(n1529), .Y(N234) );
  OAI22X1 U1758 ( .A0(n1598), .A1(n1577), .B0(n859), .B1(n1529), .Y(N232) );
  OAI22X1 U1759 ( .A0(n1576), .A1(n1604), .B0(n809), .B1(n1529), .Y(N235) );
  OAI22X1 U1760 ( .A0(n1577), .A1(n1606), .B0(n798), .B1(n1529), .Y(N236) );
  OAI22X1 U1761 ( .A0(n1612), .A1(n1576), .B0(n842), .B1(n1529), .Y(N231) );
  OAI22X1 U1762 ( .A0(n1575), .A1(n1608), .B0(n793), .B1(n1529), .Y(N229) );
  OAI22X1 U1763 ( .A0(n1577), .A1(n1609), .B0(n825), .B1(n1529), .Y(N230) );
  OAI22X1 U1764 ( .A0(n1600), .A1(n1573), .B0(n882), .B1(n1390), .Y(N153) );
  OAI22X1 U1765 ( .A0(n1601), .A1(n1574), .B0(n896), .B1(n1390), .Y(N154) );
  OAI22X1 U1766 ( .A0(n1598), .A1(n1572), .B0(n862), .B1(n1390), .Y(N152) );
  OAI22X1 U1767 ( .A0(n1572), .A1(n1604), .B0(n812), .B1(n1390), .Y(N155) );
  OAI22X1 U1768 ( .A0(n1612), .A1(n1574), .B0(n845), .B1(n1390), .Y(N151) );
  OAI22X1 U1769 ( .A0(n1573), .A1(n1608), .B0(n795), .B1(n1390), .Y(N149) );
  OAI22X1 U1770 ( .A0(n1574), .A1(n1609), .B0(n828), .B1(n1390), .Y(N150) );
  OAI22X1 U1771 ( .A0(n1573), .A1(n1606), .B0(n801), .B1(n1390), .Y(N156) );
  INVX4 U1772 ( .A(addr_bus[0]), .Y(n1647) );
  OAI22X1 U1773 ( .A0(n1583), .A1(n1604), .B0(n817), .B1(n1322), .Y(N171) );
  AOI21X1 U1774 ( .A0(n1645), .A1(n1666), .B0(n1321), .Y(n1322) );
  OAI22X1 U1775 ( .A0(n1584), .A1(n1606), .B0(n804), .B1(n1320), .Y(N172) );
  AOI21X1 U1776 ( .A0(n1645), .A1(n1673), .B0(n1321), .Y(n1320) );
  INVX4 U1777 ( .A(addr_bus[3]), .Y(n1658) );
  AOI22X2 U1778 ( .A0(addr_bus[1]), .A1(n1361), .B0(n1657), .B1(n1658), .Y(
        n1363) );
  AOI22X2 U1779 ( .A0(n1362), .A1(n1660), .B0(addr_bus[5]), .B1(addr_bus[0]), 
        .Y(n1364) );
  NAND4BX2 U1780 ( .AN(n1165), .B(n1166), .C(n1167), .D(n1168), .Y(n1164) );
  OAI222X1 U1781 ( .A0(n1575), .A1(n793), .B0(n1572), .B1(n795), .C0(n1578), 
        .C1(n918), .Y(n1165) );
  AOI22X2 U1782 ( .A0(n1636), .A1(n1667), .B0(n1656), .B1(n1392), .Y(n1166) );
  NAND4BX2 U1783 ( .AN(n1190), .B(n1191), .C(n1192), .D(n1193), .Y(n1189) );
  OAI222X1 U1784 ( .A0(n1575), .A1(n842), .B0(n1573), .B1(n845), .C0(n1578), 
        .C1(n855), .Y(n1190) );
  NAND4BX2 U1785 ( .AN(n1181), .B(n1182), .C(n1183), .D(n1184), .Y(n1180) );
  OAI222X1 U1786 ( .A0(n1575), .A1(n825), .B0(n1574), .B1(n828), .C0(n1578), 
        .C1(n838), .Y(n1181) );
  INVX2 U1787 ( .A(addr_bus[5]), .Y(n1661) );
  INVX2 U1788 ( .A(addr_bus[4]), .Y(n1659) );
  NAND4X2 U1789 ( .A(addr_bus[4]), .B(addr_bus[0]), .C(n1358), .D(n1661), .Y(
        n1177) );
  NAND3X2 U1790 ( .A(addr_bus[0]), .B(n1358), .C(n1356), .Y(n1203) );
  INVX4 U1791 ( .A(addr_bus[1]), .Y(n1657) );
  INVX4 U1792 ( .A(addr_bus[2]), .Y(n1664) );
  NAND3X1 U1793 ( .A(addr_bus[5]), .B(addr_bus[4]), .C(n1355), .Y(n1172) );
  NAND3X2 U1794 ( .A(addr_bus[4]), .B(n1661), .C(n1365), .Y(n1152) );
  AOI31X1 U1795 ( .A0(n1161), .A1(n1162), .A2(n1631), .B0(n1163), .Y(n404) );
  AOI221X2 U1796 ( .A0(p1[0]), .A1(n1650), .B0(p2[0]), .B1(n1649), .C0(n1175), 
        .Y(n1161) );
  INVX2 U1797 ( .A(n1164), .Y(n1631) );
  AOI31X1 U1798 ( .A0(n1187), .A1(n1188), .A2(n1633), .B0(n1163), .Y(n402) );
  AOI221X2 U1799 ( .A0(p1[2]), .A1(n1650), .B0(p2[2]), .B1(n1649), .C0(n1195), 
        .Y(n1187) );
  INVX2 U1800 ( .A(n1189), .Y(n1633) );
  AOI31X1 U1801 ( .A0(n1178), .A1(n1179), .A2(n1632), .B0(n1163), .Y(n403) );
  AOI221X2 U1802 ( .A0(p1[1]), .A1(n1650), .B0(p2[1]), .B1(n1649), .C0(n1186), 
        .Y(n1178) );
  INVX2 U1803 ( .A(n1180), .Y(n1632) );
  OAI32X2 U1804 ( .A0(n1252), .A1(n417), .A2(cnt_rst[3]), .B0(n789), .B1(n1253), .Y(N89) );
  OA21X1 U1805 ( .A0(cnt_rst[2]), .A1(reset), .B0(n1254), .Y(n1253) );
  OAI222X1 U1806 ( .A0(n904), .A1(n1578), .B0(n896), .B1(n1574), .C0(n893), 
        .C1(n1576), .Y(n1222) );
  OAI222X1 U1807 ( .A0(n890), .A1(n1578), .B0(n882), .B1(n1572), .C0(n879), 
        .C1(n1577), .Y(n1213) );
  OAI222X1 U1808 ( .A0(n913), .A1(n1545), .B0(n801), .B1(n1572), .C0(n798), 
        .C1(n1576), .Y(n1240) );
  OAI222X1 U1809 ( .A0(n871), .A1(n1578), .B0(n862), .B1(n1573), .C0(n859), 
        .C1(n1576), .Y(n1199) );
  OAI222X1 U1810 ( .A0(n909), .A1(n1578), .B0(n812), .B1(n1573), .C0(n809), 
        .C1(n1577), .Y(n1231) );
  NOR2X4 U1811 ( .A(reset), .B(cnt_rst[0]), .Y(N86) );
  OAI22X1 U1812 ( .A0(n831), .A1(n1595), .B0(n824), .B1(n1552), .Y(n1186) );
  OAI22X1 U1813 ( .A0(n899), .A1(n1595), .B0(n875), .B1(n1571), .Y(n1227) );
  OAI22X1 U1814 ( .A0(n885), .A1(n1540), .B0(n874), .B1(n1571), .Y(n1218) );
  OAI22X1 U1815 ( .A0(n848), .A1(n1595), .B0(n841), .B1(n1571), .Y(n1195) );
  OAI22X1 U1816 ( .A0(n792), .A1(n1595), .B0(n823), .B1(n1552), .Y(n1175) );
  OAI22X1 U1817 ( .A0(n916), .A1(n1595), .B0(n877), .B1(n1552), .Y(n1245) );
  OAI22X1 U1818 ( .A0(n865), .A1(n1595), .B0(n858), .B1(n1571), .Y(n1209) );
  OAI22X1 U1819 ( .A0(n815), .A1(n1595), .B0(n876), .B1(n1571), .Y(n1236) );
  AOI21X4 U1820 ( .A0(n1681), .A1(n430), .B0(N86), .Y(n1254) );
  OAI22X1 U1821 ( .A0(n417), .A1(n1254), .B0(cnt_rst[2]), .B1(n1252), .Y(N88)
         );
  OR3X2 U1822 ( .A(n431), .B(reset), .C(n430), .Y(n1252) );
  NOR2X2 U1823 ( .A(reset), .B(n1255), .Y(N87) );
  XNOR2X1 U1824 ( .A(n431), .B(n430), .Y(n1255) );
  OAI31X2 U1825 ( .A0(n1251), .A1(n430), .A2(cnt_rst[2]), .B0(n1681), .Y(N90)
         );
  NAND2X2 U1826 ( .A(n431), .B(cnt_rst[3]), .Y(n1251) );
endmodule

