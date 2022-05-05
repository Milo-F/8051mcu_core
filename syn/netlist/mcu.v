/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Thu May  5 14:30:26 2022
/////////////////////////////////////////////////////////////


module bin2gray_BIT_WIDTH5_0 ( bin_data, gray_data );
  input [4:0] bin_data;
  output [4:0] gray_data;
  wire   \bin_data[4] ;
  assign gray_data[4] = \bin_data[4] ;
  assign \bin_data[4]  = bin_data[4];

  CLKXOR2X2 U1 ( .A(bin_data[1]), .B(bin_data[0]), .Y(gray_data[0]) );
  CLKXOR2X2 U2 ( .A(bin_data[2]), .B(bin_data[1]), .Y(gray_data[1]) );
  CLKXOR2X2 U3 ( .A(bin_data[3]), .B(bin_data[2]), .Y(gray_data[2]) );
  CLKXOR2X2 U4 ( .A(\bin_data[4] ), .B(bin_data[3]), .Y(gray_data[3]) );
endmodule


module gray2bin_BIT_WIDTH5_0 ( gray_data, bin_data );
  input [4:0] gray_data;
  output [4:0] bin_data;
  wire   \gray_data[4] ;
  assign bin_data[4] = \gray_data[4] ;
  assign \gray_data[4]  = gray_data[4];

  CLKXOR2X2 U1 ( .A(bin_data[3]), .B(gray_data[2]), .Y(bin_data[2]) );
  CLKXOR2X2 U2 ( .A(\gray_data[4] ), .B(gray_data[3]), .Y(bin_data[3]) );
  CLKXOR2X2 U3 ( .A(bin_data[2]), .B(gray_data[1]), .Y(bin_data[1]) );
  CLKXOR2X2 U4 ( .A(gray_data[0]), .B(bin_data[1]), .Y(bin_data[0]) );
endmodule


module bin2gray_BIT_WIDTH5_1 ( bin_data, gray_data );
  input [4:0] bin_data;
  output [4:0] gray_data;
  wire   \bin_data[4] ;
  assign gray_data[4] = \bin_data[4] ;
  assign \bin_data[4]  = bin_data[4];

  CLKXOR2X2 U1 ( .A(bin_data[1]), .B(bin_data[0]), .Y(gray_data[0]) );
  CLKXOR2X2 U2 ( .A(bin_data[3]), .B(bin_data[2]), .Y(gray_data[2]) );
  CLKXOR2X2 U3 ( .A(bin_data[2]), .B(bin_data[1]), .Y(gray_data[1]) );
  CLKXOR2X2 U4 ( .A(\bin_data[4] ), .B(bin_data[3]), .Y(gray_data[3]) );
endmodule


module gray2bin_BIT_WIDTH5_1 ( gray_data, bin_data );
  input [4:0] gray_data;
  output [4:0] bin_data;
  wire   \gray_data[4] ;
  assign bin_data[4] = \gray_data[4] ;
  assign \gray_data[4]  = gray_data[4];

  CLKXOR2X2 U1 ( .A(\gray_data[4] ), .B(gray_data[3]), .Y(bin_data[3]) );
  CLKXOR2X2 U2 ( .A(bin_data[2]), .B(gray_data[1]), .Y(bin_data[1]) );
  CLKXOR2X2 U3 ( .A(bin_data[3]), .B(gray_data[2]), .Y(bin_data[2]) );
  CLKXOR2X2 U4 ( .A(gray_data[0]), .B(bin_data[1]), .Y(bin_data[0]) );
endmodule


module fifo_ram_DATA_WIDTH8_RAM_DEPTH16_ADDR_WIDTH4 ( w_clk, r_clk, rst_n, 
        r_en, r_addr, r_data, w_en, w_addr, w_data );
  input [3:0] r_addr;
  output [7:0] r_data;
  input [3:0] w_addr;
  input [7:0] w_data;
  input w_clk, r_clk, rst_n, r_en, w_en;
  wire   N11, N12, N13, N14, N18, N19, N20, N21, N22, N23, N24, N25, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n166, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966;
  assign N11 = r_addr[0];
  assign N12 = r_addr[1];
  assign N13 = r_addr[2];
  assign N14 = r_addr[3];

  AOI221X4 U33 ( .A0(n284), .A1(n934), .B0(n316), .B1(n937), .C0(n170), .Y(
        n157) );
  AOI221X4 U35 ( .A0(n283), .A1(n935), .B0(n315), .B1(n938), .C0(n171), .Y(
        n155) );
  AOI221X4 U43 ( .A0(n268), .A1(n934), .B0(n300), .B1(n937), .C0(n179), .Y(
        n173) );
  AOI221X4 U45 ( .A0(n267), .A1(n935), .B0(n299), .B1(n938), .C0(n180), .Y(
        n172) );
  AOI221X4 U53 ( .A0(n272), .A1(n934), .B0(n304), .B1(n937), .C0(n188), .Y(
        n182) );
  AOI221X4 U55 ( .A0(n271), .A1(n935), .B0(n303), .B1(n938), .C0(n189), .Y(
        n181) );
  AOI221X4 U63 ( .A0(n296), .A1(n934), .B0(n328), .B1(n937), .C0(n197), .Y(
        n191) );
  AOI221X4 U65 ( .A0(n295), .A1(n935), .B0(n327), .B1(n938), .C0(n198), .Y(
        n190) );
  AOI221X4 U73 ( .A0(n276), .A1(n934), .B0(n308), .B1(n937), .C0(n206), .Y(
        n200) );
  AOI221X4 U75 ( .A0(n275), .A1(n935), .B0(n307), .B1(n938), .C0(n207), .Y(
        n199) );
  AOI221X4 U83 ( .A0(n280), .A1(n933), .B0(n312), .B1(n936), .C0(n215), .Y(
        n209) );
  AOI221X4 U85 ( .A0(n279), .A1(n933), .B0(n311), .B1(n936), .C0(n216), .Y(
        n208) );
  AOI221X4 U93 ( .A0(n288), .A1(n933), .B0(n320), .B1(n936), .C0(n224), .Y(
        n218) );
  AOI221X4 U95 ( .A0(n287), .A1(n933), .B0(n319), .B1(n936), .C0(n225), .Y(
        n217) );
  AOI221X4 U106 ( .A0(n292), .A1(n933), .B0(n324), .B1(n936), .C0(n233), .Y(
        n227) );
  AOI221X4 U109 ( .A0(n291), .A1(n933), .B0(n323), .B1(n936), .C0(n234), .Y(
        n226) );
  EDFFTRX2 \r_data_out_reg[3]  ( .RN(n954), .D(N22), .E(r_en), .CK(n956), .Q(
        r_data[3]) );
  EDFFTRX2 \r_data_out_reg[7]  ( .RN(n954), .D(N18), .E(r_en), .CK(n956), .Q(
        r_data[7]) );
  EDFFTRX2 \r_data_out_reg[6]  ( .RN(n954), .D(N19), .E(r_en), .CK(n956), .Q(
        r_data[6]) );
  EDFFTRX2 \r_data_out_reg[0]  ( .RN(n954), .D(N25), .E(r_en), .CK(n956), .Q(
        r_data[0]) );
  EDFFTRX2 \r_data_out_reg[5]  ( .RN(n954), .D(N20), .E(r_en), .CK(n956), .Q(
        r_data[5]) );
  EDFFTRX2 \r_data_out_reg[4]  ( .RN(n954), .D(N21), .E(r_en), .CK(n956), .Q(
        r_data[4]) );
  EDFFTRX2 \r_data_out_reg[2]  ( .RN(n954), .D(N23), .E(r_en), .CK(n956), .Q(
        r_data[2]) );
  EDFFTRX2 \r_data_out_reg[1]  ( .RN(n954), .D(N24), .E(r_en), .CK(n956), .Q(
        r_data[1]) );
  EDFFX1 \mem_reg[13][5]  ( .D(n907), .E(n926), .CK(w_clk), .QN(n257) );
  EDFFX1 \mem_reg[13][3]  ( .D(n903), .E(n926), .CK(w_clk), .QN(n249) );
  EDFFX1 \mem_reg[13][2]  ( .D(n901), .E(n926), .CK(w_clk), .QN(n245) );
  EDFFX1 \mem_reg[13][0]  ( .D(n897), .E(n926), .CK(w_clk), .QN(n237) );
  EDFFX1 \mem_reg[12][5]  ( .D(n907), .E(n923), .CK(w_clk), .QN(n255) );
  EDFFX1 \mem_reg[12][3]  ( .D(n903), .E(n923), .CK(w_clk), .QN(n247) );
  EDFFX1 \mem_reg[12][2]  ( .D(n901), .E(n923), .CK(w_clk), .QN(n243) );
  EDFFX1 \mem_reg[12][0]  ( .D(n897), .E(n923), .CK(w_clk), .QN(n235) );
  EDFFX1 \mem_reg[9][5]  ( .D(n907), .E(n924), .CK(w_clk), .QN(n258) );
  EDFFX1 \mem_reg[9][3]  ( .D(n903), .E(n924), .CK(w_clk), .QN(n250) );
  EDFFX1 \mem_reg[9][2]  ( .D(n901), .E(n924), .CK(w_clk), .QN(n246) );
  EDFFX1 \mem_reg[9][0]  ( .D(n897), .E(n924), .CK(w_clk), .QN(n238) );
  EDFFX1 \mem_reg[8][5]  ( .D(n907), .E(n927), .CK(w_clk), .QN(n256) );
  EDFFX1 \mem_reg[8][3]  ( .D(n903), .E(n927), .CK(w_clk), .QN(n248) );
  EDFFX1 \mem_reg[8][2]  ( .D(n901), .E(n927), .CK(w_clk), .QN(n244) );
  EDFFX1 \mem_reg[8][0]  ( .D(n897), .E(n927), .CK(w_clk), .QN(n236) );
  EDFFX1 \mem_reg[7][5]  ( .D(n907), .E(n929), .CK(w_clk), .QN(n313) );
  EDFFX1 \mem_reg[7][3]  ( .D(n903), .E(n929), .CK(w_clk), .QN(n329) );
  EDFFX1 \mem_reg[7][2]  ( .D(n901), .E(n929), .CK(w_clk), .QN(n305) );
  EDFFX1 \mem_reg[7][0]  ( .D(n897), .E(n929), .CK(w_clk), .QN(n317) );
  EDFFX1 \mem_reg[6][5]  ( .D(n907), .E(n921), .CK(w_clk), .QN(n281) );
  EDFFX1 \mem_reg[6][3]  ( .D(n903), .E(n921), .CK(w_clk), .QN(n297) );
  EDFFX1 \mem_reg[6][2]  ( .D(n901), .E(n921), .CK(w_clk), .QN(n273) );
  EDFFX1 \mem_reg[6][0]  ( .D(n897), .E(n921), .CK(w_clk), .QN(n285) );
  EDFFX1 \mem_reg[3][5]  ( .D(n907), .E(n922), .CK(w_clk), .QN(n314) );
  EDFFX1 \mem_reg[3][3]  ( .D(n903), .E(n922), .CK(w_clk), .QN(n330) );
  EDFFX1 \mem_reg[3][2]  ( .D(n901), .E(n922), .CK(w_clk), .QN(n306) );
  EDFFX1 \mem_reg[3][0]  ( .D(n897), .E(n922), .CK(w_clk), .QN(n318) );
  EDFFX1 \mem_reg[2][5]  ( .D(n907), .E(n928), .CK(w_clk), .QN(n282) );
  EDFFX1 \mem_reg[2][3]  ( .D(n903), .E(n928), .CK(w_clk), .QN(n298) );
  EDFFX1 \mem_reg[2][2]  ( .D(n901), .E(n928), .CK(w_clk), .QN(n274) );
  EDFFX1 \mem_reg[2][0]  ( .D(n897), .E(n928), .CK(w_clk), .QN(n286) );
  EDFFX1 \mem_reg[13][7]  ( .D(n911), .E(n926), .CK(w_clk), .QN(n265) );
  EDFFX1 \mem_reg[13][6]  ( .D(n909), .E(n926), .CK(w_clk), .QN(n261) );
  EDFFX1 \mem_reg[13][1]  ( .D(n899), .E(n926), .CK(w_clk), .QN(n241) );
  EDFFX1 \mem_reg[12][7]  ( .D(n911), .E(n923), .CK(w_clk), .QN(n263) );
  EDFFX1 \mem_reg[12][6]  ( .D(n909), .E(n923), .CK(w_clk), .QN(n259) );
  EDFFX1 \mem_reg[12][1]  ( .D(n899), .E(n923), .CK(w_clk), .QN(n239) );
  EDFFX1 \mem_reg[9][7]  ( .D(n911), .E(n924), .CK(w_clk), .QN(n266) );
  EDFFX1 \mem_reg[9][6]  ( .D(n909), .E(n924), .CK(w_clk), .QN(n262) );
  EDFFX1 \mem_reg[9][1]  ( .D(n899), .E(n924), .CK(w_clk), .QN(n242) );
  EDFFX1 \mem_reg[8][7]  ( .D(n911), .E(n927), .CK(w_clk), .QN(n264) );
  EDFFX1 \mem_reg[8][6]  ( .D(n909), .E(n927), .CK(w_clk), .QN(n260) );
  EDFFX1 \mem_reg[8][1]  ( .D(n899), .E(n927), .CK(w_clk), .QN(n240) );
  EDFFX1 \mem_reg[7][7]  ( .D(n911), .E(n929), .CK(w_clk), .QN(n325) );
  EDFFX1 \mem_reg[7][6]  ( .D(n909), .E(n929), .CK(w_clk), .QN(n321) );
  EDFFX1 \mem_reg[7][1]  ( .D(n899), .E(n929), .CK(w_clk), .QN(n301) );
  EDFFX1 \mem_reg[6][7]  ( .D(n911), .E(n921), .CK(w_clk), .QN(n293) );
  EDFFX1 \mem_reg[6][6]  ( .D(n909), .E(n921), .CK(w_clk), .QN(n289) );
  EDFFX1 \mem_reg[6][1]  ( .D(n899), .E(n921), .CK(w_clk), .QN(n269) );
  EDFFX1 \mem_reg[3][7]  ( .D(n911), .E(n922), .CK(w_clk), .QN(n326) );
  EDFFX1 \mem_reg[3][6]  ( .D(n909), .E(n922), .CK(w_clk), .QN(n322) );
  EDFFX1 \mem_reg[3][1]  ( .D(n899), .E(n922), .CK(w_clk), .QN(n302) );
  EDFFX1 \mem_reg[2][7]  ( .D(n911), .E(n928), .CK(w_clk), .QN(n294) );
  EDFFX1 \mem_reg[2][6]  ( .D(n909), .E(n928), .CK(w_clk), .QN(n290) );
  EDFFX1 \mem_reg[2][1]  ( .D(n899), .E(n928), .CK(w_clk), .QN(n270) );
  EDFFX1 \mem_reg[13][4]  ( .D(n905), .E(n926), .CK(w_clk), .QN(n253) );
  EDFFX1 \mem_reg[12][4]  ( .D(n905), .E(n923), .CK(w_clk), .QN(n251) );
  EDFFX1 \mem_reg[9][4]  ( .D(n905), .E(n924), .CK(w_clk), .QN(n254) );
  EDFFX1 \mem_reg[8][4]  ( .D(n905), .E(n927), .CK(w_clk), .QN(n252) );
  EDFFX1 \mem_reg[7][4]  ( .D(n905), .E(n929), .CK(w_clk), .QN(n309) );
  EDFFX1 \mem_reg[6][4]  ( .D(n905), .E(n921), .CK(w_clk), .QN(n277) );
  EDFFX1 \mem_reg[3][4]  ( .D(n905), .E(n922), .CK(w_clk), .QN(n310) );
  EDFFX1 \mem_reg[2][4]  ( .D(n905), .E(n928), .CK(w_clk), .QN(n278) );
  EDFFX1 \mem_reg[15][5]  ( .D(n906), .E(n917), .CK(w_clk), .Q(n311) );
  EDFFX1 \mem_reg[15][3]  ( .D(n902), .E(n917), .CK(w_clk), .Q(n327) );
  EDFFX1 \mem_reg[15][2]  ( .D(n900), .E(n917), .CK(w_clk), .Q(n303) );
  EDFFX1 \mem_reg[15][0]  ( .D(n896), .E(n917), .CK(w_clk), .Q(n315) );
  EDFFX1 \mem_reg[14][5]  ( .D(n906), .E(n915), .CK(w_clk), .Q(n279) );
  EDFFX1 \mem_reg[14][3]  ( .D(n902), .E(n915), .CK(w_clk), .Q(n295) );
  EDFFX1 \mem_reg[14][2]  ( .D(n900), .E(n915), .CK(w_clk), .Q(n271) );
  EDFFX1 \mem_reg[14][0]  ( .D(n896), .E(n915), .CK(w_clk), .Q(n283) );
  EDFFX1 \mem_reg[11][5]  ( .D(n906), .E(n914), .CK(w_clk), .Q(n312) );
  EDFFX1 \mem_reg[11][3]  ( .D(n902), .E(n914), .CK(w_clk), .Q(n328) );
  EDFFX1 \mem_reg[11][2]  ( .D(n900), .E(n914), .CK(w_clk), .Q(n304) );
  EDFFX1 \mem_reg[11][0]  ( .D(n896), .E(n914), .CK(w_clk), .Q(n316) );
  EDFFX1 \mem_reg[10][5]  ( .D(n906), .E(n918), .CK(w_clk), .Q(n280) );
  EDFFX1 \mem_reg[10][3]  ( .D(n902), .E(n918), .CK(w_clk), .Q(n296) );
  EDFFX1 \mem_reg[10][2]  ( .D(n900), .E(n918), .CK(w_clk), .Q(n272) );
  EDFFX1 \mem_reg[10][0]  ( .D(n896), .E(n918), .CK(w_clk), .Q(n284) );
  EDFFX1 \mem_reg[5][5]  ( .D(n906), .E(n919), .CK(w_clk), .Q(n344) );
  EDFFX1 \mem_reg[5][3]  ( .D(n902), .E(n919), .CK(w_clk), .Q(n360) );
  EDFFX1 \mem_reg[5][2]  ( .D(n900), .E(n919), .CK(w_clk), .Q(n336) );
  EDFFX1 \mem_reg[5][0]  ( .D(n896), .E(n919), .CK(w_clk), .Q(n348) );
  EDFFX1 \mem_reg[4][5]  ( .D(n906), .E(n912), .CK(w_clk), .Q(n346) );
  EDFFX1 \mem_reg[4][3]  ( .D(n902), .E(n912), .CK(w_clk), .Q(n362) );
  EDFFX1 \mem_reg[4][2]  ( .D(n900), .E(n912), .CK(w_clk), .Q(n338) );
  EDFFX1 \mem_reg[4][0]  ( .D(n896), .E(n912), .CK(w_clk), .Q(n350) );
  EDFFX1 \mem_reg[1][5]  ( .D(n906), .E(n913), .CK(w_clk), .Q(n343) );
  EDFFX1 \mem_reg[1][3]  ( .D(n902), .E(n913), .CK(w_clk), .Q(n359) );
  EDFFX1 \mem_reg[1][2]  ( .D(n900), .E(n913), .CK(w_clk), .Q(n335) );
  EDFFX1 \mem_reg[1][0]  ( .D(n896), .E(n913), .CK(w_clk), .Q(n347) );
  EDFFX1 \mem_reg[0][5]  ( .D(n906), .E(n916), .CK(w_clk), .Q(n345) );
  EDFFX1 \mem_reg[0][3]  ( .D(n902), .E(n916), .CK(w_clk), .Q(n361) );
  EDFFX1 \mem_reg[0][2]  ( .D(n900), .E(n916), .CK(w_clk), .Q(n337) );
  EDFFX1 \mem_reg[0][0]  ( .D(n896), .E(n916), .CK(w_clk), .Q(n349) );
  EDFFX1 \mem_reg[15][7]  ( .D(n910), .E(n917), .CK(w_clk), .Q(n323) );
  EDFFX1 \mem_reg[15][6]  ( .D(n908), .E(n917), .CK(w_clk), .Q(n319) );
  EDFFX1 \mem_reg[15][1]  ( .D(n898), .E(n917), .CK(w_clk), .Q(n299) );
  EDFFX1 \mem_reg[14][7]  ( .D(n910), .E(n915), .CK(w_clk), .Q(n291) );
  EDFFX1 \mem_reg[14][6]  ( .D(n908), .E(n915), .CK(w_clk), .Q(n287) );
  EDFFX1 \mem_reg[14][1]  ( .D(n898), .E(n915), .CK(w_clk), .Q(n267) );
  EDFFX1 \mem_reg[11][7]  ( .D(n910), .E(n914), .CK(w_clk), .Q(n324) );
  EDFFX1 \mem_reg[11][6]  ( .D(n908), .E(n914), .CK(w_clk), .Q(n320) );
  EDFFX1 \mem_reg[11][1]  ( .D(n898), .E(n914), .CK(w_clk), .Q(n300) );
  EDFFX1 \mem_reg[10][7]  ( .D(n910), .E(n918), .CK(w_clk), .Q(n292) );
  EDFFX1 \mem_reg[10][6]  ( .D(n908), .E(n918), .CK(w_clk), .Q(n288) );
  EDFFX1 \mem_reg[10][1]  ( .D(n898), .E(n918), .CK(w_clk), .Q(n268) );
  EDFFX1 \mem_reg[5][7]  ( .D(n910), .E(n919), .CK(w_clk), .Q(n356) );
  EDFFX1 \mem_reg[5][6]  ( .D(n908), .E(n919), .CK(w_clk), .Q(n352) );
  EDFFX1 \mem_reg[5][1]  ( .D(n898), .E(n919), .CK(w_clk), .Q(n332) );
  EDFFX1 \mem_reg[4][7]  ( .D(n910), .E(n912), .CK(w_clk), .Q(n358) );
  EDFFX1 \mem_reg[4][6]  ( .D(n908), .E(n912), .CK(w_clk), .Q(n354) );
  EDFFX1 \mem_reg[4][1]  ( .D(n898), .E(n912), .CK(w_clk), .Q(n334) );
  EDFFX1 \mem_reg[1][7]  ( .D(n910), .E(n913), .CK(w_clk), .Q(n355) );
  EDFFX1 \mem_reg[1][6]  ( .D(n908), .E(n913), .CK(w_clk), .Q(n351) );
  EDFFX1 \mem_reg[1][1]  ( .D(n898), .E(n913), .CK(w_clk), .Q(n331) );
  EDFFX1 \mem_reg[0][7]  ( .D(n910), .E(n916), .CK(w_clk), .Q(n357) );
  EDFFX1 \mem_reg[0][6]  ( .D(n908), .E(n916), .CK(w_clk), .Q(n353) );
  EDFFX1 \mem_reg[0][1]  ( .D(n898), .E(n916), .CK(w_clk), .Q(n333) );
  EDFFX1 \mem_reg[15][4]  ( .D(n904), .E(n917), .CK(w_clk), .Q(n307) );
  EDFFX1 \mem_reg[14][4]  ( .D(n904), .E(n915), .CK(w_clk), .Q(n275) );
  EDFFX1 \mem_reg[11][4]  ( .D(n904), .E(n914), .CK(w_clk), .Q(n308) );
  EDFFX1 \mem_reg[10][4]  ( .D(n904), .E(n918), .CK(w_clk), .Q(n276) );
  EDFFX1 \mem_reg[5][4]  ( .D(n904), .E(n919), .CK(w_clk), .Q(n340) );
  EDFFX1 \mem_reg[4][4]  ( .D(n904), .E(n912), .CK(w_clk), .Q(n342) );
  EDFFX1 \mem_reg[1][4]  ( .D(n904), .E(n913), .CK(w_clk), .Q(n339) );
  EDFFX1 \mem_reg[0][4]  ( .D(n904), .E(n916), .CK(w_clk), .Q(n341) );
  BUFX8 U3 ( .A(w_data[4]), .Y(n905) );
  BUFX8 U4 ( .A(w_data[1]), .Y(n899) );
  BUFX8 U5 ( .A(w_data[6]), .Y(n909) );
  BUFX8 U6 ( .A(w_data[7]), .Y(n911) );
  BUFX8 U7 ( .A(w_data[0]), .Y(n897) );
  BUFX8 U8 ( .A(w_data[2]), .Y(n901) );
  BUFX8 U9 ( .A(w_data[3]), .Y(n903) );
  BUFX8 U10 ( .A(w_data[5]), .Y(n907) );
  CLKAND2X4 U11 ( .A(N11), .B(N12), .Y(n892) );
  CLKAND2X4 U12 ( .A(N12), .B(n959), .Y(n893) );
  OR2X4 U13 ( .A(N12), .B(N11), .Y(n894) );
  OR2X4 U14 ( .A(n959), .B(N12), .Y(n895) );
  BUFX8 U15 ( .A(w_data[0]), .Y(n896) );
  BUFX8 U16 ( .A(w_data[1]), .Y(n898) );
  BUFX8 U17 ( .A(w_data[2]), .Y(n900) );
  BUFX8 U18 ( .A(w_data[3]), .Y(n902) );
  BUFX8 U19 ( .A(w_data[4]), .Y(n904) );
  BUFX8 U20 ( .A(w_data[5]), .Y(n906) );
  BUFX8 U21 ( .A(w_data[6]), .Y(n908) );
  BUFX8 U22 ( .A(w_data[7]), .Y(n910) );
  CLKNAND2X4 U23 ( .A(w_addr[1]), .B(n966), .Y(n151) );
  OR2X2 U24 ( .A(n962), .B(N14), .Y(n162) );
  CLKNAND2X4 U25 ( .A(n965), .B(n966), .Y(n149) );
  NAND3X4 U26 ( .A(w_addr[0]), .B(n964), .C(n955), .Y(n147) );
  NAND3X4 U27 ( .A(n963), .B(n964), .C(n955), .Y(n152) );
  INVX4 U28 ( .A(w_addr[3]), .Y(n964) );
  CLKNAND2X4 U29 ( .A(w_addr[1]), .B(w_addr[2]), .Y(n150) );
  CLKNAND2X4 U30 ( .A(w_addr[2]), .B(n965), .Y(n148) );
  OR2X2 U31 ( .A(N14), .B(N13), .Y(n160) );
  OR2X2 U32 ( .A(n148), .B(n152), .Y(n369) );
  INVX8 U34 ( .A(n369), .Y(n912) );
  OR2X2 U36 ( .A(n147), .B(n149), .Y(n364) );
  INVX8 U37 ( .A(n364), .Y(n913) );
  OR2X2 U38 ( .A(n151), .B(n154), .Y(n376) );
  INVX8 U39 ( .A(n376), .Y(n914) );
  NAND3X4 U40 ( .A(n955), .B(w_addr[0]), .C(w_addr[3]), .Y(n154) );
  OR2X2 U41 ( .A(n150), .B(n153), .Y(n374) );
  INVX8 U42 ( .A(n374), .Y(n915) );
  NAND3X4 U44 ( .A(n963), .B(n955), .C(w_addr[3]), .Y(n153) );
  OR2X2 U46 ( .A(n149), .B(n152), .Y(n367) );
  INVX8 U47 ( .A(n367), .Y(n916) );
  OR2X2 U48 ( .A(n150), .B(n154), .Y(n375) );
  INVX8 U49 ( .A(n375), .Y(n917) );
  OR2X2 U50 ( .A(n151), .B(n153), .Y(n371) );
  INVX8 U51 ( .A(n371), .Y(n918) );
  OR2X2 U52 ( .A(n147), .B(n148), .Y(n363) );
  INVX8 U54 ( .A(n363), .Y(n919) );
  CLKINVX8 U56 ( .A(n162), .Y(n920) );
  INVX4 U57 ( .A(N13), .Y(n962) );
  OR2X2 U58 ( .A(n150), .B(n152), .Y(n368) );
  INVX8 U59 ( .A(n368), .Y(n921) );
  OR2X2 U60 ( .A(n147), .B(n151), .Y(n366) );
  INVX8 U61 ( .A(n366), .Y(n922) );
  OR2X2 U62 ( .A(n148), .B(n153), .Y(n372) );
  INVX8 U64 ( .A(n372), .Y(n923) );
  OR2X2 U66 ( .A(n149), .B(n154), .Y(n378) );
  INVX8 U67 ( .A(n378), .Y(n924) );
  CLKINVX8 U68 ( .A(n160), .Y(n925) );
  OR2X2 U69 ( .A(n148), .B(n154), .Y(n377) );
  INVX8 U70 ( .A(n377), .Y(n926) );
  OR2X2 U71 ( .A(n149), .B(n153), .Y(n373) );
  INVX8 U72 ( .A(n373), .Y(n927) );
  OR2X2 U74 ( .A(n151), .B(n152), .Y(n370) );
  INVX8 U76 ( .A(n370), .Y(n928) );
  OR2X2 U77 ( .A(n147), .B(n150), .Y(n365) );
  INVX8 U78 ( .A(n365), .Y(n929) );
  INVX5 U79 ( .A(n894), .Y(n951) );
  INVX5 U80 ( .A(n895), .Y(n948) );
  INVX5 U81 ( .A(n893), .Y(n942) );
  INVX5 U82 ( .A(n892), .Y(n945) );
  BUFX8 U84 ( .A(rst_n), .Y(n954) );
  BUFX5 U86 ( .A(w_en), .Y(n955) );
  BUFX16 U87 ( .A(r_clk), .Y(n956) );
  CLKBUFX6 U88 ( .A(n961), .Y(n939) );
  BUFX8 U89 ( .A(n960), .Y(n936) );
  CLKBUFX6 U90 ( .A(n958), .Y(n933) );
  CLKBUFX6 U91 ( .A(n957), .Y(n930) );
  BUFX5 U92 ( .A(n961), .Y(n941) );
  BUFX5 U94 ( .A(n961), .Y(n940) );
  CLKBUFX6 U96 ( .A(n960), .Y(n938) );
  CLKBUFX6 U97 ( .A(n960), .Y(n937) );
  BUFX5 U98 ( .A(n958), .Y(n935) );
  BUFX5 U99 ( .A(n958), .Y(n934) );
  BUFX5 U100 ( .A(n957), .Y(n932) );
  BUFX5 U101 ( .A(n957), .Y(n931) );
  INVX4 U102 ( .A(n942), .Y(n958) );
  INVX4 U103 ( .A(n948), .Y(n957) );
  INVX4 U104 ( .A(n951), .Y(n961) );
  INVX4 U105 ( .A(n945), .Y(n960) );
  INVX6 U107 ( .A(n895), .Y(n949) );
  INVX6 U108 ( .A(n895), .Y(n950) );
  INVX6 U110 ( .A(n894), .Y(n952) );
  INVX6 U111 ( .A(n894), .Y(n953) );
  INVX6 U112 ( .A(n892), .Y(n946) );
  INVX6 U113 ( .A(n892), .Y(n947) );
  INVX6 U114 ( .A(n893), .Y(n943) );
  INVX6 U115 ( .A(n893), .Y(n944) );
  CLKINVX2 U116 ( .A(w_addr[2]), .Y(n966) );
  CLKINVX2 U117 ( .A(w_addr[1]), .Y(n965) );
  CLKINVX2 U118 ( .A(w_addr[0]), .Y(n963) );
  CLKNAND2X8 U119 ( .A(N14), .B(n962), .Y(n158) );
  CLKNAND2X8 U120 ( .A(N14), .B(N13), .Y(n156) );
  OAI221X2 U121 ( .A0(n172), .A1(n156), .B0(n173), .B1(n158), .C0(n174), .Y(
        N24) );
  AOI22X1 U122 ( .A0(n925), .A1(n175), .B0(n920), .B1(n176), .Y(n174) );
  OAI221X2 U123 ( .A0(n181), .A1(n156), .B0(n182), .B1(n158), .C0(n183), .Y(
        N23) );
  AOI22X1 U124 ( .A0(n925), .A1(n184), .B0(n920), .B1(n185), .Y(n183) );
  OAI221X2 U125 ( .A0(n199), .A1(n156), .B0(n200), .B1(n158), .C0(n201), .Y(
        N21) );
  AOI22X1 U126 ( .A0(n925), .A1(n202), .B0(n920), .B1(n203), .Y(n201) );
  OAI221X2 U127 ( .A0(n208), .A1(n156), .B0(n209), .B1(n158), .C0(n210), .Y(
        N20) );
  AOI22X1 U128 ( .A0(n925), .A1(n211), .B0(n920), .B1(n212), .Y(n210) );
  OAI221X2 U129 ( .A0(n155), .A1(n156), .B0(n157), .B1(n158), .C0(n159), .Y(
        N25) );
  AOI22X1 U130 ( .A0(n925), .A1(n161), .B0(n920), .B1(n163), .Y(n159) );
  OAI221X2 U131 ( .A0(n217), .A1(n156), .B0(n218), .B1(n158), .C0(n219), .Y(
        N19) );
  AOI22X1 U132 ( .A0(n925), .A1(n220), .B0(n920), .B1(n221), .Y(n219) );
  OAI221X2 U133 ( .A0(n226), .A1(n156), .B0(n227), .B1(n158), .C0(n228), .Y(
        N18) );
  AOI22X1 U134 ( .A0(n925), .A1(n229), .B0(n920), .B1(n230), .Y(n228) );
  OAI221X2 U135 ( .A0(n190), .A1(n156), .B0(n191), .B1(n158), .C0(n192), .Y(
        N22) );
  AOI22X1 U136 ( .A0(n925), .A1(n193), .B0(n920), .B1(n194), .Y(n192) );
  OAI221X2 U137 ( .A0(n269), .A1(n943), .B0(n301), .B1(n946), .C0(n177), .Y(
        n176) );
  AOI22X2 U138 ( .A0(n334), .A1(n952), .B0(n332), .B1(n949), .Y(n177) );
  OAI221X2 U139 ( .A0(n273), .A1(n943), .B0(n305), .B1(n946), .C0(n186), .Y(
        n185) );
  AOI22X2 U140 ( .A0(n338), .A1(n952), .B0(n336), .B1(n949), .Y(n186) );
  OAI221X2 U141 ( .A0(n277), .A1(n943), .B0(n309), .B1(n946), .C0(n204), .Y(
        n203) );
  AOI22X2 U142 ( .A0(n342), .A1(n952), .B0(n340), .B1(n949), .Y(n204) );
  OAI221X2 U143 ( .A0(n281), .A1(n943), .B0(n313), .B1(n946), .C0(n213), .Y(
        n212) );
  AOI22X2 U144 ( .A0(n346), .A1(n952), .B0(n344), .B1(n949), .Y(n213) );
  OAI221X2 U145 ( .A0(n285), .A1(n943), .B0(n317), .B1(n946), .C0(n166), .Y(
        n163) );
  AOI22X2 U146 ( .A0(n350), .A1(n952), .B0(n348), .B1(n949), .Y(n166) );
  OAI221X2 U147 ( .A0(n297), .A1(n943), .B0(n329), .B1(n946), .C0(n195), .Y(
        n194) );
  AOI22X2 U148 ( .A0(n362), .A1(n952), .B0(n360), .B1(n949), .Y(n195) );
  OAI221X2 U149 ( .A0(n289), .A1(n942), .B0(n321), .B1(n945), .C0(n222), .Y(
        n221) );
  AOI22X2 U150 ( .A0(n354), .A1(n951), .B0(n352), .B1(n948), .Y(n222) );
  OAI221X2 U151 ( .A0(n293), .A1(n942), .B0(n325), .B1(n945), .C0(n231), .Y(
        n230) );
  AOI22X2 U152 ( .A0(n358), .A1(n951), .B0(n356), .B1(n948), .Y(n231) );
  OAI221X2 U153 ( .A0(n270), .A1(n944), .B0(n302), .B1(n947), .C0(n178), .Y(
        n175) );
  AOI22X2 U154 ( .A0(n333), .A1(n953), .B0(n331), .B1(n950), .Y(n178) );
  OAI221X2 U155 ( .A0(n274), .A1(n944), .B0(n306), .B1(n947), .C0(n187), .Y(
        n184) );
  AOI22X2 U156 ( .A0(n337), .A1(n953), .B0(n335), .B1(n950), .Y(n187) );
  OAI221X2 U157 ( .A0(n278), .A1(n944), .B0(n310), .B1(n947), .C0(n205), .Y(
        n202) );
  AOI22X2 U158 ( .A0(n341), .A1(n953), .B0(n339), .B1(n950), .Y(n205) );
  OAI221X2 U159 ( .A0(n282), .A1(n944), .B0(n314), .B1(n947), .C0(n214), .Y(
        n211) );
  AOI22X2 U160 ( .A0(n345), .A1(n953), .B0(n343), .B1(n950), .Y(n214) );
  OAI221X2 U161 ( .A0(n286), .A1(n944), .B0(n318), .B1(n947), .C0(n169), .Y(
        n161) );
  AOI22X2 U162 ( .A0(n349), .A1(n953), .B0(n347), .B1(n950), .Y(n169) );
  OAI221X2 U163 ( .A0(n298), .A1(n944), .B0(n330), .B1(n947), .C0(n196), .Y(
        n193) );
  AOI22X2 U164 ( .A0(n361), .A1(n953), .B0(n359), .B1(n950), .Y(n196) );
  OAI221X2 U165 ( .A0(n290), .A1(n942), .B0(n322), .B1(n945), .C0(n223), .Y(
        n220) );
  AOI22X2 U166 ( .A0(n353), .A1(n951), .B0(n351), .B1(n948), .Y(n223) );
  OAI221X2 U167 ( .A0(n294), .A1(n942), .B0(n326), .B1(n945), .C0(n232), .Y(
        n229) );
  AOI22X2 U168 ( .A0(n357), .A1(n951), .B0(n355), .B1(n948), .Y(n232) );
  OAI22X2 U169 ( .A0(n241), .A1(n932), .B0(n239), .B1(n941), .Y(n180) );
  OAI22X2 U170 ( .A0(n242), .A1(n931), .B0(n240), .B1(n940), .Y(n179) );
  OAI22X2 U171 ( .A0(n245), .A1(n932), .B0(n243), .B1(n941), .Y(n189) );
  OAI22X2 U172 ( .A0(n246), .A1(n931), .B0(n244), .B1(n940), .Y(n188) );
  OAI22X2 U173 ( .A0(n253), .A1(n932), .B0(n251), .B1(n941), .Y(n207) );
  OAI22X2 U174 ( .A0(n254), .A1(n931), .B0(n252), .B1(n940), .Y(n206) );
  OAI22X2 U175 ( .A0(n257), .A1(n930), .B0(n255), .B1(n939), .Y(n216) );
  OAI22X2 U176 ( .A0(n258), .A1(n930), .B0(n256), .B1(n939), .Y(n215) );
  OAI22X2 U177 ( .A0(n237), .A1(n932), .B0(n235), .B1(n941), .Y(n171) );
  OAI22X2 U178 ( .A0(n238), .A1(n931), .B0(n236), .B1(n940), .Y(n170) );
  OAI22X2 U179 ( .A0(n261), .A1(n930), .B0(n259), .B1(n939), .Y(n225) );
  OAI22X2 U180 ( .A0(n262), .A1(n930), .B0(n260), .B1(n939), .Y(n224) );
  OAI22X2 U181 ( .A0(n265), .A1(n930), .B0(n263), .B1(n939), .Y(n234) );
  OAI22X2 U182 ( .A0(n266), .A1(n930), .B0(n264), .B1(n939), .Y(n233) );
  OAI22X2 U183 ( .A0(n249), .A1(n932), .B0(n247), .B1(n941), .Y(n198) );
  OAI22X2 U184 ( .A0(n250), .A1(n931), .B0(n248), .B1(n940), .Y(n197) );
  INVX2 U185 ( .A(N11), .Y(n959) );
endmodule


module UartFiFo_FIFO_WIDTH8_FIFO_DEPTH16_ADDR_WIDTH4 ( w_clk, w_rst_n, 
        w_pt_reset, w_en, w_data, r_clk, r_rst_n, r_pt_reset, r_en, r_data, 
        is_empty, is_full );
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_rst_n, w_pt_reset, w_en, r_clk, r_rst_n, r_pt_reset, r_en;
  output is_empty, is_full;
  wire   \w_pt[4] , N33, N34, N35, N74, N75, N76, N116, n43, n44, n45, n46,
         n47, \add_129/carry[4] , \add_129/carry[3] , \add_129/carry[2] ,
         \add_58/carry[4] , \add_58/carry[3] , \add_58/carry[2] , n1, n2, n4,
         n18, n91, n95, n96, n97, n101, n297, n98, n328, n347, n348, n388, n70,
         n71, n72, n73, n74, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n504, n505, n506, n507;
  wire   [7:0] r_data_nxt;
  wire   [4:0] w_pt_gray_nxt;
  wire   [4:0] w_pt_gray;
  wire   [4:0] w_pt_syn2;
  wire   [4:0] w_pt_syn1;
  wire   [4:0] w_pt_rdomain_nxt;
  wire   [4:0] w_pt_rdomain;
  wire   [4:0] r_pt;
  wire   [4:0] r_pt_gray_nxt;
  wire   [4:0] r_pt_gray;
  wire   [4:0] r_pt_syn2;
  wire   [4:0] r_pt_syn1;
  wire   [4:0] r_pt_wdomain_nxt;

  DFFHQX8 \r_pt_reg[0]  ( .D(n47), .CK(n494), .Q(r_pt[0]) );
  DFFHQX8 \r_pt_reg[2]  ( .D(n45), .CK(n494), .Q(r_pt[2]) );
  DFFHQX8 \r_pt_reg[4]  ( .D(n43), .CK(n494), .Q(r_pt[4]) );
  OAI32X4 U7 ( .A0(n502), .A1(r_pt[4]), .A2(n73), .B0(n74), .B1(n507), .Y(n43)
         );
  NAND3BX4 U10 ( .AN(r_en), .B(n488), .C(n481), .Y(n72) );
  AO2B2X4 U11 ( .B0(N34), .B1(n505), .A0(n474), .A1N(n471), .Y(n4) );
  AOI32X4 U13 ( .A0(\add_58/carry[4] ), .A1(n506), .A2(n505), .B0(n76), .B1(
        \w_pt[4] ), .Y(n71) );
  AO2B2X4 U15 ( .B0(N33), .B1(n505), .A0(n472), .A1N(n471), .Y(n2) );
  OAI2BB2X4 U16 ( .B0(n348), .B1(n471), .A0N(n348), .A1N(n505), .Y(n18) );
  AO2B2X4 U17 ( .B0(N35), .B1(n505), .A0(n476), .A1N(n471), .Y(n1) );
  OAI31X4 U27 ( .A0(n84), .A1(n85), .A2(n86), .B0(n481), .Y(N116) );
  bin2gray_BIT_WIDTH5_0 bin2gray_ins_w ( .bin_data({n504, n1, n4, n2, n18}), 
        .gray_data(w_pt_gray_nxt) );
  gray2bin_BIT_WIDTH5_0 gray2bin_ins_w ( .gray_data(w_pt_syn2), .bin_data(
        w_pt_rdomain_nxt) );
  bin2gray_BIT_WIDTH5_1 bin2gray_ins_r ( .bin_data({r_pt[4], n478, r_pt[2], 
        n480, r_pt[0]}), .gray_data(r_pt_gray_nxt) );
  gray2bin_BIT_WIDTH5_1 gray2bin_ins_r ( .gray_data(r_pt_syn2), .bin_data(
        r_pt_wdomain_nxt) );
  fifo_ram_DATA_WIDTH8_RAM_DEPTH16_ADDR_WIDTH4 fifo_ram_ins ( .w_clk(w_clk), 
        .r_clk(n494), .rst_n(n481), .r_en(n479), .r_addr({n478, r_pt[2], n480, 
        r_pt[0]}), .r_data(r_data_nxt), .w_en(n493), .w_addr({n476, n474, n472, 
        n297}), .w_data(w_data) );
  DFFTRX2 \w_pt_rdomain_reg[1]  ( .D(w_pt_rdomain_nxt[1]), .RN(n481), .CK(n494), .QN(n95) );
  DFFTRX2 \w_pt_rdomain_reg[2]  ( .D(w_pt_rdomain_nxt[2]), .RN(n484), .CK(n498), .QN(n96) );
  DFFTRX2 \w_pt_rdomain_reg[4]  ( .D(w_pt_rdomain_nxt[4]), .RN(n484), .CK(n498), .QN(n97) );
  DFFTRX2 \w_pt_rdomain_reg[0]  ( .D(w_pt_rdomain_nxt[0]), .RN(n484), .CK(n497), .Q(w_pt_rdomain[0]) );
  DFFTRX2 \w_pt_syn2_reg[0]  ( .D(w_pt_syn1[0]), .RN(n484), .CK(n497), .Q(
        w_pt_syn2[0]) );
  DFFTRX2 \w_pt_rdomain_reg[3]  ( .D(w_pt_rdomain_nxt[3]), .RN(n484), .CK(n498), .Q(w_pt_rdomain[3]) );
  DFFTRX2 \w_pt_syn2_reg[3]  ( .D(w_pt_syn1[3]), .RN(n484), .CK(n497), .Q(
        w_pt_syn2[3]) );
  DFFTRX2 \w_pt_syn2_reg[1]  ( .D(w_pt_syn1[1]), .RN(n484), .CK(n497), .Q(
        w_pt_syn2[1]) );
  DFFTRX2 \w_pt_syn2_reg[2]  ( .D(w_pt_syn1[2]), .RN(n484), .CK(n497), .Q(
        w_pt_syn2[2]) );
  ADDHX2 U70 ( .A(r_pt[2]), .B(\add_129/carry[2] ), .CO(\add_129/carry[3] ), 
        .S(N75) );
  ADDHX2 U71 ( .A(r_pt[1]), .B(r_pt[0]), .CO(\add_129/carry[2] ), .S(N74) );
  ADDHX2 U72 ( .A(r_pt[3]), .B(\add_129/carry[3] ), .CO(\add_129/carry[4] ), 
        .S(N76) );
  ADDHX2 U58 ( .A(n472), .B(n297), .CO(\add_58/carry[2] ), .S(N33) );
  ADDHX2 U57 ( .A(n474), .B(\add_58/carry[2] ), .CO(\add_58/carry[3] ), .S(N34) );
  DFFTRX2 \r_pt_gray_reg[3]  ( .D(r_pt_gray_nxt[3]), .RN(n483), .CK(n497), .Q(
        r_pt_gray[3]) );
  DFFTRX2 \r_pt_gray_reg[2]  ( .D(r_pt_gray_nxt[2]), .RN(n483), .CK(n497), .Q(
        r_pt_gray[2]) );
  DFFTRX2 \r_pt_gray_reg[1]  ( .D(r_pt_gray_nxt[1]), .RN(n483), .CK(n497), .Q(
        r_pt_gray[1]) );
  DFFTRX2 \r_pt_gray_reg[0]  ( .D(r_pt_gray_nxt[0]), .RN(n483), .CK(n496), .Q(
        r_pt_gray[0]) );
  DFFTRX2 \r_pt_gray_reg[4]  ( .D(r_pt_gray_nxt[4]), .RN(n483), .CK(n496), .Q(
        r_pt_gray[4]) );
  DFFTRX1 \w_pt_syn1_reg[0]  ( .D(w_pt_gray[0]), .RN(n483), .CK(n496), .Q(
        w_pt_syn1[0]) );
  DFFTRX1 \w_pt_syn1_reg[1]  ( .D(w_pt_gray[1]), .RN(n483), .CK(n496), .Q(
        w_pt_syn1[1]) );
  DFFTRX1 \w_pt_syn1_reg[2]  ( .D(w_pt_gray[2]), .RN(n482), .CK(n496), .Q(
        w_pt_syn1[2]) );
  DFFTRX1 \w_pt_syn1_reg[3]  ( .D(w_pt_gray[3]), .RN(n482), .CK(n496), .Q(
        w_pt_syn1[3]) );
  DFFTRX1 \w_pt_syn1_reg[4]  ( .D(w_pt_gray[4]), .RN(n482), .CK(n496), .Q(
        w_pt_syn1[4]) );
  DFFQX4 \r_pt_reg[1]  ( .D(n46), .CK(n494), .Q(r_pt[1]) );
  DFFQX4 \r_pt_reg[3]  ( .D(n44), .CK(n494), .Q(r_pt[3]) );
  ADDHX2 U59 ( .A(\add_58/carry[3] ), .B(n476), .CO(\add_58/carry[4] ), .S(N35) );
  DFFTRX4 \w_pt_reg[0]  ( .D(n18), .RN(n490), .CK(w_clk), .Q(n297), .QN(n348)
         );
  DFFQX4 \w_pt_reg[4]  ( .D(n328), .CK(w_clk), .Q(\w_pt[4] ) );
  DFFTRX2 \r_pt_syn2_reg[4]  ( .D(r_pt_syn1[4]), .RN(n470), .CK(w_clk), .Q(
        r_pt_syn2[4]) );
  DFFTRX2 \w_pt_reg[3]  ( .D(n1), .RN(n490), .CK(w_clk), .QN(n477) );
  DFFTRX2 \w_pt_reg[2]  ( .D(n4), .RN(n469), .CK(w_clk), .QN(n475) );
  DFFTRX2 \w_pt_reg[1]  ( .D(n2), .RN(n470), .CK(w_clk), .QN(n473) );
  DFFTRX2 \r_pt_wdomain_reg[4]  ( .D(r_pt_wdomain_nxt[4]), .RN(n490), .CK(
        w_clk), .Q(n101) );
  DFFTRX2 \r_pt_wdomain_reg[3]  ( .D(r_pt_wdomain_nxt[3]), .RN(n469), .CK(
        w_clk), .Q(n98) );
  DFFTRX1 \r_pt_syn2_reg[0]  ( .D(r_pt_syn1[0]), .RN(n469), .CK(w_clk), .Q(
        r_pt_syn2[0]) );
  DFFTRX2 \r_pt_syn1_reg[0]  ( .D(r_pt_gray[0]), .RN(n470), .CK(w_clk), .Q(
        r_pt_syn1[0]) );
  DFFTRX2 \r_pt_wdomain_reg[2]  ( .D(r_pt_wdomain_nxt[2]), .RN(n490), .CK(
        w_clk), .QN(n388) );
  DFFTRX2 \r_pt_wdomain_reg[1]  ( .D(r_pt_wdomain_nxt[1]), .RN(n469), .CK(
        w_clk), .QN(n91) );
  DFFTRX2 \r_pt_wdomain_reg[0]  ( .D(r_pt_wdomain_nxt[0]), .RN(n470), .CK(
        w_clk), .QN(n347) );
  DFFTRX1 \r_pt_syn2_reg[3]  ( .D(r_pt_syn1[3]), .RN(n470), .CK(w_clk), .Q(
        r_pt_syn2[3]) );
  DFFTRX2 \r_pt_syn1_reg[3]  ( .D(r_pt_gray[3]), .RN(n490), .CK(w_clk), .Q(
        r_pt_syn1[3]) );
  DFFTRX1 \r_pt_syn2_reg[2]  ( .D(r_pt_syn1[2]), .RN(n490), .CK(w_clk), .Q(
        r_pt_syn2[2]) );
  DFFTRX2 \r_pt_syn1_reg[2]  ( .D(r_pt_gray[2]), .RN(n469), .CK(w_clk), .Q(
        r_pt_syn1[2]) );
  DFFTRX1 \r_pt_syn2_reg[1]  ( .D(r_pt_syn1[1]), .RN(n469), .CK(w_clk), .Q(
        r_pt_syn2[1]) );
  DFFTRX2 \r_pt_syn1_reg[1]  ( .D(r_pt_gray[1]), .RN(n470), .CK(w_clk), .Q(
        r_pt_syn1[1]) );
  DFFTRX2 \r_pt_syn1_reg[4]  ( .D(r_pt_gray[4]), .RN(n490), .CK(w_clk), .Q(
        r_pt_syn1[4]) );
  DFFTRX2 \w_pt_gray_reg[0]  ( .D(w_pt_gray_nxt[0]), .RN(n469), .CK(w_clk), 
        .Q(w_pt_gray[0]) );
  DFFTRX2 \w_pt_gray_reg[2]  ( .D(w_pt_gray_nxt[2]), .RN(n470), .CK(w_clk), 
        .Q(w_pt_gray[2]) );
  DFFTRX2 \w_pt_gray_reg[1]  ( .D(w_pt_gray_nxt[1]), .RN(n490), .CK(w_clk), 
        .Q(w_pt_gray[1]) );
  DFFTRX2 \w_pt_gray_reg[4]  ( .D(w_pt_gray_nxt[4]), .RN(n469), .CK(w_clk), 
        .Q(w_pt_gray[4]) );
  DFFTRX2 \w_pt_gray_reg[3]  ( .D(w_pt_gray_nxt[3]), .RN(n470), .CK(w_clk), 
        .Q(w_pt_gray[3]) );
  DFFTRX2 \r_data_reg[1]  ( .D(r_data_nxt[1]), .RN(n482), .CK(n495), .Q(
        r_data[1]) );
  DFFTRX2 \r_data_reg[0]  ( .D(r_data_nxt[0]), .RN(n482), .CK(n495), .Q(
        r_data[0]) );
  DFFTRX2 \r_data_reg[2]  ( .D(r_data_nxt[2]), .RN(n482), .CK(n495), .Q(
        r_data[2]) );
  DFFTRX2 \r_data_reg[3]  ( .D(r_data_nxt[3]), .RN(n483), .CK(n496), .Q(
        r_data[3]) );
  DFFTRX2 \r_data_reg[4]  ( .D(r_data_nxt[4]), .RN(n482), .CK(n495), .Q(
        r_data[4]) );
  DFFTRX2 \r_data_reg[5]  ( .D(r_data_nxt[5]), .RN(n482), .CK(n495), .Q(
        r_data[5]) );
  DFFTRX2 \r_data_reg[6]  ( .D(r_data_nxt[6]), .RN(n481), .CK(n495), .Q(
        r_data[6]) );
  DFFTRX2 \r_data_reg[7]  ( .D(r_data_nxt[7]), .RN(n481), .CK(n495), .Q(
        r_data[7]) );
  DFFTRX2 \w_pt_syn2_reg[4]  ( .D(w_pt_syn1[4]), .RN(n481), .CK(n495), .Q(
        w_pt_syn2[4]) );
  DFFQX2 is_empty_reg ( .D(N116), .CK(n494), .Q(is_empty) );
  AOI21BX2 U3 ( .A0(n70), .A1(n493), .B0N(n489), .Y(n468) );
  BUFX8 U4 ( .A(w_rst_n), .Y(n469) );
  BUFX8 U5 ( .A(w_rst_n), .Y(n470) );
  INVX5 U6 ( .A(n468), .Y(n471) );
  INVX6 U8 ( .A(n473), .Y(n472) );
  INVX6 U9 ( .A(n475), .Y(n474) );
  INVX6 U12 ( .A(n477), .Y(n476) );
  CLKBUFX6 U14 ( .A(r_pt[3]), .Y(n478) );
  BUFX8 U18 ( .A(r_en), .Y(n479) );
  CLKBUFX6 U19 ( .A(r_pt[1]), .Y(n480) );
  CLKBUFX4 U20 ( .A(n492), .Y(n491) );
  BUFX2 U21 ( .A(n487), .Y(n485) );
  BUFX2 U22 ( .A(n487), .Y(n486) );
  BUFX2 U23 ( .A(r_rst_n), .Y(n487) );
  INVX8 U24 ( .A(n491), .Y(n490) );
  INVX4 U25 ( .A(n73), .Y(n501) );
  BUFX8 U26 ( .A(n486), .Y(n481) );
  BUFX8 U28 ( .A(n486), .Y(n482) );
  BUFX8 U29 ( .A(n485), .Y(n483) );
  BUFX8 U30 ( .A(n485), .Y(n484) );
  CLKBUFX4 U31 ( .A(w_en), .Y(n493) );
  NAND3X4 U32 ( .A(n488), .B(n72), .C(n481), .Y(n73) );
  INVX4 U33 ( .A(n72), .Y(n500) );
  INVX2 U34 ( .A(w_rst_n), .Y(n492) );
  BUFX2 U35 ( .A(w_pt_reset), .Y(n489) );
  CLKBUFX4 U36 ( .A(r_pt_reset), .Y(n488) );
  BUFX16 U37 ( .A(n499), .Y(n495) );
  BUFX16 U38 ( .A(n499), .Y(n496) );
  BUFX16 U39 ( .A(r_clk), .Y(n497) );
  BUFX5 U40 ( .A(n499), .Y(n498) );
  INVX5 U41 ( .A(n77), .Y(n505) );
  BUFX16 U42 ( .A(r_clk), .Y(n494) );
  CLKBUFX4 U43 ( .A(r_clk), .Y(n499) );
  INVX2 U44 ( .A(n71), .Y(n504) );
  NAND3X4 U45 ( .A(n493), .B(n70), .C(n489), .Y(n77) );
  NOR2X2 U46 ( .A(n71), .B(n491), .Y(n328) );
  INVX2 U47 ( .A(\w_pt[4] ), .Y(n506) );
  OAI21X2 U48 ( .A0(n77), .A1(\add_58/carry[4] ), .B0(n471), .Y(n76) );
  NAND4X4 U49 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n70) );
  CLKXOR2X2 U50 ( .A(n101), .B(\w_pt[4] ), .Y(n80) );
  CLKXOR2X2 U51 ( .A(n388), .B(n474), .Y(n78) );
  CLKXOR2X2 U52 ( .A(n91), .B(n472), .Y(n79) );
  NOR3X4 U53 ( .A(n492), .B(n82), .C(n83), .Y(n81) );
  CLKXOR2X2 U54 ( .A(n347), .B(n348), .Y(n82) );
  CLKXOR2X2 U55 ( .A(n98), .B(n476), .Y(n83) );
  INVX2 U56 ( .A(r_pt[4]), .Y(n507) );
  AOI21X2 U60 ( .A0(n501), .A1(n502), .B0(n500), .Y(n74) );
  INVX2 U61 ( .A(\add_129/carry[4] ), .Y(n502) );
  CLKXOR2X2 U62 ( .A(w_pt_rdomain[0]), .B(r_pt[0]), .Y(n85) );
  CLKXOR2X2 U63 ( .A(w_pt_rdomain[3]), .B(r_pt[3]), .Y(n86) );
  NAND3X2 U64 ( .A(n87), .B(n88), .C(n89), .Y(n84) );
  OAI2B2X2 U65 ( .A1N(r_pt[0]), .A0(n72), .B0(r_pt[0]), .B1(n73), .Y(n47) );
  INVX2 U66 ( .A(n70), .Y(is_full) );
  AO22X1 U67 ( .A0(N74), .A1(n501), .B0(n500), .B1(r_pt[1]), .Y(n46) );
  AO22X1 U68 ( .A0(N76), .A1(n501), .B0(n500), .B1(r_pt[3]), .Y(n44) );
  AO22X1 U69 ( .A0(N75), .A1(n501), .B0(n500), .B1(r_pt[2]), .Y(n45) );
  CLKXOR2X2 U73 ( .A(n95), .B(r_pt[1]), .Y(n89) );
  CLKXOR2X2 U74 ( .A(n96), .B(r_pt[2]), .Y(n88) );
  CLKXOR2X2 U75 ( .A(n97), .B(r_pt[4]), .Y(n87) );
endmodule


module ClkDiv_DIV_NUM16 ( clk_in, rst_n, clk_out );
  input clk_in, rst_n;
  output clk_out;
  wire   N6, N7, N8, N11, N12, N13, N14, n3, \add_34/carry[4] ,
         \add_34/carry[3] , \add_34/carry[2] , n2, n4, n5, n34, n35, n36;
  wire   [4:0] cnt_p;

  DFFRQX4 \cnt_p_reg[1]  ( .D(N11), .CK(n35), .RN(n34), .Q(cnt_p[1]) );
  DFFRQX4 \cnt_p_reg[2]  ( .D(N12), .CK(n35), .RN(n34), .Q(cnt_p[2]) );
  DFFRQX4 \cnt_p_reg[3]  ( .D(N13), .CK(n35), .RN(n34), .Q(cnt_p[3]) );
  ADDHX2 U14 ( .A(cnt_p[2]), .B(\add_34/carry[2] ), .CO(\add_34/carry[3] ), 
        .S(N7) );
  ADDHX2 U13 ( .A(cnt_p[1]), .B(cnt_p[0]), .CO(\add_34/carry[2] ), .S(N6) );
  ADDHX2 U15 ( .A(cnt_p[3]), .B(\add_34/carry[3] ), .CO(\add_34/carry[4] ), 
        .S(N8) );
  DFFRQX2 \cnt_p_reg[4]  ( .D(N14), .CK(n35), .RN(n34), .Q(cnt_p[4]) );
  DFFRQX2 \cnt_p_reg[0]  ( .D(n36), .CK(n35), .RN(n34), .Q(cnt_p[0]) );
  DFFSQX2 clk_o_reg ( .D(n3), .CK(n35), .SN(n34), .Q(clk_out) );
  INVX2 U3 ( .A(cnt_p[0]), .Y(n36) );
  CLKBUFX6 U4 ( .A(rst_n), .Y(n34) );
  BUFX12 U5 ( .A(clk_in), .Y(n35) );
  NOR2BX2 U6 ( .AN(N8), .B(n2), .Y(N13) );
  NOR2BX2 U7 ( .AN(N7), .B(n2), .Y(N12) );
  NOR2BX2 U8 ( .AN(N6), .B(n2), .Y(N11) );
  AND3X6 U9 ( .A(cnt_p[2]), .B(cnt_p[1]), .C(n5), .Y(n2) );
  NOR3X4 U10 ( .A(n36), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n5) );
  NOR2X2 U11 ( .A(n2), .B(n4), .Y(N14) );
  XNOR2X2 U12 ( .A(cnt_p[4]), .B(\add_34/carry[4] ), .Y(n4) );
  CLKXOR2X2 U16 ( .A(clk_out), .B(n2), .Y(n3) );
endmodule


module UartIf ( clk_uart, rst_n, txd_from_fifo, fifo_empty, r_en, txd, 
        rxd_int_in, rxd, r_data, rxd_int );
  input [7:0] txd_from_fifo;
  output [7:0] r_data;
  input clk_uart, rst_n, fifo_empty, rxd_int_in, rxd;
  output r_en, txd, rxd_int;
  wire   n161, clk_tx, tx_status, N48, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, int_hold, rx_status, N111, N123,
         N133, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n70, n71, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n119, n120,
         n760, n761, n762, n763, n764, n765, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823;
  wire   [3:0] tx_bit_cnt;
  wire   [11:0] tx_tmp;
  wire   [2:0] start_cnt;
  wire   [3:0] sample_cnt;
  wire   [3:0] bit_cnt;
  wire   [8:0] rx_tmp;

  DFFHQX8 rx_status_reg ( .D(N123), .CK(n797), .Q(rx_status) );
  AOI221X4 U3 ( .A0(n783), .A1(tx_tmp[0]), .B0(n764), .B1(tx_tmp[1]), .C0(n789), .Y(n27) );
  NOR3BX4 U13 ( .AN(n32), .B(n777), .C(n789), .Y(n31) );
  OAI32X4 U40 ( .A0(n780), .A1(bit_cnt[0]), .A2(n801), .B0(n55), .B1(n822), 
        .Y(n111) );
  OAI32X4 U44 ( .A0(n779), .A1(n801), .A2(n59), .B0(n60), .B1(n812), .Y(n109)
         );
  OAI211X4 U49 ( .A0(rx_status), .A1(n807), .B0(n52), .C0(n786), .Y(n55) );
  OAI33X4 U103 ( .A0(n811), .A1(rxd_int), .A2(n780), .B0(n819), .B1(rxd_int_in), .B2(n66), .Y(N133) );
  NOR4X8 U109 ( .A(rxd), .B(start_cnt[0]), .C(start_cnt[1]), .D(start_cnt[2]), 
        .Y(n64) );
  NOR2X8 U112 ( .A(n59), .B(bit_cnt[3]), .Y(n63) );
  ClkDiv_DIV_NUM16 ClkDiv_tx ( .clk_in(n794), .rst_n(n786), .clk_out(clk_tx)
         );
  DFFQX2 \sample_cnt_reg[3]  ( .D(n112), .CK(n794), .Q(sample_cnt[3]) );
  DFFQX2 \bit_cnt_reg[2]  ( .D(n109), .CK(n796), .Q(bit_cnt[2]) );
  DFFQX2 \tx_tmp_reg[10]  ( .D(N59), .CK(n775), .Q(tx_tmp[10]) );
  DFFQX2 \r_data_out_reg[2]  ( .D(n96), .CK(n794), .Q(r_data[2]) );
  DFFQX2 \r_data_out_reg[1]  ( .D(n97), .CK(n794), .Q(r_data[1]) );
  DFFQX2 \r_data_out_reg[0]  ( .D(n98), .CK(n794), .Q(r_data[0]) );
  DFFQX2 \r_data_out_reg[7]  ( .D(n91), .CK(n794), .Q(r_data[7]) );
  DFFQX2 \r_data_out_reg[6]  ( .D(n92), .CK(n794), .Q(r_data[6]) );
  DFFQX2 \r_data_out_reg[5]  ( .D(n93), .CK(n794), .Q(r_data[5]) );
  DFFQX2 \r_data_out_reg[4]  ( .D(n94), .CK(n795), .Q(r_data[4]) );
  DFFQX2 \r_data_out_reg[3]  ( .D(n95), .CK(n795), .Q(r_data[3]) );
  DFFQX2 \tx_tmp_reg[0]  ( .D(n802), .CK(n775), .Q(tx_tmp[0]) );
  DFFQX2 \tx_tmp_reg[9]  ( .D(N58), .CK(n776), .Q(tx_tmp[9]) );
  DFFQX2 \tx_tmp_reg[8]  ( .D(N57), .CK(n774), .Q(tx_tmp[8]) );
  DFFQX2 \tx_tmp_reg[7]  ( .D(N56), .CK(n775), .Q(tx_tmp[7]) );
  DFFQX2 \tx_tmp_reg[6]  ( .D(N55), .CK(n776), .Q(tx_tmp[6]) );
  DFFQX2 \tx_tmp_reg[5]  ( .D(N54), .CK(n774), .Q(tx_tmp[5]) );
  DFFQX2 \tx_tmp_reg[4]  ( .D(N53), .CK(n775), .Q(tx_tmp[4]) );
  DFFQX2 \tx_tmp_reg[3]  ( .D(N52), .CK(n776), .Q(tx_tmp[3]) );
  DFFQX2 \tx_tmp_reg[2]  ( .D(N51), .CK(n774), .Q(tx_tmp[2]) );
  DFFQX2 \tx_tmp_reg[1]  ( .D(N50), .CK(n774), .Q(tx_tmp[1]) );
  DFFQX4 \bit_cnt_reg[3]  ( .D(n108), .CK(n797), .Q(bit_cnt[3]) );
  DFFQX4 \start_cnt_reg[2]  ( .D(n116), .CK(n795), .Q(start_cnt[2]) );
  DFFQX4 \sample_cnt_reg[2]  ( .D(n113), .CK(n795), .Q(sample_cnt[2]) );
  DFFQX4 \start_cnt_reg[0]  ( .D(n118), .CK(n795), .Q(start_cnt[0]) );
  DFFQX4 rxd_int_out_reg ( .D(N111), .CK(n795), .Q(rxd_int) );
  DFFQX4 \rx_tmp_reg[0]  ( .D(n107), .CK(n795), .Q(rx_tmp[0]) );
  DFFQX4 \sample_cnt_reg[0]  ( .D(n115), .CK(n795), .Q(sample_cnt[0]) );
  DFFQX4 \tx_bit_cnt_reg[1]  ( .D(N62), .CK(n775), .Q(tx_bit_cnt[1]) );
  DFFQX4 \rx_tmp_reg[7]  ( .D(n100), .CK(n796), .Q(rx_tmp[7]) );
  DFFQX4 \rx_tmp_reg[5]  ( .D(n102), .CK(n796), .Q(rx_tmp[5]) );
  DFFQX4 \rx_tmp_reg[3]  ( .D(n104), .CK(n796), .Q(rx_tmp[3]) );
  DFFQX4 \rx_tmp_reg[6]  ( .D(n101), .CK(n796), .Q(rx_tmp[6]) );
  DFFQX4 \rx_tmp_reg[4]  ( .D(n103), .CK(n796), .Q(rx_tmp[4]) );
  DFFQX4 \rx_tmp_reg[2]  ( .D(n105), .CK(n796), .Q(rx_tmp[2]) );
  DFFQX4 \sample_cnt_reg[1]  ( .D(n114), .CK(n796), .Q(sample_cnt[1]) );
  DFFQX4 \start_cnt_reg[1]  ( .D(n117), .CK(n797), .Q(start_cnt[1]) );
  DFFQX4 \tx_bit_cnt_reg[0]  ( .D(N61), .CK(n776), .Q(tx_bit_cnt[0]) );
  DFFQX2 \tx_bit_cnt_reg[3]  ( .D(N64), .CK(n774), .Q(tx_bit_cnt[3]) );
  DFFQX2 \tx_tmp_reg[11]  ( .D(N60), .CK(n776), .Q(tx_tmp[11]) );
  DFFQX2 \bit_cnt_reg[1]  ( .D(n110), .CK(n797), .Q(bit_cnt[1]) );
  DFFQX2 int_hold_reg ( .D(N133), .CK(n797), .Q(int_hold) );
  DFFQX2 \rx_tmp_reg[1]  ( .D(n106), .CK(n797), .Q(rx_tmp[1]) );
  DFFQX2 \rx_tmp_reg[8]  ( .D(n99), .CK(n797), .Q(rx_tmp[8]) );
  DFFQX2 txd_out_reg ( .D(N48), .CK(n774), .Q(n161) );
  DFFTRX2 tx_status_reg ( .D(n787), .RN(n823), .CK(n776), .Q(tx_status), .QN(
        n762) );
  DFFQX4 \bit_cnt_reg[0]  ( .D(n111), .CK(n797), .Q(bit_cnt[0]) );
  DFFQX2 \tx_bit_cnt_reg[2]  ( .D(N63), .CK(n775), .Q(tx_bit_cnt[2]) );
  NOR3X6 U4 ( .A(sample_cnt[1]), .B(sample_cnt[2]), .C(sample_cnt[0]), .Y(n54)
         );
  NOR3X6 U5 ( .A(tx_bit_cnt[1]), .B(tx_bit_cnt[2]), .C(tx_bit_cnt[0]), .Y(n68)
         );
  OAI2BB1X1 U6 ( .A0N(tx_bit_cnt[1]), .A1N(n768), .B0(N61), .Y(n772) );
  CLKBUFX4 U7 ( .A(n783), .Y(n760) );
  BUFX8 U8 ( .A(n28), .Y(n783) );
  OAI2BB1X1 U9 ( .A0N(n810), .A1N(tx_bit_cnt[3]), .B0(n768), .Y(N64) );
  INVX2 U10 ( .A(n781), .Y(r_en) );
  CLKBUFX4 U11 ( .A(n784), .Y(n761) );
  BUFX8 U12 ( .A(n30), .Y(n784) );
  INVX4 U14 ( .A(n762), .Y(n763) );
  CLKNAND2X2 U15 ( .A(n763), .B(n781), .Y(n74) );
  CLKBUFX4 U16 ( .A(n74), .Y(n803) );
  INVX4 U17 ( .A(n803), .Y(n764) );
  INVX5 U18 ( .A(n803), .Y(n765) );
  BUFX8 U19 ( .A(n29), .Y(n785) );
  INVX2 U20 ( .A(n781), .Y(n805) );
  CLKBUFX20 U21 ( .A(n161), .Y(txd) );
  OR3X2 U22 ( .A(n71), .B(fifo_empty), .C(n788), .Y(n67) );
  INVX5 U23 ( .A(n67), .Y(n768) );
  BUFX8 U24 ( .A(n31), .Y(n769) );
  AO22X1 U25 ( .A0(n68), .A1(n768), .B0(tx_bit_cnt[2]), .B1(n772), .Y(N63) );
  CLKBUFX4 U26 ( .A(n791), .Y(n788) );
  BUFX2 U27 ( .A(n792), .Y(n790) );
  BUFX2 U28 ( .A(n793), .Y(n792) );
  INVX2 U29 ( .A(n66), .Y(n799) );
  INVX6 U30 ( .A(n771), .Y(n779) );
  INVX6 U31 ( .A(n771), .Y(n780) );
  NOR2X4 U32 ( .A(n65), .B(n53), .Y(n66) );
  CLKAND2X3 U33 ( .A(n71), .B(n823), .Y(n770) );
  INVX2 U34 ( .A(n64), .Y(n807) );
  CLKAND2X3 U35 ( .A(rx_status), .B(n786), .Y(n771) );
  INVX2 U36 ( .A(rx_tmp[8]), .Y(n821) );
  INVX2 U37 ( .A(sample_cnt[3]), .Y(n804) );
  INVX2 U38 ( .A(start_cnt[0]), .Y(n809) );
  INVX2 U39 ( .A(fifo_empty), .Y(n823) );
  INVX8 U41 ( .A(n788), .Y(n786) );
  INVX8 U42 ( .A(n788), .Y(n787) );
  CLKBUFX4 U43 ( .A(n790), .Y(n789) );
  BUFX2 U45 ( .A(n792), .Y(n791) );
  INVX2 U46 ( .A(rst_n), .Y(n793) );
  BUFX16 U47 ( .A(n798), .Y(n794) );
  BUFX16 U48 ( .A(clk_uart), .Y(n796) );
  BUFX16 U50 ( .A(n798), .Y(n795) );
  BUFX16 U51 ( .A(n798), .Y(n797) );
  BUFX5 U52 ( .A(n799), .Y(n777) );
  BUFX5 U53 ( .A(n799), .Y(n778) );
  NAND2X4 U54 ( .A(n46), .B(n779), .Y(n48) );
  INVX4 U55 ( .A(n46), .Y(n800) );
  NAND2X2 U56 ( .A(n65), .B(n761), .Y(n29) );
  INVX6 U57 ( .A(n770), .Y(n782) );
  INVX6 U58 ( .A(n770), .Y(n781) );
  CLKBUFX4 U59 ( .A(clk_uart), .Y(n798) );
  OAI21X6 U60 ( .A0(rxd), .A1(n790), .B0(n779), .Y(n42) );
  AOI2BB1X2 U61 ( .A0N(n779), .A1N(n58), .B0(n801), .Y(n60) );
  CLKINVX8 U62 ( .A(n55), .Y(n801) );
  NOR2X4 U63 ( .A(n791), .B(n63), .Y(n65) );
  OAI211X2 U64 ( .A0(n779), .A1(n809), .B0(n41), .C0(n42), .Y(n118) );
  OAI22X2 U65 ( .A0(n784), .A1(n820), .B0(n785), .B1(n818), .Y(n106) );
  OAI22X2 U66 ( .A0(n784), .A1(n818), .B0(n785), .B1(n815), .Y(n105) );
  OAI22X2 U67 ( .A0(n784), .A1(n817), .B0(n785), .B1(n814), .Y(n103) );
  OAI22X2 U68 ( .A0(n784), .A1(n816), .B0(n785), .B1(n813), .Y(n101) );
  OAI22X2 U69 ( .A0(n784), .A1(n815), .B0(n785), .B1(n817), .Y(n104) );
  OAI22X2 U70 ( .A0(n784), .A1(n814), .B0(n785), .B1(n816), .Y(n102) );
  OAI22X2 U71 ( .A0(n784), .A1(n813), .B0(n785), .B1(n821), .Y(n100) );
  OAI2B2X2 U72 ( .A1N(rxd), .A0(n785), .B0(n761), .B1(n821), .Y(n99) );
  NAND2X4 U73 ( .A(n53), .B(n807), .Y(n46) );
  NAND2X4 U74 ( .A(n58), .B(n812), .Y(n59) );
  INVX2 U75 ( .A(n63), .Y(n811) );
  NAND2X4 U76 ( .A(n809), .B(n780), .Y(n41) );
  INVX2 U77 ( .A(n54), .Y(n808) );
  INVX2 U78 ( .A(n68), .Y(n810) );
  NAND2X2 U79 ( .A(n777), .B(n52), .Y(n30) );
  INVX12 U80 ( .A(n773), .Y(n775) );
  INVX12 U81 ( .A(n773), .Y(n774) );
  INVX12 U82 ( .A(n773), .Y(n776) );
  CLKXOR2X2 U83 ( .A(n33), .B(rx_tmp[8]), .Y(n32) );
  CLKXOR2X2 U84 ( .A(n34), .B(n35), .Y(n33) );
  CLKXOR2X2 U85 ( .A(n38), .B(n39), .Y(n34) );
  NOR2X6 U86 ( .A(n793), .B(rx_status), .Y(n53) );
  INVX2 U87 ( .A(bit_cnt[0]), .Y(n822) );
  NOR2X6 U88 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .Y(n58) );
  OAI211X2 U89 ( .A0(tx_status), .A1(n806), .B0(n782), .C0(n73), .Y(N59) );
  AOI21X2 U90 ( .A0(tx_tmp[11]), .A1(n763), .B0(n789), .Y(n73) );
  NOR2X4 U91 ( .A(n810), .B(tx_bit_cnt[3]), .Y(n71) );
  OAI211X2 U92 ( .A0(n74), .A1(n806), .B0(n787), .C0(n75), .Y(N58) );
  AOI22X2 U93 ( .A0(n805), .A1(n76), .B0(tx_tmp[9]), .B1(n760), .Y(n75) );
  CLKXOR2X2 U94 ( .A(n77), .B(n78), .Y(n76) );
  CLKXOR2X2 U95 ( .A(n81), .B(n82), .Y(n77) );
  OAI211X2 U96 ( .A0(n800), .A1(n808), .B0(n50), .C0(n48), .Y(n113) );
  OAI21X2 U97 ( .A0(sample_cnt[1]), .A1(n47), .B0(sample_cnt[2]), .Y(n50) );
  OAI211X2 U98 ( .A0(n51), .A1(n804), .B0(n52), .C0(n786), .Y(n112) );
  AOI21X2 U99 ( .A0(rx_status), .A1(n808), .B0(n800), .Y(n51) );
  OAI2B2X2 U100 ( .A1N(bit_cnt[3]), .A0(n61), .B0(n801), .B1(n62), .Y(n108) );
  NOR2X2 U101 ( .A(n63), .B(n779), .Y(n62) );
  NOR2X2 U102 ( .A(n801), .B(n59), .Y(n61) );
  OAI2B2X2 U104 ( .A1N(bit_cnt[1]), .A0(n56), .B0(n801), .B1(n57), .Y(n110) );
  NOR2X2 U105 ( .A(n58), .B(n780), .Y(n57) );
  NOR2X2 U106 ( .A(n801), .B(bit_cnt[0]), .Y(n56) );
  OAI2B11X2 U107 ( .A1N(sample_cnt[0]), .A0(n46), .B0(n47), .C0(n48), .Y(n115)
         );
  OAI2B11X2 U108 ( .A1N(txd_from_fifo[0]), .A0(n781), .B0(n786), .C0(n90), .Y(
        N50) );
  AOI22X2 U110 ( .A0(tx_tmp[1]), .A1(n783), .B0(tx_tmp[2]), .B1(n764), .Y(n90)
         );
  OAI2B11X2 U111 ( .A1N(txd_from_fifo[1]), .A0(n781), .B0(n787), .C0(n89), .Y(
        N51) );
  AOI22X2 U113 ( .A0(tx_tmp[2]), .A1(n783), .B0(tx_tmp[3]), .B1(n764), .Y(n89)
         );
  OAI2B11X2 U114 ( .A1N(txd_from_fifo[2]), .A0(n781), .B0(n787), .C0(n88), .Y(
        N52) );
  AOI22X2 U115 ( .A0(tx_tmp[3]), .A1(n783), .B0(tx_tmp[4]), .B1(n764), .Y(n88)
         );
  OAI2B11X2 U116 ( .A1N(txd_from_fifo[3]), .A0(n782), .B0(n787), .C0(n87), .Y(
        N53) );
  AOI22X2 U117 ( .A0(tx_tmp[4]), .A1(n783), .B0(tx_tmp[5]), .B1(n765), .Y(n87)
         );
  OAI2B11X2 U118 ( .A1N(txd_from_fifo[4]), .A0(n782), .B0(n787), .C0(n86), .Y(
        N54) );
  AOI22X2 U119 ( .A0(tx_tmp[5]), .A1(n783), .B0(tx_tmp[6]), .B1(n765), .Y(n86)
         );
  OAI2B11X2 U120 ( .A1N(txd_from_fifo[5]), .A0(n782), .B0(n787), .C0(n85), .Y(
        N55) );
  AOI22X2 U121 ( .A0(tx_tmp[6]), .A1(n760), .B0(tx_tmp[7]), .B1(n765), .Y(n85)
         );
  OAI2B11X2 U122 ( .A1N(txd_from_fifo[6]), .A0(n782), .B0(n787), .C0(n84), .Y(
        N56) );
  AOI22X2 U123 ( .A0(tx_tmp[7]), .A1(n760), .B0(tx_tmp[8]), .B1(n765), .Y(n84)
         );
  OAI2B11X2 U124 ( .A1N(txd_from_fifo[7]), .A0(n782), .B0(n786), .C0(n83), .Y(
        N57) );
  AOI22X2 U125 ( .A0(tx_tmp[8]), .A1(n760), .B0(tx_tmp[9]), .B1(n765), .Y(n83)
         );
  NAND3X4 U126 ( .A(n54), .B(n804), .C(rx_status), .Y(n52) );
  OAI22X2 U127 ( .A0(n780), .A1(n811), .B0(n120), .B1(n789), .Y(N111) );
  AOI22X2 U128 ( .A0(rxd_int_in), .A1(n819), .B0(rxd_int), .B1(int_hold), .Y(
        n120) );
  OAI2B2X2 U129 ( .A1N(rx_tmp[0]), .A0(n761), .B0(n29), .B1(n820), .Y(n107) );
  CLKNAND2X2 U130 ( .A(tx_bit_cnt[0]), .B(n768), .Y(N61) );
  NAND3BX1 U131 ( .AN(tx_tmp[0]), .B(n763), .C(n786), .Y(N48) );
  NAND2X1 U132 ( .A(n768), .B(n70), .Y(N62) );
  CLKXOR2X2 U133 ( .A(tx_bit_cnt[1]), .B(tx_bit_cnt[0]), .Y(n70) );
  OR2X4 U134 ( .A(sample_cnt[0]), .B(n800), .Y(n47) );
  NOR2X2 U135 ( .A(tx_status), .B(n805), .Y(n28) );
  AO22X1 U136 ( .A0(r_data[3]), .A1(n778), .B0(n769), .B1(rx_tmp[3]), .Y(n95)
         );
  AO22X1 U137 ( .A0(r_data[4]), .A1(n778), .B0(n769), .B1(rx_tmp[4]), .Y(n94)
         );
  AO22X1 U138 ( .A0(r_data[5]), .A1(n777), .B0(n769), .B1(rx_tmp[5]), .Y(n93)
         );
  AO22X1 U139 ( .A0(r_data[6]), .A1(n777), .B0(n769), .B1(rx_tmp[6]), .Y(n92)
         );
  AO22X1 U140 ( .A0(r_data[7]), .A1(n777), .B0(n769), .B1(rx_tmp[7]), .Y(n91)
         );
  AO22X1 U141 ( .A0(r_data[0]), .A1(n778), .B0(n769), .B1(rx_tmp[0]), .Y(n98)
         );
  AO22X1 U142 ( .A0(r_data[1]), .A1(n778), .B0(n769), .B1(rx_tmp[1]), .Y(n97)
         );
  AO22X1 U143 ( .A0(r_data[2]), .A1(n778), .B0(n769), .B1(rx_tmp[2]), .Y(n96)
         );
  NOR2X2 U144 ( .A(rxd_int_in), .B(n119), .Y(N123) );
  AOI2BB2X2 U145 ( .B0(n64), .B1(n53), .A0N(n780), .A1N(n63), .Y(n119) );
  NAND3BX2 U146 ( .AN(tx_tmp[11]), .B(n783), .C(n786), .Y(N60) );
  NAND2X2 U147 ( .A(n43), .B(n42), .Y(n117) );
  CLKXOR2X2 U148 ( .A(n41), .B(start_cnt[1]), .Y(n43) );
  NAND2X2 U149 ( .A(n44), .B(n42), .Y(n116) );
  XNOR2X2 U150 ( .A(start_cnt[2]), .B(n45), .Y(n44) );
  NOR2X2 U151 ( .A(start_cnt[1]), .B(n41), .Y(n45) );
  INVX4 U152 ( .A(rx_tmp[1]), .Y(n820) );
  INVX2 U153 ( .A(n27), .Y(n802) );
  INVX2 U154 ( .A(rx_tmp[2]), .Y(n818) );
  INVX2 U155 ( .A(rx_tmp[4]), .Y(n817) );
  INVX2 U156 ( .A(rx_tmp[6]), .Y(n816) );
  INVX2 U157 ( .A(rx_tmp[3]), .Y(n815) );
  INVX2 U158 ( .A(rx_tmp[5]), .Y(n814) );
  INVX2 U159 ( .A(rx_tmp[7]), .Y(n813) );
  INVX5 U160 ( .A(clk_tx), .Y(n773) );
  INVX2 U161 ( .A(int_hold), .Y(n819) );
  NAND2X2 U162 ( .A(n49), .B(n48), .Y(n114) );
  CLKXOR2X2 U163 ( .A(sample_cnt[1]), .B(n47), .Y(n49) );
  INVX4 U164 ( .A(bit_cnt[2]), .Y(n812) );
  INVX2 U165 ( .A(tx_tmp[10]), .Y(n806) );
  CLKXOR2X2 U166 ( .A(txd_from_fifo[5]), .B(txd_from_fifo[4]), .Y(n82) );
  CLKXOR2X2 U167 ( .A(txd_from_fifo[7]), .B(txd_from_fifo[6]), .Y(n81) );
  CLKXOR2X2 U168 ( .A(rx_tmp[3]), .B(rx_tmp[2]), .Y(n39) );
  CLKXOR2X2 U169 ( .A(rx_tmp[0]), .B(n820), .Y(n38) );
  CLKXOR2X2 U170 ( .A(n36), .B(n37), .Y(n35) );
  CLKXOR2X2 U171 ( .A(rx_tmp[7]), .B(rx_tmp[6]), .Y(n36) );
  CLKXOR2X2 U172 ( .A(rx_tmp[5]), .B(rx_tmp[4]), .Y(n37) );
  CLKXOR2X2 U173 ( .A(n79), .B(n80), .Y(n78) );
  CLKXOR2X2 U174 ( .A(txd_from_fifo[3]), .B(txd_from_fifo[2]), .Y(n79) );
  CLKXOR2X2 U175 ( .A(txd_from_fifo[1]), .B(txd_from_fifo[0]), .Y(n80) );
endmodule


module Uart_FIFO_DEPTH16_FIFO_WIDTH8_ADDR_WIDTH4 ( fifo_w_clk, tx_clk, rst_n, 
        fifo_w_en, fifo_w_data, rxd_int_in, rxd, is_full, rxd_int, r_data, txd
 );
  input [7:0] fifo_w_data;
  output [7:0] r_data;
  input fifo_w_clk, tx_clk, rst_n, fifo_w_en, rxd_int_in, rxd;
  output is_full, rxd_int, txd;
  wire   fifo_r_en, is_empty, n16, n17, n18;
  wire   [7:0] fifo_r_data;

  UartFiFo_FIFO_WIDTH8_FIFO_DEPTH16_ADDR_WIDTH4 UartFiFo_ins ( .w_clk(
        fifo_w_clk), .w_rst_n(n16), .w_pt_reset(n18), .w_en(fifo_w_en), 
        .w_data(fifo_w_data), .r_clk(tx_clk), .r_rst_n(n18), .r_pt_reset(n18), 
        .r_en(fifo_r_en), .r_data(fifo_r_data), .is_empty(is_empty), .is_full(
        is_full) );
  UartIf UartIf_ins ( .clk_uart(tx_clk), .rst_n(n18), .txd_from_fifo(
        fifo_r_data), .fifo_empty(is_empty), .r_en(fifo_r_en), .txd(txd), 
        .rxd_int_in(rxd_int_in), .rxd(rxd), .r_data(r_data), .rxd_int(rxd_int)
         );
  INVX2 U1 ( .A(rst_n), .Y(n17) );
  INVX4 U2 ( .A(n17), .Y(n16) );
  CLKINVX4 U3 ( .A(n17), .Y(n18) );
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
  wire   n579, t_s_early, n82, n83, n84, n85, n86, n87, n88, n89, n491, n492,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n690, n691, n692, n701, n702, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744;
  assign tl_nxt[3] = n579;
  assign tl_nxt[6] = n491;

  OAI222X4 U7 ( .A0(n720), .A1(n52), .B0(n53), .B1(n733), .C0(n45), .C1(n708), 
        .Y(tl_nxt[4]) );
  OAI32X4 U14 ( .A0(n61), .A1(th[6]), .A2(n735), .B0(n60), .B1(n732), .Y(
        th_nxt[6]) );
  OAI21X8 U21 ( .A0(n68), .A1(n69), .B0(n690), .Y(n61) );
  OAI32X4 U31 ( .A0(n71), .A1(th[2]), .A2(th[1]), .B0(n723), .B1(n742), .Y(
        th_nxt[2]) );
  OAI222X4 U53 ( .A0(n720), .A1(n54), .B0(n92), .B1(n739), .C0(n45), .C1(n709), 
        .Y(n579) );
  NOR4BX4 U59 ( .AN(n719), .B(n734), .C(tmod[1]), .D(tmod[2]), .Y(n73) );
  OAI32X4 U60 ( .A0(n95), .A1(n52), .A2(n734), .B0(n96), .B1(n81), .Y(n492) );
  OR3X8 U66 ( .A(n97), .B(n737), .C(n81), .Y(n45) );
  AOI2B1X4 U67 ( .A1N(n93), .A0(n98), .B0(n47), .Y(n51) );
  OAI31X4 U69 ( .A0(n701), .A1(cnt_sig), .A2(n79), .B0(n78), .Y(n76) );
  OAI22X4 U71 ( .A0(n99), .A1(n100), .B0(n52), .B1(n55), .Y(n50) );
  OAI211X4 U72 ( .A0(n101), .A1(n726), .B0(n80), .C0(t_s), .Y(n55) );
  NAND3BX4 U78 ( .AN(n97), .B(t_s), .C(n81), .Y(n93) );
  NAND2BX8 U81 ( .AN(n54), .B(n733), .Y(n52) );
  NOR3BX4 U85 ( .AN(n719), .B(tmod[0]), .C(tmod[2]), .Y(n102) );
  DFFTRX2 cnt_sig_early_reg ( .D(cnt_sig), .RN(rst_n), .CK(clk), .QN(n701) );
  DFFTRX2 \ini_val_reg[0]  ( .D(1'b1), .RN(n82), .CK(clk), .QN(n711) );
  DFFTRX2 \ini_val_reg[4]  ( .D(1'b1), .RN(n86), .CK(clk), .QN(n708) );
  DFFTRX2 \ini_val_reg[2]  ( .D(1'b1), .RN(n84), .CK(clk), .QN(n712) );
  DFFTRX2 \ini_val_reg[3]  ( .D(1'b1), .RN(n85), .CK(clk), .QN(n709) );
  DFFTRX2 \ini_val_reg[6]  ( .D(1'b1), .RN(n88), .CK(clk), .QN(n706) );
  DFFTRX2 \ini_val_reg[5]  ( .D(1'b1), .RN(n87), .CK(clk), .QN(n710) );
  DFFTRX2 \ini_val_reg[7]  ( .D(1'b1), .RN(n89), .CK(clk), .QN(n713) );
  DFFTRX2 \ini_val_reg[1]  ( .D(1'b1), .RN(n83), .CK(clk), .QN(n707) );
  DFFTRX1 t_s_early_reg ( .D(rst_n), .RN(t_s), .CK(clk), .Q(t_s_early) );
  INVX2 U3 ( .A(n79), .Y(n730) );
  OA21X2 U4 ( .A0(n727), .A1(n734), .B0(n719), .Y(n101) );
  CLKBUFX6 U5 ( .A(rst_n), .Y(n719) );
  INVX2 U6 ( .A(n55), .Y(n721) );
  CLKAND2X4 U8 ( .A(n692), .B(n691), .Y(n690) );
  AND2X2 U9 ( .A(n715), .B(n738), .Y(n691) );
  AND2X2 U10 ( .A(n714), .B(n742), .Y(n692) );
  OAI222X4 U11 ( .A0(n45), .A1(n711), .B0(tl[0]), .B1(n720), .C0(n721), .C1(
        n728), .Y(tl_nxt[0]) );
  OAI222X4 U12 ( .A0(n49), .A1(n729), .B0(tl[6]), .B1(n51), .C0(n45), .C1(n706), .Y(n491) );
  OAI222X4 U13 ( .A0(n722), .A1(n736), .B0(tl[2]), .B1(n56), .C0(n45), .C1(
        n712), .Y(tl_nxt[2]) );
  CLKAND2X3 U24 ( .A(n75), .B(n704), .Y(n68) );
  INVX4 U25 ( .A(th[0]), .Y(n738) );
  INVX5 U26 ( .A(t_s), .Y(n737) );
  BUFX2 U27 ( .A(n102), .Y(n702) );
  NAND2X3 U28 ( .A(tmod[1]), .B(n702), .Y(n97) );
  CLKAND2X3 U29 ( .A(n716), .B(n74), .Y(n69) );
  OAI21X4 U30 ( .A0(t_s_early), .A1(n737), .B0(n719), .Y(n90) );
  CLKBUFX8 U32 ( .A(n90), .Y(n718) );
  BUFX2 U33 ( .A(n492), .Y(t_o) );
  CLKBUFX4 U34 ( .A(n76), .Y(n704) );
  CLKINVX2 U35 ( .A(n721), .Y(n705) );
  CLKINVX1 U36 ( .A(th[3]), .Y(n714) );
  CLKINVX1 U37 ( .A(th[1]), .Y(n715) );
  BUFX2 U38 ( .A(n73), .Y(n716) );
  OAI21X2 U39 ( .A0(n716), .A1(n704), .B0(t_s), .Y(n94) );
  NAND2X2 U40 ( .A(n72), .B(n744), .Y(n70) );
  OAI21X4 U41 ( .A0(n730), .A1(n101), .B0(n97), .Y(n99) );
  OAI2BB1X1 U42 ( .A0N(th[3]), .A1N(n717), .B0(n61), .Y(th_nxt[3]) );
  OR2X2 U43 ( .A(th[2]), .B(n70), .Y(n717) );
  NAND2X3 U44 ( .A(n93), .B(n94), .Y(n59) );
  INVX4 U45 ( .A(tl[0]), .Y(n728) );
  NAND2X4 U46 ( .A(tmod[2]), .B(n719), .Y(n79) );
  INVX5 U47 ( .A(tl[1]), .Y(n743) );
  INVX5 U48 ( .A(tl[6]), .Y(n729) );
  INVX2 U49 ( .A(th[7]), .Y(n740) );
  INVX2 U50 ( .A(th[1]), .Y(n744) );
  NOR2X4 U51 ( .A(n62), .B(n735), .Y(n60) );
  INVX2 U52 ( .A(n70), .Y(n723) );
  INVX4 U54 ( .A(n95), .Y(n731) );
  INVX2 U55 ( .A(n99), .Y(n726) );
  INVX2 U56 ( .A(n100), .Y(n725) );
  OAI21X6 U57 ( .A0(n68), .A1(n69), .B0(n738), .Y(n71) );
  OAI2BB2X2 U58 ( .B0(th[4]), .B1(n61), .A0N(n62), .A1N(th[4]), .Y(th_nxt[4])
         );
  OA21X2 U61 ( .A0(n725), .A1(n724), .B0(n50), .Y(n49) );
  OAI21X4 U62 ( .A0(cnt_sig), .A1(n701), .B0(n730), .Y(n80) );
  NAND2X3 U63 ( .A(n65), .B(n690), .Y(n62) );
  OAI221X2 U64 ( .A0(n58), .A1(n743), .B0(n45), .B1(n707), .C0(n56), .Y(
        tl_nxt[1]) );
  NAND3X4 U65 ( .A(n728), .B(n743), .C(n59), .Y(n56) );
  NAND2X2 U68 ( .A(n58), .B(n743), .Y(n57) );
  OAI21X2 U70 ( .A0(n725), .A1(n729), .B0(n49), .Y(n48) );
  AND3X4 U73 ( .A(n726), .B(n77), .C(n74), .Y(n65) );
  AO22X2 U74 ( .A0(n78), .A1(n79), .B0(n80), .B1(n75), .Y(n77) );
  INVX4 U75 ( .A(n59), .Y(n720) );
  NOR3X6 U76 ( .A(n52), .B(n731), .C(n737), .Y(n74) );
  NOR3X6 U77 ( .A(n737), .B(n731), .C(n81), .Y(n75) );
  NAND3X6 U79 ( .A(n729), .B(n741), .C(n98), .Y(n81) );
  NAND4X4 U80 ( .A(n64), .B(n690), .C(n732), .D(n740), .Y(n95) );
  NAND2X3 U82 ( .A(n702), .B(n727), .Y(n78) );
  NAND4X4 U83 ( .A(n728), .B(n743), .C(n736), .D(n739), .Y(n54) );
  NAND3X4 U84 ( .A(n78), .B(n93), .C(n79), .Y(n100) );
  CLKNAND2X8 U86 ( .A(n719), .B(n718), .Y(n91) );
  OAI22X2 U87 ( .A0(n718), .A1(n709), .B0(n91), .B1(n739), .Y(n85) );
  OAI22X2 U88 ( .A0(n707), .A1(n718), .B0(n743), .B1(n91), .Y(n83) );
  OAI22X2 U89 ( .A0(n713), .A1(n718), .B0(n741), .B1(n91), .Y(n89) );
  OAI22X2 U90 ( .A0(n710), .A1(n90), .B0(n724), .B1(n91), .Y(n87) );
  OAI22X2 U91 ( .A0(n718), .A1(n706), .B0(n729), .B1(n91), .Y(n88) );
  OAI22X2 U92 ( .A0(n712), .A1(n718), .B0(n736), .B1(n91), .Y(n84) );
  OAI22X2 U93 ( .A0(n708), .A1(n718), .B0(n733), .B1(n91), .Y(n86) );
  OAI22X2 U94 ( .A0(n711), .A1(n718), .B0(n728), .B1(n91), .Y(n82) );
  INVX4 U95 ( .A(n64), .Y(n735) );
  INVX2 U96 ( .A(th[2]), .Y(n742) );
  NOR2X4 U97 ( .A(n705), .B(tl[0]), .Y(n58) );
  INVX2 U98 ( .A(n57), .Y(n722) );
  OAI221X2 U99 ( .A0(n45), .A1(n710), .B0(n724), .B1(n50), .C0(n51), .Y(
        tl_nxt[5]) );
  OAI2B2X2 U100 ( .A1N(th[5]), .A0(n63), .B0(n735), .B1(n61), .Y(th_nxt[5]) );
  NOR2X2 U101 ( .A(th[4]), .B(n62), .Y(n63) );
  NOR2BX4 U102 ( .AN(n65), .B(th[0]), .Y(n72) );
  OAI21X2 U103 ( .A0(n65), .A1(n738), .B0(n71), .Y(th_nxt[0]) );
  OAI22X2 U104 ( .A0(th[1]), .A1(n71), .B0(n72), .B1(n744), .Y(th_nxt[1]) );
  NOR2X2 U105 ( .A(n54), .B(n705), .Y(n53) );
  OAI21X2 U106 ( .A0(n45), .A1(n713), .B0(n46), .Y(tl_nxt[7]) );
  AOI32X2 U107 ( .A0(n729), .A1(n741), .A2(n47), .B0(tl[7]), .B1(n48), .Y(n46)
         );
  AOI21X2 U108 ( .A0(n60), .A1(n732), .B0(n740), .Y(th_nxt[7]) );
  AND3X2 U109 ( .A(n98), .B(n704), .C(t_s), .Y(n47) );
  NOR2X2 U110 ( .A(tl[2]), .B(n57), .Y(n92) );
  NOR2X6 U111 ( .A(n52), .B(tl[5]), .Y(n98) );
  CLKINVX2 U112 ( .A(tmod[1]), .Y(n727) );
  INVX4 U113 ( .A(tmod[0]), .Y(n734) );
  INVX4 U114 ( .A(tl[2]), .Y(n736) );
  INVX4 U115 ( .A(tl[3]), .Y(n739) );
  INVX4 U116 ( .A(tl[4]), .Y(n733) );
  NOR2X4 U117 ( .A(th[4]), .B(th[5]), .Y(n64) );
  INVX4 U118 ( .A(th[6]), .Y(n732) );
  CLKINVX3 U119 ( .A(tl[5]), .Y(n724) );
  INVX4 U120 ( .A(tl[7]), .Y(n741) );
  AOI21X2 U121 ( .A0(tmod[1]), .A1(n734), .B0(n731), .Y(n96) );
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
  wire   t_s_early, n116, n117, n118, n119, n120, n121, n122, n123, n331, n619,
         n552, n620, n735, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n762,
         n763, n764, n765, n766, n767, n768, n769, n771, n772, n773, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825;
  assign tl_nxt[6] = n619;
  assign tl_nxt[2] = n552;

  OAI32X4 U14 ( .A0(n59), .A1(th[6]), .A2(n816), .B0(n58), .B1(n824), .Y(
        th_nxt[6]) );
  OAI31X4 U23 ( .A0(n64), .A1(th[2]), .A2(th[1]), .B0(n67), .Y(th_nxt[2]) );
  OAI32X4 U29 ( .A0(n812), .A1(n71), .A2(n49), .B0(n795), .B1(n807), .Y(n69)
         );
  AOI211X4 U31 ( .A0(n813), .A1(n76), .B0(n811), .C0(n77), .Y(n75) );
  AOI31X4 U36 ( .A0(n762), .A1(n809), .A2(n806), .B0(n786), .Y(n48) );
  NOR3BX4 U37 ( .AN(n73), .B(n795), .C(tl[5]), .Y(n43) );
  OAI221X4 U40 ( .A0(n54), .A1(n82), .B0(t_s), .B1(n83), .C0(n84), .Y(n51) );
  NOR2X8 U57 ( .A(n71), .B(tmod[0]), .Y(n78) );
  AOI2BB1X4 U64 ( .A0N(n88), .A1N(n82), .B0(n77), .Y(n84) );
  NOR3BX4 U68 ( .AN(n772), .B(n820), .C(cnt_sig), .Y(n88) );
  OAI32X4 U69 ( .A0(n807), .A1(tmod[0]), .A2(n818), .B0(n90), .B1(n70), .Y(
        n331) );
  DFFTRX2 \ini_val_reg[1]  ( .D(1'b1), .RN(n122), .CK(clk), .QN(n735) );
  DFFTRX2 \ini_val_reg[6]  ( .D(1'b1), .RN(n117), .CK(clk), .QN(n791) );
  DFFTRX2 \ini_val_reg[4]  ( .D(1'b1), .RN(n119), .CK(clk), .QN(n787) );
  DFFTRX2 \ini_val_reg[3]  ( .D(1'b1), .RN(n120), .CK(clk), .QN(n788) );
  DFFTRX2 \ini_val_reg[2]  ( .D(1'b1), .RN(n121), .CK(clk), .QN(n792) );
  DFFTRX2 \ini_val_reg[0]  ( .D(1'b1), .RN(n123), .CK(clk), .QN(n790) );
  DFFTRX2 \ini_val_reg[7]  ( .D(1'b1), .RN(n116), .CK(clk), .QN(n793) );
  DFFTRX2 \ini_val_reg[5]  ( .D(1'b1), .RN(n118), .CK(clk), .QN(n789) );
  DFFTRX1 t_s_early_reg ( .D(rst_n), .RN(t_s), .CK(clk), .Q(t_s_early) );
  DFFTRX2 cnt_sig_early_reg ( .D(cnt_sig), .RN(rst_n), .CK(clk), .QN(n773) );
  INVX5 U3 ( .A(n82), .Y(n813) );
  OAI22X2 U4 ( .A0(n792), .A1(n801), .B0(n810), .B1(n93), .Y(n121) );
  OAI22X2 U5 ( .A0(n788), .A1(n801), .B0(n823), .B1(n93), .Y(n120) );
  OAI22X2 U6 ( .A0(n791), .A1(n801), .B0(n825), .B1(n93), .Y(n117) );
  CLKAND2X4 U7 ( .A(t_s), .B(n765), .Y(n762) );
  AND2X2 U8 ( .A(n784), .B(n766), .Y(n763) );
  AND2X2 U9 ( .A(n799), .B(n800), .Y(n764) );
  AND2X2 U10 ( .A(n811), .B(n796), .Y(n765) );
  OAI21BX2 U11 ( .A0(n78), .A1(n762), .B0N(n73), .Y(n766) );
  AND2X2 U12 ( .A(n797), .B(n798), .Y(n767) );
  AND3X2 U13 ( .A(n811), .B(t_s), .C(n86), .Y(n768) );
  OAI222X4 U15 ( .A0(n46), .A1(n825), .B0(tl[6]), .B1(n48), .C0(n771), .C1(
        n791), .Y(n619) );
  CLKINVX1 U16 ( .A(n620), .Y(n769) );
  INVX2 U17 ( .A(n769), .Y(tl_nxt[0]) );
  CLKINVX8 U18 ( .A(n768), .Y(n771) );
  OAI21X2 U19 ( .A0(n735), .A1(n771), .B0(n55), .Y(tl_nxt[1]) );
  NOR2X6 U20 ( .A(n85), .B(tl[3]), .Y(n54) );
  NAND2X2 U21 ( .A(n767), .B(n764), .Y(n796) );
  OAI222X4 U22 ( .A0(n53), .A1(n810), .B0(n803), .B1(n85), .C0(n771), .C1(n792), .Y(n552) );
  OAI222X4 U24 ( .A0(n803), .A1(n805), .B0(n52), .B1(n823), .C0(n771), .C1(
        n788), .Y(tl_nxt[3]) );
  OAI222X4 U25 ( .A0(n803), .A1(n49), .B0(n50), .B1(n819), .C0(n771), .C1(n787), .Y(tl_nxt[4]) );
  CLKINVX4 U26 ( .A(n773), .Y(n772) );
  INVX2 U39 ( .A(tl[6]), .Y(n798) );
  NAND4X4 U41 ( .A(tmod[1]), .B(n802), .C(n812), .D(n817), .Y(n83) );
  CLKNAND2X2 U42 ( .A(n782), .B(n783), .Y(n47) );
  CLKINVX2 U43 ( .A(n51), .Y(n784) );
  CLKINVX1 U44 ( .A(n813), .Y(n785) );
  CLKNAND2X2 U45 ( .A(n819), .B(n763), .Y(n782) );
  CLKNAND2X2 U46 ( .A(n785), .B(n763), .Y(n783) );
  BUFX2 U47 ( .A(n43), .Y(n786) );
  AOI32X2 U48 ( .A0(n825), .A1(n821), .A2(n786), .B0(tl[7]), .B1(n44), .Y(n42)
         );
  BUFX2 U49 ( .A(n331), .Y(t_o) );
  CLKINVX4 U50 ( .A(n86), .Y(n807) );
  CLKINVX4 U51 ( .A(n796), .Y(n86) );
  CLKINVX6 U52 ( .A(t_s), .Y(n820) );
  OAI21X4 U53 ( .A0(t_s_early), .A1(n820), .B0(n802), .Y(n92) );
  CLKBUFX8 U54 ( .A(n92), .Y(n801) );
  CLKBUFX4 U55 ( .A(n72), .Y(n795) );
  AOI31X2 U56 ( .A0(n772), .A1(n815), .A2(n813), .B0(n78), .Y(n72) );
  OAI21X2 U58 ( .A0(th[1]), .A1(n66), .B0(th[2]), .Y(n67) );
  CLKINVX1 U59 ( .A(tl[7]), .Y(n797) );
  CLKINVX1 U60 ( .A(tl[5]), .Y(n799) );
  CLKINVX1 U61 ( .A(n49), .Y(n800) );
  NAND2X5 U62 ( .A(n54), .B(n819), .Y(n49) );
  NAND2BX2 U63 ( .AN(n762), .B(n87), .Y(n56) );
  AND3X2 U65 ( .A(n73), .B(n74), .C(n75), .Y(n68) );
  INVX5 U66 ( .A(tl[0]), .Y(n808) );
  NAND2X4 U67 ( .A(tmod[2]), .B(n802), .Y(n82) );
  CLKINVX3 U70 ( .A(tmod[0]), .Y(n812) );
  INVX2 U71 ( .A(tl[7]), .Y(n821) );
  BUFX8 U72 ( .A(rst_n), .Y(n802) );
  NOR2X4 U73 ( .A(n816), .B(n60), .Y(n58) );
  INVX2 U74 ( .A(n49), .Y(n806) );
  OA21X2 U75 ( .A0(n45), .A1(n809), .B0(n47), .Y(n46) );
  OAI21X2 U76 ( .A0(n45), .A1(n825), .B0(n46), .Y(n44) );
  NOR2BX4 U77 ( .AN(n84), .B(n820), .Y(n79) );
  NAND2BX4 U78 ( .AN(n64), .B(n65), .Y(n59) );
  NAND2X4 U79 ( .A(n63), .B(n804), .Y(n60) );
  NAND2X4 U80 ( .A(n68), .B(n822), .Y(n66) );
  NAND2X2 U81 ( .A(n79), .B(n808), .Y(n57) );
  INVX4 U82 ( .A(n56), .Y(n803) );
  INVX2 U83 ( .A(cnt_sig), .Y(n815) );
  NOR3X6 U84 ( .A(n762), .B(n78), .C(n813), .Y(n45) );
  NOR2X6 U85 ( .A(n820), .B(n49), .Y(n73) );
  NAND3X4 U86 ( .A(n818), .B(n817), .C(n802), .Y(n71) );
  NAND3X4 U87 ( .A(n814), .B(n810), .C(n808), .Y(n85) );
  INVX4 U88 ( .A(n83), .Y(n811) );
  CLKAND2X3 U89 ( .A(n89), .B(n82), .Y(n77) );
  OAI21X2 U90 ( .A0(n812), .A1(n818), .B0(n802), .Y(n89) );
  CLKNAND2X8 U91 ( .A(n802), .B(n801), .Y(n93) );
  OAI22X2 U92 ( .A0(n789), .A1(n801), .B0(n809), .B1(n93), .Y(n118) );
  OAI22X2 U93 ( .A0(n793), .A1(n801), .B0(n821), .B1(n93), .Y(n116) );
  OAI22X2 U94 ( .A0(n787), .A1(n801), .B0(n819), .B1(n93), .Y(n119) );
  OAI22X2 U95 ( .A0(n790), .A1(n801), .B0(n808), .B1(n93), .Y(n123) );
  INVX4 U96 ( .A(n62), .Y(n816) );
  INVX2 U97 ( .A(n54), .Y(n805) );
  OAI21X2 U98 ( .A0(n771), .A1(n793), .B0(n42), .Y(tl_nxt[7]) );
  NAND4X6 U99 ( .A(t_s), .B(n69), .C(n70), .D(n822), .Y(n64) );
  NOR3X6 U100 ( .A(th[1]), .B(th[2]), .C(n66), .Y(n63) );
  OAI221X2 U101 ( .A0(n47), .A1(n809), .B0(n771), .B1(n789), .C0(n48), .Y(
        tl_nxt[5]) );
  OAI222X2 U102 ( .A0(tl[0]), .A1(n803), .B0(n79), .B1(n808), .C0(n771), .C1(
        n790), .Y(n620) );
  OAI2BB2X2 U103 ( .B0(th[1]), .B1(n64), .A0N(n66), .A1N(th[1]), .Y(th_nxt[1])
         );
  OAI2BB2X2 U104 ( .B0(th[4]), .B1(n59), .A0N(n60), .A1N(th[4]), .Y(th_nxt[4])
         );
  OAI2B2X2 U105 ( .A1N(th[5]), .A0(n61), .B0(n816), .B1(n59), .Y(th_nxt[5]) );
  NOR2X2 U106 ( .A(th[4]), .B(n60), .Y(n61) );
  NOR2X4 U107 ( .A(n57), .B(tl[1]), .Y(n53) );
  OAI21X2 U108 ( .A0(n63), .A1(n804), .B0(n59), .Y(th_nxt[3]) );
  NOR3X4 U109 ( .A(n51), .B(n805), .C(n820), .Y(n50) );
  AOI32X2 U110 ( .A0(n808), .A1(n814), .A2(n56), .B0(tl[1]), .B1(n57), .Y(n55)
         );
  OAI2BB1X1 U111 ( .A0N(n71), .A1N(n795), .B0(t_s), .Y(n87) );
  OAI21X2 U112 ( .A0(n68), .A1(n822), .B0(n64), .Y(th_nxt[0]) );
  NOR2BX2 U113 ( .AN(n53), .B(tl[2]), .Y(n52) );
  AOI21BX2 U114 ( .A0(n58), .A1(n824), .B0N(th[7]), .Y(th_nxt[7]) );
  OAI21X2 U115 ( .A0(n78), .A1(n813), .B0(n807), .Y(n74) );
  NAND2X2 U116 ( .A(n772), .B(n815), .Y(n76) );
  NOR3X6 U117 ( .A(th[2]), .B(th[3]), .C(th[1]), .Y(n65) );
  NAND3X4 U118 ( .A(n65), .B(n62), .C(n91), .Y(n70) );
  NOR3X4 U119 ( .A(th[0]), .B(th[7]), .C(th[6]), .Y(n91) );
  INVX4 U120 ( .A(tl[4]), .Y(n819) );
  INVX4 U121 ( .A(tl[1]), .Y(n814) );
  INVX4 U122 ( .A(tmod[1]), .Y(n818) );
  CLKINVX4 U123 ( .A(tl[2]), .Y(n810) );
  INVX4 U124 ( .A(tmod[2]), .Y(n817) );
  NOR2X4 U125 ( .A(th[4]), .B(th[5]), .Y(n62) );
  OAI22X2 U126 ( .A0(n735), .A1(n92), .B0(n814), .B1(n93), .Y(n122) );
  CLKINVX4 U127 ( .A(tl[6]), .Y(n825) );
  CLKINVX4 U128 ( .A(th[0]), .Y(n822) );
  CLKINVX2 U129 ( .A(th[6]), .Y(n824) );
  INVX4 U130 ( .A(tl[5]), .Y(n809) );
  CLKINVX2 U131 ( .A(th[3]), .Y(n804) );
  CLKINVX2 U132 ( .A(tl[3]), .Y(n823) );
  AOI21X2 U133 ( .A0(tmod[0]), .A1(n806), .B0(n86), .Y(n90) );
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

  NOR3BX4 U2 ( .AN(IE[4]), .B(n7), .C(n8), .Y(int_early[4]) );
  AOI21BX4 U9 ( .A0(IE[0]), .A1(TCON[1]), .B0N(IE_7), .Y(n10) );
  NAND3BX2 U3 ( .AN(n8), .B(IE[2]), .C(TCON[3]), .Y(n4) );
  NAND3X2 U4 ( .A(TCON[2]), .B(IE[3]), .C(n9), .Y(n5) );
  INVX2 U5 ( .A(n4), .Y(int_early[2]) );
  AND3X4 U6 ( .A(IE_7), .B(IE[0]), .C(TCON[1]), .Y(int_early[0]) );
  NAND2X4 U7 ( .A(n10), .B(n6), .Y(n8) );
  INVX4 U8 ( .A(n6), .Y(int_early[1]) );
  INVX4 U10 ( .A(n5), .Y(int_early[3]) );
  OAI211X2 U11 ( .A0(SCON[1]), .A1(SCON[0]), .B0(n5), .C0(n4), .Y(n7) );
  NAND3X4 U12 ( .A(IE[1]), .B(n10), .C(TCON[0]), .Y(n6) );
  AOI21X2 U13 ( .A0(TCON[3]), .A1(IE[2]), .B0(n8), .Y(n9) );
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
         \add_34/carry[3] , \add_34/carry[2] , n1, n2, n4, n42, n43, n44;
  wire   [4:0] cnt_p;

  NOR3BX4 U10 ( .AN(n4), .B(cnt_p[1]), .C(cnt_p[0]), .Y(n1) );
  DFFRQX2 \cnt_p_reg[1]  ( .D(N11), .CK(clk_in), .RN(n44), .Q(cnt_p[1]) );
  DFFRQX2 \cnt_p_reg[4]  ( .D(N14), .CK(clk_in), .RN(n44), .Q(cnt_p[4]) );
  DFFRQX2 \cnt_p_reg[2]  ( .D(N12), .CK(clk_in), .RN(n44), .Q(cnt_p[2]) );
  DFFRQX2 \cnt_p_reg[3]  ( .D(N13), .CK(clk_in), .RN(n44), .Q(cnt_p[3]) );
  DFFRQX4 \cnt_p_reg[0]  ( .D(N10), .CK(clk_in), .RN(n44), .Q(cnt_p[0]) );
  ADDHX2 U15 ( .A(\add_34/carry[3] ), .B(cnt_p[3]), .CO(\add_34/carry[4] ), 
        .S(N8) );
  ADDHX2 U14 ( .A(\add_34/carry[2] ), .B(cnt_p[2]), .CO(\add_34/carry[3] ), 
        .S(N7) );
  ADDHX2 U13 ( .A(cnt_p[0]), .B(cnt_p[1]), .CO(\add_34/carry[2] ), .S(N6) );
  DFFSQX2 clk_o_reg ( .D(n3), .CK(clk_in), .SN(n44), .Q(clk_out) );
  CLKXOR2X2 U3 ( .A(clk_out), .B(n43), .Y(n3) );
  INVX2 U4 ( .A(n1), .Y(n42) );
  INVX6 U5 ( .A(n42), .Y(n43) );
  NOR2BX2 U6 ( .AN(N6), .B(n43), .Y(N11) );
  NOR2BX2 U7 ( .AN(N7), .B(n43), .Y(N12) );
  NOR2BX2 U8 ( .AN(N8), .B(n43), .Y(N13) );
  CLKBUFX6 U9 ( .A(rst_n), .Y(n44) );
  NOR3X4 U11 ( .A(cnt_p[2]), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n4) );
  NOR2X2 U12 ( .A(cnt_p[0]), .B(n43), .Y(N10) );
  NOR2X2 U16 ( .A(n43), .B(n2), .Y(N14) );
  XNOR2X2 U17 ( .A(cnt_p[4]), .B(\add_34/carry[4] ), .Y(n2) );
endmodule


module ClkDiv_DIV_NUM12 ( clk_in, rst_n, clk_out );
  input clk_in, rst_n;
  output clk_out;
  wire   N6, N7, N8, N11, N12, N13, N14, n3, \add_34/carry[4] ,
         \add_34/carry[3] , \add_34/carry[2] , n2, n4, n5, n24, n25;
  wire   [4:0] cnt_p;

  DFFRQX2 \cnt_p_reg[2]  ( .D(N12), .CK(clk_in), .RN(n24), .Q(cnt_p[2]) );
  DFFRQX2 \cnt_p_reg[4]  ( .D(N14), .CK(clk_in), .RN(n24), .Q(cnt_p[4]) );
  DFFRQX4 \cnt_p_reg[0]  ( .D(n25), .CK(clk_in), .RN(n24), .Q(cnt_p[0]) );
  ADDHX2 U13 ( .A(\add_34/carry[2] ), .B(cnt_p[2]), .CO(\add_34/carry[3] ), 
        .S(N7) );
  ADDHX2 U14 ( .A(cnt_p[3]), .B(\add_34/carry[3] ), .CO(\add_34/carry[4] ), 
        .S(N8) );
  ADDHX2 U12 ( .A(cnt_p[1]), .B(cnt_p[0]), .CO(\add_34/carry[2] ), .S(N6) );
  DFFSQX2 clk_o_reg ( .D(n3), .CK(clk_in), .SN(n24), .Q(clk_out) );
  DFFRQX4 \cnt_p_reg[3]  ( .D(N13), .CK(clk_in), .RN(n24), .Q(cnt_p[3]) );
  DFFRQX4 \cnt_p_reg[1]  ( .D(N11), .CK(clk_in), .RN(n24), .Q(cnt_p[1]) );
  NOR3X4 U3 ( .A(cnt_p[1]), .B(cnt_p[4]), .C(cnt_p[3]), .Y(n5) );
  CLKBUFX6 U4 ( .A(rst_n), .Y(n24) );
  NOR2BX2 U5 ( .AN(N8), .B(n2), .Y(N13) );
  NOR2BX2 U6 ( .AN(N6), .B(n2), .Y(N11) );
  NOR2BX2 U7 ( .AN(N7), .B(n2), .Y(N12) );
  AND3X6 U8 ( .A(cnt_p[2]), .B(cnt_p[0]), .C(n5), .Y(n2) );
  NOR2X2 U9 ( .A(n2), .B(n4), .Y(N14) );
  XNOR2X2 U10 ( .A(cnt_p[4]), .B(\add_34/carry[4] ), .Y(n4) );
  CLKXOR2X2 U11 ( .A(clk_out), .B(n2), .Y(n3) );
  INVX2 U15 ( .A(cnt_p[0]), .Y(n25) );
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
  wire   N54, n1196, n5771, n890, n1896, n5430, N1141, n792, n793, n794, n795,
         n796, n798, n799, n5428, n3850, n5772, n5427, n5429, n3935, n4596,
         n148, n149, n150, n151, n152, n153, n155, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n265, n266, n267, n268, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n686, n688, n689, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n703,
         n704, n705, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n5773, n5431, n5432, n5433, n5434,
         n5435, n5436, n5437, n5438, n5439, n5440, n5441, n5442, n5443, n5444,
         n5445, n5446, n5447, n5448, n5449, n5450, n5451, n5452, n5453, n5454,
         n5455, n5457, n5458, n5459, n5460, n5461, n5462, n5463, n5464, n5465,
         n5466, n5467, n5468, n5469, n5470, n5471, n5472, n5473, n5474, n5475,
         n5476, n5477, n5478, n5479, n5480, n5481, n5482, n5483, n5484, n5485,
         n5486, n5487, n5488, n5489, n5490, n5491, n5492, n5493, n5494, n5495,
         n5496, n5497, n5498, n5499, n5500, n5501, n5502, n5503, n5504, n5505,
         n5506, n5507, n5508, n5509, n5510, n5511, n5512, n5513, n5514, n5515,
         n5516, n5518, n5519, n5520, n5521, n5522, n5523, n5524, n5525, n5526,
         n5527, n5528, n5529, n5530, n5531, n5532, n5533, n5535, n5536, n5537,
         n5538, n5539, n5540, n5541, n5542, n5543, n5544, n5545, n5546, n5547,
         n5548, n5549, n5550, n5551, n5553, n5554, n5555, n5556, n5557, n5558,
         n5559, n5560, n5561, n5562, n5563, n5564, n5565, n5566, n5567, n5568,
         n5569, n5570, n5571, n5572, n5573, n5574, n5575, n5576, n5577, n5578,
         n5579, n5580, n5581, n5582, n5583, n5584, n5585, n5586, n5587, n5589,
         n5590, n5591, n5592, n5593, n5594, n5595, n5596, n5597, n5599, n5600,
         n5601, n5602, n5603, n5604, n5605, n5606, n5607, n5608, n5609, n5610,
         n5611, n5612, n5613, n5614, n5615, n5616, n5617, n5618, n5619, n5620,
         n5621, n5622, n5623, n5624, n5625, n5626, n5627, n5628, n5629, n5630,
         n5631, n5632, n5633, n5634, n5635, n5636, n5637, n5638, n5639, n5640,
         n5641, n5642, n5643, n5644, n5645, n5646, n5647, n5648, n5649, n5650,
         n5651, n5652, n5653, n5654, n5655, n5656, n5657, n5658, n5659, n5660,
         n5661, n5662, n5663, n5664, n5665, n5666, n5667, n5668, n5669, n5670,
         n5671, n5672, n5673, n5674, n5675, n5676, n5677, n5678, n5679, n5680,
         n5681, n5682, n5683, n5684, n5685, n5686, n5687, n5688, n5689, n5690,
         n5691, n5692, n5693, n5694, n5695, n5696, n5697, n5698, n5699, n5700,
         n5701, n5702, n5703, n5704, n5705, n5706, n5707, n5708, n5709, n5710,
         n5711, n5712, n5713, n5714, n5715, n5716, n5717, n5718, n5719, n5720,
         n5721, n5722, n5723, n5724, n5725, n5726, n5727, n5728, n5729, n5730,
         n5731, n5732, n5733, n5734, n5735, n5736, n5737, n5738, n5739, n5740,
         n5741, n5742, n5743, n5744, n5745, n5746, n5747, n5748, n5749, n5750,
         n5751, n5752, n5753, n5754, n5755, n5756, n5757, n5758, n5759, n5760,
         n5761, n5762, n5763, n5764, n5765, n5766, n5767, n5768, n5769, n5770;
  wire   [7:0] tmp;
  assign a_data_from[3] = 1'b0;
  assign b_data_from[2] = n890;
  assign b_data_from[0] = n1896;
  assign next_status[0] = n5430;
  assign alu_op[0] = n5428;
  assign alu_op[3] = n3850;
  assign alu_op[1] = n5427;

  DFFRHQX8 \tmp_reg[6]  ( .D(n793), .CK(clk), .RN(n5632), .Q(tmp[6]) );
  DFFRHQX8 \tmp_reg[1]  ( .D(n798), .CK(clk), .RN(n5632), .Q(N54) );
  DFFRHQX8 \tmp_reg[2]  ( .D(n3935), .CK(clk), .RN(n5632), .Q(n4596) );
  AOI211X4 U9 ( .A0(n5623), .A1(n5687), .B0(n162), .C0(n163), .Y(n161) );
  NOR3BX4 U12 ( .AN(n168), .B(n5557), .C(n5545), .Y(n167) );
  OAI222X4 U15 ( .A0(n176), .A1(n177), .B0(n178), .B1(n179), .C0(n180), .C1(
        n5627), .Y(n172) );
  NOR4BX4 U16 ( .AN(n182), .B(n183), .C(n155), .D(n184), .Y(n180) );
  NAND4X8 U25 ( .A(n5494), .B(n198), .C(n199), .D(n200), .Y(next_status[1]) );
  AOI31X4 U31 ( .A0(n212), .A1(n213), .A2(n214), .B0(n5628), .Y(n193) );
  AOI211X4 U43 ( .A0(n5675), .A1(n242), .B0(n243), .C0(n244), .Y(n198) );
  OAI31X4 U48 ( .A0(n252), .A1(n253), .A2(n245), .B0(n5450), .Y(n248) );
  OAI32X4 U49 ( .A0(n189), .A1(n254), .A2(n255), .B0(n5610), .B1(n221), .Y(
        n252) );
  NOR4BX4 U50 ( .AN(n256), .B(n257), .C(n258), .D(n259), .Y(n197) );
  AOI211X4 U54 ( .A0(n5661), .A1(n266), .B0(n267), .C0(n268), .Y(n265) );
  AOI211X4 U64 ( .A0(n5659), .A1(n280), .B0(n5508), .C0(n282), .Y(n287) );
  AOI221X4 U71 ( .A0(n5502), .A1(rom_data_register[5]), .B0(instruction[2]), 
        .B1(n298), .C0(n299), .Y(n296) );
  NAND3BX4 U77 ( .AN(n5508), .B(n309), .C(n310), .Y(addr_register_out[4]) );
  AOI221X4 U78 ( .A0(ram_data_register[4]), .A1(n311), .B0(tmp[4]), .B1(n312), 
        .C0(n313), .Y(n310) );
  AOI221X4 U85 ( .A0(n5675), .A1(n5613), .B0(n5671), .B1(n324), .C0(n5715), 
        .Y(n323) );
  NAND4BBX4 U86 ( .AN(n5432), .BN(n326), .C(n327), .D(n328), .Y(alu_op[2]) );
  NOR4BX4 U87 ( .AN(n329), .B(n330), .C(n331), .D(n5707), .Y(n328) );
  NOR4BX4 U96 ( .AN(n5608), .B(n5435), .C(n5648), .D(n352), .Y(n343) );
  AOI221X4 U113 ( .A0(n5616), .A1(n5717), .B0(n376), .B1(n5682), .C0(n377), 
        .Y(n375) );
  NOR4BX4 U114 ( .AN(n378), .B(n379), .C(n380), .D(n381), .Y(n358) );
  OAI31X4 U118 ( .A0(n387), .A1(n388), .A2(n389), .B0(n5614), .Y(n386) );
  NOR4BX4 U120 ( .AN(n5451), .B(n391), .C(n5439), .D(n5708), .Y(n385) );
  OAI31X4 U122 ( .A0(n5671), .A1(n5678), .A2(n241), .B0(n233), .Y(n378) );
  NAND3X8 U136 ( .A(n408), .B(n409), .C(n410), .Y(n5428) );
  AND3X8 U157 ( .A(n453), .B(n454), .C(n455), .Y(n354) );
  NOR4BX4 U166 ( .AN(n160), .B(n253), .C(n469), .D(n5682), .Y(n454) );
  AOI211X4 U170 ( .A0(n5672), .A1(n5532), .B0(n5699), .C0(n5708), .Y(n227) );
  NOR3X8 U172 ( .A(n473), .B(n5654), .C(n474), .Y(n160) );
  AND3X8 U174 ( .A(n290), .B(n476), .C(n477), .Y(n353) );
  AOI211X4 U183 ( .A0(n5716), .A1(n5687), .B0(n5448), .C0(n452), .Y(n493) );
  NAND4BBX4 U184 ( .AN(n434), .BN(n475), .C(n495), .D(n496), .Y(n452) );
  AOI221X4 U189 ( .A0(n5685), .A1(n5716), .B0(n5584), .B1(n187), .C0(n5693), 
        .Y(n495) );
  OAI2B11X4 U190 ( .A1N(n219), .A0(n164), .B0(n502), .C0(n503), .Y(n434) );
  OAI31X4 U194 ( .A0(n5664), .A1(n5512), .A2(n507), .B0(n5628), .Y(n490) );
  OAI211X4 U195 ( .A0(n488), .A1(n213), .B0(n508), .C0(n509), .Y(n439) );
  OAI22X4 U199 ( .A0(n514), .A1(n5609), .B0(n5631), .B1(n425), .Y(n451) );
  AOI211X4 U202 ( .A0(ram_data_register[0]), .A1(n517), .B0(n518), .C0(n185), 
        .Y(n516) );
  OAI31X4 U204 ( .A0(n245), .A1(n5676), .A2(n5485), .B0(n5628), .Y(n519) );
  NOR4BX4 U210 ( .AN(n523), .B(n510), .C(n194), .D(n436), .Y(n350) );
  OAI31X4 U224 ( .A0(n546), .A1(n5513), .A2(n547), .B0(n5611), .Y(n545) );
  NOR4BX4 U225 ( .AN(n513), .B(n366), .C(n548), .D(n435), .Y(n533) );
  NOR4BX4 U228 ( .AN(n541), .B(n5660), .C(n274), .D(n5671), .Y(n554) );
  AOI211X4 U229 ( .A0(n388), .A1(n555), .B0(n556), .C0(n557), .Y(n553) );
  OAI222X4 U239 ( .A0(n562), .A1(n5627), .B0(n5763), .B1(n563), .C0(n237), 
        .C1(n5486), .Y(n5772) );
  AOI221X4 U240 ( .A0(ram_data_register[3]), .A1(n5655), .B0(n472), .B1(
        rom_data_register[3]), .C0(n5526), .Y(n562) );
  AOI211X4 U242 ( .A0(n331), .A1(n5628), .B0(n568), .C0(n473), .Y(n567) );
  AOI211X4 U247 ( .A0(n5557), .A1(n5616), .B0(n571), .C0(n388), .Y(n566) );
  OAI2BB2X4 U260 ( .B0(n578), .B1(n569), .A0N(n579), .A1N(n5716), .Y(n474) );
  OAI211X4 U263 ( .A0(n5728), .A1(n5609), .B0(n5663), .C0(n581), .Y(n351) );
  NAND3BX4 U266 ( .AN(n458), .B(n584), .C(n585), .Y(n437) );
  AOI211X4 U277 ( .A0(n5658), .A1(n5577), .B0(n593), .C0(n282), .Y(n586) );
  AOI211X4 U280 ( .A0(n5659), .A1(n596), .B0(n5668), .C0(n5691), .Y(n595) );
  AOI2BB1X4 U290 ( .A0N(n602), .A1N(n270), .B0(n5668), .Y(n293) );
  AOI211X4 U293 ( .A0(N54), .A1(n5668), .B0(n606), .C0(n607), .Y(n605) );
  OAI32X4 U294 ( .A0(n290), .A1(ram_data_register[1]), .A2(
        ram_data_register[0]), .B0(n305), .B1(n5712), .Y(n607) );
  NAND3BX4 U296 ( .AN(n195), .B(n608), .C(n609), .Y(n592) );
  NOR3BX4 U297 ( .AN(n476), .B(n610), .C(n611), .Y(n609) );
  NOR2BX8 U300 ( .AN(n613), .B(n347), .Y(n502) );
  AOI221X4 U306 ( .A0(n5631), .A1(n5704), .B0(n5489), .B1(n5706), .C0(n5440), 
        .Y(n308) );
  AOI221X4 U307 ( .A0(n5614), .A1(n5704), .B0(n5450), .B1(n5706), .C0(n174), 
        .Y(n616) );
  NOR2BX8 U321 ( .AN(n5580), .B(n591), .Y(n297) );
  NOR3X8 U323 ( .A(n369), .B(n5671), .C(n625), .Y(n315) );
  AOI221X4 U329 ( .A0(n5482), .A1(n5704), .B0(n5750), .B1(n5706), .C0(n5440), 
        .Y(n630) );
  OAI211X4 U330 ( .A0(n403), .A1(n5628), .B0(n631), .C0(n632), .Y(n615) );
  OAI31X4 U333 ( .A0(n5439), .A1(n5669), .A2(n5699), .B0(n5600), .Y(n633) );
  NAND4BX4 U340 ( .AN(n298), .B(n370), .C(n256), .D(n637), .Y(n319) );
  AOI211X4 U341 ( .A0(n5734), .A1(n5697), .B0(n638), .C0(n639), .Y(n637) );
  AOI222X4 U344 ( .A0(n5515), .A1(n5631), .B0(n219), .B1(n5678), .C0(n5600), 
        .C1(n5697), .Y(n256) );
  OAI32X4 U346 ( .A0(n641), .A1(run_phase[0]), .A2(n642), .B0(n236), .B1(n521), 
        .Y(n640) );
  OAI22X4 U349 ( .A0(n461), .A1(n5582), .B0(n5627), .B1(n634), .Y(n196) );
  OAI32X4 U350 ( .A0(n5486), .A1(n647), .A2(n5582), .B0(n5627), .B1(n462), .Y(
        n645) );
  AOI31X4 U355 ( .A0(n648), .A1(tmp[5]), .A2(tmp[6]), .B0(tmp[7]), .Y(n602) );
  AOI221X4 U357 ( .A0(n5525), .A1(n301), .B0(ram_data_register[0]), .B1(n275), 
        .C0(n283), .Y(n618) );
  AOI211X4 U368 ( .A0(n219), .A1(n5611), .B0(n377), .C0(n372), .Y(n501) );
  NAND4BX4 U372 ( .AN(n610), .B(n476), .C(n608), .D(n655), .Y(n275) );
  NOR2BX8 U381 ( .AN(n570), .B(n5584), .Y(n520) );
  NAND4BBX4 U385 ( .AN(n559), .BN(n438), .C(n657), .D(n658), .Y(n5771) );
  AOI211X4 U386 ( .A0(n5526), .A1(n5744), .B0(n659), .C0(n660), .Y(n658) );
  AOI211X4 U395 ( .A0(n5489), .A1(n388), .B0(n5432), .C0(n5448), .Y(n657) );
  AOI2BB2X4 U397 ( .B0(n5753), .B1(n5665), .A0N(n5450), .A1N(n470), .Y(n550)
         );
  XNOR2X4 U407 ( .A(n5544), .B(n5527), .Y(n234) );
  OAI211X4 U408 ( .A0(n664), .A1(n334), .B0(n5609), .C0(n665), .Y(n325) );
  AOI211X4 U411 ( .A0(n5610), .A1(n5482), .B0(n5749), .C0(n5752), .Y(n666) );
  OAI21X8 U416 ( .A0(n5748), .A1(n5619), .B0(n5764), .Y(n279) );
  AOI221X4 U419 ( .A0(n306), .A1(n5759), .B0(n5581), .B1(n5712), .C0(n670), 
        .Y(n669) );
  OAI33X4 U420 ( .A0(n5638), .A1(ram_data_register[3]), .A2(n4596), .B0(n5639), 
        .B1(ram_data_register[5]), .B2(N54), .Y(n670) );
  AOI221X4 U421 ( .A0(n306), .A1(n5756), .B0(n5581), .B1(n5770), .C0(n671), 
        .Y(n668) );
  OAI33X4 U422 ( .A0(n5638), .A1(ram_data_register[2]), .A2(n4596), .B0(n5639), 
        .B1(ram_data_register[4]), .B2(N54), .Y(n671) );
  AOI211X4 U430 ( .A0(n5449), .A1(n336), .B0(n677), .C0(n678), .Y(n672) );
  NAND4X8 U432 ( .A(n679), .B(n680), .C(n681), .D(n682), .Y(a_data_from[0]) );
  OAI31X4 U434 ( .A0(n5627), .A1(n5610), .A2(n5625), .B0(n467), .Y(n573) );
  NOR2X8 U442 ( .A(n446), .B(n235), .Y(n398) );
  AOI211X4 U448 ( .A0(n5764), .A1(n5684), .B0(n377), .C0(n576), .Y(n686) );
  OAI32X4 U477 ( .A0(n698), .A1(n5623), .A2(n699), .B0(n700), .B1(n254), .Y(
        n697) );
  OAI222X4 U485 ( .A0(n5649), .A1(n5450), .B0(n707), .B1(n486), .C0(n487), 
        .C1(n5732), .Y(n572) );
  NOR2X8 U486 ( .A(n335), .B(n5707), .Y(n487) );
  OAI211X4 U491 ( .A0(n5757), .A1(n255), .B0(n491), .C0(n5650), .Y(n646) );
  NAND3X8 U495 ( .A(n5525), .B(n5769), .C(n5431), .Y(n255) );
  NOR2BX8 U500 ( .AN(n5431), .B(n5525), .Y(n689) );
  NOR2X8 U516 ( .A(n5704), .B(n5706), .Y(n499) );
  NOR3X8 U518 ( .A(n5624), .B(n5525), .C(n704), .Y(n579) );
  AOI211X4 U528 ( .A0(n233), .A1(n185), .B0(n713), .C0(n714), .Y(n681) );
  AOI21X8 U534 ( .A0(n485), .A1(n486), .B0(n715), .Y(n348) );
  NOR2BX8 U539 ( .AN(n5533), .B(n5530), .Y(n708) );
  OAI211X4 U548 ( .A0(n5748), .A1(n5619), .B0(n397), .C0(n5617), .Y(n667) );
  AOI222X4 U549 ( .A0(n5526), .A1(n448), .B0(n388), .B1(n263), .C0(n5696), 
        .C1(n464), .Y(n680) );
  NAND3X8 U555 ( .A(n5585), .B(n5620), .C(n5718), .Y(n216) );
  OAI21X8 U568 ( .A0(n549), .A1(n5619), .B0(n397), .Y(n367) );
  AOI222X4 U574 ( .A0(n5611), .A1(n5482), .B0(n5671), .B1(n5746), .C0(n5717), 
        .C1(n5744), .Y(n679) );
  NAND3X8 U575 ( .A(n5748), .B(n5618), .C(n5764), .Y(n397) );
  OA21X4 U584 ( .A0(n322), .A1(n5486), .B0(n341), .Y(n407) );
  OAI31X4 U586 ( .A0(n5672), .A1(n5685), .A2(n5700), .B0(n5718), .Y(n382) );
  OA21X4 U593 ( .A0(n626), .A1(n5487), .B0(n342), .Y(n406) );
  CLKNAND2X12 U605 ( .A(n5751), .B(n5618), .Y(n206) );
  DFFRQX4 \tmp_reg[5]  ( .D(n794), .CK(clk), .RN(n5632), .Q(tmp[5]) );
  DFFRQX4 \tmp_reg[4]  ( .D(n795), .CK(clk), .RN(n5632), .Q(tmp[4]) );
  DFFRQX4 \tmp_reg[3]  ( .D(n796), .CK(clk), .RN(n5632), .Q(tmp[3]) );
  DFFRQX4 \tmp_reg[0]  ( .D(n799), .CK(clk), .RN(n5632), .Q(N1141) );
  DFFRQX2 \tmp_reg[7]  ( .D(n792), .CK(clk), .RN(n5632), .Q(tmp[7]) );
  NAND2X2 U3 ( .A(n179), .B(n5626), .Y(n628) );
  INVX12 U4 ( .A(n5629), .Y(n5626) );
  OAI22X4 U5 ( .A0(n206), .A1(n208), .B0(n5656), .B1(n5712), .Y(n571) );
  AOI222X4 U6 ( .A0(n274), .A1(n5770), .B0(n5614), .B1(n622), .C0(N1141), .C1(
        n623), .Y(n621) );
  INVX4 U7 ( .A(ram_data_register[0]), .Y(n5770) );
  OAI211X4 U8 ( .A0(n5709), .A1(n5732), .B0(n5438), .C0(n543), .Y(n661) );
  INVX4 U10 ( .A(n531), .Y(n5709) );
  BUFX12 U11 ( .A(n709), .Y(n5431) );
  BUFX20 U13 ( .A(n325), .Y(n5432) );
  BUFX10 U14 ( .A(n533), .Y(n5520) );
  OR2X8 U17 ( .A(n548), .B(n661), .Y(n5470) );
  BUFX5 U18 ( .A(n5769), .Y(n5621) );
  NAND3X6 U19 ( .A(n719), .B(n5689), .C(n5761), .Y(n415) );
  NAND2X6 U20 ( .A(n719), .B(n5612), .Y(n418) );
  NOR2X8 U21 ( .A(n698), .B(n5622), .Y(n719) );
  CLKNAND2X12 U22 ( .A(n5527), .B(n711), .Y(n164) );
  NAND2X6 U23 ( .A(n694), .B(n5463), .Y(n194) );
  AOI22X4 U24 ( .A0(n701), .A1(n5689), .B0(n5700), .B1(n5713), .Y(n694) );
  CLKBUFX40 U26 ( .A(n277), .Y(n5433) );
  CLKNAND2X2 U27 ( .A(n5751), .B(run_phase[2]), .Y(n277) );
  NAND2X8 U28 ( .A(n5676), .B(n5718), .Y(n390) );
  NOR2X8 U29 ( .A(n5676), .B(n5711), .Y(n570) );
  INVX14 U30 ( .A(n715), .Y(n5676) );
  INVX4 U32 ( .A(n517), .Y(n5656) );
  BUFX10 U33 ( .A(n295), .Y(n5434) );
  OAI22X4 U34 ( .A0(n5656), .A1(n5758), .B0(n5721), .B1(n5673), .Y(n345) );
  BUFX20 U35 ( .A(n351), .Y(n5435) );
  NAND3X8 U36 ( .A(n294), .B(n5434), .C(n296), .Y(addr_register_out[2]) );
  CLKINVX40 U37 ( .A(n189), .Y(n5644) );
  CLKBUFX32 U38 ( .A(n5530), .Y(n5612) );
  CLKBUFX40 U39 ( .A(n396), .Y(n5436) );
  AOI21X4 U40 ( .A0(n5720), .A1(n5711), .B0(n5710), .Y(n396) );
  INVX18 U41 ( .A(n540), .Y(n5437) );
  CLKINVX40 U42 ( .A(n5437), .Y(n5438) );
  OAI21X3 U44 ( .A0(n663), .A1(n5710), .B0(n5610), .Y(n540) );
  NAND2X8 U45 ( .A(n179), .B(n5487), .Y(n555) );
  INVX20 U46 ( .A(n179), .Y(n5722) );
  CLKNAND2X12 U47 ( .A(n5752), .B(n5739), .Y(n179) );
  CLKNAND2X12 U51 ( .A(n5694), .B(n263), .Y(n416) );
  CLKINVX20 U52 ( .A(n220), .Y(n5694) );
  CLKNAND2X12 U53 ( .A(n5692), .B(n5737), .Y(n5550) );
  OA21X4 U55 ( .A0(n5544), .A1(n324), .B0(n5692), .Y(n5605) );
  OR2X8 U56 ( .A(n192), .B(n5692), .Y(n151) );
  OAI21X3 U57 ( .A0(n5519), .A1(n5746), .B0(n5692), .Y(n676) );
  NAND2X3 U58 ( .A(n5692), .B(n5630), .Y(n270) );
  INVX20 U59 ( .A(n334), .Y(n5692) );
  NOR4X8 U60 ( .A(n674), .B(n675), .C(n5675), .D(n348), .Y(n673) );
  AOI31X4 U61 ( .A0(n5679), .A1(n404), .A2(n5681), .B0(n5554), .Y(n675) );
  BUFX20 U62 ( .A(n247), .Y(n5439) );
  NAND2X8 U63 ( .A(n5653), .B(n635), .Y(n247) );
  OAI21X8 U65 ( .A0(n177), .A1(n207), .B0(n633), .Y(n368) );
  BUFX20 U66 ( .A(n615), .Y(n5440) );
  NAND2X8 U67 ( .A(n5738), .B(n209), .Y(n263) );
  CLKINVX32 U68 ( .A(n614), .Y(n5738) );
  INVX12 U69 ( .A(instruction[2]), .Y(n5762) );
  OR3X2 U70 ( .A(n5512), .B(n5576), .C(n175), .Y(n281) );
  INVX14 U72 ( .A(n290), .Y(n5658) );
  INVX4 U73 ( .A(n505), .Y(n5728) );
  INVX4 U74 ( .A(n5496), .Y(n5497) );
  NAND2X6 U75 ( .A(run_phase[1]), .B(run_phase[0]), .Y(n549) );
  NAND2X2 U76 ( .A(n487), .B(n563), .Y(n517) );
  NAND2X2 U79 ( .A(n398), .B(n5615), .Y(n563) );
  NAND2X4 U80 ( .A(run_phase[1]), .B(n5764), .Y(n716) );
  OAI21X6 U81 ( .A0(n5657), .A1(n5593), .B0(n635), .Y(n335) );
  INVX12 U82 ( .A(n5466), .Y(n5511) );
  OR2X6 U83 ( .A(n5605), .B(n5606), .Y(n510) );
  NAND3X2 U84 ( .A(n383), .B(n5745), .C(n666), .Y(n483) );
  BUFX10 U88 ( .A(n577), .Y(n5449) );
  NAND2X4 U89 ( .A(n5480), .B(n5762), .Y(n698) );
  NOR2X6 U90 ( .A(n5539), .B(n5540), .Y(n626) );
  NOR2X2 U91 ( .A(n415), .B(n5541), .Y(n5539) );
  NOR2X2 U92 ( .A(n446), .B(n418), .Y(n5540) );
  INVX16 U93 ( .A(n488), .Y(n5752) );
  NAND2X5 U94 ( .A(n5740), .B(n5685), .Y(n642) );
  INVX2 U95 ( .A(n507), .Y(n5650) );
  BUFX10 U97 ( .A(n211), .Y(n5446) );
  INVX4 U98 ( .A(n315), .Y(n5667) );
  INVX4 U99 ( .A(n716), .Y(n5751) );
  CLKBUFX4 U100 ( .A(n5722), .Y(n5613) );
  NAND2X4 U101 ( .A(n5726), .B(n5551), .Y(n324) );
  NOR2X2 U102 ( .A(n415), .B(n5530), .Y(n5528) );
  NAND2X4 U103 ( .A(n5735), .B(n231), .Y(n464) );
  BUFX4 U104 ( .A(n494), .Y(n5448) );
  CLKAND2X4 U105 ( .A(n5624), .B(n5452), .Y(n5467) );
  INVX10 U106 ( .A(run_phase[0]), .Y(n5764) );
  CLKBUFX4 U107 ( .A(n246), .Y(n5447) );
  INVX10 U108 ( .A(n693), .Y(n5533) );
  NOR2X6 U109 ( .A(n5689), .B(n5769), .Y(n718) );
  NOR2X6 U110 ( .A(n5760), .B(n5479), .Y(n709) );
  INVX8 U111 ( .A(n692), .Y(n5585) );
  INVX8 U112 ( .A(n521), .Y(n5740) );
  INVX18 U115 ( .A(n254), .Y(n5720) );
  NOR3X6 U116 ( .A(n641), .B(n5764), .C(n642), .Y(n173) );
  NAND2X6 U117 ( .A(n502), .B(n612), .Y(n195) );
  INVX2 U119 ( .A(n501), .Y(n5693) );
  INVX6 U121 ( .A(n5518), .Y(n5519) );
  INVX6 U123 ( .A(n164), .Y(n5717) );
  INVX5 U124 ( .A(n373), .Y(n5514) );
  INVX8 U125 ( .A(n392), .Y(n5704) );
  INVX8 U126 ( .A(n5447), .Y(n5706) );
  NAND2X5 U127 ( .A(n5431), .B(n718), .Y(n430) );
  INVX12 U128 ( .A(n260), .Y(n5670) );
  NAND3X6 U129 ( .A(n5585), .B(n5527), .C(n5718), .Y(n220) );
  BUFX10 U130 ( .A(instruction[5]), .Y(n5525) );
  INVX8 U131 ( .A(n1196), .Y(a_data_from[2]) );
  AND4X2 U132 ( .A(n551), .B(n552), .C(n553), .D(n554), .Y(n1196) );
  INVX4 U133 ( .A(ram_data_register[3]), .Y(n5763) );
  INVX2 U134 ( .A(ram_data_register[4]), .Y(n5645) );
  AOI22X2 U135 ( .A0(n5659), .A1(n5634), .B0(psw[4]), .B1(n319), .Y(n309) );
  AO21X2 U137 ( .A0(tmp[3]), .A1(n5659), .B0(n317), .Y(n312) );
  AOI222X2 U138 ( .A0(n300), .A1(tmp[4]), .B0(n5502), .B1(rom_data_register[4]), .C0(n5480), .C1(n298), .Y(n604) );
  NAND3X4 U139 ( .A(n285), .B(n286), .C(n287), .Y(addr_register_out[6]) );
  CLKINVX16 U140 ( .A(n158), .Y(n5653) );
  AND2X8 U141 ( .A(n5760), .B(n5479), .Y(n5441) );
  INVX6 U142 ( .A(n418), .Y(n5718) );
  OR3X2 U143 ( .A(n549), .B(run_phase[3]), .C(n5618), .Y(n5442) );
  NOR4X6 U144 ( .A(n192), .B(n471), .C(n475), .D(n5497), .Y(n5443) );
  NAND3X4 U145 ( .A(n5498), .B(n5769), .C(n5500), .Y(n5444) );
  CLKAND2X6 U146 ( .A(n5583), .B(n5462), .Y(n5445) );
  CLKINVX4 U147 ( .A(n415), .Y(n5688) );
  INVX10 U148 ( .A(n336), .Y(n5732) );
  CLKNAND2X8 U149 ( .A(n5553), .B(n716), .Y(n336) );
  INVX8 U150 ( .A(n5624), .Y(n5769) );
  BUFX18 U151 ( .A(n350), .Y(n5608) );
  CLKINVX2 U152 ( .A(n187), .Y(n5714) );
  INVX6 U153 ( .A(n151), .Y(n5575) );
  OAI21X8 U154 ( .A0(n302), .A1(n290), .B0(n5651), .Y(n318) );
  CLKINVX4 U155 ( .A(n592), .Y(n5651) );
  CLKAND2X12 U156 ( .A(n5446), .B(n5739), .Y(n5450) );
  AOI22X2 U158 ( .A0(tmp[6]), .A1(n291), .B0(rom_data_register[6]), .B1(n292), 
        .Y(n285) );
  OAI2BB2X4 U159 ( .B0(n314), .B1(n290), .A0N(n292), .A1N(rom_data_register[4]), .Y(n313) );
  OAI21X8 U160 ( .A0(n315), .A1(n5580), .B0(n5607), .Y(n292) );
  OAI221X4 U161 ( .A0(n166), .A1(n5732), .B0(n5768), .B1(n5673), .C0(n519), 
        .Y(n518) );
  AOI222X4 U162 ( .A0(n300), .A1(tmp[3]), .B0(instruction[0]), .B1(n319), .C0(
        n5576), .C1(n5631), .Y(n619) );
  NOR2X3 U163 ( .A(n231), .B(run_phase[2]), .Y(n211) );
  CLKNAND2X2 U164 ( .A(n579), .B(n5720), .Y(n246) );
  CLKNAND2X12 U165 ( .A(n336), .B(n187), .Y(n486) );
  AOI22X1 U167 ( .A0(n336), .A1(n366), .B0(n5557), .B1(n367), .Y(n365) );
  NAND4X8 U168 ( .A(n561), .B(n5571), .C(n541), .D(n542), .Y(n438) );
  NOR3X8 U169 ( .A(n5604), .B(n5511), .C(n5497), .Y(n561) );
  OAI221X4 U171 ( .A0(n520), .A1(n521), .B0(n5657), .B1(n5593), .C0(n450), .Y(
        n373) );
  NOR2X6 U173 ( .A(n231), .B(n214), .Y(n663) );
  NOR2X8 U175 ( .A(n5619), .B(n231), .Y(n484) );
  CLKNAND2X12 U176 ( .A(run_phase[0]), .B(n5748), .Y(n231) );
  OAI21X4 U177 ( .A0(n5615), .A1(n5513), .B0(n5526), .Y(n612) );
  NAND2X8 U178 ( .A(n235), .B(n521), .Y(n187) );
  CLKNAND2X12 U179 ( .A(n5741), .B(n5757), .Y(n521) );
  CLKBUFX40 U180 ( .A(n308), .Y(n5607) );
  NAND2X8 U181 ( .A(n672), .B(n673), .Y(n559) );
  INVX4 U182 ( .A(instruction[6]), .Y(n5760) );
  NAND4X8 U185 ( .A(n403), .B(n634), .C(n228), .D(n364), .Y(n577) );
  OAI21X8 U186 ( .A0(n520), .A1(n235), .B0(n426), .Y(n158) );
  INVX20 U187 ( .A(n5499), .Y(n5500) );
  CLKINVX12 U188 ( .A(n688), .Y(n5499) );
  INVX4 U191 ( .A(n5460), .Y(n5495) );
  INVX14 U192 ( .A(n5597), .Y(n302) );
  NAND3BX2 U193 ( .AN(n473), .B(n5438), .C(n404), .Y(n537) );
  NAND2X4 U196 ( .A(n5675), .B(n5489), .Y(n342) );
  NAND2X4 U197 ( .A(n5671), .B(n5489), .Y(n341) );
  INVX4 U198 ( .A(n348), .Y(n5677) );
  NAND2X2 U200 ( .A(n532), .B(n5747), .Y(n527) );
  NOR2X4 U201 ( .A(n5578), .B(n5470), .Y(n432) );
  OR2X4 U203 ( .A(n5753), .B(n5734), .Y(n229) );
  INVX4 U205 ( .A(n529), .Y(n5544) );
  OA22X2 U206 ( .A0(N1141), .A1(n668), .B0(n669), .B1(n5641), .Y(n529) );
  NAND2X4 U207 ( .A(n5739), .B(n5618), .Y(n717) );
  INVX6 U208 ( .A(n255), .Y(n5711) );
  AOI21X2 U209 ( .A0(instruction[6]), .A1(n5769), .B0(n5761), .Y(n699) );
  INVX4 U211 ( .A(run_phase[2]), .Y(n5754) );
  OAI21X6 U212 ( .A0(n5617), .A1(n397), .B0(n238), .Y(n546) );
  AOI21X6 U213 ( .A0(n5672), .A1(n5623), .B0(n5670), .Y(n403) );
  OAI21X4 U214 ( .A0(n5721), .A1(n341), .B0(n342), .Y(b_bit_location[2]) );
  INVX2 U215 ( .A(n561), .Y(n5648) );
  INVX4 U216 ( .A(n686), .Y(n5666) );
  INVX4 U217 ( .A(n194), .Y(n5571) );
  INVX4 U218 ( .A(n261), .Y(n5734) );
  INVX8 U219 ( .A(run_phase[1]), .Y(n5748) );
  NOR2X6 U220 ( .A(n5528), .B(n5529), .Y(n322) );
  AOI21X2 U221 ( .A0(n485), .A1(n486), .B0(n255), .Y(n481) );
  OAI22X2 U222 ( .A0(n487), .A1(n5732), .B0(n488), .B1(n221), .Y(n480) );
  NAND3X2 U223 ( .A(n512), .B(n5686), .C(n560), .Y(n441) );
  OAI2BB1X2 U226 ( .A0N(n5729), .A1N(n5551), .B0(n5675), .Y(n585) );
  OAI221X2 U227 ( .A0(n417), .A1(n418), .B0(n419), .B1(n5769), .C0(n420), .Y(
        n411) );
  AND2X2 U230 ( .A(n5542), .B(n5543), .Y(n5452) );
  INVX2 U231 ( .A(n5525), .Y(n5543) );
  INVX2 U232 ( .A(n704), .Y(n5542) );
  INVX8 U233 ( .A(n427), .Y(n5716) );
  NOR2X4 U234 ( .A(n314), .B(ram_data_register[5]), .Y(n273) );
  NAND3X4 U235 ( .A(n5763), .B(n5645), .C(n302), .Y(n314) );
  INVX5 U236 ( .A(n5459), .Y(n5498) );
  INVX4 U237 ( .A(n214), .Y(n5705) );
  NAND3X6 U238 ( .A(n5441), .B(n5620), .C(n5716), .Y(n449) );
  NOR2BX4 U241 ( .AN(n689), .B(n5532), .Y(n688) );
  BUFX10 U243 ( .A(n382), .Y(n5609) );
  INVX10 U244 ( .A(n647), .Y(n5672) );
  INVX2 U245 ( .A(n174), .Y(n5574) );
  NAND2X6 U246 ( .A(n5562), .B(n5461), .Y(n5560) );
  NAND2X4 U248 ( .A(n712), .B(n5468), .Y(n258) );
  NOR4X4 U249 ( .A(n5648), .B(n441), .C(n559), .D(n5666), .Y(n551) );
  INVX4 U250 ( .A(n228), .Y(n5669) );
  NAND2X4 U251 ( .A(n5697), .B(n5613), .Y(n476) );
  INVX4 U252 ( .A(n364), .Y(n5698) );
  INVX4 U253 ( .A(n528), .Y(n5654) );
  INVX5 U254 ( .A(n449), .Y(n5715) );
  OAI211X2 U255 ( .A0(n5735), .A1(n364), .B0(n5647), .C0(n365), .Y(n361) );
  INVX10 U256 ( .A(n5602), .Y(n208) );
  INVX5 U257 ( .A(n389), .Y(n5679) );
  CLKNAND2X8 U258 ( .A(n708), .B(n5757), .Y(n235) );
  NAND2X4 U259 ( .A(n5672), .B(n5720), .Y(n470) );
  BUFX8 U261 ( .A(n5531), .Y(n5526) );
  NOR4X6 U262 ( .A(n172), .B(n173), .C(n174), .D(n175), .Y(n171) );
  INVX2 U264 ( .A(n630), .Y(n5652) );
  INVX2 U265 ( .A(n5693), .Y(n5579) );
  INVX6 U267 ( .A(ram_data_register[7]), .Y(n5759) );
  INVX4 U268 ( .A(N1141), .Y(n5641) );
  INVX2 U269 ( .A(rom_data_register[3]), .Y(n5643) );
  INVX4 U270 ( .A(tmp[3]), .Y(n5636) );
  INVX2 U271 ( .A(rom_data_register[4]), .Y(n5767) );
  INVX4 U272 ( .A(tmp[4]), .Y(n5635) );
  INVX8 U273 ( .A(n4596), .Y(n5639) );
  INVX4 U274 ( .A(ram_data_register[6]), .Y(n5756) );
  NAND4X6 U275 ( .A(n597), .B(n598), .C(n599), .D(n600), .Y(
        addr_register_out[3]) );
  AOI22X2 U276 ( .A0(psw[3]), .A1(n319), .B0(n300), .B1(tmp[6]), .Y(n597) );
  AOI21X2 U278 ( .A0(instruction[6]), .A1(n301), .B0(n281), .Y(n603) );
  INVX6 U279 ( .A(n461), .Y(n5687) );
  NAND2X6 U281 ( .A(n207), .B(n221), .Y(n163) );
  INVX6 U282 ( .A(n153), .Y(n5557) );
  INVX6 U283 ( .A(n5464), .Y(n5512) );
  AOI2BB2X2 U284 ( .B0(n4596), .B1(n5668), .A0N(n5721), .A1N(n5607), .Y(n294)
         );
  NOR4X6 U285 ( .A(n683), .B(n684), .C(n5666), .D(n5506), .Y(n682) );
  NAND4BBX4 U286 ( .AN(n258), .BN(n710), .C(n5495), .D(n5681), .Y(n683) );
  OR3X2 U287 ( .A(n438), .B(n5449), .C(n678), .Y(n684) );
  INVX10 U288 ( .A(run_phase[3]), .Y(n5739) );
  INVX6 U289 ( .A(n5629), .Y(n5628) );
  CLKAND2X4 U291 ( .A(n5476), .B(n5457), .Y(n5451) );
  NAND2X5 U292 ( .A(n484), .B(n5739), .Y(n209) );
  INVX4 U295 ( .A(n209), .Y(n5737) );
  NAND2X6 U298 ( .A(n5445), .B(n5498), .Y(n226) );
  INVX4 U299 ( .A(n226), .Y(n5665) );
  INVX2 U301 ( .A(n5600), .Y(n321) );
  INVX4 U302 ( .A(n5599), .Y(n237) );
  AND2X2 U303 ( .A(n478), .B(n479), .Y(n5453) );
  OR2X2 U304 ( .A(n435), .B(n5522), .Y(n5454) );
  AND2X2 U305 ( .A(n5523), .B(n5524), .Y(n5455) );
  OR2X4 U308 ( .A(n5537), .B(n5474), .Y(a_bit_location[2]) );
  AND2X2 U309 ( .A(n5586), .B(n5587), .Y(n5457) );
  OR2X2 U310 ( .A(n5446), .B(n5519), .Y(n332) );
  INVX2 U311 ( .A(n5717), .Y(n5484) );
  INVX2 U312 ( .A(n641), .Y(n5731) );
  NAND2X8 U313 ( .A(n5736), .B(run_phase[1]), .Y(n641) );
  CLKBUFX6 U314 ( .A(n5722), .Y(n5614) );
  NAND2X4 U315 ( .A(n5549), .B(n5550), .Y(n369) );
  INVX2 U316 ( .A(n369), .Y(n5592) );
  INVX4 U317 ( .A(n5514), .Y(n5515) );
  INVX4 U318 ( .A(n446), .Y(n5680) );
  AND2X2 U319 ( .A(n5572), .B(n5573), .Y(n5458) );
  OR3X2 U320 ( .A(n5480), .B(instruction[2]), .C(instruction[0]), .Y(n5459) );
  AO22X2 U322 ( .A0(n5485), .A1(n5513), .B0(n546), .B1(n5611), .Y(n5460) );
  AND2X2 U324 ( .A(n5592), .B(n5561), .Y(n5461) );
  AND2X2 U325 ( .A(instruction[5]), .B(n5757), .Y(n5462) );
  INVX4 U326 ( .A(n5625), .Y(n5490) );
  CLKBUFX4 U327 ( .A(n188), .Y(n5625) );
  AND2X2 U328 ( .A(n695), .B(n5565), .Y(n5463) );
  OR2X2 U331 ( .A(n430), .B(n569), .Y(n5464) );
  OR2X2 U332 ( .A(n471), .B(n331), .Y(n5465) );
  INVX2 U334 ( .A(n5600), .Y(n5488) );
  OR3X2 U335 ( .A(n5689), .B(n5624), .C(n704), .Y(n500) );
  INVX6 U336 ( .A(n500), .Y(n5584) );
  OA22X2 U337 ( .A0(n5631), .A1(n424), .B0(n5732), .B1(n426), .Y(n5466) );
  AND2X2 U338 ( .A(n5547), .B(n5548), .Y(n5468) );
  AND2X2 U339 ( .A(n5574), .B(n5458), .Y(n5469) );
  INVX2 U342 ( .A(n484), .Y(n5518) );
  AND2X2 U343 ( .A(n5555), .B(n5556), .Y(n5471) );
  AND2X2 U345 ( .A(n5569), .B(n5570), .Y(n5472) );
  AND2X2 U347 ( .A(n442), .B(n443), .Y(n5473) );
  OR2X2 U348 ( .A(n5535), .B(n5536), .Y(n5474) );
  OR2X2 U351 ( .A(n433), .B(n434), .Y(n5475) );
  INVX5 U352 ( .A(N54), .Y(n5638) );
  NOR2X4 U353 ( .A(n427), .B(n570), .Y(n472) );
  INVX4 U354 ( .A(n472), .Y(n5673) );
  AND2X2 U356 ( .A(n470), .B(n5673), .Y(n5476) );
  OR2X2 U358 ( .A(n240), .B(n5684), .Y(n5477) );
  NAND2X4 U359 ( .A(n5685), .B(n5713), .Y(n465) );
  INVX4 U360 ( .A(n465), .Y(n5545) );
  AND2X2 U361 ( .A(n5590), .B(n5591), .Y(n5478) );
  CLKBUFX40 U362 ( .A(instruction[7]), .Y(n5479) );
  CLKBUFX40 U363 ( .A(instruction[1]), .Y(n5480) );
  INVX8 U364 ( .A(n5446), .Y(n5481) );
  INVX6 U365 ( .A(n5481), .Y(n5482) );
  INVX4 U366 ( .A(instruction[0]), .Y(n5530) );
  INVX6 U367 ( .A(n5599), .Y(n5483) );
  INVX4 U369 ( .A(n5484), .Y(n5485) );
  NAND2X4 U370 ( .A(instruction[2]), .B(n5480), .Y(n656) );
  CLKINVX4 U371 ( .A(n5600), .Y(n5486) );
  INVX4 U373 ( .A(n5600), .Y(n5487) );
  INVX10 U374 ( .A(n5622), .Y(n5757) );
  INVX4 U375 ( .A(n5622), .Y(n5582) );
  INVX8 U376 ( .A(n5488), .Y(n5489) );
  INVX4 U377 ( .A(n5490), .Y(n5491) );
  INVX4 U378 ( .A(n5490), .Y(n5492) );
  INVX2 U379 ( .A(n197), .Y(n5493) );
  INVX2 U380 ( .A(n5493), .Y(n5494) );
  CLKINVX24 U382 ( .A(n572), .Y(n5496) );
  OAI222X2 U383 ( .A0(n353), .A1(n5645), .B0(n354), .B1(n5635), .C0(n355), 
        .C1(n5767), .Y(n795) );
  CLKINVX32 U384 ( .A(n297), .Y(n5501) );
  INVX20 U387 ( .A(n5501), .Y(n5502) );
  NAND3X6 U388 ( .A(n705), .B(n5585), .C(n720), .Y(n334) );
  NOR3X6 U389 ( .A(instruction[0]), .B(n5532), .C(n5620), .Y(n705) );
  INVX2 U390 ( .A(n227), .Y(n5503) );
  CLKINVX2 U391 ( .A(n5503), .Y(n5504) );
  INVX2 U392 ( .A(n573), .Y(n5505) );
  INVX4 U393 ( .A(n5505), .Y(n5506) );
  OAI22X2 U394 ( .A0(n205), .A1(n221), .B0(n5723), .B1(n334), .Y(n362) );
  OR2X2 U396 ( .A(n205), .B(n5686), .Y(n584) );
  AOI21X6 U398 ( .A0(run_phase[0]), .A1(run_phase[2]), .B0(n233), .Y(n205) );
  INVX2 U399 ( .A(n284), .Y(n5507) );
  CLKINVX3 U400 ( .A(n5507), .Y(n5508) );
  OAI211X2 U401 ( .A0(n5444), .A1(n5487), .B0(n322), .C0(n323), .Y(n284) );
  INVX2 U402 ( .A(n423), .Y(n5509) );
  CLKINVX4 U403 ( .A(n5509), .Y(n5510) );
  OAI211X2 U404 ( .A0(n5690), .A1(n235), .B0(n580), .C0(n404), .Y(n423) );
  NOR3X6 U405 ( .A(n5644), .B(run_phase[2]), .C(n242), .Y(n511) );
  NAND2X5 U406 ( .A(n5730), .B(n279), .Y(n242) );
  INVX5 U409 ( .A(n5442), .Y(n5513) );
  OAI22X2 U410 ( .A0(n5595), .A1(n569), .B0(n703), .B1(n704), .Y(n701) );
  INVX2 U412 ( .A(n5441), .Y(n5595) );
  OAI211X2 U413 ( .A0(n260), .A1(n261), .B0(n5451), .C0(n262), .Y(n257) );
  AOI22X2 U414 ( .A0(n5671), .A1(n263), .B0(n5557), .B1(n5749), .Y(n262) );
  AOI32X2 U415 ( .A0(n5731), .A1(run_phase[0]), .A2(n5698), .B0(n218), .B1(
        n219), .Y(n217) );
  AOI21X4 U417 ( .A0(n5698), .A1(n5600), .B0(n368), .Y(n632) );
  BUFX5 U418 ( .A(instruction[3]), .Y(n5622) );
  BUFX10 U423 ( .A(instruction[3]), .Y(n5532) );
  BUFX10 U424 ( .A(instruction[3]), .Y(n5623) );
  AOI211X4 U425 ( .A0(n5688), .A1(n5621), .B0(n5511), .C0(n338), .Y(n478) );
  NAND2X4 U426 ( .A(n5723), .B(n177), .Y(n219) );
  CLKNAND2X8 U427 ( .A(n5746), .B(n5739), .Y(n177) );
  NAND4BBX2 U428 ( .AN(n368), .BN(n369), .C(n370), .D(n371), .Y(n360) );
  AOI21X2 U429 ( .A0(n705), .A1(instruction[2]), .B0(n5740), .Y(n703) );
  NOR4X4 U431 ( .A(n194), .B(n259), .C(n372), .D(n5515), .Y(n371) );
  NOR4X4 U433 ( .A(n245), .B(n5515), .C(n5439), .D(n475), .Y(n453) );
  INVX2 U435 ( .A(n5772), .Y(n5516) );
  INVX5 U436 ( .A(n5516), .Y(b_data_from[3]) );
  INVX10 U437 ( .A(instruction[5]), .Y(n5689) );
  NOR4X8 U438 ( .A(n548), .B(n340), .C(n5511), .D(n576), .Y(n575) );
  BUFX10 U439 ( .A(n343), .Y(n5521) );
  NAND4BX2 U440 ( .AN(n352), .B(n5608), .C(n515), .D(n516), .Y(n1896) );
  NAND3X8 U441 ( .A(n5612), .B(n5757), .C(n5533), .Y(n427) );
  NAND2X8 U443 ( .A(instruction[6]), .B(n5479), .Y(n704) );
  OR2X8 U444 ( .A(n5479), .B(instruction[6]), .Y(n578) );
  NAND2X8 U445 ( .A(n586), .B(n587), .Y(addr_register_out[5]) );
  NOR4X8 U446 ( .A(n588), .B(n5502), .C(n5715), .D(n300), .Y(n587) );
  NOR4X8 U447 ( .A(n5435), .B(n5510), .C(n440), .D(n5506), .Y(n564) );
  NAND3X8 U449 ( .A(n5520), .B(n534), .C(n535), .Y(n352) );
  CLKNAND2X12 U450 ( .A(n5498), .B(n5757), .Y(n254) );
  OR2X8 U451 ( .A(n5762), .B(n5480), .Y(n693) );
  NOR4X8 U452 ( .A(n5612), .B(n5480), .C(instruction[2]), .D(n5532), .Y(n711)
         );
  NOR2X2 U453 ( .A(n5475), .B(n5454), .Y(n409) );
  CLKINVX1 U454 ( .A(n432), .Y(n5522) );
  OAI222X2 U455 ( .A0(n353), .A1(n5763), .B0(n354), .B1(n5636), .C0(n355), 
        .C1(n5643), .Y(n796) );
  OAI222X2 U456 ( .A0(n353), .A1(n5759), .B0(n354), .B1(n5640), .C0(n355), 
        .C1(n5766), .Y(n792) );
  CLKNAND2X4 U457 ( .A(n5473), .B(n5455), .Y(n5427) );
  INVX1 U458 ( .A(n441), .Y(n5523) );
  CLKINVX1 U459 ( .A(n440), .Y(n5524) );
  NAND4X4 U460 ( .A(n513), .B(n528), .C(n574), .D(n575), .Y(n440) );
  NOR2X2 U461 ( .A(n569), .B(n446), .Y(n5529) );
  NOR3X6 U462 ( .A(n5689), .B(n578), .C(n5757), .Y(n507) );
  NAND3X3 U463 ( .A(n5621), .B(n5689), .C(n5441), .Y(n647) );
  OAI222X2 U464 ( .A0(n353), .A1(n5646), .B0(n354), .B1(n5633), .C0(n355), 
        .C1(n5765), .Y(n794) );
  OAI222X2 U465 ( .A0(n353), .A1(n5770), .B0(n354), .B1(n5641), .C0(n355), 
        .C1(n5768), .Y(n799) );
  CLKINVX4 U466 ( .A(n5445), .Y(n5657) );
  BUFX3 U467 ( .A(n5599), .Y(n5531) );
  INVX5 U468 ( .A(n5769), .Y(n5527) );
  NAND3X4 U469 ( .A(n5624), .B(n5689), .C(n5441), .Y(n715) );
  OAI222X2 U470 ( .A0(n353), .A1(n5756), .B0(n354), .B1(n5637), .C0(n355), 
        .C1(n5642), .Y(n793) );
  CLKNAND2X8 U471 ( .A(n718), .B(n5441), .Y(n446) );
  NAND2X6 U472 ( .A(n719), .B(instruction[0]), .Y(n569) );
  AOI22X2 U473 ( .A0(n5680), .A1(n506), .B0(n5688), .B1(n447), .Y(n492) );
  AOI21X8 U474 ( .A0(n5531), .A1(n582), .B0(n413), .Y(n581) );
  CLKAND2X3 U475 ( .A(n5720), .B(n5687), .Y(n5599) );
  OAI222X2 U476 ( .A0(n353), .A1(n5712), .B0(n354), .B1(n5638), .C0(n355), 
        .C1(n5755), .Y(n798) );
  NOR2X2 U478 ( .A(n406), .B(n5721), .Y(n5535) );
  NOR2X2 U479 ( .A(n5639), .B(n405), .Y(n5536) );
  INVX2 U480 ( .A(n407), .Y(n5537) );
  INVX5 U481 ( .A(rom_data_register[2]), .Y(n5721) );
  NAND2X3 U482 ( .A(n322), .B(n580), .Y(n366) );
  OR3X1 U483 ( .A(n194), .B(n195), .C(n196), .Y(n5601) );
  CLKINVX4 U484 ( .A(n5602), .Y(n5538) );
  AND3X4 U487 ( .A(n5742), .B(n5612), .C(n5445), .Y(n5602) );
  CLKINVX1 U488 ( .A(n5612), .Y(n5541) );
  OAI21X6 U489 ( .A0(n5724), .A1(n626), .B0(n627), .Y(n625) );
  NOR2X4 U490 ( .A(n5503), .B(n5477), .Y(n168) );
  CLKINVX1 U492 ( .A(n642), .Y(n5546) );
  NAND2X2 U493 ( .A(n5545), .B(n336), .Y(n5547) );
  NAND2X2 U494 ( .A(n5546), .B(n641), .Y(n5548) );
  AOI22X2 U496 ( .A0(n5674), .A1(n662), .B0(n5683), .B1(n5627), .Y(n712) );
  NAND2X2 U497 ( .A(n5665), .B(n5614), .Y(n5549) );
  NAND2X3 U498 ( .A(n5445), .B(n708), .Y(n635) );
  OR2X1 U499 ( .A(n306), .B(n5581), .Y(n303) );
  NOR2X8 U501 ( .A(n5638), .B(n5639), .Y(n306) );
  INVX20 U502 ( .A(n307), .Y(n5581) );
  OAI222X2 U503 ( .A0(n353), .A1(n5758), .B0(n354), .B1(n5639), .C0(n355), 
        .C1(n5721), .Y(n3935) );
  CLKNAND2X8 U504 ( .A(n5521), .B(n344), .Y(n890) );
  INVX5 U505 ( .A(n332), .Y(n5551) );
  BUFX5 U506 ( .A(n5773), .Y(b_bit_location[0]) );
  OAI21X2 U507 ( .A0(n341), .A1(n5768), .B0(n342), .Y(n5773) );
  INVX20 U508 ( .A(n229), .Y(n5553) );
  CLKINVX4 U509 ( .A(n229), .Y(n5554) );
  NAND2X5 U510 ( .A(n5453), .B(n5471), .Y(n3850) );
  CLKINVX1 U511 ( .A(n439), .Y(n5555) );
  CLKINVX1 U512 ( .A(n451), .Y(n5556) );
  NOR4X4 U513 ( .A(n480), .B(n481), .C(n5715), .D(n482), .Y(n479) );
  OR2X2 U514 ( .A(n427), .B(n446), .Y(n153) );
  CLKINVX40 U515 ( .A(n5558), .Y(n541) );
  NOR2X6 U517 ( .A(n5664), .B(n5465), .Y(n5559) );
  NOR2X8 U519 ( .A(n5559), .B(n5450), .Y(n5558) );
  NAND2X8 U520 ( .A(n5560), .B(n5667), .Y(n591) );
  CLKINVX1 U521 ( .A(n5613), .Y(n5561) );
  INVX2 U522 ( .A(n625), .Y(n5562) );
  CLKINVX1 U523 ( .A(n430), .Y(n5563) );
  CLKINVX1 U524 ( .A(n254), .Y(n5564) );
  CLKNAND2X2 U525 ( .A(n5563), .B(n5564), .Y(n5565) );
  NAND2X5 U526 ( .A(n407), .B(n5472), .Y(a_bit_location[1]) );
  CLKINVX1 U527 ( .A(n5755), .Y(n5566) );
  CLKINVX1 U529 ( .A(n406), .Y(n5567) );
  CLKINVX1 U530 ( .A(n405), .Y(n5568) );
  NAND2X1 U531 ( .A(n5566), .B(n5567), .Y(n5569) );
  NAND2X1 U532 ( .A(n5568), .B(N54), .Y(n5570) );
  INVX5 U533 ( .A(rom_data_register[1]), .Y(n5755) );
  NAND2X1 U535 ( .A(n5752), .B(n5704), .Y(n5572) );
  NAND2X1 U536 ( .A(n5482), .B(n5706), .Y(n5573) );
  OAI21X2 U537 ( .A0(n5538), .A1(n279), .B0(n5469), .Y(n623) );
  OR2X2 U538 ( .A(n569), .B(n431), .Y(n191) );
  INVX18 U540 ( .A(n191), .Y(n5576) );
  CLKBUFX4 U541 ( .A(n273), .Y(n5577) );
  INVX2 U542 ( .A(n182), .Y(n5578) );
  NOR2X4 U543 ( .A(n5596), .B(n538), .Y(n182) );
  OAI21X6 U544 ( .A0(n5630), .A1(n449), .B0(n5677), .Y(n340) );
  CLKBUFX4 U545 ( .A(n316), .Y(n5580) );
  NOR2X2 U546 ( .A(n5767), .B(n5643), .Y(n629) );
  AOI31X2 U547 ( .A0(n629), .A1(rom_data_register[5]), .A2(
        rom_data_register[6]), .B0(rom_data_register[7]), .Y(n316) );
  OR2X2 U550 ( .A(n4596), .B(N54), .Y(n307) );
  INVX2 U551 ( .A(n578), .Y(n5583) );
  OR2X2 U552 ( .A(n578), .B(n5525), .Y(n692) );
  CLKINVX1 U553 ( .A(n5664), .Y(n5586) );
  INVX1 U554 ( .A(n471), .Y(n5587) );
  CLKINVX4 U556 ( .A(n428), .Y(n5664) );
  BUFX8 U557 ( .A(n5429), .Y(a_bit_location[0]) );
  OAI221X2 U558 ( .A0(n5641), .A1(n405), .B0(n406), .B1(n5768), .C0(n407), .Y(
        n5429) );
  CLKINVX8 U559 ( .A(n5589), .Y(n355) );
  NAND2X1 U560 ( .A(n5614), .B(n5669), .Y(n5590) );
  NAND2X1 U561 ( .A(n5489), .B(n5545), .Y(n5591) );
  NAND2X2 U562 ( .A(n5592), .B(n5478), .Y(n5589) );
  BUFX20 U563 ( .A(n656), .Y(n5593) );
  NAND2X6 U564 ( .A(n5661), .B(n504), .Y(n460) );
  CLKINVX6 U565 ( .A(n430), .Y(n5685) );
  AO21X2 U566 ( .A0(n337), .A1(n5687), .B0(n474), .Y(n5594) );
  NOR2X8 U567 ( .A(n5594), .B(n5449), .Y(n513) );
  NAND2X3 U569 ( .A(n5714), .B(n5582), .Y(n337) );
  INVX2 U570 ( .A(n270), .Y(n5691) );
  INVX20 U571 ( .A(n616), .Y(n5668) );
  CLKBUFX6 U572 ( .A(n5769), .Y(n5620) );
  CLKINVX6 U573 ( .A(n5444), .Y(n5708) );
  NOR2X4 U576 ( .A(n226), .B(n234), .Y(n539) );
  AO21X2 U577 ( .A0(n5759), .A1(n5708), .B0(n539), .Y(n5596) );
  OR3X8 U578 ( .A(ram_data_register[1]), .B(ram_data_register[2]), .C(
        ram_data_register[0]), .Y(n5597) );
  CLKBUFX40 U579 ( .A(n5771), .Y(a_data_from[1]) );
  INVX3 U580 ( .A(n487), .Y(n5655) );
  CLKBUFX40 U581 ( .A(n5754), .Y(n5618) );
  OAI21X4 U582 ( .A0(n290), .A1(n5712), .B0(n305), .Y(n304) );
  CLKBUFX8 U583 ( .A(n5754), .Y(n5619) );
  INVX4 U585 ( .A(rom_data_register[0]), .Y(n5768) );
  CLKNAND2X4 U587 ( .A(n5676), .B(n5720), .Y(n617) );
  INVX20 U588 ( .A(n206), .Y(n5750) );
  NAND2X6 U589 ( .A(n5730), .B(n488), .Y(n233) );
  NOR3X6 U590 ( .A(n5705), .B(n5678), .C(n163), .Y(n467) );
  CLKNAND2X2 U591 ( .A(n392), .B(n5702), .Y(n241) );
  INVX10 U592 ( .A(n437), .Y(n5663) );
  CLKINVX8 U594 ( .A(n208), .Y(n5661) );
  CLKINVX2 U595 ( .A(n462), .Y(n5683) );
  CLKNAND2X8 U596 ( .A(n220), .B(n164), .Y(n388) );
  NOR2X4 U597 ( .A(n367), .B(n5746), .Y(n250) );
  CLKBUFX8 U598 ( .A(n5739), .Y(n5617) );
  NAND2X3 U599 ( .A(n261), .B(n716), .Y(n662) );
  OR4X1 U600 ( .A(n281), .B(n282), .C(n283), .D(n5508), .Y(n5603) );
  NAND3X3 U601 ( .A(n5720), .B(n5624), .C(n689), .Y(n212) );
  CLKINVX2 U602 ( .A(n499), .Y(n5703) );
  CLKNAND2X4 U603 ( .A(n5740), .B(n5672), .Y(n260) );
  CLKINVX4 U604 ( .A(n5625), .Y(n5682) );
  NAND2X3 U606 ( .A(n5687), .B(n5626), .Y(n236) );
  CLKNAND2X4 U607 ( .A(n5672), .B(n5713), .Y(n228) );
  CLKINVX2 U608 ( .A(n642), .Y(n5684) );
  NAND2X8 U609 ( .A(n499), .B(n5702), .Y(n192) );
  CLKBUFX4 U610 ( .A(n5450), .Y(n5630) );
  CLKBUFX4 U611 ( .A(n5450), .Y(n5629) );
  CLKNAND2X4 U612 ( .A(n5661), .B(n614), .Y(n594) );
  CLKINVX2 U613 ( .A(n216), .Y(n5696) );
  NAND2X3 U614 ( .A(n5728), .B(n206), .Y(n421) );
  CLKNAND2X4 U615 ( .A(n5692), .B(n5489), .Y(n405) );
  CLKNAND2X2 U616 ( .A(n5681), .B(n5436), .Y(n240) );
  CLKINVX2 U617 ( .A(n253), .Y(n5647) );
  NOR4X6 U618 ( .A(n536), .B(n537), .C(n538), .D(n539), .Y(n535) );
  AND2X8 U619 ( .A(n5750), .B(n5739), .Y(n5600) );
  NAND4X8 U620 ( .A(n564), .B(n5443), .C(n566), .D(n567), .Y(b_data_from[1])
         );
  NAND4X6 U621 ( .A(n642), .B(n465), .C(n462), .D(n617), .Y(n548) );
  INVX5 U622 ( .A(n5519), .Y(n5747) );
  INVX5 U623 ( .A(n5512), .Y(n5686) );
  INVX5 U624 ( .A(n5576), .Y(n5702) );
  NAND2X3 U625 ( .A(n5500), .B(n5741), .Y(n450) );
  INVX18 U626 ( .A(n431), .Y(n5700) );
  CLKINVX4 U627 ( .A(n366), .Y(n5681) );
  CLKNAND2X4 U628 ( .A(n5467), .B(n5720), .Y(n392) );
  CLKNAND2X4 U629 ( .A(n5749), .B(n5739), .Y(n238) );
  CLKINVX8 U630 ( .A(n667), .Y(n5730) );
  OAI21X4 U631 ( .A0(n5705), .A1(n5665), .B0(n662), .Y(n543) );
  NAND2X8 U632 ( .A(n5436), .B(n5444), .Y(n531) );
  NAND2X6 U633 ( .A(n5740), .B(n5585), .Y(n404) );
  CLKINVX3 U634 ( .A(n279), .Y(n5743) );
  NAND3X3 U635 ( .A(n5481), .B(n5619), .C(n5726), .Y(n624) );
  AOI22X1 U636 ( .A0(n5678), .A1(n324), .B0(n5705), .B1(n464), .Y(n560) );
  CLKNAND2X2 U637 ( .A(n5617), .B(n5747), .Y(n376) );
  OR3X2 U638 ( .A(n367), .B(n5752), .C(n376), .Y(n504) );
  CLKINVX3 U639 ( .A(n367), .Y(n5745) );
  CLKINVX2 U640 ( .A(n397), .Y(n5744) );
  CLKNAND2X2 U641 ( .A(n583), .B(n384), .Y(n448) );
  NOR4X4 U642 ( .A(n436), .B(n437), .C(n438), .D(n439), .Y(n408) );
  AOI22X1 U643 ( .A0(n5752), .A1(n163), .B0(n5706), .B1(n421), .Y(n420) );
  NAND3X3 U644 ( .A(n424), .B(n425), .C(n426), .Y(n339) );
  CLKNAND2X2 U645 ( .A(n466), .B(n226), .Y(n149) );
  CLKNAND2X2 U646 ( .A(n403), .B(n5679), .Y(n184) );
  NAND3X1 U647 ( .A(n150), .B(n5695), .C(n463), .Y(n456) );
  NAND3BX2 U648 ( .AN(n5601), .B(n170), .C(n171), .Y(next_status[2]) );
  NAND3X1 U649 ( .A(n460), .B(n461), .C(n462), .Y(n457) );
  NAND2X1 U650 ( .A(n5686), .B(n164), .Y(n162) );
  NOR4X4 U651 ( .A(n345), .B(n346), .C(n347), .D(n348), .Y(n344) );
  CLKINVX1 U652 ( .A(n413), .Y(n5662) );
  AND2X6 U653 ( .A(n602), .B(n5691), .Y(n300) );
  NAND3X2 U654 ( .A(n5533), .B(n5612), .C(n5445), .Y(n428) );
  NAND2BX8 U655 ( .AN(n5603), .B(n265), .Y(addr_register_out[7]) );
  CLKNAND2X4 U656 ( .A(n5623), .B(n5685), .Y(n462) );
  CLKINVX4 U657 ( .A(n5593), .Y(n5741) );
  OAI21X4 U658 ( .A0(n5714), .A1(n236), .B0(n524), .Y(n678) );
  CLKINVX2 U659 ( .A(n698), .Y(n5742) );
  CLKNAND2X4 U660 ( .A(n5532), .B(n5700), .Y(n634) );
  OA22X4 U661 ( .A0(n5654), .A1(n5678), .B0(n5654), .B1(n527), .Y(n5606) );
  CLKNAND2X4 U662 ( .A(n689), .B(n5532), .Y(n424) );
  CLKNAND2X2 U663 ( .A(n569), .B(n418), .Y(n506) );
  NAND2X3 U664 ( .A(n5623), .B(n5676), .Y(n522) );
  NAND3X2 U665 ( .A(n5636), .B(n5635), .C(n5581), .Y(n596) );
  CLKNAND2X4 U666 ( .A(n5554), .B(n231), .Y(n447) );
  OAI21X4 U667 ( .A0(n589), .A1(n5646), .B0(n590), .Y(n588) );
  OAI21X2 U668 ( .A0(n5580), .A1(n591), .B0(n5607), .Y(n601) );
  NAND4X8 U669 ( .A(n618), .B(n619), .C(n620), .D(n621), .Y(
        addr_register_out[0]) );
  CLKINVX24 U670 ( .A(n717), .Y(n5736) );
  CLKBUFX40 U671 ( .A(instruction[4]), .Y(n5624) );
  NAND3X4 U672 ( .A(n5764), .B(n5748), .C(run_phase[2]), .Y(n333) );
  AO21X1 U673 ( .A0(n5658), .A1(ram_data_register[3]), .B0(n318), .Y(n311) );
  INVX5 U674 ( .A(ram_data_register[1]), .Y(n5712) );
  CLKINVX2 U675 ( .A(ram_data_register[2]), .Y(n5758) );
  CLKINVX3 U676 ( .A(tmp[5]), .Y(n5633) );
  CLKINVX3 U677 ( .A(tmp[7]), .Y(n5640) );
  CLKINVX2 U678 ( .A(ram_data_register[5]), .Y(n5646) );
  CLKINVX1 U679 ( .A(rom_data_register[7]), .Y(n5766) );
  CLKINVX1 U680 ( .A(rom_data_register[5]), .Y(n5765) );
  CLKINVX1 U681 ( .A(tmp[6]), .Y(n5637) );
  CLKINVX1 U682 ( .A(rom_data_register[6]), .Y(n5642) );
  NAND2X1 U683 ( .A(n5695), .B(n148), .Y(run_phase_init[3]) );
  NAND2X1 U684 ( .A(n220), .B(n221), .Y(n218) );
  BUFX8 U685 ( .A(rst_n), .Y(n5632) );
  INVX8 U686 ( .A(n213), .Y(n5678) );
  NOR3X6 U687 ( .A(n5698), .B(n5697), .C(n5669), .Y(n466) );
  AOI21X6 U688 ( .A0(n465), .A1(n466), .B0(n5626), .Y(n174) );
  NOR2X6 U689 ( .A(n5626), .B(n5695), .Y(n377) );
  INVX8 U690 ( .A(n390), .Y(n5675) );
  NAND2X4 U691 ( .A(n5609), .B(n390), .Y(n185) );
  NAND2X5 U692 ( .A(n5740), .B(n5680), .Y(n213) );
  INVX8 U693 ( .A(n5609), .Y(n5671) );
  INVX4 U694 ( .A(n233), .Y(n5729) );
  INVX4 U695 ( .A(n192), .Y(n5701) );
  INVX5 U696 ( .A(n555), .Y(n5723) );
  INVX8 U697 ( .A(n5629), .Y(n5627) );
  INVX4 U698 ( .A(n628), .Y(n5724) );
  CLKBUFX6 U699 ( .A(n5737), .Y(n5616) );
  CLKBUFX6 U700 ( .A(n5737), .Y(n5615) );
  OAI21X6 U701 ( .A0(n5723), .A1(n5492), .B0(n5436), .Y(n282) );
  NOR2X4 U702 ( .A(n617), .B(n5724), .Y(n175) );
  INVX8 U703 ( .A(n594), .Y(n5659) );
  INVX2 U704 ( .A(n617), .Y(n5674) );
  INVX2 U705 ( .A(n460), .Y(n5660) );
  INVX2 U706 ( .A(n421), .Y(n5727) );
  NOR2X4 U707 ( .A(n5526), .B(n398), .Y(n148) );
  AOI22X2 U708 ( .A0(n5698), .A1(n5614), .B0(n5616), .B1(n5703), .Y(n477) );
  AND3X2 U709 ( .A(n467), .B(n5679), .C(n468), .Y(n150) );
  NOR3X4 U710 ( .A(n185), .B(n5674), .C(n5670), .Y(n468) );
  AO22X2 U711 ( .A0(n5715), .A1(n5627), .B0(n5485), .B1(n654), .Y(n5604) );
  NOR3X6 U712 ( .A(n521), .B(n461), .C(n5626), .Y(n611) );
  NOR3X4 U713 ( .A(n5664), .B(n5688), .C(n5692), .Y(n574) );
  NOR4X4 U714 ( .A(n5526), .B(n611), .C(n5694), .D(n347), .Y(n655) );
  OAI2B11X2 U715 ( .A1N(n177), .A0(n5686), .B0(n5677), .C0(n404), .Y(n713) );
  NAND4X2 U716 ( .A(n416), .B(n541), .C(n542), .D(n543), .Y(n536) );
  AOI21X4 U717 ( .A0(n260), .A1(n5514), .B0(n5486), .Y(n610) );
  NAND2X2 U718 ( .A(n432), .B(n550), .Y(n494) );
  NAND2X5 U719 ( .A(n5740), .B(n5700), .Y(n364) );
  INVX6 U720 ( .A(n235), .Y(n5713) );
  NAND2X4 U721 ( .A(n237), .B(n5686), .Y(n245) );
  CLKINVX4 U722 ( .A(n646), .Y(n5649) );
  INVX5 U723 ( .A(n404), .Y(n5697) );
  NAND2X4 U724 ( .A(n163), .B(n624), .Y(n512) );
  NAND2X4 U725 ( .A(n321), .B(n177), .Y(n614) );
  INVX4 U726 ( .A(n388), .Y(n5695) );
  NOR2X2 U727 ( .A(n5557), .B(n398), .Y(n188) );
  CLKAND2X4 U728 ( .A(n546), .B(n5485), .Y(n347) );
  INVX4 U729 ( .A(n242), .Y(n5726) );
  INVX4 U730 ( .A(n450), .Y(n5707) );
  INVX4 U731 ( .A(n238), .Y(n5725) );
  CLKBUFX6 U732 ( .A(n5644), .Y(n5610) );
  CLKBUFX6 U733 ( .A(n5694), .Y(n5611) );
  BUFX5 U734 ( .A(n5450), .Y(n5631) );
  CLKNAND2X8 U735 ( .A(n5661), .B(n5725), .Y(n290) );
  NOR3X6 U736 ( .A(n5719), .B(n5733), .C(n446), .Y(n414) );
  NAND3X2 U737 ( .A(n392), .B(n415), .C(n416), .Y(n412) );
  NAND3BX2 U738 ( .AN(n165), .B(n166), .C(n167), .Y(n159) );
  NAND2X1 U739 ( .A(n5451), .B(n168), .Y(n469) );
  NAND3BX2 U740 ( .AN(n185), .B(n5575), .C(n186), .Y(n155) );
  AOI21X2 U741 ( .A0(n5687), .A1(n187), .B0(n5683), .Y(n186) );
  OAI2B2X2 U742 ( .A1N(n245), .A0(n5738), .B0(n179), .B1(n5447), .Y(n244) );
  AOI2BB1X2 U743 ( .A0N(n184), .A1N(n5708), .B0(n5487), .Y(n402) );
  OAI221X2 U744 ( .A0(n235), .A1(n236), .B0(n5483), .B1(n238), .C0(n239), .Y(
        n222) );
  OAI21X2 U745 ( .A0(n240), .A1(n241), .B0(n5489), .Y(n239) );
  OAI2BB2X2 U746 ( .B0(n5730), .B1(n5447), .A0N(n263), .A1N(n5675), .Y(n363)
         );
  AOI21X2 U747 ( .A0(n5727), .A1(n5702), .B0(n5575), .Y(n459) );
  AOI21X2 U748 ( .A0(n5701), .A1(n5609), .B0(n5747), .Y(n395) );
  OAI22X2 U749 ( .A0(n5735), .A1(n216), .B0(n5701), .B1(n5729), .Y(n660) );
  NOR3X4 U750 ( .A(n558), .B(n258), .C(n475), .Y(n552) );
  NOR2X2 U751 ( .A(n5584), .B(n5711), .Y(n707) );
  NAND3X2 U752 ( .A(n488), .B(n5747), .C(n583), .Y(n582) );
  AOI32X2 U753 ( .A0(n636), .A1(n628), .A2(n5713), .B0(n398), .B1(n5725), .Y(
        n631) );
  OAI21X2 U754 ( .A0(n461), .A1(n5626), .B0(n5690), .Y(n636) );
  OAI21X6 U755 ( .A0(n5690), .A1(n235), .B0(n626), .Y(n389) );
  NOR2X6 U756 ( .A(n208), .B(n583), .Y(n413) );
  CLKNAND2X8 U757 ( .A(n5467), .B(n5713), .Y(n207) );
  NAND4X6 U758 ( .A(n5649), .B(n522), .C(n424), .D(n449), .Y(n253) );
  NOR3X6 U759 ( .A(n254), .B(n5644), .C(n255), .Y(n538) );
  OAI21X6 U760 ( .A0(n427), .A1(n430), .B0(n425), .Y(n471) );
  NAND4X6 U761 ( .A(n5571), .B(n542), .C(n215), .D(n216), .Y(n475) );
  AOI21X6 U762 ( .A0(n461), .A1(n5690), .B0(n427), .Y(n473) );
  NOR2X6 U763 ( .A(n255), .B(n427), .Y(n331) );
  NOR2X6 U764 ( .A(n208), .B(n5481), .Y(n458) );
  NAND3X4 U765 ( .A(n5585), .B(n5621), .C(n5720), .Y(n542) );
  CLKINVX6 U766 ( .A(n5585), .Y(n5690) );
  CLKNAND2X8 U767 ( .A(n5761), .B(n718), .Y(n461) );
  OAI22X2 U768 ( .A0(n5617), .A1(n237), .B0(n220), .B1(n177), .Y(n677) );
  CLKNAND2X8 U769 ( .A(n5753), .B(n5618), .Y(n488) );
  OAI211X2 U770 ( .A0(n215), .A1(n5628), .B0(n5575), .C0(n5679), .Y(n710) );
  NAND2X3 U771 ( .A(n5584), .B(n5716), .Y(n528) );
  OAI21X2 U772 ( .A0(n5630), .A1(n5615), .B0(n5675), .Y(n627) );
  OAI21X4 U773 ( .A0(n520), .A1(n521), .B0(n208), .Y(n165) );
  AOI21X4 U774 ( .A0(n5615), .A1(n5678), .B0(n173), .Y(n608) );
  NOR2X4 U775 ( .A(n5617), .B(n5481), .Y(n547) );
  CLKNAND2X4 U776 ( .A(n5500), .B(n708), .Y(n426) );
  NOR2BX4 U777 ( .AN(n215), .B(n5655), .Y(n166) );
  NAND4X4 U778 ( .A(n580), .B(n522), .C(n643), .D(n644), .Y(n298) );
  AND3X2 U779 ( .A(n424), .B(n214), .C(n221), .Y(n643) );
  NOR3X4 U780 ( .A(n645), .B(n646), .C(n196), .Y(n644) );
  NOR3X4 U781 ( .A(n544), .B(n192), .C(n389), .Y(n534) );
  NAND3X4 U782 ( .A(n470), .B(n226), .C(n5709), .Y(n576) );
  OAI21X2 U783 ( .A0(n499), .A1(n206), .B0(n676), .Y(n674) );
  INVX6 U784 ( .A(n662), .Y(n5735) );
  OAI2BB1X1 U785 ( .A0N(n288), .A1N(n5659), .B0(n293), .Y(n291) );
  CLKXOR2X2 U786 ( .A(n5617), .B(n397), .Y(n654) );
  INVX4 U787 ( .A(n212), .Y(n5710) );
  INVX4 U788 ( .A(n634), .Y(n5699) );
  OAI21X6 U789 ( .A0(n164), .A1(n179), .B0(n215), .Y(n301) );
  AOI31X2 U790 ( .A0(n5745), .A1(n206), .A2(n5551), .B0(n5483), .Y(n557) );
  OAI22X2 U791 ( .A0(n5616), .A1(n208), .B0(n5747), .B1(n390), .Y(n714) );
  OAI21X2 U792 ( .A0(n5702), .A1(n189), .B0(n617), .Y(n622) );
  OAI21X2 U793 ( .A0(n5726), .A1(n392), .B0(n653), .Y(n651) );
  OAI21X2 U794 ( .A0(n5746), .A1(n233), .B0(n5706), .Y(n653) );
  OAI21X2 U795 ( .A0(n5625), .A1(n5615), .B0(n502), .Y(n558) );
  INVX2 U796 ( .A(n596), .Y(n5634) );
  INVX4 U797 ( .A(n506), .Y(n5719) );
  AOI222X2 U798 ( .A0(n5526), .A1(n504), .B0(n5510), .B1(n447), .C0(n5576), 
        .C1(n505), .Y(n503) );
  NOR4X4 U799 ( .A(n497), .B(n498), .C(n5661), .D(n5675), .Y(n496) );
  AOI21X2 U800 ( .A0(n206), .A1(n5481), .B0(n5483), .Y(n498) );
  OAI22X2 U801 ( .A0(n220), .A1(n209), .B0(n499), .B1(n5727), .Y(n497) );
  NAND4X4 U802 ( .A(n490), .B(n491), .C(n492), .D(n493), .Y(n338) );
  NOR4X6 U803 ( .A(n411), .B(n412), .C(n413), .D(n414), .Y(n410) );
  OAI221X2 U804 ( .A0(n5689), .A1(n449), .B0(n5732), .B1(n450), .C0(n5649), 
        .Y(n444) );
  NOR4X4 U805 ( .A(n422), .B(n5510), .C(n5655), .D(n339), .Y(n419) );
  AOI21X2 U806 ( .A0(n5672), .A1(n421), .B0(n429), .Y(n417) );
  OAI22X2 U807 ( .A0(n5732), .A1(n215), .B0(n5491), .B1(n209), .Y(n433) );
  AOI2BB1X2 U808 ( .A0N(n483), .A1N(n5519), .B0(n5492), .Y(n482) );
  NOR3X4 U809 ( .A(n505), .B(n5700), .C(n5519), .Y(n514) );
  NOR4X4 U810 ( .A(n444), .B(n445), .C(n5711), .D(n414), .Y(n443) );
  NOR3X4 U811 ( .A(n451), .B(n335), .C(n452), .Y(n442) );
  AOI2BB1X2 U812 ( .A0N(n448), .A1N(n5750), .B0(n5491), .Y(n445) );
  AOI21X2 U813 ( .A0(n430), .A1(n431), .B0(n5728), .Y(n429) );
  OAI21X2 U814 ( .A0(n5716), .A1(n337), .B0(n5676), .Y(n508) );
  NOR2X2 U815 ( .A(n326), .B(n510), .Y(n509) );
  INVX4 U816 ( .A(n447), .Y(n5733) );
  OAI211X2 U817 ( .A0(n5690), .A1(n427), .B0(n428), .C0(n5650), .Y(n422) );
  NAND3X2 U818 ( .A(n407), .B(n405), .C(n406), .Y(bit_en) );
  OAI221X2 U819 ( .A0(n385), .A1(n5627), .B0(n5551), .B1(n213), .C0(n386), .Y(
        n379) );
  NAND3X2 U820 ( .A(n207), .B(n216), .C(n390), .Y(n387) );
  AOI21X2 U821 ( .A0(n5576), .A1(n189), .B0(n5526), .Y(n178) );
  NOR2X2 U822 ( .A(n5717), .B(n192), .Y(n176) );
  NOR4X4 U823 ( .A(n456), .B(n457), .C(n458), .D(n459), .Y(n455) );
  OAI2B11X2 U824 ( .A1N(n5439), .A0(n5733), .B0(n248), .C0(n249), .Y(n243) );
  AOI2BB1X2 U825 ( .A0N(n250), .A1N(n5491), .B0(n251), .Y(n249) );
  AOI31X2 U826 ( .A0(n164), .A1(n5538), .A2(n214), .B0(n5723), .Y(n251) );
  NAND4X6 U827 ( .A(n356), .B(n357), .C(n358), .D(n359), .Y(n5430) );
  NOR4X4 U828 ( .A(n5512), .B(n393), .C(n394), .D(n395), .Y(n357) );
  NOR4X4 U829 ( .A(n399), .B(n400), .C(n401), .D(n402), .Y(n356) );
  NOR4X4 U830 ( .A(n360), .B(n361), .C(n362), .D(n363), .Y(n359) );
  NAND3X2 U831 ( .A(n5495), .B(n160), .C(n375), .Y(n259) );
  AOI21X2 U832 ( .A0(n5679), .A1(n226), .B0(n5735), .Y(n225) );
  AOI222X2 U833 ( .A0(n5489), .A1(n5682), .B0(n193), .B1(n5610), .C0(n5616), 
        .C1(n5611), .Y(n170) );
  OAI211X2 U834 ( .A0(n5492), .A1(n189), .B0(n5681), .C0(n190), .Y(n183) );
  AOI21X2 U835 ( .A0(n5644), .A1(n163), .B0(n5661), .Y(n190) );
  NAND3X1 U836 ( .A(n207), .B(n216), .C(n226), .Y(n391) );
  AOI21X2 U837 ( .A0(n5701), .A1(n5538), .B0(n209), .Y(n203) );
  AOI21X2 U838 ( .A0(n5504), .A1(n228), .B0(n5554), .Y(n224) );
  AOI21X2 U839 ( .A0(n5436), .A1(n215), .B0(n5733), .Y(n394) );
  AOI21X2 U840 ( .A0(n5483), .A1(n221), .B0(n5481), .Y(n400) );
  AOI21X2 U841 ( .A0(n404), .A1(n5538), .B0(n5630), .Y(n401) );
  AOI222X2 U842 ( .A0(n5743), .A1(n5661), .B0(n464), .B1(n149), .C0(n5545), 
        .C1(n447), .Y(n463) );
  AOI222X2 U843 ( .A0(n5500), .A1(n5742), .B0(n579), .B1(n696), .C0(n5525), 
        .C1(n697), .Y(n695) );
  OAI21X2 U844 ( .A0(n5612), .A1(n5762), .B0(n5757), .Y(n696) );
  AOI21X2 U845 ( .A0(n5730), .A1(n5626), .B0(n213), .Y(n638) );
  AOI21X2 U846 ( .A0(n5514), .A1(n364), .B0(n5554), .Y(n639) );
  AOI21X2 U847 ( .A0(n5752), .A1(n5544), .B0(n667), .Y(n664) );
  AOI22X2 U848 ( .A0(n5678), .A1(n527), .B0(n483), .B1(n5682), .Y(n665) );
  OAI21X6 U849 ( .A0(n5764), .A1(n717), .B0(n641), .Y(n261) );
  NOR3X4 U850 ( .A(n5741), .B(n5718), .C(n5533), .Y(n720) );
  NAND3X6 U851 ( .A(n5756), .B(n5759), .C(n273), .Y(n189) );
  OAI21X2 U852 ( .A0(n547), .A1(n5513), .B0(n5694), .Y(n613) );
  CLKNAND2X8 U853 ( .A(n5623), .B(n5467), .Y(n214) );
  CLKNAND2X8 U854 ( .A(n5623), .B(n5680), .Y(n221) );
  NAND4X4 U855 ( .A(n5579), .B(n5495), .C(n649), .D(n650), .Y(n283) );
  AOI222X2 U856 ( .A0(n5616), .A1(n388), .B0(n5519), .B1(n5703), .C0(n5717), 
        .C1(n614), .Y(n649) );
  NOR4X4 U857 ( .A(n651), .B(n458), .C(n5660), .D(n652), .Y(n650) );
  AOI31X2 U858 ( .A0(n384), .A1(n5433), .A2(n383), .B0(n5483), .Y(n652) );
  NAND3X4 U859 ( .A(n5533), .B(n5612), .C(n5500), .Y(n425) );
  OAI21X6 U860 ( .A0(n5735), .A1(n216), .B0(n524), .Y(n436) );
  AOI21X4 U861 ( .A0(n5446), .A1(n5644), .B0(n242), .Y(n532) );
  OAI22X2 U862 ( .A0(n5673), .A1(n5755), .B0(n5719), .B1(n446), .Y(n568) );
  OAI21X6 U863 ( .A0(n5716), .A1(n5532), .B0(n5626), .Y(n485) );
  OAI211X2 U864 ( .A0(n511), .A1(n512), .B0(n5662), .C0(n584), .Y(n659) );
  OAI22X2 U865 ( .A0(n5575), .A1(n5729), .B0(n333), .B1(n208), .Y(n556) );
  NAND2X3 U866 ( .A(n5584), .B(n5532), .Y(n491) );
  AOI2BB1X2 U867 ( .A0N(n263), .A1N(n5513), .B0(n164), .Y(n346) );
  CLKNAND2X4 U868 ( .A(n5623), .B(n5585), .Y(n580) );
  OAI21X4 U869 ( .A0(n549), .A1(n214), .B0(n550), .Y(n435) );
  OAI2BB1X2 U870 ( .A0N(n654), .A1N(n5717), .B0(n524), .Y(n372) );
  OAI21X4 U871 ( .A0(n5581), .A1(n594), .B0(n293), .Y(n317) );
  NAND3X4 U872 ( .A(n333), .B(n5481), .C(n5729), .Y(n505) );
  OAI22X2 U873 ( .A0(n288), .A1(n594), .B0(n595), .B1(n5633), .Y(n593) );
  NAND3X4 U874 ( .A(n5525), .B(n5620), .C(n5441), .Y(n431) );
  OAI22X2 U875 ( .A0(n276), .A1(n5433), .B0(n278), .B1(n279), .Y(n266) );
  AND3X4 U876 ( .A(n250), .B(n5433), .C(n5617), .Y(n583) );
  INVX6 U877 ( .A(n333), .Y(n5746) );
  OAI21X2 U878 ( .A0(n488), .A1(n207), .B0(n545), .Y(n544) );
  AOI222X2 U879 ( .A0(n5708), .A1(n5759), .B0(n530), .B1(n163), .C0(n531), 
        .C1(n336), .Y(n523) );
  NAND2X4 U880 ( .A(n532), .B(n5618), .Y(n530) );
  OAI21X2 U881 ( .A0(n5577), .A1(n290), .B0(n5651), .Y(n289) );
  INVX4 U882 ( .A(n704), .Y(n5761) );
  INVX4 U883 ( .A(n5433), .Y(n5749) );
  CLKINVX4 U884 ( .A(n549), .Y(n5753) );
  NOR2X6 U885 ( .A(n5482), .B(n5752), .Y(n384) );
  CLKNAND2X8 U886 ( .A(n711), .B(n5620), .Y(n215) );
  NOR2X6 U887 ( .A(n208), .B(n5433), .Y(n274) );
  AOI21X2 U888 ( .A0(n5469), .A1(n270), .B0(n5640), .Y(n268) );
  NAND2X4 U889 ( .A(n5634), .B(n5633), .Y(n288) );
  CLKXOR2X2 U890 ( .A(n280), .B(n5640), .Y(n278) );
  OAI21X4 U891 ( .A0(n511), .A1(n512), .B0(n513), .Y(n326) );
  NOR3X4 U892 ( .A(n338), .B(n339), .C(n340), .Y(n327) );
  AOI21X2 U893 ( .A0(n5551), .A1(n333), .B0(n334), .Y(n330) );
  OAI21X6 U894 ( .A0(n341), .A1(n5755), .B0(n342), .Y(b_bit_location[1]) );
  AOI222X2 U895 ( .A0(n335), .A1(n336), .B0(n337), .B1(n5711), .C0(n5527), 
        .C1(n5688), .Y(n329) );
  AOI31X2 U896 ( .A0(n5702), .A1(n5447), .A2(n5609), .B0(n206), .Y(n381) );
  OAI22X2 U897 ( .A0(n383), .A1(n5483), .B0(n5492), .B1(n384), .Y(n380) );
  NOR4X6 U898 ( .A(n222), .B(n223), .C(n224), .D(n225), .Y(n199) );
  NOR4X6 U899 ( .A(n201), .B(n202), .C(n203), .D(n204), .Y(n200) );
  NAND4BX2 U900 ( .AN(n159), .B(n5653), .C(n160), .D(n161), .Y(
        run_phase_init[0]) );
  AOI21X2 U901 ( .A0(n205), .A1(n206), .B0(n207), .Y(n204) );
  AOI2B1X2 U902 ( .A1N(n193), .A0(n210), .B0(n5610), .Y(n202) );
  OAI2BB1X1 U903 ( .A0N(n207), .A1N(n5491), .B0(n5482), .Y(n210) );
  AOI21X2 U904 ( .A0(n397), .A1(n5433), .B0(n148), .Y(n393) );
  AOI21X2 U905 ( .A0(n5731), .A1(n5764), .B0(n214), .Y(n399) );
  NOR3X4 U906 ( .A(n253), .B(n165), .C(n158), .Y(n515) );
  AOI21X2 U907 ( .A0(n5479), .A1(n5621), .B0(n5441), .Y(n700) );
  NOR2X6 U908 ( .A(run_phase[3]), .B(n5743), .Y(n383) );
  AOI33X2 U909 ( .A0(n302), .A1(n5763), .A2(n5658), .B0(n5581), .B1(n5636), 
        .B2(n5659), .Y(n600) );
  AOI22X2 U910 ( .A0(tmp[3]), .A1(n317), .B0(n5502), .B1(rom_data_register[6]), 
        .Y(n598) );
  AOI32X2 U911 ( .A0(n5577), .A1(n5756), .A2(n5658), .B0(ram_data_register[6]), 
        .B1(n289), .Y(n286) );
  AOI222X2 U912 ( .A0(rom_data_register[0]), .A1(n5652), .B0(n5512), .B1(n624), 
        .C0(n5502), .C1(rom_data_register[3]), .Y(n620) );
  AOI222X2 U913 ( .A0(n5658), .A1(n302), .B0(n5659), .B1(n303), .C0(
        ram_data_register[2]), .C1(n304), .Y(n295) );
  NAND3X4 U914 ( .A(n603), .B(n604), .C(n605), .Y(addr_register_out[1]) );
  OAI22X2 U915 ( .A0(n5607), .A1(n5755), .B0(N54), .B1(n594), .Y(n606) );
  AOI21X4 U916 ( .A0(n5658), .A1(ram_data_register[0]), .B0(n592), .Y(n305) );
  AOI22X2 U917 ( .A0(rom_data_register[3]), .A1(n601), .B0(
        ram_data_register[3]), .B1(n318), .Y(n599) );
  NAND2X4 U918 ( .A(n691), .B(n5694), .Y(n524) );
  AOI32X2 U919 ( .A0(n5748), .A1(n5619), .A2(run_phase[3]), .B0(n397), .B1(
        n5617), .Y(n691) );
  AOI21X2 U920 ( .A0(n5658), .A1(n314), .B0(n592), .Y(n589) );
  OAI2BB1X1 U921 ( .A0N(n591), .A1N(n5607), .B0(rom_data_register[5]), .Y(n590) );
  OAI21X2 U922 ( .A0(n271), .A1(n5759), .B0(n272), .Y(n267) );
  AOI2B1X2 U923 ( .A1N(n5577), .A0(n274), .B0(n275), .Y(n271) );
  OAI21X2 U924 ( .A0(n5652), .A1(n5667), .B0(rom_data_register[7]), .Y(n272)
         );
  NOR2X2 U925 ( .A(n5635), .B(n5636), .Y(n648) );
  AOI21X4 U926 ( .A0(n5613), .A1(n5670), .B0(n640), .Y(n370) );
  NOR2X4 U927 ( .A(n288), .B(tmp[6]), .Y(n280) );
  AOI21X2 U928 ( .A0(ram_data_register[6]), .A1(ram_data_register[7]), .B0(
        n5644), .Y(n276) );
  AO22X1 U929 ( .A0(tmp[5]), .A1(n300), .B0(n301), .B1(n5479), .Y(n299) );
  NAND4BX2 U930 ( .AN(n155), .B(n5451), .C(n5647), .D(n157), .Y(
        run_phase_init[1]) );
  NOR4X4 U931 ( .A(n5694), .B(n5678), .C(n158), .D(n159), .Y(n157) );
  NAND3X2 U932 ( .A(n215), .B(n216), .C(n217), .Y(n201) );
  NAND4BX2 U933 ( .AN(n149), .B(n150), .C(n5575), .D(n152), .Y(
        run_phase_init[2]) );
  NOR4X4 U934 ( .A(n5696), .B(n5661), .C(n5557), .D(n5512), .Y(n152) );
  OAI21X2 U935 ( .A0(n230), .A1(n231), .B0(n232), .Y(n223) );
  AOI22X1 U936 ( .A0(n5665), .A1(n234), .B0(ram_data_register[7]), .B1(n5708), 
        .Y(n230) );
  OAI21X2 U937 ( .A0(n5743), .A1(n233), .B0(n5692), .Y(n232) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n85, n86, n87, n88, n89, n90, n91, n92;
  wire   [8:0] carry;

  ADDFX1 U2_6 ( .A(A[6]), .B(n86), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX1 U2_1 ( .A(A[1]), .B(n88), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX1 U2_3 ( .A(A[3]), .B(n89), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX1 U2_5 ( .A(A[5]), .B(n85), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX1 U2_2 ( .A(A[2]), .B(n90), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX1 U2_4 ( .A(A[4]), .B(n91), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX1 U2_0 ( .A(A[0]), .B(n87), .CI(n92), .CO(carry[1]), .S(DIFF[0]) );
  INVX2 U1 ( .A(CI), .Y(n92) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n88) );
  CLKINVX1 U3 ( .A(B[6]), .Y(n86) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n87) );
  CLKINVX1 U5 ( .A(B[4]), .Y(n91) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n90) );
  XNOR3X1 U7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(DIFF[7]) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n85) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n89) );
endmodule


module ALU_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX2 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX2 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX2 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX2 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX2 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX2 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module ALU_DW01_add_3 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX1 U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
endmodule


module ALU_DW01_add_4 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CLKXOR2X2 U1 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2X1 U2 ( .A(B[0]), .B(A[0]), .Y(carry[1]) );
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
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n161,
         n162, n163, n166, n167, n168, n169, n170, n171, n172, n174, n177,
         n178, n179, n180, n181, n182, n296, n297, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331;

  CLKXOR2X2 U98 ( .A(n296), .B(n161), .Y(product[8]) );
  CLKXOR2X2 U99 ( .A(n162), .B(n163), .Y(n161) );
  CLKXOR2X2 U100 ( .A(n177), .B(n178), .Y(n296) );
  CLKINVX4 U101 ( .A(a[4]), .Y(n318) );
  ADDFX1 U102 ( .A(n68), .B(n93), .CI(n73), .CO(n33), .S(n34) );
  ADDFX1 U103 ( .A(n74), .B(n94), .CI(n80), .CO(n41), .S(n42) );
  ADDFX1 U104 ( .A(n49), .B(n87), .CI(n47), .CO(n39), .S(n40) );
  ADDFX1 U105 ( .A(n79), .B(n86), .CI(n43), .CO(n31), .S(n32) );
  ADDFX1 U106 ( .A(n34), .B(n41), .CI(n36), .CO(n29), .S(n30) );
  ADDFX1 U107 ( .A(n89), .B(n96), .CI(n55), .CO(n51), .S(n52) );
  ADDFX1 U108 ( .A(n48), .B(n53), .CI(n50), .CO(n45), .S(n46) );
  ADDFX1 U109 ( .A(n44), .B(n42), .CI(n40), .CO(n37), .S(n38) );
  ADDFX1 U110 ( .A(n39), .B(n32), .CI(n30), .CO(n27), .S(n28) );
  ADDFX1 U111 ( .A(n29), .B(n20), .CI(n18), .CO(n15), .S(n16) );
  ADDFX1 U112 ( .A(n78), .B(n72), .CI(n85), .CO(n21), .S(n22) );
  ADDFX1 U113 ( .A(n28), .B(n37), .CI(n4), .CO(n3), .S(product[6]) );
  ADDFX1 U114 ( .A(n46), .B(n51), .CI(n6), .CO(n5), .S(product[4]) );
  ADDFX1 U115 ( .A(n38), .B(n45), .CI(n5), .CO(n4), .S(product[5]) );
  ADDFX1 U116 ( .A(n16), .B(n27), .CI(n3), .CO(n2), .S(product[7]) );
  INVX5 U117 ( .A(b[3]), .Y(n328) );
  ADDFX1 U118 ( .A(n26), .B(n24), .CI(n31), .CO(n17), .S(n18) );
  BUFX2 U119 ( .A(a[3]), .Y(n317) );
  BUFX2 U120 ( .A(a[5]), .Y(n320) );
  ADDFX1 U121 ( .A(n92), .B(n63), .CI(n67), .CO(n23), .S(n24) );
  ADDFX1 U122 ( .A(n8), .B(n83), .CI(n56), .CO(n7), .S(product[2]) );
  AND2X1 U123 ( .A(a[4]), .B(b[0]), .Y(n70) );
  AND2X1 U124 ( .A(a[7]), .B(b[0]), .Y(n58) );
  CLKINVX8 U125 ( .A(b[1]), .Y(n327) );
  CLKINVX6 U126 ( .A(b[2]), .Y(n330) );
  CLKINVX6 U127 ( .A(b[0]), .Y(n325) );
  INVX5 U128 ( .A(b[4]), .Y(n331) );
  CLKINVX2 U129 ( .A(b[6]), .Y(n323) );
  AND2X1 U130 ( .A(b[1]), .B(a[7]), .Y(n181) );
  AND2X1 U131 ( .A(b[6]), .B(a[2]), .Y(n182) );
  INVX5 U132 ( .A(n317), .Y(n316) );
  INVX4 U133 ( .A(n320), .Y(n319) );
  XNOR2X2 U134 ( .A(n2), .B(n15), .Y(n177) );
  INVX8 U135 ( .A(a[1]), .Y(n326) );
  INVX6 U136 ( .A(a[2]), .Y(n329) );
  ADDFX1 U137 ( .A(n33), .B(n35), .CI(n22), .CO(n19), .S(n20) );
  ADDFX1 U138 ( .A(n52), .B(n54), .CI(n7), .CO(n6), .S(product[3]) );
  INVX8 U139 ( .A(a[0]), .Y(n324) );
  CLKXOR2X2 U140 ( .A(n23), .B(n21), .Y(n178) );
  INVX2 U141 ( .A(a[6]), .Y(n322) );
  CLKINVX3 U142 ( .A(b[5]), .Y(n321) );
  NOR2X2 U143 ( .A(n326), .B(n330), .Y(n89) );
  NOR2X2 U144 ( .A(n328), .B(n324), .Y(n96) );
  NOR2X2 U145 ( .A(n316), .B(n330), .Y(n74) );
  NOR2X2 U146 ( .A(n321), .B(n324), .Y(n94) );
  NOR2X2 U147 ( .A(n328), .B(n329), .Y(n80) );
  NOR2X2 U148 ( .A(n326), .B(n323), .Y(n85) );
  NOR2X2 U149 ( .A(n331), .B(n316), .Y(n72) );
  NOR2X2 U150 ( .A(n329), .B(n321), .Y(n78) );
  NOR2X2 U151 ( .A(n319), .B(n330), .Y(n63) );
  AND2X1 U152 ( .A(b[7]), .B(a[0]), .Y(n92) );
  NOR2X2 U153 ( .A(n328), .B(n318), .Y(n67) );
  ADDFX1 U154 ( .A(n81), .B(n95), .CI(n88), .CO(n47), .S(n48) );
  NOR2X2 U155 ( .A(n331), .B(n324), .Y(n95) );
  NOR2X2 U156 ( .A(n329), .B(n330), .Y(n81) );
  NOR2X2 U157 ( .A(n328), .B(n326), .Y(n88) );
  NOR2X2 U158 ( .A(n323), .B(n324), .Y(n93) );
  NOR2X2 U159 ( .A(n318), .B(n330), .Y(n68) );
  NOR2X2 U160 ( .A(n328), .B(n316), .Y(n73) );
  NOR2X2 U161 ( .A(n331), .B(n329), .Y(n79) );
  NOR2X2 U162 ( .A(n326), .B(n321), .Y(n86) );
  NOR2X2 U163 ( .A(n326), .B(n331), .Y(n87) );
  CLKXOR2X2 U164 ( .A(n166), .B(n167), .Y(n162) );
  NOR2X2 U165 ( .A(n318), .B(n331), .Y(n167) );
  CLKXOR2X2 U166 ( .A(n168), .B(n169), .Y(n166) );
  CLKXOR2X2 U167 ( .A(n297), .B(n174), .Y(n168) );
  NAND2X1 U168 ( .A(b[5]), .B(n317), .Y(n297) );
  ADDHX2 U169 ( .A(n64), .B(n61), .CO(n35), .S(n36) );
  NOR2X2 U170 ( .A(n325), .B(n322), .Y(n61) );
  NOR2X2 U171 ( .A(n319), .B(n327), .Y(n64) );
  CLKXOR2X2 U172 ( .A(n179), .B(n180), .Y(n163) );
  AND2X1 U173 ( .A(b[7]), .B(a[1]), .Y(n180) );
  AND2X1 U174 ( .A(b[3]), .B(n320), .Y(n179) );
  ADDHX2 U175 ( .A(n69), .B(n65), .CO(n43), .S(n44) );
  NOR2X2 U176 ( .A(n319), .B(n325), .Y(n65) );
  NOR2X2 U177 ( .A(n318), .B(n327), .Y(n69) );
  ADDHX2 U178 ( .A(n82), .B(n76), .CO(n53), .S(n54) );
  NOR2X2 U179 ( .A(n329), .B(n327), .Y(n82) );
  NOR2X2 U180 ( .A(n316), .B(n325), .Y(n76) );
  ADDHX2 U181 ( .A(n91), .B(n98), .CO(n8), .S(product[1]) );
  NOR2X2 U182 ( .A(n327), .B(n324), .Y(n98) );
  NOR2X2 U183 ( .A(n326), .B(n325), .Y(n91) );
  NOR2X2 U184 ( .A(n329), .B(n325), .Y(n83) );
  ADDHX2 U185 ( .A(n97), .B(n90), .CO(n55), .S(n56) );
  NOR2X2 U186 ( .A(n330), .B(n324), .Y(n97) );
  NOR2X2 U187 ( .A(n326), .B(n327), .Y(n90) );
  NOR2X2 U188 ( .A(n324), .B(n325), .Y(product[0]) );
  CLKXOR2X2 U189 ( .A(n170), .B(n171), .Y(n169) );
  CLKXOR2X2 U190 ( .A(n172), .B(n17), .Y(n171) );
  XNOR2X2 U191 ( .A(n25), .B(n19), .Y(n170) );
  NAND2X2 U192 ( .A(b[2]), .B(a[6]), .Y(n172) );
  ADDHX2 U193 ( .A(n75), .B(n70), .CO(n49), .S(n50) );
  NOR2X2 U194 ( .A(n316), .B(n327), .Y(n75) );
  ADDHX2 U195 ( .A(n60), .B(n58), .CO(n25), .S(n26) );
  NOR2X2 U196 ( .A(n322), .B(n327), .Y(n60) );
  CLKXOR2X2 U197 ( .A(n181), .B(n182), .Y(n174) );
endmodule


module ALU_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n181, n180, n179, n178, n177, n237, n106, n112, n171, n183, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230;
  assign DIFF[3] = n179;

  OAI2B11X4 U79 ( .A1N(n208), .A0(n204), .B0(n203), .C0(n194), .Y(n205) );
  AOI2BB1X4 U80 ( .A0N(n221), .A1N(n204), .B0(n211), .Y(n203) );
  CLKBUFX40 U81 ( .A(B[1]), .Y(n198) );
  INVX2 U82 ( .A(n193), .Y(n192) );
  CLKBUFX6 U83 ( .A(n191), .Y(n190) );
  NOR2X6 U84 ( .A(n188), .B(n171), .Y(n229) );
  CLKXOR2X2 U85 ( .A(n171), .B(n188), .Y(n180) );
  CLKBUFX6 U86 ( .A(B[5]), .Y(n194) );
  CLKINVX1 U87 ( .A(B[7]), .Y(n197) );
  INVX4 U88 ( .A(n181), .Y(DIFF[1]) );
  CLKXOR2X8 U89 ( .A(n230), .B(n229), .Y(n179) );
  INVX4 U90 ( .A(n180), .Y(DIFF[2]) );
  NAND2X4 U91 ( .A(n216), .B(n219), .Y(n208) );
  INVX5 U92 ( .A(n106), .Y(DIFF[5]) );
  INVX5 U93 ( .A(n178), .Y(DIFF[4]) );
  NAND2BX2 U94 ( .AN(n224), .B(n223), .Y(n226) );
  NOR2BX2 U95 ( .AN(n216), .B(n215), .Y(n217) );
  CLKXOR2X4 U96 ( .A(n194), .B(n207), .Y(DIFF[8]) );
  AOI221X4 U97 ( .A0(n206), .A1(n208), .B0(n206), .B1(n210), .C0(n211), .Y(
        n207) );
  INVX4 U98 ( .A(n221), .Y(n210) );
  NAND2X2 U99 ( .A(n209), .B(n212), .Y(n204) );
  INVX2 U100 ( .A(n237), .Y(n183) );
  CLKINVX2 U101 ( .A(n183), .Y(DIFF[10]) );
  OAI211X2 U102 ( .A0(n202), .A1(n212), .B0(n196), .C0(n201), .Y(n237) );
  NAND2X4 U103 ( .A(n193), .B(n196), .Y(n212) );
  CLKBUFX4 U104 ( .A(B[6]), .Y(n195) );
  XNOR2X2 U105 ( .A(n195), .B(n205), .Y(DIFF[9]) );
  AND3X4 U106 ( .A(n229), .B(n223), .C(n227), .Y(n185) );
  NOR2X2 U107 ( .A(n190), .B(DIFF[0]), .Y(n186) );
  NOR2X2 U108 ( .A(n190), .B(DIFF[0]), .Y(n228) );
  NAND2X5 U109 ( .A(n198), .B(DIFF[0]), .Y(n171) );
  CLKXOR2X2 U110 ( .A(n214), .B(n213), .Y(n112) );
  AO22X1 U111 ( .A0(n210), .A1(n209), .B0(n208), .B1(n209), .Y(n214) );
  NOR2BX2 U112 ( .AN(n212), .B(n211), .Y(n213) );
  NOR2X6 U113 ( .A(n196), .B(n193), .Y(n211) );
  NOR2X2 U114 ( .A(n190), .B(DIFF[0]), .Y(n187) );
  CLKBUFX8 U115 ( .A(B[0]), .Y(DIFF[0]) );
  CLKNAND2X4 U116 ( .A(n194), .B(n188), .Y(n219) );
  CLKXOR2X2 U117 ( .A(n218), .B(n217), .Y(n177) );
  NAND2X4 U118 ( .A(n195), .B(n190), .Y(n216) );
  CLKXOR2X2 U119 ( .A(n226), .B(n225), .Y(n178) );
  AOI21X2 U120 ( .A0(n229), .A1(n227), .B0(n187), .Y(n225) );
  OA21X2 U121 ( .A0(n228), .A1(n224), .B0(n223), .Y(n200) );
  NOR2X4 U122 ( .A(n192), .B(n198), .Y(n224) );
  NAND2BX2 U123 ( .AN(n186), .B(n227), .Y(n230) );
  NAND2X3 U124 ( .A(DIFF[0]), .B(n190), .Y(n227) );
  NOR2X4 U125 ( .A(n190), .B(n195), .Y(n215) );
  CLKXOR2X2 U126 ( .A(n222), .B(n221), .Y(n106) );
  BUFX12 U127 ( .A(n189), .Y(n188) );
  NOR2X8 U128 ( .A(n185), .B(n200), .Y(n221) );
  NAND2X3 U129 ( .A(n198), .B(n192), .Y(n223) );
  OAI21X2 U130 ( .A0(n220), .A1(n221), .B0(n219), .Y(n218) );
  NOR2X6 U131 ( .A(n188), .B(n194), .Y(n220) );
  CLKINVX4 U132 ( .A(n112), .Y(DIFF[7]) );
  CLKINVX4 U133 ( .A(n177), .Y(DIFF[6]) );
  CLKAND2X2 U134 ( .A(n209), .B(n212), .Y(n206) );
  CLKXOR2X2 U135 ( .A(n198), .B(DIFF[0]), .Y(n181) );
  INVX2 U136 ( .A(B[2]), .Y(n189) );
  CLKBUFX4 U137 ( .A(B[4]), .Y(n193) );
  INVX2 U138 ( .A(A[6]), .Y(n191) );
  CLKBUFX4 U139 ( .A(n197), .Y(n196) );
  OAI21X8 U140 ( .A0(n220), .A1(n215), .B0(n216), .Y(n209) );
  CLKNAND2X2 U141 ( .A(n195), .B(n194), .Y(n202) );
  OR3X1 U142 ( .A(n202), .B(n210), .C(n208), .Y(n201) );
  NAND2BX1 U143 ( .AN(n220), .B(n219), .Y(n222) );
endmodule


module ALU_DW01_add_34 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n15, n17, n19, n20, n24, n25, n28, n29, n31, n34, n36, n39, n86, n87,
         n88, n89, n97, n98, n99, n100, n101, n102, n103, n104, n105, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119;

  ADDFX4 U60 ( .A(A[2]), .B(B[2]), .CI(n105), .CO(n39) );
  OAI21X2 U61 ( .A0(n97), .A1(n119), .B0(n98), .Y(n36) );
  NOR2X4 U62 ( .A(n101), .B(n102), .Y(n103) );
  AOI21X4 U63 ( .A0(n36), .A1(n28), .B0(n29), .Y(n101) );
  NOR2X2 U64 ( .A(n24), .B(n19), .Y(n17) );
  OR2X2 U65 ( .A(A[8]), .B(n117), .Y(n87) );
  NAND2X2 U66 ( .A(A[6]), .B(n115), .Y(n25) );
  INVX2 U67 ( .A(A[5]), .Y(n118) );
  CLKBUFX4 U68 ( .A(B[6]), .Y(n115) );
  INVX2 U69 ( .A(B[7]), .Y(n116) );
  NOR2X8 U70 ( .A(n115), .B(A[6]), .Y(n24) );
  NAND2X1 U71 ( .A(A[8]), .B(n117), .Y(n15) );
  NAND2BX2 U72 ( .AN(n110), .B(n87), .Y(n100) );
  OR2X8 U73 ( .A(n103), .B(n104), .Y(CO) );
  OA21X4 U74 ( .A0(n19), .A1(n25), .B0(n20), .Y(n110) );
  NAND2X1 U75 ( .A(A[7]), .B(B[7]), .Y(n20) );
  NAND2BX1 U76 ( .AN(A[5]), .B(n113), .Y(n88) );
  CLKNAND2X4 U77 ( .A(n86), .B(n31), .Y(n29) );
  OR2X1 U78 ( .A(n118), .B(n113), .Y(n31) );
  OR2X4 U79 ( .A(n89), .B(n34), .Y(n86) );
  OR2X1 U80 ( .A(n112), .B(A[4]), .Y(n99) );
  OR2X1 U81 ( .A(A[1]), .B(B[1]), .Y(n105) );
  BUFX2 U82 ( .A(B[4]), .Y(n112) );
  NAND2X2 U83 ( .A(n17), .B(n87), .Y(n102) );
  AND2X2 U84 ( .A(n99), .B(n88), .Y(n28) );
  NOR2BX4 U85 ( .AN(n116), .B(A[7]), .Y(n19) );
  INVX2 U86 ( .A(n39), .Y(n119) );
  NAND2X2 U87 ( .A(A[3]), .B(B[3]), .Y(n98) );
  NOR2BX2 U88 ( .AN(n111), .B(A[3]), .Y(n97) );
  NAND2X2 U89 ( .A(n100), .B(n15), .Y(n104) );
  NAND2X2 U90 ( .A(A[4]), .B(n112), .Y(n34) );
  AND2X2 U91 ( .A(n118), .B(n113), .Y(n89) );
  CLKBUFX4 U92 ( .A(n114), .Y(n113) );
  INVX2 U93 ( .A(B[5]), .Y(n114) );
  INVX2 U94 ( .A(B[3]), .Y(n111) );
  BUFX2 U95 ( .A(B[8]), .Y(n117) );
endmodule


module ALU_DW01_add_31 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n9, n13, n15, n18, n19, n22, n26, n37, n38, n41, \A[0] ,
         n79, n80, n81, n83, n86, n88, n89, n90, n93, n94, n95, n96, n97, n98,
         n99, n100;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  NAND2BX8 U3 ( .AN(n15), .B(n3), .Y(n2) );
  MXI2X8 U67 ( .A(n2), .B(n1), .S0(n18), .Y(CO) );
  OAI2BB1X4 U83 ( .A0N(n38), .A1N(n83), .B0(n37), .Y(n90) );
  AOI21X6 U54 ( .A0(n88), .A1(n90), .B0(n86), .Y(n22) );
  CLKBUFX4 U55 ( .A(A[1]), .Y(n96) );
  NAND2BX2 U56 ( .AN(n93), .B(n41), .Y(n38) );
  NAND2X2 U57 ( .A(n89), .B(n3), .Y(n1) );
  OR2X2 U58 ( .A(B[5]), .B(A[5]), .Y(n89) );
  CLKXOR2X2 U59 ( .A(A[4]), .B(B[4]), .Y(n19) );
  XNOR2X2 U60 ( .A(n22), .B(n19), .Y(SUM[4]) );
  OAI21X8 U61 ( .A0(n22), .A1(n79), .B0(n80), .Y(n18) );
  OR2X2 U62 ( .A(n94), .B(n96), .Y(n93) );
  CLKAND2X2 U63 ( .A(n95), .B(B[3]), .Y(n86) );
  CLKBUFX4 U64 ( .A(A[2]), .Y(n97) );
  NAND2X2 U65 ( .A(A[4]), .B(B[4]), .Y(n80) );
  NOR2X2 U66 ( .A(B[4]), .B(A[4]), .Y(n79) );
  OR2X2 U68 ( .A(n95), .B(B[3]), .Y(n88) );
  NAND2X1 U69 ( .A(A[5]), .B(B[5]), .Y(n15) );
  AND4X4 U70 ( .A(B[10]), .B(n9), .C(B[8]), .D(B[9]), .Y(n3) );
  NOR2X2 U71 ( .A(n100), .B(n99), .Y(n9) );
  INVX2 U72 ( .A(B[6]), .Y(n100) );
  CLKINVX1 U73 ( .A(B[7]), .Y(n99) );
  NAND2X2 U74 ( .A(n96), .B(n94), .Y(n41) );
  XNOR2X2 U75 ( .A(n98), .B(n13), .Y(SUM[5]) );
  CLKXOR2X2 U76 ( .A(A[5]), .B(B[5]), .Y(n13) );
  INVX2 U77 ( .A(n18), .Y(n98) );
  CLKXOR2X2 U78 ( .A(n26), .B(n90), .Y(SUM[3]) );
  CLKXOR2X2 U79 ( .A(n95), .B(B[3]), .Y(n26) );
  XNOR2X2 U80 ( .A(n96), .B(n94), .Y(SUM[1]) );
  CLKBUFX4 U81 ( .A(A[3]), .Y(n95) );
  NAND2X1 U82 ( .A(n97), .B(B[2]), .Y(n37) );
  OR2X1 U84 ( .A(B[2]), .B(n97), .Y(n83) );
  CLKBUFX4 U85 ( .A(B[1]), .Y(n94) );
  CLKXOR2X2 U86 ( .A(n38), .B(n81), .Y(SUM[2]) );
  CLKXOR2X2 U87 ( .A(n97), .B(B[2]), .Y(n81) );
endmodule


module ALU_DW01_add_40 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n5, n6, n7, n9, n10, n11, n14, n16, n17, n18, n34, n35,
         n36, n37, n38, n75, n76, n79, n80, n83, n84, n85, n89, n95, n96, n97,
         n98, n99, n100, n101, n102, n103;

  AO21X4 U64 ( .A0(n34), .A1(n96), .B0(n80), .Y(n89) );
  OAI21X8 U50 ( .A0(n38), .A1(n36), .B0(n37), .Y(n34) );
  NOR2X5 U51 ( .A(n100), .B(n97), .Y(n38) );
  AND2X2 U52 ( .A(n5), .B(B[10]), .Y(n3) );
  NOR2X2 U53 ( .A(n7), .B(n6), .Y(n5) );
  NAND2X2 U54 ( .A(B[6]), .B(B[7]), .Y(n7) );
  NOR2X2 U55 ( .A(n18), .B(n16), .Y(n95) );
  BUFX2 U56 ( .A(B[0]), .Y(n97) );
  CLKBUFX4 U57 ( .A(A[1]), .Y(n101) );
  XNOR2X2 U58 ( .A(n75), .B(n89), .Y(SUM[3]) );
  XNOR2X2 U59 ( .A(n98), .B(B[3]), .Y(n75) );
  NOR2X2 U60 ( .A(B[4]), .B(A[4]), .Y(n16) );
  NAND2X2 U61 ( .A(A[4]), .B(B[4]), .Y(n17) );
  MXI2X6 U62 ( .A(n2), .B(n1), .S0(n14), .Y(CO) );
  CLKNAND2X2 U63 ( .A(n99), .B(B[5]), .Y(n11) );
  NAND2BX4 U65 ( .AN(n95), .B(n17), .Y(n14) );
  BUFX3 U66 ( .A(A[2]), .Y(n102) );
  OR2X2 U67 ( .A(B[2]), .B(n102), .Y(n96) );
  BUFX3 U68 ( .A(A[5]), .Y(n99) );
  BUFX2 U69 ( .A(A[0]), .Y(n100) );
  CLKXOR2X2 U70 ( .A(n35), .B(n38), .Y(SUM[1]) );
  AOI21X2 U71 ( .A0(n89), .A1(n85), .B0(n84), .Y(n18) );
  INVX2 U72 ( .A(n14), .Y(n103) );
  XNOR2X2 U73 ( .A(n100), .B(n97), .Y(SUM[0]) );
  XNOR2X2 U74 ( .A(n103), .B(n9), .Y(SUM[5]) );
  CLKXOR2X2 U75 ( .A(n34), .B(n79), .Y(SUM[2]) );
  OR2X2 U76 ( .A(B[3]), .B(n98), .Y(n85) );
  CLKAND2X2 U77 ( .A(n98), .B(B[3]), .Y(n84) );
  NOR2X2 U78 ( .A(B[5]), .B(n99), .Y(n10) );
  NAND2X1 U79 ( .A(B[8]), .B(B[9]), .Y(n6) );
  NAND2BX2 U80 ( .AN(n11), .B(n3), .Y(n2) );
  NAND2BX2 U81 ( .AN(n10), .B(n3), .Y(n1) );
  AND2X2 U82 ( .A(n102), .B(B[2]), .Y(n80) );
  NAND2X2 U83 ( .A(n101), .B(B[1]), .Y(n37) );
  NOR2X2 U84 ( .A(B[1]), .B(n101), .Y(n36) );
  XNOR2X2 U85 ( .A(n83), .B(n76), .Y(SUM[4]) );
  CLKXOR2X2 U86 ( .A(A[4]), .B(B[4]), .Y(n76) );
  AOI21X2 U87 ( .A0(n89), .A1(n85), .B0(n84), .Y(n83) );
  CLKXOR2X2 U88 ( .A(n99), .B(B[5]), .Y(n9) );
  XNOR2X2 U89 ( .A(n101), .B(B[1]), .Y(n35) );
  CLKXOR2X2 U90 ( .A(n102), .B(B[2]), .Y(n79) );
  CLKBUFX4 U91 ( .A(A[3]), .Y(n98) );
endmodule


module ALU_DW01_add_41 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n9, n13, n15, n19, n20, n22, n38, n39, n40, n41, n42, n79,
         n80, n81, n82, n83, n87, n88, n89, n91, n92, n93, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111;

  AO21X4 U75 ( .A0(n38), .A1(n88), .B0(n82), .Y(n92) );
  AND2X2 U54 ( .A(B[10]), .B(n93), .Y(n3) );
  OAI21X6 U55 ( .A0(n42), .A1(n40), .B0(n41), .Y(n38) );
  NOR2X5 U56 ( .A(n103), .B(n100), .Y(n42) );
  INVX2 U57 ( .A(B[8]), .Y(n107) );
  NOR2X2 U58 ( .A(B[1]), .B(n104), .Y(n40) );
  NAND2X2 U59 ( .A(n91), .B(n3), .Y(n1) );
  CLKBUFX4 U60 ( .A(A[5]), .Y(n102) );
  OA21X2 U61 ( .A0(n22), .A1(n20), .B0(n106), .Y(n79) );
  NOR2X2 U62 ( .A(B[4]), .B(A[4]), .Y(n20) );
  INVX2 U63 ( .A(n89), .Y(n106) );
  NOR2BX2 U64 ( .AN(A[4]), .B(n111), .Y(n89) );
  XNOR2X2 U65 ( .A(n22), .B(n19), .Y(SUM[4]) );
  AND2X1 U66 ( .A(n105), .B(B[2]), .Y(n82) );
  OR2X1 U67 ( .A(B[2]), .B(n105), .Y(n88) );
  CLKAND2X2 U68 ( .A(B[3]), .B(n101), .Y(n87) );
  BUFX2 U69 ( .A(B[0]), .Y(n100) );
  BUFX2 U70 ( .A(A[0]), .Y(n103) );
  MXI2X2 U71 ( .A(n1), .B(n2), .S0(n79), .Y(CO) );
  NAND2X2 U72 ( .A(n104), .B(B[1]), .Y(n41) );
  OR2X2 U73 ( .A(n107), .B(n108), .Y(n99) );
  INVX2 U74 ( .A(B[4]), .Y(n111) );
  BUFX3 U76 ( .A(A[1]), .Y(n104) );
  BUFX3 U77 ( .A(A[2]), .Y(n105) );
  CLKINVX1 U78 ( .A(B[9]), .Y(n108) );
  NOR2BX4 U79 ( .AN(n9), .B(n99), .Y(n93) );
  CLKXOR2X2 U80 ( .A(A[4]), .B(B[4]), .Y(n19) );
  AOI21X4 U81 ( .A0(n81), .A1(n92), .B0(n87), .Y(n22) );
  OR2X2 U82 ( .A(B[3]), .B(n101), .Y(n81) );
  XNOR2X2 U83 ( .A(n79), .B(n13), .Y(SUM[5]) );
  CLKXOR2X2 U84 ( .A(n102), .B(B[5]), .Y(n13) );
  NAND2X1 U85 ( .A(n102), .B(B[5]), .Y(n15) );
  NAND2BX2 U86 ( .AN(n15), .B(n3), .Y(n2) );
  OR2X1 U87 ( .A(B[5]), .B(n102), .Y(n91) );
  XNOR2X2 U88 ( .A(n80), .B(n92), .Y(SUM[3]) );
  XNOR2X2 U89 ( .A(n101), .B(B[3]), .Y(n80) );
  CLKINVX1 U90 ( .A(B[7]), .Y(n109) );
  NOR2X2 U91 ( .A(n110), .B(n109), .Y(n9) );
  INVX2 U92 ( .A(B[6]), .Y(n110) );
  CLKXOR2X2 U93 ( .A(n38), .B(n83), .Y(SUM[2]) );
  CLKXOR2X2 U94 ( .A(n105), .B(B[2]), .Y(n83) );
  CLKXOR2X2 U95 ( .A(n39), .B(n42), .Y(SUM[1]) );
  XNOR2X2 U96 ( .A(n104), .B(B[1]), .Y(n39) );
  CLKBUFX4 U97 ( .A(A[3]), .Y(n101) );
  XNOR2X2 U98 ( .A(n103), .B(n100), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_42 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n13, n18, n19, n20, n26, n38, n39, n40, n41, n42, n80, n81,
         n82, n83, n85, n86, n88, n90, n92, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112;

  NOR2X8 U54 ( .A(A[0]), .B(B[0]), .Y(n42) );
  OR2X2 U55 ( .A(B[5]), .B(n105), .Y(n102) );
  AND2X2 U56 ( .A(n105), .B(B[5]), .Y(n103) );
  OAI21X8 U57 ( .A0(n42), .A1(n40), .B0(n41), .Y(n38) );
  CLKNAND2X2 U58 ( .A(n106), .B(B[1]), .Y(n41) );
  OR2X2 U59 ( .A(n111), .B(n110), .Y(n99) );
  AO21X2 U60 ( .A0(n38), .A1(n82), .B0(n83), .Y(n80) );
  MXI2X2 U61 ( .A(n2), .B(n1), .S0(n18), .Y(CO) );
  NOR2X4 U62 ( .A(n99), .B(n100), .Y(n85) );
  CLKXOR2X2 U63 ( .A(n105), .B(B[5]), .Y(n13) );
  CLKINVX1 U64 ( .A(B[8]), .Y(n111) );
  CLKINVX1 U65 ( .A(n18), .Y(n108) );
  OR2X2 U66 ( .A(n112), .B(n109), .Y(n100) );
  CLKINVX1 U67 ( .A(B[7]), .Y(n109) );
  BUFX3 U68 ( .A(A[1]), .Y(n106) );
  BUFX3 U69 ( .A(A[2]), .Y(n107) );
  CLKINVX1 U70 ( .A(B[9]), .Y(n110) );
  OR2X1 U71 ( .A(B[2]), .B(n107), .Y(n82) );
  AND2X1 U72 ( .A(n107), .B(B[2]), .Y(n83) );
  BUFX3 U73 ( .A(A[5]), .Y(n105) );
  XNOR2X2 U74 ( .A(A[0]), .B(B[0]), .Y(SUM[0]) );
  CLKXOR2X2 U75 ( .A(n42), .B(n39), .Y(SUM[1]) );
  XNOR2X2 U76 ( .A(n106), .B(B[1]), .Y(n39) );
  NOR2X2 U77 ( .A(B[1]), .B(n106), .Y(n40) );
  INVX2 U78 ( .A(B[6]), .Y(n112) );
  XNOR2X2 U79 ( .A(n108), .B(n13), .Y(SUM[5]) );
  CLKXOR2X2 U80 ( .A(n26), .B(n80), .Y(SUM[3]) );
  AOI21BX2 U81 ( .A0(n86), .A1(n80), .B0N(n101), .Y(n90) );
  NAND2X2 U82 ( .A(n104), .B(B[3]), .Y(n101) );
  CLKXOR2X2 U83 ( .A(n38), .B(n81), .Y(SUM[2]) );
  CLKXOR2X2 U84 ( .A(n107), .B(B[2]), .Y(n81) );
  NAND2X2 U85 ( .A(n102), .B(n85), .Y(n1) );
  NAND2X2 U86 ( .A(n103), .B(n85), .Y(n2) );
  OR2X4 U87 ( .A(n92), .B(n88), .Y(n18) );
  AND2X2 U88 ( .A(A[4]), .B(B[4]), .Y(n88) );
  NOR2X2 U89 ( .A(n20), .B(n90), .Y(n92) );
  NOR2X2 U90 ( .A(B[4]), .B(A[4]), .Y(n20) );
  XNOR2X2 U91 ( .A(n90), .B(n19), .Y(SUM[4]) );
  CLKXOR2X2 U92 ( .A(A[4]), .B(B[4]), .Y(n19) );
  CLKXOR2X2 U93 ( .A(n104), .B(B[3]), .Y(n26) );
  CLKBUFX4 U94 ( .A(A[3]), .Y(n104) );
  OR2X2 U95 ( .A(B[3]), .B(n104), .Y(n86) );
endmodule


module ALU_DW01_add_28 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n2, n186, n185, n127, n137, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182;
  assign n2 = B[7];

  OAI21BX4 U63 ( .A0(n164), .A1(n161), .B0N(n163), .Y(n158) );
  AND2X2 U64 ( .A(n154), .B(n152), .Y(n164) );
  OAI21X3 U65 ( .A0(n146), .A1(n149), .B0(n147), .Y(n157) );
  NOR2X5 U66 ( .A(n178), .B(n177), .Y(n179) );
  NOR2X8 U67 ( .A(n147), .B(n146), .Y(n178) );
  BUFX20 U68 ( .A(A[7]), .Y(n152) );
  XNOR2X2 U69 ( .A(B[1]), .B(SUM[0]), .Y(n186) );
  CLKBUFX40 U70 ( .A(B[0]), .Y(SUM[0]) );
  BUFX5 U71 ( .A(n2), .Y(n154) );
  NAND2X8 U72 ( .A(n150), .B(n149), .Y(n171) );
  BUFX20 U73 ( .A(n173), .Y(n145) );
  CLKBUFX6 U74 ( .A(n186), .Y(SUM[1]) );
  INVX4 U75 ( .A(A[6]), .Y(n150) );
  INVX2 U76 ( .A(n152), .Y(n151) );
  INVX10 U77 ( .A(n148), .Y(n147) );
  INVX5 U78 ( .A(B[4]), .Y(n149) );
  INVX10 U79 ( .A(n185), .Y(SUM[8]) );
  XOR2X8 U80 ( .A(n154), .B(n159), .Y(n185) );
  INVX4 U81 ( .A(A[3]), .Y(n146) );
  NOR2X4 U82 ( .A(n149), .B(n147), .Y(n174) );
  OAI21X6 U83 ( .A0(n153), .A1(A[6]), .B0(n171), .Y(n162) );
  CLKXOR2X4 U84 ( .A(n169), .B(n168), .Y(SUM[6]) );
  NAND2X4 U85 ( .A(A[6]), .B(B[4]), .Y(n170) );
  OAI22X2 U86 ( .A0(n154), .A1(n152), .B0(n154), .B1(n161), .Y(n160) );
  CLKXOR2X2 U87 ( .A(n176), .B(n175), .Y(n137) );
  AOI21X2 U88 ( .A0(n149), .A1(n147), .B0(n174), .Y(n175) );
  OAI2B1X4 U89 ( .A1N(n171), .A0(n145), .B0(n170), .Y(n169) );
  OAI21BX4 U90 ( .A0(n145), .A1(n162), .B0N(n161), .Y(n166) );
  NAND2BX8 U91 ( .AN(n167), .B(n170), .Y(n161) );
  CLKXOR2X8 U92 ( .A(n145), .B(n172), .Y(SUM[5]) );
  BUFX3 U93 ( .A(A[7]), .Y(n153) );
  INVX5 U94 ( .A(n127), .Y(SUM[7]) );
  CLKXOR2X2 U95 ( .A(n166), .B(n165), .Y(n127) );
  OR2X1 U96 ( .A(n164), .B(n163), .Y(n165) );
  AOI21X2 U97 ( .A0(n151), .A1(n150), .B0(n167), .Y(n168) );
  NOR2X4 U98 ( .A(n151), .B(n150), .Y(n167) );
  CLKXOR2X8 U99 ( .A(n180), .B(n179), .Y(SUM[3]) );
  NOR2X4 U100 ( .A(B[2]), .B(n148), .Y(n177) );
  INVX8 U101 ( .A(n137), .Y(SUM[4]) );
  CLKXOR2X8 U102 ( .A(n182), .B(n181), .Y(SUM[2]) );
  XNOR2X2 U103 ( .A(B[1]), .B(n146), .Y(n181) );
  OR2X2 U104 ( .A(B[1]), .B(B[0]), .Y(n182) );
  CLKBUFX4 U105 ( .A(B[3]), .Y(n148) );
  INVX2 U106 ( .A(B[1]), .Y(n155) );
  OAI31X4 U107 ( .A0(n162), .A1(n163), .A2(n145), .B0(n158), .Y(n159) );
  NOR2X8 U108 ( .A(n153), .B(n154), .Y(n163) );
  OAI31X4 U109 ( .A0(n162), .A1(n163), .A2(n145), .B0(n160), .Y(SUM[9]) );
  AOI2B1X4 U110 ( .A1N(n177), .A0(n180), .B0(n178), .Y(n176) );
  OAI31X4 U111 ( .A0(n180), .A1(n174), .A2(n178), .B0(n157), .Y(n173) );
  OAI2BB1X4 U112 ( .A0N(A[3]), .A1N(A[1]), .B0(n155), .Y(n180) );
  CLKNAND2X2 U113 ( .A(n171), .B(n170), .Y(n172) );
endmodule


module ALU_DW01_add_52 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n10, n11, n12, n13, n15, n19, n22, \A[0] , n62, n63, n65,
         n68, n69, n71, n74, n78, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  NOR2BX8 U61 ( .AN(n68), .B(n10), .Y(CO) );
  NOR2BX4 U36 ( .AN(n85), .B(n92), .Y(n69) );
  NAND2X1 U37 ( .A(n96), .B(n65), .Y(n4) );
  OAI21X8 U38 ( .A0(n69), .A1(n95), .B0(n65), .Y(n19) );
  NAND2X3 U39 ( .A(n92), .B(n84), .Y(n65) );
  ADDFX2 U40 ( .A(A[2]), .B(B[2]), .CI(n78), .CO(n22), .S(SUM[2]) );
  CLKINVX4 U41 ( .A(A[4]), .Y(n98) );
  AND2X2 U42 ( .A(n88), .B(A[4]), .Y(n74) );
  INVX2 U43 ( .A(n22), .Y(n95) );
  NAND2X2 U44 ( .A(A[5]), .B(n89), .Y(n83) );
  NAND2X1 U45 ( .A(n100), .B(n83), .Y(n2) );
  OAI2BB1X4 U46 ( .A0N(n74), .A1N(n100), .B0(n83), .Y(n12) );
  NOR2BX4 U47 ( .AN(n90), .B(A[5]), .Y(n13) );
  INVX2 U48 ( .A(n88), .Y(n87) );
  OR2X2 U49 ( .A(n93), .B(B[1]), .Y(n78) );
  INVX4 U50 ( .A(n13), .Y(n100) );
  CLKXOR2X2 U51 ( .A(n94), .B(n3), .Y(SUM[4]) );
  NAND2X2 U52 ( .A(n97), .B(n99), .Y(n3) );
  NOR2X2 U53 ( .A(n91), .B(n62), .Y(n68) );
  NAND2X2 U54 ( .A(B[7]), .B(B[6]), .Y(n62) );
  CLKAND2X2 U55 ( .A(n100), .B(n63), .Y(n11) );
  CLKINVX2 U56 ( .A(n19), .Y(n94) );
  CLKAND2X2 U57 ( .A(n98), .B(n87), .Y(n71) );
  INVX2 U58 ( .A(n74), .Y(n99) );
  AOI21X4 U59 ( .A0(n19), .A1(n11), .B0(n12), .Y(n10) );
  BUFX2 U60 ( .A(B[4]), .Y(n88) );
  BUFX2 U62 ( .A(A[1]), .Y(n93) );
  INVX2 U63 ( .A(n71), .Y(n97) );
  NAND2X2 U64 ( .A(n98), .B(n87), .Y(n63) );
  XNOR2X2 U65 ( .A(n15), .B(n2), .Y(SUM[5]) );
  OAI21X2 U66 ( .A0(n71), .A1(n94), .B0(n99), .Y(n15) );
  XNOR2X2 U67 ( .A(n93), .B(B[1]), .Y(SUM[1]) );
  INVX2 U68 ( .A(n85), .Y(n84) );
  INVX2 U69 ( .A(n90), .Y(n89) );
  CLKBUFX4 U70 ( .A(A[3]), .Y(n92) );
  XNOR2X2 U71 ( .A(n4), .B(n22), .Y(SUM[3]) );
  INVX2 U72 ( .A(n69), .Y(n96) );
  INVX2 U73 ( .A(B[8]), .Y(n91) );
  INVX2 U74 ( .A(B[5]), .Y(n90) );
  CLKBUFX4 U75 ( .A(n86), .Y(n85) );
  INVX2 U76 ( .A(B[3]), .Y(n86) );
endmodule


module ALU_DW01_add_47 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n8, n9, n10, n11, n17, n20, n26, n29, n32, n38, n86, n87, n89, n90,
         n100, n102, n106, n107, n108, n110, n111, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133;

  OAI21X8 U103 ( .A0(n29), .A1(n8), .B0(n9), .Y(CO) );
  CLKINVX2 U61 ( .A(B[3]), .Y(n130) );
  INVX2 U62 ( .A(n32), .Y(n132) );
  OR2X2 U63 ( .A(n89), .B(n32), .Y(n111) );
  NOR2BX8 U64 ( .AN(n121), .B(A[5]), .Y(n32) );
  OR2X2 U65 ( .A(B[8]), .B(A[8]), .Y(n108) );
  NAND2X2 U66 ( .A(A[4]), .B(B[4]), .Y(n89) );
  NAND2X2 U67 ( .A(A[8]), .B(B[8]), .Y(n17) );
  AND2X2 U68 ( .A(n108), .B(n127), .Y(n10) );
  NOR2BX2 U69 ( .AN(n124), .B(A[6]), .Y(n26) );
  OR2X1 U70 ( .A(A[2]), .B(B[2]), .Y(n119) );
  NAND2BX8 U71 ( .AN(n106), .B(n10), .Y(n8) );
  AOI21X8 U72 ( .A0(n20), .A1(n102), .B0(n11), .Y(n9) );
  OR2X1 U73 ( .A(A[4]), .B(B[4]), .Y(n107) );
  AND2X1 U74 ( .A(A[7]), .B(n126), .Y(n86) );
  BUFX2 U75 ( .A(B[7]), .Y(n126) );
  BUFX2 U76 ( .A(B[5]), .Y(n122) );
  INVX2 U77 ( .A(A[7]), .Y(n131) );
  AOI21X6 U78 ( .A0(n100), .A1(n38), .B0(n110), .Y(n29) );
  AO21X2 U79 ( .A0(n116), .A1(n117), .B0(n86), .Y(n20) );
  NAND2X2 U80 ( .A(n125), .B(n131), .Y(n116) );
  AND2X2 U81 ( .A(A[6]), .B(n123), .Y(n117) );
  INVX2 U82 ( .A(A[3]), .Y(n133) );
  AND2X2 U83 ( .A(n108), .B(n127), .Y(n102) );
  AO21X2 U84 ( .A0(n118), .A1(n119), .B0(n120), .Y(n38) );
  NAND2X2 U85 ( .A(n133), .B(n130), .Y(n118) );
  AND2X2 U86 ( .A(n129), .B(A[3]), .Y(n120) );
  NOR2X2 U87 ( .A(n17), .B(n128), .Y(n11) );
  NAND2BX2 U88 ( .AN(n90), .B(n111), .Y(n110) );
  AND2X2 U89 ( .A(A[5]), .B(n122), .Y(n90) );
  OR2X2 U90 ( .A(n26), .B(n87), .Y(n106) );
  AND2X2 U91 ( .A(n131), .B(n125), .Y(n87) );
  INVX2 U92 ( .A(n122), .Y(n121) );
  INVX2 U93 ( .A(n126), .Y(n125) );
  INVX2 U94 ( .A(n128), .Y(n127) );
  INVX2 U95 ( .A(n124), .Y(n123) );
  INVX2 U96 ( .A(n130), .Y(n129) );
  INVX2 U97 ( .A(B[9]), .Y(n128) );
  INVX2 U98 ( .A(B[6]), .Y(n124) );
  AND2X2 U99 ( .A(n132), .B(n107), .Y(n100) );
endmodule


module ALU_DW01_add_57 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n11, n12, n17, n20, n21, n22, n23, n27, n28, n31, n33, n34, n36, n37,
         n39, n42, n43, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102;

  NAND2X2 U65 ( .A(n20), .B(n11), .Y(n93) );
  AND2X2 U66 ( .A(n96), .B(n97), .Y(n94) );
  NOR2X2 U67 ( .A(n92), .B(n102), .Y(n12) );
  ADDFX1 U68 ( .A(A[2]), .B(B[2]), .CI(n43), .CO(n42) );
  NAND2X2 U69 ( .A(A[5]), .B(B[5]), .Y(n34) );
  ADDFX1 U70 ( .A(n99), .B(B[1]), .CI(A[1]), .CO(n43) );
  NOR2X8 U71 ( .A(B[5]), .B(A[5]), .Y(n33) );
  NOR2X2 U72 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NAND2X1 U73 ( .A(A[8]), .B(B[8]), .Y(n92) );
  OAI21X6 U74 ( .A0(n93), .A1(n94), .B0(n95), .Y(CO) );
  OR2X1 U75 ( .A(n28), .B(n22), .Y(n98) );
  NAND2X1 U76 ( .A(A[7]), .B(B[7]), .Y(n23) );
  AOI21X4 U77 ( .A0(n11), .A1(n21), .B0(n12), .Y(n95) );
  AND2X1 U78 ( .A(A[3]), .B(B[3]), .Y(n101) );
  CLKINVX2 U79 ( .A(B[9]), .Y(n102) );
  OR2X1 U80 ( .A(A[0]), .B(B[0]), .Y(n99) );
  NOR2X4 U81 ( .A(B[7]), .B(A[7]), .Y(n22) );
  NOR2X2 U82 ( .A(n22), .B(n27), .Y(n20) );
  NAND2X2 U83 ( .A(n98), .B(n23), .Y(n21) );
  NOR2X4 U84 ( .A(n102), .B(n17), .Y(n11) );
  OA21X1 U85 ( .A0(n33), .A1(n37), .B0(n34), .Y(n97) );
  NAND2X2 U86 ( .A(A[4]), .B(B[4]), .Y(n37) );
  NAND2X2 U87 ( .A(n31), .B(n39), .Y(n96) );
  NOR2X2 U88 ( .A(n33), .B(n36), .Y(n31) );
  AO21X2 U89 ( .A0(n42), .A1(n100), .B0(n101), .Y(n39) );
  NOR2X2 U90 ( .A(B[4]), .B(A[4]), .Y(n36) );
  CLKNAND2X2 U91 ( .A(A[6]), .B(B[6]), .Y(n28) );
  NOR2X2 U92 ( .A(B[6]), .B(A[6]), .Y(n27) );
  OR2X2 U93 ( .A(B[3]), .B(A[3]), .Y(n100) );
endmodule


module ALU_DW01_add_53 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n11, n14, n21, n23, n24, n26, n30, n31, n39, n45, n46, n96, n99, n100,
         n101, n102, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117;

  AOI21X3 U69 ( .A0(n114), .A1(n115), .B0(n102), .Y(n109) );
  AND2X2 U70 ( .A(B[9]), .B(B[10]), .Y(n14) );
  CLKAND2X4 U71 ( .A(n23), .B(n11), .Y(n110) );
  AND2X2 U72 ( .A(n117), .B(n116), .Y(n96) );
  CLKNAND2X8 U73 ( .A(n100), .B(n99), .Y(CO) );
  NAND2X2 U74 ( .A(n110), .B(n111), .Y(n99) );
  OR2X2 U75 ( .A(n39), .B(n101), .Y(n107) );
  NAND2BX2 U76 ( .AN(n21), .B(n14), .Y(n106) );
  NAND2X2 U77 ( .A(n24), .B(n11), .Y(n105) );
  CLKNAND2X2 U78 ( .A(A[6]), .B(B[6]), .Y(n31) );
  OR2X2 U79 ( .A(B[8]), .B(A[8]), .Y(n104) );
  CLKAND2X2 U80 ( .A(A[4]), .B(B[4]), .Y(n115) );
  OR2X1 U81 ( .A(A[5]), .B(B[5]), .Y(n114) );
  NAND2X1 U82 ( .A(A[8]), .B(B[8]), .Y(n21) );
  AND2X2 U83 ( .A(n105), .B(n106), .Y(n100) );
  CLKAND2X4 U84 ( .A(n104), .B(n14), .Y(n11) );
  NOR2X2 U85 ( .A(A[5]), .B(B[5]), .Y(n101) );
  OAI21X4 U86 ( .A0(n96), .A1(n31), .B0(n26), .Y(n24) );
  NAND2X1 U87 ( .A(A[7]), .B(B[7]), .Y(n26) );
  NOR2X2 U88 ( .A(B[4]), .B(A[4]), .Y(n39) );
  NOR2X2 U89 ( .A(n96), .B(n30), .Y(n23) );
  NOR2X2 U90 ( .A(B[6]), .B(A[6]), .Y(n30) );
  CLKINVX1 U91 ( .A(B[7]), .Y(n117) );
  INVX2 U92 ( .A(A[7]), .Y(n116) );
  AND2X1 U93 ( .A(A[5]), .B(B[5]), .Y(n102) );
  OAI21X2 U94 ( .A0(n107), .A1(n108), .B0(n109), .Y(n111) );
  AOI21X2 U95 ( .A0(n45), .A1(n112), .B0(n113), .Y(n108) );
  ADDFX1 U96 ( .A(A[2]), .B(B[2]), .CI(n46), .CO(n45) );
  AND2X2 U97 ( .A(A[3]), .B(B[3]), .Y(n113) );
  OR2X2 U98 ( .A(B[3]), .B(A[3]), .Y(n112) );
  OR2X2 U99 ( .A(A[1]), .B(B[1]), .Y(n46) );
endmodule


module ALU_DW01_add_58 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n9, n10, n11, n12, n20, n21, n24, n25, n26, n30, n31, n33, n37, n39,
         n40, n45, n46, n96, n97, n99, n100, n101, n102, n103, n104, n105;

  OAI21X2 U69 ( .A0(n9), .A1(n33), .B0(n10), .Y(CO) );
  OA21X1 U70 ( .A0(n101), .A1(n100), .B0(n102), .Y(n33) );
  NAND2BX2 U71 ( .AN(n99), .B(n11), .Y(n9) );
  ADDFX1 U72 ( .A(A[1]), .B(B[1]), .CI(n97), .CO(n46) );
  AOI21X2 U73 ( .A0(n45), .A1(n104), .B0(n105), .Y(n101) );
  ADDFX1 U74 ( .A(A[2]), .B(B[2]), .CI(n46), .CO(n45) );
  NOR2X4 U75 ( .A(B[5]), .B(A[5]), .Y(n103) );
  OR2X2 U76 ( .A(n25), .B(n30), .Y(n99) );
  NAND2X1 U77 ( .A(A[7]), .B(B[7]), .Y(n26) );
  NAND2X1 U78 ( .A(A[6]), .B(B[6]), .Y(n31) );
  AOI21X4 U79 ( .A0(n11), .A1(n24), .B0(n12), .Y(n10) );
  OR2X1 U80 ( .A(A[0]), .B(B[0]), .Y(n97) );
  NOR2X4 U81 ( .A(B[7]), .B(A[7]), .Y(n25) );
  OAI21X2 U82 ( .A0(n31), .A1(n25), .B0(n26), .Y(n24) );
  NOR2X2 U83 ( .A(B[6]), .B(A[6]), .Y(n30) );
  OR2X2 U84 ( .A(n103), .B(n39), .Y(n100) );
  NOR2X2 U85 ( .A(B[4]), .B(A[4]), .Y(n39) );
  NOR2X4 U86 ( .A(n96), .B(n20), .Y(n11) );
  NOR2X2 U87 ( .A(n21), .B(n96), .Y(n12) );
  OA21X1 U88 ( .A0(n40), .A1(n103), .B0(n37), .Y(n102) );
  NAND2X2 U89 ( .A(A[5]), .B(B[5]), .Y(n37) );
  NAND2X2 U90 ( .A(A[4]), .B(B[4]), .Y(n40) );
  NAND2X2 U91 ( .A(B[10]), .B(B[9]), .Y(n96) );
  OR2X2 U92 ( .A(B[3]), .B(A[3]), .Y(n104) );
  AND2X2 U93 ( .A(B[3]), .B(A[3]), .Y(n105) );
  NOR2X2 U94 ( .A(B[8]), .B(A[8]), .Y(n20) );
  CLKNAND2X2 U95 ( .A(A[8]), .B(B[8]), .Y(n21) );
endmodule


module ALU_DW01_add_59 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n9, n10, n11, n20, n21, n24, n25, n30, n31, n33, n36, n37, n39, n40,
         n43, n45, n46, n96, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109;

  OAI21X4 U69 ( .A0(n9), .A1(n33), .B0(n10), .Y(CO) );
  AOI21BX2 U70 ( .A0(n11), .A1(n24), .B0N(n105), .Y(n10) );
  OA21X2 U71 ( .A0(n100), .A1(n101), .B0(n102), .Y(n33) );
  OR2X2 U72 ( .A(n107), .B(n108), .Y(n104) );
  OA21X1 U73 ( .A0(n109), .A1(n43), .B0(n106), .Y(n101) );
  OA21X1 U74 ( .A0(n40), .A1(n36), .B0(n37), .Y(n102) );
  OR2X2 U75 ( .A(n36), .B(n39), .Y(n100) );
  OR2X2 U76 ( .A(n21), .B(n104), .Y(n105) );
  NOR2X4 U77 ( .A(n104), .B(n20), .Y(n11) );
  NAND2X2 U78 ( .A(A[7]), .B(B[7]), .Y(n103) );
  ADDFX1 U79 ( .A(A[2]), .B(B[2]), .CI(n46), .CO(n45) );
  NAND2X1 U80 ( .A(A[6]), .B(B[6]), .Y(n31) );
  NAND2X1 U81 ( .A(A[4]), .B(B[4]), .Y(n40) );
  NAND2X1 U82 ( .A(A[3]), .B(B[3]), .Y(n106) );
  OR2X1 U83 ( .A(A[0]), .B(B[0]), .Y(n96) );
  OAI21X2 U84 ( .A0(n31), .A1(n25), .B0(n103), .Y(n24) );
  NOR2X4 U85 ( .A(B[5]), .B(A[5]), .Y(n36) );
  NOR2X4 U86 ( .A(B[7]), .B(A[7]), .Y(n25) );
  NAND2X1 U87 ( .A(A[5]), .B(B[5]), .Y(n37) );
  NOR2X2 U88 ( .A(B[4]), .B(A[4]), .Y(n39) );
  NOR2X2 U89 ( .A(B[3]), .B(A[3]), .Y(n43) );
  NAND2BX2 U90 ( .AN(n99), .B(n11), .Y(n9) );
  OR2X2 U91 ( .A(n25), .B(n30), .Y(n99) );
  NOR2X2 U92 ( .A(B[6]), .B(A[6]), .Y(n30) );
  INVX2 U93 ( .A(B[10]), .Y(n107) );
  INVX2 U94 ( .A(B[9]), .Y(n108) );
  INVX2 U95 ( .A(n45), .Y(n109) );
  ADDFX1 U96 ( .A(A[1]), .B(B[1]), .CI(n96), .CO(n46) );
  NOR2X2 U97 ( .A(B[8]), .B(A[8]), .Y(n20) );
  CLKNAND2X2 U98 ( .A(A[8]), .B(B[8]), .Y(n21) );
endmodule


module ALU_DW01_add_60 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n11, n12, n16, n17, n18, n22, n23, n28, n29, n32, n36, n37, n38, n85,
         n91, n92, n93, n97, n98, n99, n100, n101, n102, n103, n104, n105;
  assign n12 = A[8];

  ADDFX4 U58 ( .A(A[1]), .B(B[1]), .CI(n85), .CO(n38) );
  OA21X1 U59 ( .A0(n91), .A1(n92), .B0(n93), .Y(n98) );
  ADDFX1 U60 ( .A(A[2]), .B(B[2]), .CI(n38), .CO(n37) );
  OAI21X2 U61 ( .A0(n97), .A1(n98), .B0(n11), .Y(CO) );
  BUFX2 U62 ( .A(B[6]), .Y(n104) );
  NOR2X2 U63 ( .A(n16), .B(n12), .Y(n11) );
  OR2X1 U64 ( .A(n17), .B(n22), .Y(n97) );
  OR2X1 U65 ( .A(A[3]), .B(n101), .Y(n99) );
  AOI21BX4 U66 ( .A0(n37), .A1(n99), .B0N(n36), .Y(n92) );
  OR2X1 U67 ( .A(A[0]), .B(B[0]), .Y(n85) );
  BUFX2 U68 ( .A(B[5]), .Y(n103) );
  BUFX2 U69 ( .A(B[7]), .Y(n105) );
  BUFX2 U70 ( .A(B[4]), .Y(n102) );
  BUFX2 U71 ( .A(B[3]), .Y(n101) );
  NOR2X4 U72 ( .A(n105), .B(A[7]), .Y(n17) );
  NOR2X4 U73 ( .A(n103), .B(A[5]), .Y(n28) );
  NOR2X2 U74 ( .A(n104), .B(A[6]), .Y(n22) );
  OAI21X2 U75 ( .A0(n23), .A1(n17), .B0(n18), .Y(n16) );
  NAND2X2 U76 ( .A(A[7]), .B(n105), .Y(n18) );
  NAND2X2 U77 ( .A(A[6]), .B(n104), .Y(n23) );
  OA21X1 U78 ( .A0(n32), .A1(n28), .B0(n29), .Y(n93) );
  NAND2X2 U79 ( .A(A[5]), .B(n103), .Y(n29) );
  NAND2X2 U80 ( .A(A[4]), .B(n102), .Y(n32) );
  NAND2X2 U81 ( .A(A[3]), .B(n101), .Y(n36) );
  OR2X2 U82 ( .A(n28), .B(n100), .Y(n91) );
  NOR2X2 U83 ( .A(n102), .B(A[4]), .Y(n100) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n33, n34, n35,
         n37, n39, n40, \B[0] , \B[1] , n85, n84, n83, n78;
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];
  assign SUM[1] = \B[1] ;
  assign \B[1]  = B[1];

  XNOR2X4 U2 ( .A(n12), .B(n2), .Y(SUM[9]) );
  NAND2X4 U53 ( .A(n14), .B(n13), .Y(n12) );
  AOI21X6 U54 ( .A0(n78), .A1(n15), .B0(n16), .Y(n14) );
  BUFX20 U55 ( .A(n19), .Y(n78) );
  AOI21BX2 U56 ( .A0(n27), .A1(n23), .B0N(n26), .Y(n22) );
  BUFX5 U57 ( .A(n84), .Y(SUM[5]) );
  NOR2X4 U58 ( .A(B[3]), .B(A[3]), .Y(n33) );
  CLKBUFX4 U59 ( .A(n83), .Y(SUM[7]) );
  XNOR2X2 U60 ( .A(n78), .B(n4), .Y(n83) );
  OR2X2 U61 ( .A(n12), .B(n2), .Y(SUM[10]) );
  OAI21X4 U62 ( .A0(n20), .A1(n22), .B0(n21), .Y(n19) );
  NAND2X2 U63 ( .A(A[6]), .B(B[6]), .Y(n21) );
  CLKINVX2 U64 ( .A(n20), .Y(n37) );
  NOR2X4 U65 ( .A(B[6]), .B(A[6]), .Y(n20) );
  CLKXOR2X2 U66 ( .A(A[2]), .B(B[2]), .Y(n85) );
  INVX4 U67 ( .A(n85), .Y(SUM[2]) );
  XNOR2X2 U68 ( .A(n27), .B(n6), .Y(n84) );
  OAI21X6 U69 ( .A0(n28), .A1(n30), .B0(n29), .Y(n27) );
  NAND2BX1 U70 ( .AN(n25), .B(n26), .Y(n6) );
  CLKNAND2X2 U71 ( .A(B[5]), .B(A[5]), .Y(n26) );
  CLKINVX2 U72 ( .A(A[8]), .Y(n13) );
  OA21X4 U73 ( .A0(n35), .A1(n33), .B0(n34), .Y(n30) );
  NAND2BX2 U74 ( .AN(n17), .B(n18), .Y(n4) );
  NOR2X4 U75 ( .A(A[4]), .B(B[4]), .Y(n28) );
  NOR2X4 U76 ( .A(A[5]), .B(B[5]), .Y(n25) );
  NOR2X4 U77 ( .A(B[7]), .B(A[7]), .Y(n17) );
  CLKNAND2X2 U78 ( .A(B[4]), .B(A[4]), .Y(n29) );
  CLKNAND2X2 U79 ( .A(A[7]), .B(B[7]), .Y(n18) );
  CLKNAND2X2 U80 ( .A(A[3]), .B(B[3]), .Y(n34) );
  INVX2 U81 ( .A(A[9]), .Y(n11) );
  INVX2 U82 ( .A(n11), .Y(n2) );
  INVX2 U83 ( .A(n18), .Y(n16) );
  INVX2 U84 ( .A(n17), .Y(n15) );
  INVX2 U85 ( .A(n25), .Y(n23) );
  CLKXOR2X8 U86 ( .A(n30), .B(n7), .Y(SUM[4]) );
  NAND2X2 U87 ( .A(n39), .B(n29), .Y(n7) );
  INVX2 U88 ( .A(n28), .Y(n39) );
  CLKXOR2X8 U89 ( .A(n35), .B(n8), .Y(SUM[3]) );
  NAND2X2 U90 ( .A(n40), .B(n34), .Y(n8) );
  INVX2 U91 ( .A(n33), .Y(n40) );
  CLKXOR2X4 U92 ( .A(n22), .B(n5), .Y(SUM[6]) );
  NAND2X2 U93 ( .A(n37), .B(n21), .Y(n5) );
  CLKXOR2X4 U94 ( .A(n14), .B(n3), .Y(SUM[8]) );
  INVX2 U95 ( .A(n13), .Y(n3) );
  NOR2X4 U96 ( .A(A[2]), .B(B[2]), .Y(n35) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n11, n12, n13, n14, n15, n16, n18, n19,
         n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n34, n35, n36,
         n37, n39, n41, n42, \B[1] , n86, n85, n84;
  assign SUM[1] = \B[1] ;
  assign \B[1]  = B[1];

  XNOR2X4 U2 ( .A(n12), .B(n2), .Y(SUM[9]) );
  CLKNAND2X2 U55 ( .A(A[7]), .B(B[7]), .Y(n19) );
  OAI21X6 U56 ( .A0(n21), .A1(n23), .B0(n22), .Y(n20) );
  OAI21X4 U57 ( .A0(n29), .A1(n31), .B0(n30), .Y(n28) );
  CLKBUFX6 U58 ( .A(n85), .Y(SUM[5]) );
  INVX4 U59 ( .A(n86), .Y(SUM[2]) );
  NAND2BX2 U60 ( .AN(n12), .B(n11), .Y(SUM[10]) );
  CLKBUFX4 U61 ( .A(n84), .Y(SUM[7]) );
  XNOR2X2 U62 ( .A(n20), .B(n4), .Y(n84) );
  NOR2X4 U63 ( .A(B[7]), .B(A[7]), .Y(n18) );
  OAI21X4 U64 ( .A0(n13), .A1(n15), .B0(n14), .Y(n12) );
  NOR2X4 U65 ( .A(B[8]), .B(A[8]), .Y(n13) );
  NAND2BX1 U66 ( .AN(n18), .B(n19), .Y(n4) );
  NAND2X2 U67 ( .A(A[8]), .B(B[8]), .Y(n14) );
  NAND2X3 U68 ( .A(B[6]), .B(A[6]), .Y(n22) );
  CLKXOR2X2 U69 ( .A(A[2]), .B(B[2]), .Y(n86) );
  XNOR2X2 U70 ( .A(n28), .B(n6), .Y(n85) );
  CLKNAND2X2 U71 ( .A(A[3]), .B(B[3]), .Y(n35) );
  NAND2BX1 U72 ( .AN(n26), .B(n27), .Y(n6) );
  AOI21BX4 U73 ( .A0(n28), .A1(n24), .B0N(n27), .Y(n23) );
  CLKNAND2X2 U74 ( .A(B[5]), .B(A[5]), .Y(n27) );
  OA21X4 U75 ( .A0(n36), .A1(n34), .B0(n35), .Y(n31) );
  AOI21BX2 U76 ( .A0(n20), .A1(n16), .B0N(n19), .Y(n15) );
  NOR2X4 U77 ( .A(A[4]), .B(B[4]), .Y(n29) );
  NOR2X4 U78 ( .A(A[5]), .B(B[5]), .Y(n26) );
  NOR2X4 U79 ( .A(B[3]), .B(A[3]), .Y(n34) );
  CLKNAND2X2 U80 ( .A(B[4]), .B(A[4]), .Y(n30) );
  NOR2X4 U81 ( .A(A[6]), .B(B[6]), .Y(n21) );
  INVX2 U82 ( .A(A[9]), .Y(n11) );
  INVX2 U83 ( .A(n11), .Y(n2) );
  INVX2 U84 ( .A(n26), .Y(n24) );
  INVX2 U85 ( .A(n18), .Y(n16) );
  CLKXOR2X8 U86 ( .A(n31), .B(n7), .Y(SUM[4]) );
  NAND2X2 U87 ( .A(n41), .B(n30), .Y(n7) );
  INVX2 U88 ( .A(n29), .Y(n41) );
  CLKXOR2X8 U89 ( .A(n36), .B(n8), .Y(SUM[3]) );
  NAND2X2 U90 ( .A(n42), .B(n35), .Y(n8) );
  INVX2 U91 ( .A(n34), .Y(n42) );
  CLKXOR2X4 U92 ( .A(n23), .B(n5), .Y(SUM[6]) );
  NAND2X2 U93 ( .A(n39), .B(n22), .Y(n5) );
  INVX2 U94 ( .A(n21), .Y(n39) );
  CLKXOR2X4 U95 ( .A(n15), .B(n3), .Y(SUM[8]) );
  NAND2X2 U96 ( .A(n37), .B(n14), .Y(n3) );
  INVX2 U97 ( .A(n13), .Y(n37) );
  NOR2X4 U98 ( .A(A[2]), .B(B[2]), .Y(n36) );
endmodule


module ALU_DW01_add_2 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n26, n28, n64, n65;

  ADDFX4 U37 ( .A(A[1]), .B(B[1]), .CI(n65), .CO(n23), .S(SUM[1]) );
  NOR2X6 U38 ( .A(B[4]), .B(A[4]), .Y(n16) );
  INVX2 U39 ( .A(n19), .Y(n18) );
  NOR2X6 U40 ( .A(B[5]), .B(A[5]), .Y(n13) );
  NAND2X3 U41 ( .A(A[4]), .B(B[4]), .Y(n17) );
  NOR2X2 U42 ( .A(n8), .B(n9), .Y(n7) );
  CLKAND2X4 U43 ( .A(n64), .B(n7), .Y(CO) );
  AO21X2 U44 ( .A0(n11), .A1(n19), .B0(n12), .Y(n64) );
  CLKNAND2X2 U45 ( .A(A[3]), .B(B[3]), .Y(n21) );
  OR2X1 U46 ( .A(A[0]), .B(B[0]), .Y(n65) );
  ADDFX2 U47 ( .A(A[2]), .B(B[2]), .CI(n23), .CO(n22), .S(SUM[2]) );
  OAI21X4 U48 ( .A0(n1), .A1(n20), .B0(n21), .Y(n19) );
  NAND2BX1 U49 ( .AN(n16), .B(n17), .Y(n3) );
  NOR2X4 U50 ( .A(B[3]), .B(A[3]), .Y(n20) );
  CLKNAND2X2 U51 ( .A(A[5]), .B(B[5]), .Y(n14) );
  CLKXOR2X2 U52 ( .A(n18), .B(n3), .Y(SUM[4]) );
  CLKINVX1 U53 ( .A(n22), .Y(n1) );
  OAI21X2 U54 ( .A0(n17), .A1(n13), .B0(n14), .Y(n12) );
  NOR2X2 U55 ( .A(n16), .B(n13), .Y(n11) );
  XNOR2X2 U56 ( .A(n15), .B(n2), .Y(SUM[5]) );
  NAND2X2 U57 ( .A(n26), .B(n14), .Y(n2) );
  OAI21X2 U58 ( .A0(n16), .A1(n18), .B0(n17), .Y(n15) );
  INVX2 U59 ( .A(n13), .Y(n26) );
  XNOR2X2 U60 ( .A(n4), .B(n22), .Y(SUM[3]) );
  NAND2X2 U61 ( .A(n28), .B(n21), .Y(n4) );
  INVX2 U62 ( .A(n20), .Y(n28) );
  XNOR2X2 U63 ( .A(A[0]), .B(B[0]), .Y(SUM[0]) );
  INVX2 U64 ( .A(B[7]), .Y(n8) );
  INVX2 U65 ( .A(B[6]), .Y(n9) );
endmodule


module ALU_DW01_add_5 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n65, n6, n9, n10, n11, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n27, \A[0] , \A[1] , n61, n62, n63;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];

  CLKAND2X6 U36 ( .A(n63), .B(n6), .Y(n65) );
  NAND2X2 U37 ( .A(A[3]), .B(B[3]), .Y(n23) );
  NAND2X2 U38 ( .A(A[5]), .B(B[5]), .Y(n16) );
  CLKBUFX20 U39 ( .A(n16), .Y(n61) );
  NAND2X8 U40 ( .A(A[4]), .B(B[4]), .Y(n19) );
  NOR2X8 U41 ( .A(B[4]), .B(A[4]), .Y(n18) );
  NAND2X1 U42 ( .A(B[6]), .B(B[7]), .Y(n11) );
  OAI21X6 U43 ( .A0(n24), .A1(n22), .B0(n23), .Y(n21) );
  OAI21X6 U44 ( .A0(n19), .A1(n15), .B0(n61), .Y(n14) );
  NOR2X8 U45 ( .A(n18), .B(n15), .Y(n13) );
  NAND2BX1 U46 ( .AN(n18), .B(n19), .Y(n2) );
  OR2X2 U47 ( .A(n9), .B(n10), .Y(n62) );
  AO21X4 U48 ( .A0(n13), .A1(n21), .B0(n14), .Y(n63) );
  NOR2X6 U49 ( .A(B[5]), .B(A[5]), .Y(n15) );
  INVX2 U50 ( .A(B[8]), .Y(n10) );
  NOR2X2 U51 ( .A(n11), .B(n62), .Y(n6) );
  INVX2 U52 ( .A(B[9]), .Y(n9) );
  NOR2X4 U53 ( .A(A[2]), .B(B[2]), .Y(n24) );
  NOR2X4 U54 ( .A(B[3]), .B(A[3]), .Y(n22) );
  INVX2 U55 ( .A(n22), .Y(n27) );
  NAND2X2 U56 ( .A(n25), .B(n61), .Y(n1) );
  INVX2 U57 ( .A(n15), .Y(n25) );
  XNOR2X2 U58 ( .A(A[2]), .B(B[2]), .Y(SUM[2]) );
  CLKXOR2X2 U59 ( .A(n3), .B(n24), .Y(SUM[3]) );
  NAND2X2 U60 ( .A(n27), .B(n23), .Y(n3) );
  INVX2 U61 ( .A(n21), .Y(n20) );
  CLKXOR2X2 U62 ( .A(n20), .B(n2), .Y(SUM[4]) );
  XNOR2X2 U63 ( .A(n17), .B(n1), .Y(SUM[5]) );
  OAI21X2 U64 ( .A0(n18), .A1(n20), .B0(n19), .Y(n17) );
  BUFX10 U65 ( .A(n65), .Y(CO) );
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
         N126, N127, N130, N133, \div_35/u_div/CryOut[1][1] ,
         \div_35/u_div/CryOut[1][0] , \div_35/u_div/CryOut[2][1] ,
         \div_35/u_div/CryOut[2][0] , \div_35/u_div/CryOut[3][1] ,
         \div_35/u_div/CryOut[3][0] , \div_35/u_div/CryOut[5][1] ,
         \div_35/u_div/CryOut[5][0] , \div_35/u_div/CryOut[6][1] ,
         \div_35/u_div/CryOut[6][0] , \div_35/u_div/CryOut[7][1] ,
         \div_35/u_div/CryOut[7][0] , \div_35/u_div/SumTmp[1][2][2] ,
         \div_35/u_div/SumTmp[1][2][1] , \div_35/u_div/SumTmp[1][2][0] ,
         \div_35/u_div/SumTmp[1][1][5] , \div_35/u_div/SumTmp[1][1][4] ,
         \div_35/u_div/SumTmp[1][1][3] , \div_35/u_div/SumTmp[1][1][2] ,
         \div_35/u_div/SumTmp[1][1][1] , \div_35/u_div/SumTmp[1][1][0] ,
         \div_35/u_div/SumTmp[2][2][2] , \div_35/u_div/SumTmp[2][2][1] ,
         \div_35/u_div/SumTmp[2][2][0] , \div_35/u_div/SumTmp[2][1][5] ,
         \div_35/u_div/SumTmp[2][1][4] , \div_35/u_div/SumTmp[2][1][3] ,
         \div_35/u_div/SumTmp[2][1][2] , \div_35/u_div/SumTmp[2][1][1] ,
         \div_35/u_div/SumTmp[2][1][0] , \div_35/u_div/SumTmp[3][2][1] ,
         \div_35/u_div/SumTmp[3][2][0] , \div_35/u_div/SumTmp[3][1][5] ,
         \div_35/u_div/SumTmp[3][1][4] , \div_35/u_div/SumTmp[3][1][3] ,
         \div_35/u_div/SumTmp[3][1][2] , \div_35/u_div/SumTmp[3][1][1] ,
         \div_35/u_div/SumTmp[3][1][0] , \div_35/u_div/SumTmp[4][1][5] ,
         \div_35/u_div/SumTmp[4][1][4] , \div_35/u_div/SumTmp[4][1][3] ,
         \div_35/u_div/SumTmp[4][1][2] , \div_35/u_div/SumTmp[4][1][1] ,
         \div_35/u_div/SumTmp[4][1][0] , \div_35/u_div/SumTmp[5][1][5] ,
         \div_35/u_div/SumTmp[5][1][4] , \div_35/u_div/SumTmp[5][1][3] ,
         \div_35/u_div/SumTmp[5][1][2] , \div_35/u_div/SumTmp[5][1][1] ,
         \div_35/u_div/SumTmp[5][1][0] , \div_35/u_div/SumTmp[6][1][5] ,
         \div_35/u_div/SumTmp[6][1][4] , \div_35/u_div/SumTmp[6][1][3] ,
         \div_35/u_div/SumTmp[6][1][2] , \div_35/u_div/SumTmp[6][1][1] ,
         \div_35/u_div/SumTmp[6][1][0] , \div_35/u_div/SumTmp[7][1][5] ,
         \div_35/u_div/SumTmp[7][1][4] , \div_35/u_div/SumTmp[7][1][3] ,
         \div_35/u_div/SumTmp[7][1][2] , \div_35/u_div/SumTmp[7][1][1] ,
         \div_35/u_div/SumTmp[7][1][0] , n843, n916, n917, n930, n938, n1189,
         n1194, \div_35/u_div/BInv[7][9] , \div_35/u_div/BInv[7][8] ,
         \div_35/u_div/BInv[7][7] , \div_35/u_div/BInv[7][6] ,
         \div_35/u_div/BInv[7][5] , \div_35/u_div/BInv[7][4] ,
         \div_35/u_div/BInv[7][3] , \div_35/u_div/BInv[7][2] ,
         \div_35/u_div/BInv[7][1] , \div_35/u_div/BInv[7][10] ,
         \div_35/u_div/BInv[7][0] , \div_35/u_div/BInv[6][9] ,
         \div_35/u_div/BInv[6][8] , \div_35/u_div/BInv[6][7] ,
         \div_35/u_div/BInv[6][6] , \div_35/u_div/BInv[6][5] ,
         \div_35/u_div/BInv[6][4] , \div_35/u_div/BInv[6][3] ,
         \div_35/u_div/BInv[6][2] , \div_35/u_div/BInv[6][1] ,
         \div_35/u_div/BInv[6][10] , \div_35/u_div/BInv[5][9] ,
         \div_35/u_div/BInv[5][8] , \div_35/u_div/BInv[5][7] ,
         \div_35/u_div/BInv[5][6] , \div_35/u_div/BInv[5][5] ,
         \div_35/u_div/BInv[5][4] , \div_35/u_div/BInv[5][3] ,
         \div_35/u_div/BInv[5][2] , \div_35/u_div/BInv[5][1] ,
         \div_35/u_div/BInv[5][10] , \div_35/u_div/BInv[5][0] ,
         \div_35/u_div/BInv[3][9] , \div_35/u_div/BInv[3][8] ,
         \div_35/u_div/BInv[3][7] , \div_35/u_div/BInv[3][6] ,
         \div_35/u_div/BInv[3][5] , \div_35/u_div/BInv[3][4] ,
         \div_35/u_div/BInv[3][3] , \div_35/u_div/BInv[3][2] ,
         \div_35/u_div/BInv[3][1] , \div_35/u_div/BInv[3][0] , n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n221, n222, n223, n224, n226, n227,
         \div_35/u_div/u_add_PartRem_2_2/n49 ,
         \div_35/u_div/u_add_PartRem_2_2/n48 ,
         \div_35/u_div/u_add_PartRem_2_2/n47 ,
         \div_35/u_div/u_add_PartRem_2_2/n46 ,
         \div_35/u_div/u_add_PartRem_2_2/n45 ,
         \div_35/u_div/u_add_PartRem_2_2/B[7] ,
         \div_35/u_div/u_add_PartRem_2_2/B[5] ,
         \div_35/u_div/u_add_PartRem_2_2/B[3] ,
         \div_35/u_div/u_add_PartRem_2_2/B[2] ,
         \div_35/u_div/u_add_PartRem_2_2/B[1] ,
         \div_35/u_div/u_add_PartRem_2_1/n59 ,
         \div_35/u_div/u_add_PartRem_2_1/n57 ,
         \div_35/u_div/u_add_PartRem_2_1/n55 ,
         \div_35/u_div/u_add_PartRem_2_1/n19 ,
         \div_35/u_div/u_add_PartRem_2_1/n18 ,
         \div_35/u_div/u_add_PartRem_2_1/n17 ,
         \div_35/u_div/u_add_PartRem_2_1/n16 ,
         \div_35/u_div/u_add_PartRem_2_1/n10 ,
         \div_35/u_div/u_add_PartRem_2_1/n4 ,
         \div_35/u_div/u_add_PartRem_2_1/n1 ,
         \div_35/u_div/u_add_PartRem_2_3/n58 ,
         \div_35/u_div/u_add_PartRem_2_3/n57 ,
         \div_35/u_div/u_add_PartRem_2_3/n52 ,
         \div_35/u_div/u_add_PartRem_2_3/n51 ,
         \div_35/u_div/u_add_PartRem_2_3/n16 ,
         \div_35/u_div/u_add_PartRem_2_3/n15 ,
         \div_35/u_div/u_add_PartRem_2_3/n1 , n1222, n1223, n1224, n1225,
         n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235,
         n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245,
         n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255,
         n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265,
         n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275,
         n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285,
         n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295,
         n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315,
         n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325,
         n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335,
         n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345,
         n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355,
         n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365,
         n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375,
         n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385,
         n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395,
         n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405,
         n1406, n1407, n1408, n1409, n1410, n1411;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43;
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
  assign \div_35/u_div/SumTmp[2][2][0]  = a_data[6];

  AOI221X4 U18 ( .A0(\div_35/u_div/SumTmp[3][1][5] ), .A1(n1340), .B0(
        \div_35/u_div/SumTmp[7][1][5] ), .B1(n1266), .C0(n73), .Y(n70) );
  AOI221X4 U20 ( .A0(\div_35/u_div/SumTmp[2][1][5] ), .A1(n1341), .B0(
        \div_35/u_div/SumTmp[6][1][5] ), .B1(n1267), .C0(n76), .Y(n68) );
  AOI221X4 U23 ( .A0(\div_35/u_div/SumTmp[2][1][0] ), .A1(n1340), .B0(
        \div_35/u_div/SumTmp[6][1][0] ), .B1(n1267), .C0(n79), .Y(n78) );
  AOI221X4 U25 ( .A0(\div_35/u_div/SumTmp[3][1][0] ), .A1(n1341), .B0(
        \div_35/u_div/SumTmp[7][1][0] ), .B1(n1266), .C0(n80), .Y(n77) );
  AOI221X4 U28 ( .A0(\div_35/u_div/SumTmp[1][1][2] ), .A1(n1273), .B0(
        \div_35/u_div/SumTmp[5][1][2] ), .B1(n1252), .C0(n1324), .Y(n84) );
  AOI221X4 U33 ( .A0(\div_35/u_div/SumTmp[1][1][1] ), .A1(n1273), .B0(
        \div_35/u_div/SumTmp[5][1][1] ), .B1(n1252), .C0(n1324), .Y(n88) );
  AOI32X4 U39 ( .A0(n1324), .A1(n91), .A2(n92), .B0(n93), .B1(n94), .Y(n916)
         );
  AOI221X4 U40 ( .A0(\div_35/u_div/SumTmp[1][1][4] ), .A1(n1273), .B0(
        \div_35/u_div/SumTmp[5][1][4] ), .B1(n1252), .C0(n1324), .Y(n94) );
  OAI32X4 U45 ( .A0(n1260), .A1(n1189), .A2(n1225), .B0(n1384), .B1(
        \div_35/u_div/SumTmp[2][2][1] ), .Y(n95) );
  AOI221X4 U48 ( .A0(\div_35/u_div/SumTmp[3][1][3] ), .A1(n1340), .B0(
        \div_35/u_div/SumTmp[7][1][3] ), .B1(n1267), .C0(n101), .Y(n100) );
  AOI221X4 U50 ( .A0(\div_35/u_div/SumTmp[2][1][3] ), .A1(n1341), .B0(
        \div_35/u_div/SumTmp[6][1][3] ), .B1(n1266), .C0(n102), .Y(n99) );
  NOR2X8 U57 ( .A(n1323), .B(n1386), .Y(n90) );
  AOI22X4 U58 ( .A0(\div_35/u_div/SumTmp[1][2][0] ), .A1(n1385), .B0(
        \div_35/u_div/SumTmp[3][2][0] ), .B1(n1387), .Y(n104) );
  OAI222X4 U59 ( .A0(n106), .A1(n1222), .B0(n108), .B1(n1391), .C0(n1328), 
        .C1(n109), .Y(ans[7]) );
  OAI31X4 U74 ( .A0(n1269), .A1(n1305), .A2(n1390), .B0(n118), .Y(n131) );
  AOI221X4 U80 ( .A0(n1398), .A1(n1390), .B0(n1399), .B1(n1259), .C0(n1396), 
        .Y(n134) );
  OAI222X4 U85 ( .A0(n1222), .A1(n137), .B0(n138), .B1(n1377), .C0(n1329), 
        .C1(n139), .Y(ans[5]) );
  OAI222X4 U95 ( .A0(n122), .A1(n137), .B0(n146), .B1(n1371), .C0(n1328), .C1(
        n147), .Y(ans[4]) );
  AOI221X4 U97 ( .A0(n1401), .A1(n103), .B0(N91), .B1(n1243), .C0(n151), .Y(
        n150) );
  OAI222X4 U98 ( .A0(n152), .A1(n1371), .B0(n1285), .B1(n153), .C0(n127), .C1(
        n1255), .Y(n151) );
  OAI222X4 U107 ( .A0(n1222), .A1(n155), .B0(n156), .B1(n1367), .C0(n1329), 
        .C1(n157), .Y(ans[3]) );
  NOR2X8 U118 ( .A(\div_35/u_div/CryOut[2][1] ), .B(N133), .Y(n74) );
  OAI222X4 U122 ( .A0(n1329), .A1(n168), .B0(n169), .B1(n1395), .C0(n122), 
        .C1(n155), .Y(ans[2]) );
  OAI222X4 U134 ( .A0(n1222), .A1(n177), .B0(n178), .B1(n1394), .C0(n1328), 
        .C1(n179), .Y(ans[1]) );
  AOI221X4 U136 ( .A0(N120), .A1(n1241), .B0(N61), .B1(n1265), .C0(n183), .Y(
        n182) );
  OAI222X4 U140 ( .A0(n1235), .A1(n1335), .B0(n1255), .B1(n1392), .C0(
        b_data[1]), .C1(n1268), .Y(n185) );
  OAI21X8 U143 ( .A0(N34), .A1(n1409), .B0(n187), .Y(n120) );
  AOI31X4 U146 ( .A0(n190), .A1(n1409), .A2(n1401), .B0(n191), .Y(n189) );
  AOI221X4 U148 ( .A0(n196), .A1(b_data[0]), .B0(N78), .B1(n1246), .C0(n197), 
        .Y(n194) );
  OAI31X4 U149 ( .A0(n1392), .A1(b_data[0]), .A2(n1269), .B0(n198), .Y(n197)
         );
  OAI21X8 U153 ( .A0(n1409), .A1(n1407), .B0(n187), .Y(n125) );
  AOI222X4 U154 ( .A0(n1272), .A1(n67), .B0(n1328), .B1(n200), .C0(n1404), 
        .C1(n1399), .Y(n187) );
  NOR3BX4 U156 ( .AN(n201), .B(n1272), .C(n1404), .Y(n56) );
  NOR3BX4 U159 ( .AN(n203), .B(alu_op[0]), .C(alu_op[3]), .Y(n60) );
  NOR3BX4 U160 ( .AN(n204), .B(n1408), .C(n1272), .Y(n57) );
  NOR2X8 U165 ( .A(n1403), .B(n1404), .Y(n67) );
  NOR3BX4 U166 ( .AN(n201), .B(alu_op[0]), .C(n1325), .Y(n55) );
  NOR2X8 U168 ( .A(n1325), .B(alu_op[1]), .Y(n203) );
  AOI31X4 U175 ( .A0(n207), .A1(n64), .A2(n208), .B0(n1409), .Y(n188) );
  OAI32X4 U176 ( .A0(n1396), .A1(n1399), .A2(n209), .B0(n210), .B1(n1400), .Y(
        n208) );
  NAND3X8 U177 ( .A(n204), .B(n1408), .C(n1325), .Y(n62) );
  OAI31X4 U181 ( .A0(n1397), .A1(n1408), .A2(n1403), .B0(n61), .Y(n212) );
  OAI2B2X4 U185 ( .A1N(N39), .A0(n213), .B0(N39), .B1(n214), .Y(n211) );
  NOR2X8 U200 ( .A(n1408), .B(alu_op[3]), .Y(n201) );
  ALU_DW01_sub_0 sub_1_root_sub_33_2 ( .A({n1261, n1258, a_data[5], n1370, 
        n1364, n1280, n1331, n1277}), .B({n1308, n1305, n1312, n1304, n1310, 
        b_data[2:0]}), .CI(psw_in[7]), .DIFF({N118, N117, N116, N115, N114, 
        N113, N112, N111}) );
  ALU_DW01_inc_0 add_28 ( .A({n1334, n1258, n1375, n1369, n1364, n1280, n1274, 
        n1277}), .SUM({N94, N93, N92, N91, N90, N89, N88, N87}) );
  ALU_DW01_add_3 add_1_root_add_26_2 ( .A({1'b0, n1334, n1259, n1375, n1370, 
        n1364, n1279, n1331, n1277}), .B({1'b0, n1308, n1305, n1312, n1304, 
        n1310, b_data[2:0]}), .CI(psw_in[7]), .SUM({N86, N85, N84, N83, N82, 
        N81, N80, N79, N78}) );
  ALU_DW01_add_4 add_25 ( .A({1'b0, n1260, n1259, a_data[5], n1370, n1365, 
        n1279, n1331, n1278}), .B({1'b0, n1308, n1305, n1312, n1304, n1310, 
        b_data[2:0]}), .CI(1'b0), .SUM({N68, N67, N66, N65, N64, N63, N62, N61, 
        N60}) );
  ALU_DW_mult_uns_0 mult_34 ( .a({n1261, n1259, n1374, n1369, n1364, n1280, 
        n1331, n1278}), .b({n1308, n1305, n1312, n1304, n1310, b_data[2:1], 
        n1232}), .product({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119}) );
  ALU_DW01_sub_1 \div_35/u_div/u_add_B7  ( .A({n1354, n1351, n1349, n1285, 
        n1345, n1271, n1356, n1361, 1'b1, 1'b1, 1'b1}), .B({1'b1, 1'b1, 1'b1, 
        n1353, \div_35/u_div/u_add_PartRem_2_2/B[7] , n1311, n1347, n1250, 
        n1343, n1355, n1359}), .CI(1'b1), .DIFF({\div_35/u_div/BInv[7][10] , 
        \div_35/u_div/BInv[7][9] , \div_35/u_div/BInv[7][8] , 
        \div_35/u_div/BInv[7][7] , \div_35/u_div/BInv[7][6] , 
        \div_35/u_div/BInv[7][5] , \div_35/u_div/BInv[7][4] , 
        \div_35/u_div/BInv[7][3] , \div_35/u_div/BInv[7][2] , 
        \div_35/u_div/BInv[7][1] , \div_35/u_div/BInv[7][0] }) );
  ALU_DW01_add_34 \div_35/u_div/u_add_PartRem_0_2  ( .A({1'b0, 1'b0, n1318, 
        n1320, n1303, n1319, n1317, n1223, n1280, n1274, n1278}), .B({1'b1, 
        1'b1, n1354, n1251, n1311, n1348, n1250, n1271, n1355, n1361, 1'b1}), 
        .CI(1'b1), .CO(\div_35/u_div/CryOut[2][0] ) );
  ALU_DW01_add_31 \div_35/u_div/u_add_PartRem_1_6  ( .A({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n1286, n1315, n1194, n1374, n1369, n1365}), .B({
        \div_35/u_div/BInv[6][10] , \div_35/u_div/BInv[6][9] , 
        \div_35/u_div/BInv[6][8] , \div_35/u_div/BInv[6][7] , 
        \div_35/u_div/BInv[6][6] , \div_35/u_div/BInv[6][5] , 
        \div_35/u_div/BInv[6][4] , \div_35/u_div/BInv[6][3] , 
        \div_35/u_div/BInv[6][2] , n1362, 1'b1}), .CI(1'b1), .SUM({
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, \div_35/u_div/SumTmp[6][1][5] , 
        \div_35/u_div/SumTmp[6][1][4] , \div_35/u_div/SumTmp[6][1][3] , 
        \div_35/u_div/SumTmp[6][1][2] , \div_35/u_div/SumTmp[6][1][1] , 
        \div_35/u_div/SumTmp[6][1][0] }), .CO(\div_35/u_div/CryOut[6][1] ) );
  ALU_DW01_add_40 \div_35/u_div/u_add_PartRem_1_7  ( .A({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n1286, n1316, n1194, n1374, n1370, n1364}), .B({
        \div_35/u_div/BInv[7][10] , n1262, \div_35/u_div/BInv[7][8] , 
        \div_35/u_div/BInv[7][7] , \div_35/u_div/BInv[7][6] , 
        \div_35/u_div/BInv[7][5] , \div_35/u_div/BInv[7][4] , 
        \div_35/u_div/BInv[7][3] , \div_35/u_div/BInv[7][2] , 
        \div_35/u_div/BInv[7][1] , \div_35/u_div/BInv[7][0] }), .CI(1'b1), 
        .SUM({SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, \div_35/u_div/SumTmp[7][1][5] , 
        \div_35/u_div/SumTmp[7][1][4] , \div_35/u_div/SumTmp[7][1][3] , 
        \div_35/u_div/SumTmp[7][1][2] , \div_35/u_div/SumTmp[7][1][1] , 
        \div_35/u_div/SumTmp[7][1][0] }), .CO(\div_35/u_div/CryOut[7][1] ) );
  ALU_DW01_add_41 \div_35/u_div/u_add_PartRem_1_5  ( .A({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n1287, n1316, n1194, n1374, n1369, n1364}), .B({
        \div_35/u_div/BInv[5][10] , \div_35/u_div/BInv[5][9] , 
        \div_35/u_div/BInv[5][8] , \div_35/u_div/BInv[5][7] , 
        \div_35/u_div/BInv[5][6] , \div_35/u_div/BInv[5][5] , 
        \div_35/u_div/BInv[5][4] , \div_35/u_div/BInv[5][3] , 
        \div_35/u_div/BInv[5][2] , \div_35/u_div/BInv[5][1] , n1363}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, \div_35/u_div/SumTmp[5][1][5] , 
        \div_35/u_div/SumTmp[5][1][4] , \div_35/u_div/SumTmp[5][1][3] , 
        \div_35/u_div/SumTmp[5][1][2] , \div_35/u_div/SumTmp[5][1][1] , 
        \div_35/u_div/SumTmp[5][1][0] }), .CO(\div_35/u_div/CryOut[5][1] ) );
  ALU_DW01_add_42 \div_35/u_div/u_add_PartRem_1_3  ( .A({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n1287, n1315, n1194, n1374, n1369, n1364}), .B({1'b1, 
        n1264, \div_35/u_div/BInv[3][8] , \div_35/u_div/BInv[3][7] , 
        \div_35/u_div/BInv[3][6] , \div_35/u_div/BInv[3][5] , 
        \div_35/u_div/BInv[3][4] , \div_35/u_div/BInv[3][3] , 
        \div_35/u_div/BInv[3][2] , \div_35/u_div/BInv[3][1] , 
        \div_35/u_div/BInv[3][0] }), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        \div_35/u_div/SumTmp[3][1][5] , \div_35/u_div/SumTmp[3][1][4] , 
        \div_35/u_div/SumTmp[3][1][3] , \div_35/u_div/SumTmp[3][1][2] , 
        \div_35/u_div/SumTmp[3][1][1] , \div_35/u_div/SumTmp[3][1][0] }), .CO(
        \div_35/u_div/CryOut[3][1] ) );
  ALU_DW01_add_28 \div_35/u_div/u_add_B3  ( .A({1'b1, 1'b1, n1354, 
        \div_35/u_div/u_add_PartRem_2_2/B[7] , n1350, n1285, n1250, 
        \div_35/u_div/u_add_PartRem_2_2/B[3] , n1356, n1359, 1'b1}), .B({1'b1, 
        1'b1, 1'b1, n1353, n1351, n1349, n1347, n1309, n1343, 
        \div_35/u_div/u_add_PartRem_2_2/B[2] , n1360}), .CI(1'b1), .SUM({
        SYNOPSYS_UNCONNECTED__27, \div_35/u_div/BInv[3][9] , 
        \div_35/u_div/BInv[3][8] , \div_35/u_div/BInv[3][7] , 
        \div_35/u_div/BInv[3][6] , \div_35/u_div/BInv[3][5] , 
        \div_35/u_div/BInv[3][4] , \div_35/u_div/BInv[3][3] , 
        \div_35/u_div/BInv[3][2] , \div_35/u_div/BInv[3][1] , 
        \div_35/u_div/BInv[3][0] }) );
  ALU_DW01_add_52 \div_35/u_div/u_add_PartRem_1_2  ( .A({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n1286, n227, n1194, n1375, n1369, n1365}), .B({1'b1, 1'b1, 
        n1354, \div_35/u_div/u_add_PartRem_2_2/B[7] , n1249, n1348, n1250, 
        n1271, n1356, n1361, 1'b1}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        \div_35/u_div/SumTmp[2][1][5] , \div_35/u_div/SumTmp[2][1][4] , 
        \div_35/u_div/SumTmp[2][1][3] , \div_35/u_div/SumTmp[2][1][2] , 
        \div_35/u_div/SumTmp[2][1][1] , \div_35/u_div/SumTmp[2][1][0] }), .CO(
        \div_35/u_div/CryOut[2][1] ) );
  ALU_DW01_add_47 \div_35/u_div/u_add_PartRem_0_4  ( .A({1'b0, 1'b0, n1318, 
        n1320, n843, n1319, n1317, n1223, n1279, n1274, n1278}), .B({1'b1, 
        n1354, n1351, n1249, n1285, n1250, n1343, n1355, n1361, 1'b1, 1'b1}), 
        .CI(1'b1), .CO(N130) );
  ALU_DW01_add_57 \div_35/u_div/u_add_PartRem_0_3  ( .A({1'b0, 1'b0, n1281, 
        n1231, n1303, n1257, n1275, n1284, n1279, n1274, n1277}), .B({1'b1, 
        n1264, \div_35/u_div/BInv[3][8] , \div_35/u_div/BInv[3][7] , 
        \div_35/u_div/BInv[3][6] , \div_35/u_div/BInv[3][5] , 
        \div_35/u_div/BInv[3][4] , \div_35/u_div/BInv[3][3] , 
        \div_35/u_div/BInv[3][2] , \div_35/u_div/BInv[3][1] , 
        \div_35/u_div/BInv[3][0] }), .CI(1'b1), .CO(
        \div_35/u_div/CryOut[3][0] ) );
  ALU_DW01_add_53 \div_35/u_div/u_add_PartRem_0_6  ( .A({1'b0, 1'b0, n1318, 
        n1320, n843, n1319, n1317, n1223, n1279, n1274, n1278}), .B({
        \div_35/u_div/BInv[6][10] , \div_35/u_div/BInv[6][9] , 
        \div_35/u_div/BInv[6][8] , \div_35/u_div/BInv[6][7] , 
        \div_35/u_div/BInv[6][6] , \div_35/u_div/BInv[6][5] , 
        \div_35/u_div/BInv[6][4] , \div_35/u_div/BInv[6][3] , 
        \div_35/u_div/BInv[6][2] , n1362, 1'b1}), .CI(1'b1), .CO(
        \div_35/u_div/CryOut[6][0] ) );
  ALU_DW01_add_58 \div_35/u_div/u_add_PartRem_0_7  ( .A({1'b0, 1'b0, n1281, 
        n1231, n1303, n1257, n1275, n1284, n1280, n1274, n1278}), .B({
        \div_35/u_div/BInv[7][10] , n1262, \div_35/u_div/BInv[7][8] , 
        \div_35/u_div/BInv[7][7] , \div_35/u_div/BInv[7][6] , 
        \div_35/u_div/BInv[7][5] , \div_35/u_div/BInv[7][4] , 
        \div_35/u_div/BInv[7][3] , \div_35/u_div/BInv[7][2] , 
        \div_35/u_div/BInv[7][1] , \div_35/u_div/BInv[7][0] }), .CI(1'b1), 
        .CO(\div_35/u_div/CryOut[7][0] ) );
  ALU_DW01_add_59 \div_35/u_div/u_add_PartRem_0_5  ( .A({1'b0, 1'b0, n1281, 
        n1231, n843, n1257, n1275, n1284, n1280, n1274, n1278}), .B({
        \div_35/u_div/BInv[5][10] , \div_35/u_div/BInv[5][9] , 
        \div_35/u_div/BInv[5][8] , \div_35/u_div/BInv[5][7] , 
        \div_35/u_div/BInv[5][6] , \div_35/u_div/BInv[5][5] , 
        \div_35/u_div/BInv[5][4] , \div_35/u_div/BInv[5][3] , 
        \div_35/u_div/BInv[5][2] , \div_35/u_div/BInv[5][1] , n1363}), .CI(
        1'b1), .CO(\div_35/u_div/CryOut[5][0] ) );
  ALU_DW01_add_60 \div_35/u_div/u_add_PartRem_0_1  ( .A({1'b0, 1'b0, n1281, 
        n1231, n1303, n1257, n1275, n1284, n1279, n1274, n1277}), .B({1'b1, 
        1'b1, 1'b1, n1354, \div_35/u_div/u_add_PartRem_2_2/B[7] , n1349, n1348, 
        n1346, n1270, n1355, n1361}), .CI(1'b1), .CO(
        \div_35/u_div/CryOut[1][0] ) );
  ALU_DW01_add_0 \div_35/u_div/u_add_B5  ( .A({1'b1, n1353, n1351, n1349, 
        n1285, n1346, n1270, n1356, n1360, 1'b1, 1'b1}), .B({1'b1, 1'b1, 1'b1, 
        n1353, n1251, n1311, n1347, n1345, n1270, n1234, n1359}), .CI(1'b1), 
        .SUM({\div_35/u_div/BInv[5][10] , \div_35/u_div/BInv[5][9] , 
        \div_35/u_div/BInv[5][8] , \div_35/u_div/BInv[5][7] , 
        \div_35/u_div/BInv[5][6] , \div_35/u_div/BInv[5][5] , 
        \div_35/u_div/BInv[5][4] , \div_35/u_div/BInv[5][3] , 
        \div_35/u_div/BInv[5][2] , \div_35/u_div/BInv[5][1] , 
        \div_35/u_div/BInv[5][0] }) );
  ALU_DW01_add_1 \div_35/u_div/u_add_B6  ( .A({1'b1, n1354, n1251, n1349, 
        n1285, n1250, n1271, n1356, n1360, 1'b1, 1'b1}), .B({1'b1, 1'b1, n1353, 
        \div_35/u_div/u_add_PartRem_2_2/B[7] , n1350, n1348, n1346, n1343, 
        n1234, n1359, 1'b1}), .CI(1'b1), .SUM({\div_35/u_div/BInv[6][10] , 
        \div_35/u_div/BInv[6][9] , \div_35/u_div/BInv[6][8] , 
        \div_35/u_div/BInv[6][7] , \div_35/u_div/BInv[6][6] , 
        \div_35/u_div/BInv[6][5] , \div_35/u_div/BInv[6][4] , 
        \div_35/u_div/BInv[6][3] , \div_35/u_div/BInv[6][2] , 
        \div_35/u_div/BInv[6][1] , SYNOPSYS_UNCONNECTED__33}) );
  ALU_DW01_add_2 \div_35/u_div/u_add_PartRem_1_1  ( .A({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, n1286, n1314, n1247, n1374, n1369, a_data[3]}), .B({1'b1, 1'b1, 
        1'b1, n1354, n1351, n1249, n1348, n1250, n1270, n1355, n1359}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, \div_35/u_div/SumTmp[1][1][5] , 
        \div_35/u_div/SumTmp[1][1][4] , \div_35/u_div/SumTmp[1][1][3] , 
        \div_35/u_div/SumTmp[1][1][2] , \div_35/u_div/SumTmp[1][1][1] , 
        \div_35/u_div/SumTmp[1][1][0] }), .CO(\div_35/u_div/CryOut[1][1] ) );
  ALU_DW01_add_5 \div_35/u_div/u_add_PartRem_1_4  ( .A({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, n1287, n1316, n1194, n1374, n1370, n1365}), .B({1'b1, n1354, 
        n1351, n1349, n1285, n1346, n1343, n1235, n1359, 1'b1, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, \div_35/u_div/SumTmp[4][1][5] , 
        \div_35/u_div/SumTmp[4][1][4] , \div_35/u_div/SumTmp[4][1][3] , 
        \div_35/u_div/SumTmp[4][1][2] , \div_35/u_div/SumTmp[4][1][1] , 
        \div_35/u_div/SumTmp[4][1][0] }), .CO(N133) );
  CLKINVX3 U5 ( .A(n90), .Y(n1384) );
  INVX20 U6 ( .A(n1358), .Y(n1356) );
  INVX20 U11 ( .A(n1344), .Y(n1343) );
  NOR2X6 U12 ( .A(\div_35/u_div/SumTmp[2][2][0] ), .B(n1360), .Y(
        \div_35/u_div/u_add_PartRem_2_1/n19 ) );
  CLKINVX20 U13 ( .A(n1376), .Y(n1374) );
  CLKBUFX24 U14 ( .A(n1378), .Y(n1376) );
  CLKINVX4 U15 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[7] ), .Y(n1352) );
  CLKINVX40 U16 ( .A(n1305), .Y(\div_35/u_div/u_add_PartRem_2_2/B[7] ) );
  NOR2X8 U17 ( .A(n1333), .B(\div_35/u_div/BInv[3][0] ), .Y(n1228) );
  OAI21X8 U19 ( .A0(n1228), .A1(\div_35/u_div/u_add_PartRem_2_3/n15 ), .B0(
        \div_35/u_div/u_add_PartRem_2_3/n16 ), .Y(
        \div_35/u_div/u_add_PartRem_2_3/n51 ) );
  NOR2X5 U21 ( .A(\div_35/u_div/BInv[3][1] ), .B(n1260), .Y(
        \div_35/u_div/u_add_PartRem_2_3/n15 ) );
  CLKINVX16 U22 ( .A(n227), .Y(n1313) );
  NAND2X5 U24 ( .A(\div_35/u_div/SumTmp[6][1][2] ), .B(n1267), .Y(n81) );
  INVX16 U26 ( .A(n1307), .Y(n1353) );
  INVX14 U27 ( .A(n103), .Y(n1382) );
  INVX8 U29 ( .A(n1358), .Y(n1234) );
  BUFX8 U30 ( .A(n1345), .Y(n1346) );
  CLKINVX20 U31 ( .A(n1372), .Y(n1369) );
  CLKBUFX32 U32 ( .A(n916), .Y(n1320) );
  CLKBUFX4 U34 ( .A(\div_35/u_div/BInv[3][9] ), .Y(n1264) );
  INVX4 U35 ( .A(n69), .Y(n1236) );
  INVX8 U36 ( .A(n1229), .Y(n1267) );
  BUFX10 U37 ( .A(n1223), .Y(n1284) );
  AND2X2 U38 ( .A(\div_35/u_div/u_add_PartRem_2_2/n45 ), .B(n1356), .Y(
        \div_35/u_div/u_add_PartRem_2_2/n46 ) );
  INVX4 U41 ( .A(n1189), .Y(n1386) );
  CLKAND2X3 U42 ( .A(\div_35/u_div/u_add_PartRem_2_1/n4 ), .B(
        \div_35/u_div/u_add_PartRem_2_1/n16 ), .Y(n1225) );
  INVX14 U43 ( .A(n1366), .Y(n1364) );
  BUFX5 U44 ( .A(n1334), .Y(n1260) );
  NAND2X4 U46 ( .A(n1225), .B(n1386), .Y(n98) );
  CLKBUFX4 U47 ( .A(n1368), .Y(n1367) );
  AOI22X2 U49 ( .A0(N62), .A1(n1337), .B0(n1263), .B1(n1401), .Y(n170) );
  AOI222X2 U51 ( .A0(N68), .A1(n1337), .B0(N86), .B1(n1246), .C0(N127), .C1(
        n1241), .Y(n54) );
  BUFX8 U52 ( .A(n1311), .Y(n1350) );
  INVX8 U53 ( .A(b_data[5]), .Y(n1311) );
  BUFX10 U54 ( .A(n226), .Y(n1223) );
  BUFX10 U55 ( .A(a_data[7]), .Y(n1334) );
  NAND2X5 U56 ( .A(n188), .B(N34), .Y(n1222) );
  NOR2X8 U60 ( .A(n1383), .B(n103), .Y(n75) );
  INVX16 U61 ( .A(n917), .Y(n1286) );
  INVX6 U62 ( .A(n1289), .Y(n69) );
  AOI22X2 U63 ( .A0(\div_35/u_div/SumTmp[3][1][4] ), .A1(n1341), .B0(
        \div_35/u_div/SumTmp[7][1][4] ), .B1(n1267), .Y(n93) );
  CLKBUFX40 U64 ( .A(b_data[6]), .Y(n1305) );
  CLKBUFX6 U65 ( .A(n1334), .Y(n1261) );
  NOR2BX8 U66 ( .AN(n1357), .B(n1334), .Y(\div_35/u_div/u_add_PartRem_2_1/n17 ) );
  CLKNAND2X12 U67 ( .A(n1334), .B(n1234), .Y(
        \div_35/u_div/u_add_PartRem_2_1/n18 ) );
  OAI21X8 U68 ( .A0(\div_35/u_div/u_add_PartRem_2_1/n19 ), .A1(
        \div_35/u_div/u_add_PartRem_2_1/n17 ), .B0(
        \div_35/u_div/u_add_PartRem_2_1/n18 ), .Y(
        \div_35/u_div/u_add_PartRem_2_1/n16 ) );
  CLKAND2X2 U69 ( .A(n1353), .B(n1351), .Y(
        \div_35/u_div/u_add_PartRem_2_2/n49 ) );
  OAI22X4 U70 ( .A0(n1302), .A1(n133), .B0(n1235), .B1(n1336), .Y(n183) );
  BUFX20 U71 ( .A(n184), .Y(n1302) );
  INVX6 U72 ( .A(n1263), .Y(n1381) );
  CLKINVX12 U73 ( .A(n167), .Y(n1291) );
  INVX4 U75 ( .A(n1232), .Y(n1233) );
  BUFX4 U76 ( .A(n1297), .Y(n917) );
  AO22X2 U77 ( .A0(n1339), .A1(n1365), .B0(\div_35/u_div/SumTmp[4][1][0] ), 
        .B1(n1342), .Y(n79) );
  AO22X2 U78 ( .A0(\div_35/u_div/SumTmp[1][1][0] ), .A1(n1339), .B0(
        \div_35/u_div/SumTmp[5][1][0] ), .B1(n1342), .Y(n80) );
  BUFX6 U79 ( .A(n75), .Y(n1342) );
  OR2X4 U81 ( .A(n1382), .B(n1383), .Y(n1229) );
  BUFX8 U82 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[1] ), .Y(n1360) );
  OAI22X2 U83 ( .A0(n1365), .A1(n1407), .B0(a_data[2]), .B1(N34), .Y(n222) );
  INVX6 U84 ( .A(n1226), .Y(n1341) );
  INVX10 U86 ( .A(n1229), .Y(n1266) );
  INVX6 U87 ( .A(n1226), .Y(n1340) );
  CLKAND2X8 U88 ( .A(\div_35/u_div/BInv[3][8] ), .B(n1264), .Y(
        \div_35/u_div/u_add_PartRem_2_3/n58 ) );
  AND2X2 U89 ( .A(n1309), .B(n1347), .Y(\div_35/u_div/u_add_PartRem_2_1/n10 )
         );
  BUFX12 U90 ( .A(b_data[4]), .Y(n1304) );
  BUFX8 U91 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[5] ), .Y(n1348) );
  BUFX8 U92 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[5] ), .Y(n1285) );
  AOI22X2 U93 ( .A0(n217), .A1(n1410), .B0(N38), .B1(n218), .Y(n213) );
  AOI22X2 U94 ( .A0(n215), .A1(n1410), .B0(N38), .B1(n216), .Y(n214) );
  INVX8 U96 ( .A(n1230), .Y(n1231) );
  INVX2 U99 ( .A(n1320), .Y(n1230) );
  INVX4 U100 ( .A(b_data[7]), .Y(n1306) );
  AND2X2 U101 ( .A(n1349), .B(n1347), .Y(\div_35/u_div/u_add_PartRem_2_2/n48 )
         );
  INVX5 U102 ( .A(n1253), .Y(n1254) );
  NAND3X4 U103 ( .A(n1366), .B(n1372), .C(n1393), .Y(n127) );
  INVX5 U104 ( .A(n1244), .Y(n1246) );
  INVX5 U105 ( .A(n1239), .Y(n1241) );
  AND4X2 U106 ( .A(n158), .B(n159), .C(n160), .D(n161), .Y(n157) );
  AND4X2 U108 ( .A(n170), .B(n171), .C(n172), .D(n173), .Y(n168) );
  INVX10 U109 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[3] ), .Y(n1344) );
  INVX6 U110 ( .A(b_data[2]), .Y(\div_35/u_div/u_add_PartRem_2_2/B[3] ) );
  INVX8 U111 ( .A(n1344), .Y(n1270) );
  INVX8 U112 ( .A(n1344), .Y(n1271) );
  INVX5 U113 ( .A(n1358), .Y(n1355) );
  INVX2 U114 ( .A(n1350), .Y(n1248) );
  INVX4 U115 ( .A(n1248), .Y(n1249) );
  INVX6 U116 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[2] ), .Y(n1358) );
  BUFX5 U117 ( .A(n1367), .Y(n1366) );
  AO22X2 U119 ( .A0(n221), .A1(n1405), .B0(N35), .B1(n222), .Y(n1224) );
  INVX6 U120 ( .A(n1304), .Y(\div_35/u_div/u_add_PartRem_2_2/B[5] ) );
  INVX4 U121 ( .A(n1306), .Y(n1307) );
  INVX12 U123 ( .A(n1296), .Y(n1281) );
  BUFX8 U124 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[1] ), .Y(n1361) );
  BUFX5 U125 ( .A(n1373), .Y(n1372) );
  NAND2X4 U126 ( .A(\div_35/u_div/CryOut[2][1] ), .B(n1383), .Y(n1226) );
  AO22X2 U127 ( .A0(n223), .A1(n1405), .B0(N35), .B1(n224), .Y(n1227) );
  INVX4 U128 ( .A(b_data[3]), .Y(n1309) );
  CLKBUFX4 U129 ( .A(\div_35/u_div/SumTmp[2][2][0] ), .Y(n1333) );
  INVX2 U130 ( .A(n1336), .Y(n1237) );
  CLKBUFX6 U131 ( .A(n63), .Y(n1336) );
  INVX2 U132 ( .A(n1338), .Y(n1242) );
  CLKBUFX6 U133 ( .A(n60), .Y(n1338) );
  INVX4 U135 ( .A(N36), .Y(n1406) );
  INVX8 U137 ( .A(n1313), .Y(n1315) );
  INVX4 U138 ( .A(n1361), .Y(n1232) );
  CLKINVX6 U139 ( .A(n1358), .Y(n1235) );
  AOI32X2 U141 ( .A0(n1324), .A1(n81), .A2(n82), .B0(n83), .B1(n84), .Y(n938)
         );
  BUFX14 U142 ( .A(n1289), .Y(n1324) );
  INVX4 U144 ( .A(n1237), .Y(n1238) );
  CLKINVX3 U145 ( .A(n57), .Y(n1239) );
  INVX4 U147 ( .A(n1239), .Y(n1240) );
  INVX4 U150 ( .A(n1242), .Y(n1243) );
  CLKINVX3 U151 ( .A(n56), .Y(n1244) );
  INVX4 U152 ( .A(n1244), .Y(n1245) );
  CLKBUFX8 U155 ( .A(n1311), .Y(n1349) );
  INVX4 U157 ( .A(b_data[0]), .Y(\div_35/u_div/u_add_PartRem_2_2/B[1] ) );
  CLKBUFX4 U158 ( .A(n1194), .Y(n1247) );
  CLKINVX24 U161 ( .A(n1300), .Y(n1194) );
  BUFX8 U162 ( .A(n1345), .Y(n1250) );
  BUFX5 U163 ( .A(n1309), .Y(n1345) );
  INVX6 U164 ( .A(n1352), .Y(n1251) );
  CLKBUFX20 U167 ( .A(n75), .Y(n1252) );
  AOI222X2 U169 ( .A0(\div_35/u_div/SumTmp[2][1][2] ), .A1(n1340), .B0(
        \div_35/u_div/SumTmp[4][1][2] ), .B1(n1252), .C0(n1375), .C1(n1273), 
        .Y(n82) );
  AOI222X2 U170 ( .A0(\div_35/u_div/SumTmp[2][1][4] ), .A1(n1340), .B0(n1315), 
        .B1(n1273), .C0(\div_35/u_div/SumTmp[4][1][4] ), .C1(n1252), .Y(n92)
         );
  AO22X2 U171 ( .A0(\div_35/u_div/SumTmp[1][1][3] ), .A1(n1339), .B0(
        \div_35/u_div/SumTmp[5][1][3] ), .B1(n1252), .Y(n101) );
  CLKINVX3 U172 ( .A(n117), .Y(n1253) );
  CLKINVX8 U173 ( .A(n1253), .Y(n1255) );
  CLKBUFX40 U174 ( .A(n843), .Y(n1303) );
  NAND2X8 U178 ( .A(n1294), .B(n1295), .Y(n843) );
  INVX5 U179 ( .A(n1319), .Y(n1256) );
  CLKINVX40 U180 ( .A(n1256), .Y(n1257) );
  CLKBUFX8 U182 ( .A(n1333), .Y(n1258) );
  CLKBUFX8 U183 ( .A(n1333), .Y(n1259) );
  INVX8 U184 ( .A(n917), .Y(n1287) );
  INVX4 U186 ( .A(n1302), .Y(n1380) );
  BUFX2 U187 ( .A(\div_35/u_div/BInv[7][9] ), .Y(n1262) );
  AOI22X2 U188 ( .A0(\div_35/u_div/SumTmp[3][1][2] ), .A1(n1341), .B0(
        \div_35/u_div/SumTmp[7][1][2] ), .B1(n1266), .Y(n83) );
  BUFX20 U189 ( .A(N130), .Y(n1263) );
  AOI21X8 U190 ( .A0(n1288), .A1(N133), .B0(n1339), .Y(n103) );
  INVX2 U191 ( .A(\div_35/u_div/CryOut[6][1] ), .Y(n1288) );
  AOI22X4 U192 ( .A0(\div_35/u_div/CryOut[6][0] ), .A1(n1263), .B0(
        \div_35/u_div/CryOut[2][0] ), .B1(n1381), .Y(n184) );
  OAI22X4 U193 ( .A0(n205), .A1(n1381), .B0(n1263), .B1(n206), .Y(n190) );
  INVX18 U194 ( .A(n1313), .Y(n1316) );
  NAND2X2 U195 ( .A(n1224), .B(n1406), .Y(n1282) );
  BUFX2 U196 ( .A(n1337), .Y(n1265) );
  BUFX8 U197 ( .A(n55), .Y(n1337) );
  NAND3X4 U198 ( .A(n1408), .B(n1403), .C(n1325), .Y(n61) );
  CLKBUFX8 U199 ( .A(n61), .Y(n1335) );
  CLKINVX8 U201 ( .A(n1293), .Y(n1268) );
  CLKINVX8 U202 ( .A(n1293), .Y(n1269) );
  OR3X2 U203 ( .A(n1269), .B(n209), .C(n211), .Y(n207) );
  INVX2 U204 ( .A(n1293), .Y(n65) );
  AND3X4 U205 ( .A(n201), .B(n1404), .C(n1325), .Y(n1293) );
  INVX4 U206 ( .A(n1397), .Y(n1272) );
  BUFX8 U207 ( .A(alu_op[2]), .Y(n1325) );
  CLKBUFX8 U208 ( .A(n1339), .Y(n1273) );
  AO22X1 U209 ( .A0(\div_35/u_div/SumTmp[4][1][3] ), .A1(n1342), .B0(n1247), 
        .B1(n1339), .Y(n102) );
  CLKINVX8 U210 ( .A(n1394), .Y(n1274) );
  INVX4 U211 ( .A(n1331), .Y(n1394) );
  BUFX8 U212 ( .A(a_data[1]), .Y(n1331) );
  BUFX14 U213 ( .A(n930), .Y(n1275) );
  CLKBUFX32 U214 ( .A(n930), .Y(n1317) );
  AOI32X4 U215 ( .A0(n1236), .A1(n85), .A2(n86), .B0(n87), .B1(n88), .Y(n930)
         );
  INVX4 U216 ( .A(a_data[0]), .Y(n1330) );
  INVX2 U217 ( .A(n1330), .Y(n1276) );
  INVX8 U218 ( .A(n1330), .Y(n1277) );
  INVX8 U219 ( .A(n1330), .Y(n1278) );
  INVX4 U220 ( .A(a_data[2]), .Y(n1332) );
  INVX8 U221 ( .A(n1332), .Y(n1279) );
  INVX8 U222 ( .A(n1332), .Y(n1280) );
  AOI221X4 U223 ( .A0(n144), .A1(n1312), .B0(n1375), .B1(n145), .C0(n132), .Y(
        n143) );
  OA22X4 U224 ( .A0(n68), .A1(n69), .B0(n1236), .B1(n70), .Y(n1296) );
  AOI222X2 U225 ( .A0(n162), .A1(n1310), .B0(n163), .B1(n1367), .C0(n1365), 
        .C1(n164), .Y(n161) );
  AND4X8 U226 ( .A(\div_35/u_div/BInv[3][3] ), .B(\div_35/u_div/BInv[3][5] ), 
        .C(\div_35/u_div/BInv[3][4] ), .D(\div_35/u_div/BInv[3][2] ), .Y(
        \div_35/u_div/u_add_PartRem_2_3/n52 ) );
  NAND2X3 U227 ( .A(n1282), .B(n1283), .Y(n209) );
  NAND2X1 U228 ( .A(N36), .B(n1227), .Y(n1283) );
  OAI22X4 U229 ( .A0(n1324), .A1(n77), .B0(n78), .B1(n69), .Y(n226) );
  OAI222X4 U230 ( .A0(n1271), .A1(n1335), .B0(n175), .B1(n1255), .C0(b_data[2]), .C1(n1269), .Y(n174) );
  CLKINVX6 U231 ( .A(alu_op[3]), .Y(n1403) );
  XNOR2X2 U232 ( .A(\div_35/u_div/u_add_PartRem_2_3/n51 ), .B(
        \div_35/u_div/BInv[3][2] ), .Y(n1298) );
  OAI22X2 U233 ( .A0(n1308), .A1(n1268), .B0(n1390), .B1(n1254), .Y(n116) );
  CLKINVX8 U234 ( .A(n1306), .Y(n1308) );
  AND4X2 U235 ( .A(n110), .B(n111), .C(n112), .D(n113), .Y(n109) );
  AOI222X2 U236 ( .A0(n114), .A1(n1308), .B0(n115), .B1(n1391), .C0(n1260), 
        .C1(n116), .Y(n113) );
  AOI222X2 U237 ( .A0(n176), .A1(b_data[2]), .B0(N121), .B1(n1241), .C0(N113), 
        .C1(n119), .Y(n171) );
  OAI2B2X2 U238 ( .A1N(n127), .A0(n1254), .B0(n1312), .B1(n1269), .Y(n145) );
  CLKINVX8 U239 ( .A(n1311), .Y(n1312) );
  OAI22X2 U240 ( .A0(n1310), .A1(n1269), .B0(n1393), .B1(n1255), .Y(n164) );
  CLKINVX8 U241 ( .A(n1309), .Y(n1310) );
  INVX3 U242 ( .A(n1382), .Y(n1290) );
  OA22X4 U243 ( .A0(\div_35/u_div/CryOut[7][1] ), .A1(n1383), .B0(
        \div_35/u_div/CryOut[3][1] ), .B1(N133), .Y(n1292) );
  INVX20 U244 ( .A(b_data[1]), .Y(\div_35/u_div/u_add_PartRem_2_2/B[2] ) );
  INVX6 U245 ( .A(N133), .Y(n1383) );
  AND2X6 U246 ( .A(\div_35/u_div/u_add_PartRem_2_3/n57 ), .B(
        \div_35/u_div/u_add_PartRem_2_3/n58 ), .Y(n1323) );
  BUFX20 U247 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[1] ), .Y(n1359) );
  CLKINVX1 U248 ( .A(n1225), .Y(n1388) );
  AOI22X2 U249 ( .A0(\div_35/u_div/SumTmp[3][1][1] ), .A1(n1340), .B0(
        \div_35/u_div/SumTmp[7][1][1] ), .B1(n1266), .Y(n87) );
  CLKNAND2X2 U250 ( .A(\div_35/u_div/SumTmp[6][1][4] ), .B(n1266), .Y(n91) );
  AO22X2 U251 ( .A0(\div_35/u_div/SumTmp[2][2][2] ), .A1(n90), .B0(
        \div_35/u_div/SumTmp[1][2][2] ), .B1(n1385), .Y(n1299) );
  CLKINVX4 U252 ( .A(n1258), .Y(n1390) );
  CLKBUFX40 U253 ( .A(\div_35/u_div/u_add_PartRem_2_2/B[5] ), .Y(n1347) );
  CLKINVX8 U254 ( .A(n1307), .Y(n1354) );
  AOI21X8 U255 ( .A0(n1290), .A1(n1292), .B0(n1291), .Y(n1289) );
  OAI221X4 U256 ( .A0(\div_35/u_div/CryOut[1][1] ), .A1(N133), .B0(
        \div_35/u_div/CryOut[5][1] ), .B1(n1383), .C0(n1382), .Y(n167) );
  AND4X8 U257 ( .A(\div_35/u_div/BInv[3][7] ), .B(
        \div_35/u_div/u_add_PartRem_2_3/n52 ), .C(
        \div_35/u_div/u_add_PartRem_2_3/n51 ), .D(\div_35/u_div/BInv[3][6] ), 
        .Y(\div_35/u_div/u_add_PartRem_2_3/n57 ) );
  AOI22X1 U258 ( .A0(n1400), .A1(n1377), .B0(n1401), .B1(N133), .Y(n140) );
  INVX4 U259 ( .A(n165), .Y(n1393) );
  NAND2X3 U260 ( .A(\div_35/u_div/u_add_PartRem_2_3/n58 ), .B(n1189), .Y(n1322) );
  INVX16 U261 ( .A(n1321), .Y(n97) );
  CLKBUFX40 U262 ( .A(n74), .Y(n1339) );
  AO22X1 U263 ( .A0(\div_35/u_div/SumTmp[4][1][5] ), .A1(n1342), .B0(n1287), 
        .B1(n1273), .Y(n76) );
  NAND2X2 U264 ( .A(n175), .B(n1395), .Y(n165) );
  NOR2X8 U265 ( .A(n95), .B(n96), .Y(n227) );
  AND2X8 U266 ( .A(n104), .B(n105), .Y(n1300) );
  BUFX2 U267 ( .A(\div_35/u_div/BInv[6][1] ), .Y(n1362) );
  BUFX2 U268 ( .A(\div_35/u_div/BInv[5][0] ), .Y(n1363) );
  OR2X1 U269 ( .A(a_data[5]), .B(n127), .Y(n1301) );
  AOI22X1 U270 ( .A0(N67), .A1(n1337), .B0(n1401), .B1(n1189), .Y(n110) );
  INVX4 U271 ( .A(n1277), .Y(n1392) );
  INVX6 U272 ( .A(n1326), .Y(n1327) );
  AND3X6 U273 ( .A(n180), .B(n181), .C(n182), .Y(n179) );
  INVX8 U274 ( .A(n1352), .Y(n1351) );
  CLKINVX6 U275 ( .A(N34), .Y(n1407) );
  INVX4 U276 ( .A(bit_en), .Y(n1326) );
  OAI21X8 U277 ( .A0(n122), .A1(n177), .B0(n189), .Y(ans[0]) );
  OR2X2 U278 ( .A(n99), .B(n69), .Y(n1294) );
  OR2X2 U279 ( .A(n1324), .B(n100), .Y(n1295) );
  INVX8 U280 ( .A(n1376), .Y(n1375) );
  INVX8 U281 ( .A(n1372), .Y(n1370) );
  INVX8 U282 ( .A(n1366), .Y(n1365) );
  NAND2X2 U283 ( .A(n1393), .B(n1366), .Y(n154) );
  AO22X2 U284 ( .A0(\div_35/u_div/SumTmp[1][1][5] ), .A1(n1273), .B0(
        \div_35/u_div/SumTmp[5][1][5] ), .B1(n1252), .Y(n73) );
  AOI22X2 U285 ( .A0(\div_35/u_div/CryOut[5][0] ), .A1(n1302), .B0(
        \div_35/u_div/CryOut[7][0] ), .B1(n1380), .Y(n205) );
  AOI22X2 U286 ( .A0(\div_35/u_div/CryOut[1][0] ), .A1(n1302), .B0(
        \div_35/u_div/CryOut[3][0] ), .B1(n1380), .Y(n206) );
  AOI222X2 U287 ( .A0(\div_35/u_div/SumTmp[2][1][1] ), .A1(n1341), .B0(
        \div_35/u_div/SumTmp[4][1][1] ), .B1(n1252), .C0(n1370), .C1(n1273), 
        .Y(n86) );
  NAND2X2 U288 ( .A(\div_35/u_div/SumTmp[6][1][1] ), .B(n1267), .Y(n85) );
  INVX4 U289 ( .A(n97), .Y(n1387) );
  CLKBUFX4 U290 ( .A(n1372), .Y(n1371) );
  CLKBUFX4 U291 ( .A(n1378), .Y(n1377) );
  INVX8 U292 ( .A(n133), .Y(n1401) );
  CLKXOR2X2 U293 ( .A(\div_35/u_div/u_add_PartRem_2_3/n1 ), .B(n1228), .Y(
        \div_35/u_div/SumTmp[3][2][1] ) );
  NAND2X2 U294 ( .A(n1379), .B(\div_35/u_div/u_add_PartRem_2_3/n16 ), .Y(
        \div_35/u_div/u_add_PartRem_2_3/n1 ) );
  INVX2 U295 ( .A(\div_35/u_div/u_add_PartRem_2_3/n15 ), .Y(n1379) );
  INVX2 U296 ( .A(n98), .Y(n1385) );
  INVX4 U297 ( .A(n1313), .Y(n1314) );
  INVX2 U298 ( .A(a_data[4]), .Y(n1373) );
  AOI22X1 U299 ( .A0(n1401), .A1(n69), .B0(N90), .B1(n1338), .Y(n160) );
  INVX2 U300 ( .A(a_data[3]), .Y(n1368) );
  INVX2 U301 ( .A(a_data[5]), .Y(n1378) );
  NOR3X6 U302 ( .A(n127), .B(n1375), .C(n1254), .Y(n132) );
  AOI21X2 U303 ( .A0(n97), .A1(n98), .B0(n133), .Y(n130) );
  NAND2X2 U304 ( .A(n132), .B(n1390), .Y(n118) );
  INVX4 U305 ( .A(n1279), .Y(n1395) );
  OAI21X2 U306 ( .A0(n1280), .A1(n1269), .B0(n1336), .Y(n176) );
  OAI21X2 U307 ( .A0(n1335), .A1(n1392), .B0(n1336), .Y(n196) );
  INVX4 U308 ( .A(n1238), .Y(n1396) );
  CLKAND2X8 U309 ( .A(n203), .B(n67), .Y(n119) );
  OAI211X2 U310 ( .A0(n1361), .A1(n1268), .B0(n1255), .C0(n62), .Y(n202) );
  NAND2X4 U311 ( .A(n203), .B(n204), .Y(n133) );
  NOR4X4 U312 ( .A(n58), .B(n59), .C(n1402), .D(n1338), .Y(n53) );
  NAND3X2 U313 ( .A(n1335), .B(n62), .C(n1336), .Y(n59) );
  NAND3X2 U314 ( .A(n64), .B(n1268), .C(n66), .Y(n58) );
  NOR3X4 U315 ( .A(n1401), .B(n1327), .C(n67), .Y(n66) );
  INVX4 U316 ( .A(n62), .Y(n1400) );
  INVX4 U317 ( .A(n1335), .Y(n1399) );
  INVX4 U318 ( .A(n1268), .Y(n1398) );
  INVX4 U319 ( .A(n1254), .Y(n1402) );
  INVX5 U320 ( .A(n1327), .Y(n1409) );
  NAND2X3 U321 ( .A(n1334), .B(\div_35/u_div/BInv[3][1] ), .Y(
        \div_35/u_div/u_add_PartRem_2_3/n16 ) );
  AND4X6 U322 ( .A(\div_35/u_div/u_add_PartRem_2_2/n46 ), .B(
        \div_35/u_div/u_add_PartRem_2_2/n49 ), .C(
        \div_35/u_div/u_add_PartRem_2_2/n48 ), .D(
        \div_35/u_div/u_add_PartRem_2_2/n47 ), .Y(n1189) );
  AND2X2 U323 ( .A(n1250), .B(n1271), .Y(\div_35/u_div/u_add_PartRem_2_2/n47 )
         );
  XNOR2X2 U324 ( .A(n1259), .B(n1233), .Y(\div_35/u_div/SumTmp[1][2][0] ) );
  XNOR2X2 U325 ( .A(n1258), .B(\div_35/u_div/BInv[3][0] ), .Y(
        \div_35/u_div/SumTmp[3][2][0] ) );
  XNOR2X2 U326 ( .A(n1261), .B(n1233), .Y(\div_35/u_div/SumTmp[2][2][1] ) );
  XNOR2X2 U327 ( .A(\div_35/u_div/u_add_PartRem_2_2/n45 ), .B(n1357), .Y(
        \div_35/u_div/SumTmp[2][2][2] ) );
  CLKXOR2X2 U328 ( .A(\div_35/u_div/u_add_PartRem_2_1/n1 ), .B(
        \div_35/u_div/u_add_PartRem_2_1/n59 ), .Y(
        \div_35/u_div/SumTmp[1][2][1] ) );
  NAND2X2 U329 ( .A(\div_35/u_div/u_add_PartRem_2_1/n57 ), .B(
        \div_35/u_div/u_add_PartRem_2_1/n18 ), .Y(
        \div_35/u_div/u_add_PartRem_2_1/n1 ) );
  NOR2X2 U330 ( .A(n1258), .B(n1233), .Y(\div_35/u_div/u_add_PartRem_2_1/n59 )
         );
  OR2X2 U331 ( .A(n1234), .B(n1261), .Y(\div_35/u_div/u_add_PartRem_2_1/n57 )
         );
  AOI2B1X4 U332 ( .A1N(n1298), .A0(n1387), .B0(n1299), .Y(n1297) );
  OR2X2 U333 ( .A(a_data[7]), .B(n1360), .Y(
        \div_35/u_div/u_add_PartRem_2_2/n45 ) );
  AOI222X2 U334 ( .A0(N65), .A1(n1337), .B0(N83), .B1(n1245), .C0(N124), .C1(
        n1240), .Y(n141) );
  AOI22X2 U335 ( .A0(N85), .A1(n1245), .B0(N126), .B1(n1240), .Y(n111) );
  NAND2X5 U336 ( .A(n188), .B(n1407), .Y(n122) );
  NOR2X4 U337 ( .A(n1331), .B(n1277), .Y(n175) );
  AOI22X2 U338 ( .A0(N114), .A1(n119), .B0(N81), .B1(n1246), .Y(n159) );
  AOI22X2 U339 ( .A0(N92), .A1(n1243), .B0(N116), .B1(n119), .Y(n142) );
  AOI22X2 U340 ( .A0(N122), .A1(n1241), .B0(N63), .B1(n1265), .Y(n158) );
  AO2B2X2 U341 ( .B0(n106), .B1(n1328), .A0(n1301), .A1N(n1254), .Y(n121) );
  OAI2BB2X2 U342 ( .B0(n1351), .B1(n134), .A0N(N93), .A1N(n1243), .Y(n129) );
  NAND2X2 U343 ( .A(n1278), .B(n199), .Y(n195) );
  AO21X2 U344 ( .A0(n177), .A1(n1329), .B0(n125), .Y(n199) );
  INVX4 U345 ( .A(n1334), .Y(n1391) );
  NAND2X2 U346 ( .A(n1404), .B(n212), .Y(n63) );
  INVX2 U347 ( .A(n1325), .Y(n1397) );
  AOI21X2 U348 ( .A0(alu_op[1]), .A1(n67), .B0(n1272), .Y(n200) );
  NOR2X6 U349 ( .A(n1403), .B(alu_op[0]), .Y(n204) );
  OAI221X2 U350 ( .A0(n1278), .A1(n1255), .B0(n1235), .B1(n1268), .C0(n62), 
        .Y(n186) );
  CLKINVX6 U351 ( .A(alu_op[1]), .Y(n1408) );
  NAND3X4 U352 ( .A(alu_op[0]), .B(n201), .C(n1325), .Y(n64) );
  INVX6 U353 ( .A(alu_op[0]), .Y(n1404) );
  NAND3X2 U354 ( .A(alu_op[0]), .B(n1403), .C(n203), .Y(n117) );
  NAND2X4 U355 ( .A(n1406), .B(n1405), .Y(n177) );
  INVX8 U356 ( .A(n1326), .Y(n1328) );
  INVX6 U357 ( .A(n1326), .Y(n1329) );
  XNOR2X2 U358 ( .A(\div_35/u_div/u_add_PartRem_2_1/n16 ), .B(n1344), .Y(
        \div_35/u_div/SumTmp[1][2][2] ) );
  AND4X2 U359 ( .A(n1350), .B(\div_35/u_div/u_add_PartRem_2_1/n10 ), .C(n1270), 
        .D(\div_35/u_div/u_add_PartRem_2_1/n55 ), .Y(
        \div_35/u_div/u_add_PartRem_2_1/n4 ) );
  NOR2X2 U360 ( .A(n1352), .B(n1308), .Y(\div_35/u_div/u_add_PartRem_2_1/n55 )
         );
  AOI22X2 U361 ( .A0(N112), .A1(n119), .B0(N79), .B1(n1246), .Y(n180) );
  AOI222X2 U362 ( .A0(N88), .A1(n1338), .B0(n1274), .B1(n185), .C0(n186), .C1(
        n1394), .Y(n181) );
  OAI211X2 U363 ( .A0(n1259), .A1(n62), .B0(n135), .C0(n136), .Y(n128) );
  NAND2X2 U364 ( .A(N66), .B(n1337), .Y(n135) );
  AOI222X2 U365 ( .A0(N125), .A1(n1240), .B0(N117), .B1(n119), .C0(N84), .C1(
        n1245), .Y(n136) );
  AOI222X2 U366 ( .A0(N123), .A1(n1240), .B0(N115), .B1(n119), .C0(N82), .C1(
        n1245), .Y(n149) );
  BUFX2 U367 ( .A(n1358), .Y(n1357) );
  OAI221X2 U368 ( .A0(n1367), .A1(n1335), .B0(n1365), .B1(n1268), .C0(n1336), 
        .Y(n162) );
  OAI21X2 U369 ( .A0(n165), .A1(n1255), .B0(n62), .Y(n163) );
  OAI22X2 U370 ( .A0(n1260), .A1(n1407), .B0(n1258), .B1(N34), .Y(n224) );
  OAI221X2 U371 ( .A0(n1377), .A1(n1335), .B0(n1375), .B1(n1268), .C0(n1238), 
        .Y(n144) );
  OAI22X2 U372 ( .A0(n1331), .A1(n1407), .B0(n1276), .B1(N34), .Y(n221) );
  OAI22X2 U373 ( .A0(n1375), .A1(n1407), .B0(n1370), .B1(N34), .Y(n223) );
  AOI31X2 U374 ( .A0(n209), .A1(n65), .A2(n1238), .B0(n1389), .Y(n210) );
  AOI22X2 U375 ( .A0(N94), .A1(n1243), .B0(N118), .B1(n119), .Y(n112) );
  AOI22X2 U376 ( .A0(N64), .A1(n1337), .B0(n1400), .B1(n1371), .Y(n148) );
  OAI221X2 U377 ( .A0(n1335), .A1(n1391), .B0(n1261), .B1(n1269), .C0(n1238), 
        .Y(n114) );
  NAND2X2 U378 ( .A(n62), .B(n118), .Y(n115) );
  OAI22X2 U379 ( .A0(n1346), .A1(n1411), .B0(N37), .B1(n1271), .Y(n216) );
  OAI22X2 U380 ( .A0(n1354), .A1(n1411), .B0(N37), .B1(n1351), .Y(n218) );
  OAI22X2 U381 ( .A0(n1235), .A1(n1411), .B0(N37), .B1(n1361), .Y(n215) );
  OAI22X2 U382 ( .A0(n1349), .A1(n1411), .B0(N37), .B1(n1285), .Y(n217) );
  INVX2 U383 ( .A(n211), .Y(n1389) );
  CLKINVX4 U384 ( .A(N35), .Y(n1405) );
  NAND2X4 U385 ( .A(N35), .B(n1406), .Y(n155) );
  NAND2X4 U386 ( .A(N36), .B(n1405), .Y(n137) );
  NAND2X3 U387 ( .A(N36), .B(N35), .Y(n106) );
  CLKINVX4 U388 ( .A(N37), .Y(n1411) );
  INVX2 U389 ( .A(N38), .Y(n1410) );
  AOI22X2 U390 ( .A0(n1400), .A1(n1395), .B0(N80), .B1(n1246), .Y(n172) );
  AOI222X2 U391 ( .A0(n1279), .A1(n174), .B0(n1402), .B1(n1393), .C0(N89), 
        .C1(n1338), .Y(n173) );
  AOI21X2 U392 ( .A0(n1398), .A1(n1371), .B0(n1396), .Y(n153) );
  AOI222X2 U393 ( .A0(n1398), .A1(n1348), .B0(n1402), .B1(n154), .C0(n1399), 
        .C1(n1304), .Y(n152) );
  OAI2B2X2 U394 ( .A1N(psw_in[7]), .A0(n53), .B0(n1329), .B1(n54), .Y(
        psw_out[7]) );
  AND2X2 U395 ( .A(n64), .B(n195), .Y(n198) );
  AOI32X2 U396 ( .A0(n192), .A1(n193), .A2(n194), .B0(n1328), .B1(n195), .Y(
        n191) );
  AOI22X2 U397 ( .A0(N60), .A1(n1337), .B0(N111), .B1(n119), .Y(n192) );
  AOI222X2 U398 ( .A0(n1392), .A1(n202), .B0(N119), .B1(n1241), .C0(N87), .C1(
        n1338), .Y(n193) );
  AOI21X2 U399 ( .A0(n1327), .A1(n155), .B0(n125), .Y(n169) );
  AOI21X2 U400 ( .A0(n1327), .A1(n177), .B0(n120), .Y(n178) );
  OAI221X2 U401 ( .A0(n106), .A1(n122), .B0(n1329), .B1(n123), .C0(n124), .Y(
        ans[6]) );
  OAI21X2 U402 ( .A0(n121), .A1(n125), .B0(n1258), .Y(n124) );
  NOR4X4 U403 ( .A(n128), .B(n129), .C(n130), .D(n131), .Y(n123) );
  AOI21X2 U404 ( .A0(n1327), .A1(n137), .B0(n125), .Y(n146) );
  AND3X2 U405 ( .A(n148), .B(n149), .C(n150), .Y(n147) );
  AOI21X2 U406 ( .A0(n1327), .A1(n155), .B0(n120), .Y(n156) );
  AOI21X2 U407 ( .A0(n1328), .A1(n137), .B0(n120), .Y(n138) );
  AND4X1 U408 ( .A(n140), .B(n141), .C(n142), .D(n143), .Y(n139) );
  NOR2X2 U409 ( .A(n120), .B(n121), .Y(n108) );
  AOI32X2 U410 ( .A0(n1388), .A1(n1386), .A2(n1258), .B0(n1259), .B1(n90), .Y(
        n105) );
  CLKBUFX40 U411 ( .A(n1281), .Y(n1318) );
  CLKBUFX40 U412 ( .A(n938), .Y(n1319) );
  NOR2BX4 U413 ( .AN(\div_35/u_div/u_add_PartRem_2_3/n57 ), .B(n1322), .Y(
        n1321) );
  OAI22X4 U414 ( .A0(\div_35/u_div/SumTmp[3][2][1] ), .A1(n97), .B0(
        \div_35/u_div/SumTmp[1][2][1] ), .B1(n98), .Y(n96) );
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
  wire   N55, N56, N57, N58, N59, N60, N61, N62, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n54, n55, n56, n59, n590, n591,
         n594, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657;
  wire   [7:0] alu_ans;
  wire   [7:0] alu_psw_out;

  OAI32X4 U7 ( .A0(n657), .A1(n30), .A2(n646), .B0(n653), .B1(n647), .Y(n27)
         );
  OAI2B2X4 U15 ( .A1N(alu_ans[1]), .A0(n635), .B0(n26), .B1(n607), .Y(ans[1])
         );
  NOR4BX4 U18 ( .AN(n627), .B(n594), .C(n636), .D(n654), .Y(n32) );
  OAI2B2X4 U24 ( .A1N(alu_ans[0]), .A0(n633), .B0(n50), .B1(n606), .Y(ans[0])
         );
  NOR3BX4 U43 ( .AN(instruction[0]), .B(instruction[1]), .C(instruction[2]), 
        .Y(n35) );
  NOR3X8 U47 ( .A(n47), .B(instruction[5]), .C(n657), .Y(n31) );
  ALU alu ( .psw_in(psw_in), .a_data({n591, a_data[6], n642, n639, n637, 
        a_data[2:0]}), .b_data({b_data[7:3], n602, n631, n603}), 
        .a_bit_location(a_bit_location), .b_bit_location(b_bit_location), 
        .bit_en(bit_en), .alu_op(alu_op), .ans(alu_ans), .psw_out(alu_psw_out)
         );
  TLATX1 \pro_ans_reg[5]  ( .G(n628), .D(N60), .QN(n56) );
  TLATX1 \pro_ans_reg[3]  ( .G(n628), .D(N58), .QN(n55) );
  TLATX1 \pro_ans_reg[7]  ( .G(n628), .D(N62), .QN(n52) );
  TLATX1 \pro_ans_reg[4]  ( .G(n628), .D(N59), .QN(n54) );
  TLATX1 \pro_ans_reg[6]  ( .G(n628), .D(N61), .QN(n51) );
  TLATX1 \pro_ans_reg[1]  ( .G(n628), .D(N56), .Q(n599) );
  TLATX1 \pro_ans_reg[0]  ( .G(n628), .D(N55), .QN(n50) );
  TLATX1 \pro_ans_reg[2]  ( .G(n628), .D(N57), .Q(n630) );
  BUFX20 U3 ( .A(b_data[0]), .Y(n590) );
  CLKBUFX40 U4 ( .A(a_data[7]), .Y(n591) );
  CLKBUFX40 U5 ( .A(n590), .Y(n603) );
  AND3X1 U6 ( .A(instruction[7]), .B(instruction[2]), .C(instruction[6]), .Y(
        n49) );
  INVX12 U8 ( .A(n632), .Y(n601) );
  INVX12 U9 ( .A(n643), .Y(n642) );
  BUFX16 U10 ( .A(b_data[1]), .Y(n631) );
  INVX2 U11 ( .A(a_data[3]), .Y(n638) );
  INVX6 U12 ( .A(n638), .Y(n637) );
  INVX4 U13 ( .A(n640), .Y(n639) );
  OAI2BB2X2 U14 ( .B0(n25), .B1(n606), .A0N(alu_psw_out[7]), .A1N(n606), .Y(
        psw_out[7]) );
  INVX2 U16 ( .A(alu_ans[6]), .Y(n608) );
  NOR2X2 U17 ( .A(n55), .B(n26), .Y(n620) );
  NOR2X2 U19 ( .A(n635), .B(n619), .Y(n621) );
  INVX2 U20 ( .A(alu_ans[3]), .Y(n619) );
  NOR2X2 U21 ( .A(n633), .B(n612), .Y(n614) );
  INVX2 U22 ( .A(alu_ans[4]), .Y(n612) );
  NOR2X2 U23 ( .A(n633), .B(n624), .Y(n626) );
  OR2X6 U25 ( .A(n617), .B(n618), .Y(ans[7]) );
  OR2X6 U26 ( .A(n625), .B(n626), .Y(ans[5]) );
  CLKAND2X4 U27 ( .A(n600), .B(n598), .Y(n594) );
  OR2X6 U28 ( .A(n609), .B(n610), .Y(ans[6]) );
  OR2X6 U29 ( .A(n613), .B(n614), .Y(ans[4]) );
  OR2X6 U30 ( .A(n620), .B(n621), .Y(ans[3]) );
  INVX8 U31 ( .A(n629), .Y(n26) );
  AND2X2 U32 ( .A(n622), .B(n623), .Y(n598) );
  INVX4 U33 ( .A(n604), .Y(n605) );
  AND2X2 U34 ( .A(n49), .B(n38), .Y(n600) );
  INVX2 U35 ( .A(instruction[1]), .Y(n622) );
  CLKBUFX4 U36 ( .A(b_data[2]), .Y(n632) );
  CLKINVX40 U37 ( .A(n601), .Y(n602) );
  CLKINVX4 U38 ( .A(n26), .Y(n604) );
  INVX8 U39 ( .A(n604), .Y(n606) );
  AND4X2 U40 ( .A(alu_op[3]), .B(alu_op[2]), .C(alu_op[1]), .D(alu_op[0]), .Y(
        n629) );
  INVX2 U41 ( .A(instruction[0]), .Y(n623) );
  NOR3X4 U42 ( .A(instruction[2]), .B(instruction[7]), .C(instruction[6]), .Y(
        n48) );
  INVX2 U44 ( .A(n599), .Y(n607) );
  NOR2X2 U45 ( .A(n51), .B(n606), .Y(n609) );
  NOR2X2 U46 ( .A(n633), .B(n608), .Y(n610) );
  BUFX2 U48 ( .A(n636), .Y(n611) );
  AOI22X1 U49 ( .A0(n654), .A1(n46), .B0(n590), .B1(n611), .Y(n45) );
  BUFX8 U50 ( .A(n35), .Y(n636) );
  NOR2X2 U51 ( .A(n54), .B(n605), .Y(n613) );
  BUFX2 U52 ( .A(n33), .Y(n615) );
  INVX2 U53 ( .A(alu_ans[7]), .Y(n616) );
  NOR2X2 U54 ( .A(n52), .B(n605), .Y(n617) );
  NOR2X2 U55 ( .A(n633), .B(n616), .Y(n618) );
  AOI22X1 U56 ( .A0(n632), .A1(n636), .B0(a_data[1]), .B1(n654), .Y(n43) );
  CLKBUFX6 U57 ( .A(n651), .Y(n635) );
  AO2B2X1 U58 ( .B0(n635), .B1(n630), .A0(alu_ans[2]), .A1N(n634), .Y(ans[2])
         );
  CLKINVX1 U59 ( .A(alu_ans[5]), .Y(n624) );
  NOR2X2 U60 ( .A(n56), .B(n605), .Y(n625) );
  AO21X1 U61 ( .A0(n655), .A1(n38), .B0(n31), .Y(n33) );
  CLKINVX8 U62 ( .A(n615), .Y(n627) );
  CLKINVX3 U63 ( .A(n47), .Y(n655) );
  OR3X2 U64 ( .A(n26), .B(instruction[3]), .C(n32), .Y(n59) );
  INVX14 U65 ( .A(n59), .Y(n628) );
  CLKINVX2 U66 ( .A(a_data[1]), .Y(n648) );
  CLKINVX4 U67 ( .A(n591), .Y(n646) );
  CLKINVX2 U68 ( .A(a_data[0]), .Y(n647) );
  CLKINVX3 U69 ( .A(a_data[6]), .Y(n645) );
  CLKINVX2 U70 ( .A(n31), .Y(n653) );
  AOI22X1 U71 ( .A0(n631), .A1(n636), .B0(a_data[0]), .B1(n654), .Y(n44) );
  AOI22X1 U72 ( .A0(n637), .A1(n636), .B0(a_data[2]), .B1(n654), .Y(n42) );
  AOI22X1 U73 ( .A0(n642), .A1(n636), .B0(n639), .B1(n654), .Y(n40) );
  AOI22X1 U74 ( .A0(a_data[6]), .A1(n636), .B0(n642), .B1(n654), .Y(n39) );
  AOI22X1 U75 ( .A0(n639), .A1(n611), .B0(n637), .B1(n654), .Y(n41) );
  CLKNAND2X4 U76 ( .A(instruction[5]), .B(n655), .Y(n30) );
  CLKINVX2 U77 ( .A(instruction[3]), .Y(n656) );
  BUFX5 U78 ( .A(n651), .Y(n633) );
  BUFX5 U79 ( .A(n651), .Y(n634) );
  INVX4 U80 ( .A(n605), .Y(n651) );
  INVX2 U81 ( .A(a_data[2]), .Y(n649) );
  CLKBUFX4 U82 ( .A(n641), .Y(n640) );
  INVX2 U83 ( .A(a_data[4]), .Y(n641) );
  CLKBUFX4 U84 ( .A(n644), .Y(n643) );
  INVX2 U85 ( .A(a_data[5]), .Y(n644) );
  CLKINVX2 U86 ( .A(psw_in[7]), .Y(n650) );
  AO22X2 U87 ( .A0(alu_psw_out[0]), .A1(n606), .B0(psw_in[0]), .B1(n634), .Y(
        psw_out[0]) );
  AOI21X2 U88 ( .A0(n27), .A1(n656), .B0(n28), .Y(n25) );
  AOI21X2 U89 ( .A0(n656), .A1(n29), .B0(n650), .Y(n28) );
  OAI21X2 U90 ( .A0(n30), .A1(n657), .B0(n653), .Y(n29) );
  AO22X2 U91 ( .A0(alu_psw_out[4]), .A1(n26), .B0(psw_in[4]), .B1(n634), .Y(
        psw_out[4]) );
  AO22X2 U92 ( .A0(alu_psw_out[3]), .A1(n26), .B0(psw_in[3]), .B1(n635), .Y(
        psw_out[3]) );
  AO22X2 U93 ( .A0(alu_psw_out[1]), .A1(n606), .B0(psw_in[1]), .B1(n635), .Y(
        psw_out[1]) );
  AO22X2 U94 ( .A0(alu_psw_out[2]), .A1(n606), .B0(psw_in[2]), .B1(n634), .Y(
        psw_out[2]) );
  AO22X2 U95 ( .A0(alu_psw_out[5]), .A1(n26), .B0(psw_in[5]), .B1(n635), .Y(
        psw_out[5]) );
  AO22X2 U96 ( .A0(alu_psw_out[6]), .A1(n606), .B0(psw_in[6]), .B1(n634), .Y(
        psw_out[6]) );
  INVX8 U97 ( .A(n594), .Y(n652) );
  OAI221X2 U98 ( .A0(n646), .A1(n652), .B0(n627), .B1(n640), .C0(n42), .Y(N58)
         );
  OAI221X2 U99 ( .A0(n652), .A1(n648), .B0(n627), .B1(n645), .C0(n40), .Y(N60)
         );
  OAI221X2 U100 ( .A0(n652), .A1(n649), .B0(n627), .B1(n646), .C0(n39), .Y(N61) );
  OAI221X2 U101 ( .A0(n647), .A1(n652), .B0(n627), .B1(n643), .C0(n41), .Y(N59) );
  OAI221X2 U102 ( .A0(n645), .A1(n652), .B0(n627), .B1(n638), .C0(n43), .Y(N57) );
  OAI221X2 U103 ( .A0(n652), .A1(n643), .B0(n627), .B1(n649), .C0(n44), .Y(N56) );
  OAI211X2 U104 ( .A0(n30), .A1(n645), .B0(n36), .C0(n37), .Y(N62) );
  AOI32X2 U105 ( .A0(a_data[0]), .A1(n655), .A2(n38), .B0(n636), .B1(n591), 
        .Y(n36) );
  AOI22X1 U106 ( .A0(n637), .A1(n594), .B0(psw_in[7]), .B1(n31), .Y(n37) );
  INVX8 U107 ( .A(n30), .Y(n654) );
  NAND3X3 U108 ( .A(instruction[1]), .B(instruction[0]), .C(n48), .Y(n47) );
  INVX5 U109 ( .A(instruction[4]), .Y(n657) );
  NOR2X6 U110 ( .A(instruction[4]), .B(instruction[5]), .Y(n38) );
  OAI221X2 U111 ( .A0(n652), .A1(n640), .B0(n627), .B1(n648), .C0(n45), .Y(N55) );
  OAI22X2 U112 ( .A0(n657), .A1(n650), .B0(instruction[4]), .B1(n646), .Y(n46)
         );
endmodule


module CPU_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX2 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX2 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX2 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX2 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX2 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX2 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module CPU_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHX2 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX2 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX2 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX2 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX2 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX2 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX2 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHX2 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHX2 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHX2 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX2 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX2 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHX2 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHX2 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module CPU ( clk, rst_n, data_bus, addr_bus, interupt, read_en, write_en, 
        clk_1M, clk_6M, memory_select );
  output [7:0] data_bus;
  output [15:0] addr_bus;
  input [4:0] interupt;
  input clk, rst_n;
  output read_en, write_en, clk_1M, clk_6M, memory_select;
  wire   n1345, n864, n3562, n677, n678, interupt_en, bit_en, get_ins_done,
         ram_read_done, rom_read_done, ram_write_done, read_en_nxt, N203, N204,
         N205, N206, N207, N208, N209, N210, \data_in[7] , \data_in[6] ,
         \data_in[5] , \data_in[4] , \data_in[3] , \data_in[2] , \data_in[1] ,
         \data_in[0] , n1, n2, n3, n4, n5, n6, n7, n8, n313, n315, n316, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n76, n78,
         n125, n134, n167, n433, n434, n436, n439, n441, n448, n455, n464,
         n1352, n482, n483, n485, n2320, n2643, n3207, n120, n121, n122, n123,
         n126, n127, n128, n129, n130, n132, n133, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n182, n183, n184,
         n185, n186, n187, n188, n189, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n222, n223, n224, n226, n227, n228, n229, n230, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n254, n255,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n285, n287, n289, n290, n292, n293,
         n294, n295, n296, n297, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n314, n317, n384, n419,
         n420, n421, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n435, n437, n438, n440, n442, n443, n445, n446, n447, n449,
         n450, n451, n452, n453, n454, n456, n457, n458, n459, n460, n461,
         n462, n463, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n484, n486, n487,
         n488, n490, n491, n492, n493, n494, n495, n496, n497, n498, n3291,
         n3292, n3293, n3294, n3295, n3296, n3297, n3298, n3299, n3300, n3301,
         n3302, n3303, n3304, n3305, n3306, n3307, n3308, n3309, n3310, n3311,
         n3312, n3313, n3314, n3315, n3316, n3317, n3318, n3319, n3320, n3321,
         n3322, n3323, n3325, n3326, n3327, n3328, n3329, n3330, n3331, n3332,
         n3333, n3334, n3335, n3336, n3337, n3338, n3339, n3340, n3341, n3342,
         n3343, n3345, n3346, n3347, n3348, n3349, n3350, n3351, n3352, n3353,
         n3355, n3356, n3357, n3358, n3359, n3360, n3361, n3362, n3363, n3364,
         n3365, n3366, n3367, n3368, n3369, n3370, n3371, n3372, n3373, n3374,
         n3375, n3376, n3377, n3378, n3379, n3380, n3381, n3382, n3383, n3384,
         n3385, n3386, n3387, n3388, n3389, n3390, n3391, n3392, n3393, n3394,
         n3395, n3396, n3397, n3398, n3399, n3400, n3401, n3402, n3403, n3404,
         n3405, n3406, n3407, n3408, n3409, n3410, n3411, n3412, n3413, n3414,
         n3415, n3416, n3417, n3418, n3419, n3420, n3421, n3422, n3423, n3424,
         n3425, n3426, n3427, n3428, n3429, n3430, n3431, n3432, n3433, n3434,
         n3435, n3436, n3437, n3438, n3439, n3440, n3441, n3442, n3443, n3444,
         n3445, n3446, n3447, n3448, n3449, n3450, n3451, n3452, n3453, n3454,
         n3455, n3456, n3457, n3458, n3459, n3460, n3461, n3462, n3463, n3465,
         n3467, n3468, n3469, n3470, n3471, n3472, n3473, n3474, n3475, n3476,
         n3477, n3478, n3479, n3480, n3481, n3482, n3483, n3484, n3485, n3486,
         n3487, n3488, n3489, n3490, n3491, n3492, n3493, n3494, n3495, n3496,
         n3497, n3498, n3499, n3500, n3501, n3502, n3503, n3504, n3505, n3506,
         n3507, n3508, n3509, n3510, n3511, n3512, n3513, n3514, n3515, n3516,
         n3517, n3518, n3519, n3520, n3521, n3522, n3523, n3524, n3525, n3526,
         n3527, n3528, n3529, n3530, n3531, n3532, n3533, n3534, n3535, n3536,
         n3537, n3538, n3539, n3540, n3541, n3542, n3543, n3544, n3545, n3546,
         n3547, n3548, n3549, n3550, n3551, n3552, n3553, n3554, n3555, n3556,
         n3557, n3558, n3559, n3560, n3561;
  wire   [2:0] nop_cnt;
  wire   [15:0] program_counter;
  wire   [15:0] program_counter_plus1;
  wire   [7:0] data_out;
  wire   [3:0] run_phase;
  wire   [7:0] ins_register;
  wire   [3:0] run_phase_init;
  wire   [7:0] psw;
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
  assign addr_bus[5] = n1345;

  DFFRHQX8 \program_counter_reg[7]  ( .D(n389), .CK(clk), .RN(n3438), .Q(
        program_counter[7]) );
  DFFRHQX8 \rom_data_register_reg[6]  ( .D(n333), .CK(clk), .RN(n3439), .Q(
        rom_data_register[6]) );
  OAI2BB2X4 U3 ( .B0(read_en), .B1(n1), .A0N(n677), .A1N(data_bus[0]), .Y(
        \data_in[0] ) );
  CLKINVX16 U293 ( .A(\data_in[1] ), .Y(n2) );
  CLKINVX16 U299 ( .A(\data_in[2] ), .Y(n3) );
  CLKINVX16 U305 ( .A(\data_in[3] ), .Y(n4) );
  CLKINVX16 U311 ( .A(\data_in[4] ), .Y(n5) );
  CLKINVX16 U317 ( .A(\data_in[5] ), .Y(n6) );
  CLKINVX16 U323 ( .A(\data_in[6] ), .Y(n7) );
  CLKINVX16 U387 ( .A(\data_in[7] ), .Y(n8) );
  DFFRHQX8 \rom_data_register_reg[3]  ( .D(n336), .CK(clk), .RN(n3439), .Q(
        rom_data_register[3]) );
  DFFRHQX8 \program_counter_reg[8]  ( .D(n380), .CK(clk), .RN(n3438), .Q(
        program_counter[8]) );
  DFFRHQX8 \program_counter_reg[2]  ( .D(n394), .CK(clk), .RN(n3438), .Q(
        program_counter[2]) );
  DFFRHQX8 \program_counter_reg[9]  ( .D(n378), .CK(clk), .RN(n3438), .Q(
        program_counter[9]) );
  OAI2BB2X4 U5 ( .B0(read_en), .B1(n2), .A0N(data_bus[1]), .A1N(n3465), .Y(
        \data_in[1] ) );
  OAI2BB2X4 U6 ( .B0(n3465), .B1(n3), .A0N(data_bus[2]), .A1N(n3465), .Y(
        \data_in[2] ) );
  OAI2BB2X4 U7 ( .B0(read_en), .B1(n4), .A0N(data_bus[3]), .A1N(n3465), .Y(
        \data_in[3] ) );
  OAI2BB2X4 U8 ( .B0(read_en), .B1(n5), .A0N(data_bus[4]), .A1N(n3465), .Y(
        \data_in[4] ) );
  OAI2BB2X4 U9 ( .B0(read_en), .B1(n6), .A0N(data_bus[5]), .A1N(n3465), .Y(
        \data_in[5] ) );
  OAI2BB2X4 U10 ( .B0(read_en), .B1(n7), .A0N(data_bus[6]), .A1N(n3465), .Y(
        \data_in[6] ) );
  OAI2BB2X4 U11 ( .B0(read_en), .B1(n8), .A0N(data_bus[7]), .A1N(n3465), .Y(
        \data_in[7] ) );
  CLKINVX16 U287 ( .A(\data_in[0] ), .Y(n1) );
  DFFRHQX8 \ram_data_register_reg[4]  ( .D(n402), .CK(clk), .RN(n3438), .Q(
        n448) );
  DFFRHQX8 \addr_bus_reg[2]  ( .D(n386), .CK(clk), .RN(n3439), .Q(addr_bus[2])
         );
  DFFRHQX8 \addr_bus_reg[0]  ( .D(n388), .CK(clk), .RN(n3438), .Q(addr_bus[0])
         );
  DFFRHQX8 \program_counter_reg[5]  ( .D(n391), .CK(clk), .RN(n3461), .Q(
        program_counter[5]) );
  DFFRHQX8 \program_counter_reg[4]  ( .D(n392), .CK(clk), .RN(n3437), .Q(
        program_counter[4]) );
  DFFRHQX8 \program_counter_reg[3]  ( .D(n393), .CK(clk), .RN(n3437), .Q(
        program_counter[3]) );
  DFFRHQX8 \ram_data_register_reg[5]  ( .D(n403), .CK(clk), .RN(n3437), .Q(
        n436) );
  DFFRHQX8 \ins_register_reg[5]  ( .D(n125), .CK(clk), .RN(n3438), .Q(
        ins_register[5]) );
  DFFRHQX8 \ram_data_register_reg[1]  ( .D(n399), .CK(clk), .RN(n3437), .Q(
        n434) );
  DFFRHQX8 \status_reg[5]  ( .D(n405), .CK(clk), .RN(n3437), .Q(status[5]) );
  DFFRHQX8 \run_phase_reg[3]  ( .D(n412), .CK(clk), .RN(n3436), .Q(
        run_phase[3]) );
  DFFRHQX8 \run_phase_reg[1]  ( .D(n341), .CK(clk), .RN(n3439), .Q(
        run_phase[1]) );
  DFFRHQX8 \run_phase_reg[2]  ( .D(n342), .CK(clk), .RN(n3439), .Q(
        run_phase[2]) );
  DFFRHQX8 \status_reg[4]  ( .D(n406), .CK(clk), .RN(n3436), .Q(status[4]) );
  DFFRHQX8 \addr_bus_reg[5]  ( .D(n383), .CK(clk), .RN(n3436), .Q(n1345) );
  DFFRHQX8 \ram_data_register_reg[6]  ( .D(n404), .CK(clk), .RN(n3437), .Q(
        n455) );
  DFFRHQX8 \ins_register_reg[3]  ( .D(n76), .CK(clk), .RN(n3436), .Q(
        ins_register[3]) );
  DFFRHQX8 \ram_data_register_reg[2]  ( .D(n400), .CK(clk), .RN(n3436), .Q(
        n441) );
  DFFRHQX8 \ram_data_register_reg[7]  ( .D(n413), .CK(clk), .RN(n3437), .Q(
        n433) );
  DFFRHQX8 \ins_register_reg[2]  ( .D(n315), .CK(clk), .RN(n3437), .Q(
        ins_register[2]) );
  DFFRHQX8 \ram_data_register_reg[3]  ( .D(n401), .CK(clk), .RN(n3439), .Q(
        n439) );
  DFFRHQX8 \run_phase_reg[0]  ( .D(n340), .CK(clk), .RN(n3440), .Q(
        run_phase[0]) );
  DFFRHQX8 \rom_data_register_reg[5]  ( .D(n334), .CK(clk), .RN(n3442), .Q(
        rom_data_register[5]) );
  DFFRHQX8 \status_reg[6]  ( .D(n411), .CK(clk), .RN(n3445), .Q(status[6]) );
  DFFRHQX8 \program_counter_reg[14]  ( .D(n368), .CK(clk), .RN(n3445), .Q(
        program_counter[14]) );
  DFFRHQX8 \program_counter_reg[0]  ( .D(n396), .CK(clk), .RN(n3444), .Q(
        program_counter[0]) );
  DFFRHQX8 \program_counter_reg[6]  ( .D(n390), .CK(clk), .RN(n3444), .Q(
        program_counter[6]) );
  DFFRHQX8 \rom_data_register_reg[7]  ( .D(n332), .CK(clk), .RN(n3442), .Q(
        rom_data_register[7]) );
  DFFRHQX8 \rom_data_register_reg[4]  ( .D(n335), .CK(clk), .RN(n3443), .Q(
        rom_data_register[4]) );
  DFFRHQX8 \program_counter_reg[10]  ( .D(n376), .CK(clk), .RN(n3442), .Q(
        program_counter[10]) );
  DFFRHQX8 \program_counter_reg[13]  ( .D(n370), .CK(clk), .RN(n3442), .Q(
        program_counter[13]) );
  DFFRHQX8 \rom_data_register_reg[0]  ( .D(n339), .CK(clk), .RN(n3441), .Q(
        rom_data_register[0]) );
  DFFRHQX8 \program_counter_reg[1]  ( .D(n395), .CK(clk), .RN(n3441), .Q(
        program_counter[1]) );
  DFFRHQX8 \status_reg[2]  ( .D(n408), .CK(clk), .RN(n3441), .Q(status[2]) );
  DFFRHQX8 \ins_register_reg[4]  ( .D(n313), .CK(clk), .RN(n3441), .Q(
        ins_register[4]) );
  DFFRHQX8 \program_counter_reg[12]  ( .D(n372), .CK(clk), .RN(n3441), .Q(
        program_counter[12]) );
  DFFRHQX8 \program_counter_reg[11]  ( .D(n374), .CK(clk), .RN(n3440), .Q(
        program_counter[11]) );
  DFFRHQX8 \program_counter_reg[15]  ( .D(n366), .CK(clk), .RN(n3440), .Q(
        program_counter[15]) );
  AOI31X4 U18 ( .A0(n121), .A1(n122), .A2(n123), .B0(n3418), .Y(pro_b[5]) );
  AOI221X4 U19 ( .A0(acc[5]), .A1(n3412), .B0(program_counter[5]), .B1(n3410), 
        .C0(n128), .Y(n123) );
  AOI31X4 U23 ( .A0(n136), .A1(n137), .A2(n138), .B0(n3417), .Y(pro_b[4]) );
  AOI31X4 U28 ( .A0(n140), .A1(n141), .A2(n142), .B0(n3418), .Y(pro_b[3]) );
  AOI221X4 U29 ( .A0(acc[3]), .A1(n3412), .B0(program_counter[3]), .B1(n3410), 
        .C0(n143), .Y(n142) );
  AOI221X4 U34 ( .A0(acc[1]), .A1(n3412), .B0(program_counter[1]), .B1(n3410), 
        .C0(n147), .Y(n146) );
  AOI31X4 U38 ( .A0(n148), .A1(n149), .A2(n150), .B0(n3418), .Y(pro_b[0]) );
  AOI221X4 U39 ( .A0(acc[0]), .A1(n3412), .B0(program_counter[0]), .B1(n3410), 
        .C0(n151), .Y(n150) );
  OAI2BB2X4 U40 ( .B0(n3303), .B1(n3541), .A0N(n130), .A1N(
        rom_data_register[0]), .Y(n151) );
  NOR2X8 U44 ( .A(n3486), .B(n3418), .Y(pro_a[2]) );
  NOR2X8 U46 ( .A(n3482), .B(n3418), .Y(pro_a[0]) );
  AND4X8 U48 ( .A(n152), .B(n153), .C(n154), .D(n155), .Y(n120) );
  AOI31X4 U50 ( .A0(n157), .A1(n158), .A2(n159), .B0(n3417), .Y(n494) );
  NOR2X8 U54 ( .A(n3416), .B(n3350), .Y(n495) );
  OAI2B2X4 U55 ( .A1N(ins_register[0]), .A0(n3434), .B0(n1), .B1(n3526), .Y(
        n78) );
  OAI2B2X4 U56 ( .A1N(ins_register[3]), .A0(n3435), .B0(n4), .B1(n3526), .Y(
        n76) );
  AOI31X4 U59 ( .A0(n161), .A1(n162), .A2(n163), .B0(n3418), .Y(n482) );
  AOI22X4 U61 ( .A0(rom_data_register[7]), .A1(n130), .B0(acc[7]), .B1(n3412), 
        .Y(n162) );
  OAI32X4 U63 ( .A0(n164), .A1(interupt[1]), .A2(interupt[0]), .B0(n3542), 
        .B1(n3561), .Y(n418) );
  OAI32X4 U65 ( .A0(n165), .A1(interupt[1]), .A2(interupt[0]), .B0(n3545), 
        .B1(n3561), .Y(n417) );
  CLKINVX16 U72 ( .A(n8), .Y(n177) );
  OAI32X4 U77 ( .A0(n188), .A1(decoder_next_status[1]), .A2(
        decoder_next_status[0]), .B0(n3495), .B1(n3527), .Y(n411) );
  OAI32X4 U78 ( .A0(n189), .A1(decoder_next_status[1]), .A2(
        decoder_next_status[0]), .B0(n3495), .B1(n3551), .Y(n410) );
  AOI211X4 U80 ( .A0(n3514), .A1(n192), .B0(n193), .C0(n194), .Y(n191) );
  OAI32X4 U86 ( .A0(n3512), .A1(decoder_next_status[1]), .A2(n189), .B0(n3495), 
        .B1(n3505), .Y(n407) );
  OAI32X4 U87 ( .A0(n189), .A1(decoder_next_status[0]), .A2(n3498), .B0(n3495), 
        .B1(n3517), .Y(n406) );
  OAI32X4 U88 ( .A0(n3512), .A1(n3498), .A2(n189), .B0(n3495), .B1(n3513), .Y(
        n405) );
  CLKINVX16 U95 ( .A(n7), .Y(n204) );
  CLKINVX16 U99 ( .A(n6), .Y(n207) );
  CLKINVX16 U103 ( .A(n5), .Y(n210) );
  CLKINVX16 U107 ( .A(n4), .Y(n213) );
  CLKINVX16 U111 ( .A(n3), .Y(n216) );
  CLKINVX16 U115 ( .A(n2), .Y(n219) );
  CLKINVX16 U119 ( .A(n1), .Y(n222) );
  OAI211X4 U127 ( .A0(n229), .A1(n230), .B0(n3526), .C0(n3506), .Y(n227) );
  AOI221X4 U206 ( .A0(n3501), .A1(rom_read_done), .B0(get_ins_done), .B1(n277), 
        .C0(n3503), .Y(n274) );
  NAND3X8 U217 ( .A(n278), .B(n3368), .C(n3480), .Y(n169) );
  NOR2BX8 U253 ( .AN(n3426), .B(status[5]), .Y(n278) );
  AOI31X4 U256 ( .A0(n3480), .A1(n3368), .A2(n223), .B0(n3360), .Y(n285) );
  OAI31X4 U264 ( .A0(n311), .A1(n226), .A2(n3527), .B0(n3417), .Y(n279) );
  OAI32X4 U269 ( .A0(run_phase[2]), .A1(n3325), .A2(n3499), .B0(n3515), .B1(
        n187), .Y(n317) );
  NOR2X8 U280 ( .A(n252), .B(status[2]), .Y(n156) );
  AOI2BB1X4 U282 ( .A0N(n423), .A1N(n424), .B0(n3543), .Y(n420) );
  AOI31X4 U285 ( .A0(status[4]), .A1(n3415), .A2(n3525), .B0(n425), .Y(n423)
         );
  OAI2BB1X4 U290 ( .A0N(\data_in[0] ), .A1N(n3373), .B0(n428), .Y(n339) );
  OAI2BB1X4 U292 ( .A0N(\data_in[1] ), .A1N(n3373), .B0(n431), .Y(n338) );
  OAI2BB1X4 U295 ( .A0N(\data_in[2] ), .A1N(n3373), .B0(n432), .Y(n337) );
  OAI2BB1X4 U297 ( .A0N(\data_in[3] ), .A1N(n3373), .B0(n435), .Y(n336) );
  OAI2BB1X4 U300 ( .A0N(\data_in[4] ), .A1N(n3373), .B0(n437), .Y(n335) );
  OAI2BB1X4 U302 ( .A0N(\data_in[5] ), .A1N(n3373), .B0(n438), .Y(n334) );
  OAI2BB1X4 U304 ( .A0N(\data_in[6] ), .A1N(n3373), .B0(n440), .Y(n333) );
  OAI2BB1X4 U307 ( .A0N(\data_in[7] ), .A1N(n3373), .B0(n442), .Y(n332) );
  AND3X8 U309 ( .A(n3363), .B(n3517), .C(n3329), .Y(n430) );
  OAI31X4 U313 ( .A0(n3513), .A1(n3434), .A2(n312), .B0(n153), .Y(n443) );
  NOR4BX4 U319 ( .AN(n165), .B(interupt[4]), .C(interupt[1]), .D(interupt[0]), 
        .Y(n445) );
  AOI221X4 U330 ( .A0(n3333), .A1(rom_data_register[5]), .B0(n241), .B1(
        program_counter[5]), .C0(n453), .Y(n452) );
  OAI211X4 U334 ( .A0(n3556), .A1(n3359), .B0(n456), .C0(n457), .Y(n305) );
  AOI221X4 U335 ( .A0(n3333), .A1(rom_data_register[4]), .B0(n241), .B1(
        program_counter[4]), .C0(n458), .Y(n457) );
  OAI211X4 U340 ( .A0(n3359), .A1(n3547), .B0(n459), .C0(n460), .Y(n301) );
  OAI211X4 U345 ( .A0(n3508), .A1(n3359), .B0(n462), .C0(n463), .Y(n299) );
  AOI221X4 U346 ( .A0(n3333), .A1(rom_data_register[1]), .B0(n241), .B1(
        program_counter[1]), .C0(n465), .Y(n463) );
  NOR3X8 U362 ( .A(n152), .B(status[6]), .C(n3551), .Y(n201) );
  OAI2B2X4 U365 ( .A1N(n3346), .A0(n3434), .B0(n2), .B1(n3526), .Y(n316) );
  OAI2B2X4 U366 ( .A1N(n3347), .A0(n3435), .B0(n3), .B1(n3526), .Y(n315) );
  OAI211X4 U368 ( .A0(n5), .A1(n3414), .B0(n472), .C0(n473), .Y(n313) );
  OAI2B11X4 U371 ( .A1N(addr_register_out[3]), .A0(n454), .B0(n474), .C0(n475), 
        .Y(n303) );
  NOR2X8 U375 ( .A(n3481), .B(n3416), .Y(n2320) );
  OAI211X4 U376 ( .A0(n3359), .A1(n3560), .B0(n478), .C0(n479), .Y(n477) );
  AOI221X4 U377 ( .A0(rom_data_register[7]), .A1(n3333), .B0(
        program_counter[7]), .B1(n241), .C0(n480), .Y(n479) );
  NAND3X8 U380 ( .A(a_data_from[1]), .B(n3511), .C(n3291), .Y(n454) );
  OAI211X4 U388 ( .A0(n8), .A1(n3415), .B0(n481), .C0(n473), .Y(n167) );
  AOI31X4 U390 ( .A0(n484), .A1(n486), .A2(n487), .B0(n3417), .Y(n1352) );
  NOR3BX4 U404 ( .AN(n3302), .B(n3496), .C(n3497), .Y(n127) );
  OAI211X4 U406 ( .A0(n7), .A1(n3414), .B0(n490), .C0(n473), .Y(n134) );
  OAI211X4 U408 ( .A0(n6), .A1(n3415), .B0(n491), .C0(n473), .Y(n125) );
  ClkDiv_DIV_NUM2 clk_6 ( .clk_in(clk), .rst_n(n3457), .clk_out(clk_6M) );
  ClkDiv_DIV_NUM12 clk_1 ( .clk_in(clk), .rst_n(n3458), .clk_out(clk_1M) );
  InsDecoder insdecoder ( .clk(clk), .rst_n(n3457), .instruction({
        ins_register[7], n3349, ins_register[5:2], n3346, n3339}), .run_phase(
        {run_phase[3], n3340, run_phase[1], n3351}), .psw(psw), 
        .ram_data_register({n433, n455, n436, n448, n439, n441, n434, n3336}), 
        .rom_data_register(rom_data_register), .interupt_en(interupt_en), 
        .run_phase_init(run_phase_init), .a_data_from({SYNOPSYS_UNCONNECTED__0, 
        a_data_from[2:0]}), .b_data_from(b_data_from), .alu_op(alu_op), 
        .a_bit_location(a_bit_location), .b_bit_location(b_bit_location), 
        .bit_en(bit_en), .addr_register_out(addr_register_out), .next_status(
        decoder_next_status) );
  Process pro ( .psw_in({n3381, pro_psw_in[6:0]}), .a_data({n2320, n495, n483, 
        n485, n2643, pro_a[2:0]}), .b_data({n482, n1352, pro_b[5:3], n494, 
        pro_b[1:0]}), .a_bit_location(a_bit_location), .b_bit_location(
        b_bit_location), .bit_en(bit_en), .alu_op(alu_op), .instruction({n3296, 
        n3349, ins_register[5:3], n3347, n3346, n3339}), .ans(pro_ans), 
        .psw_out({pro_psw_out[7:1], SYNOPSYS_UNCONNECTED__1}) );
  CPU_DW01_inc_0 add_352 ( .A(program_counter[15:8]), .SUM({N210, N209, N208, 
        N207, N206, N205, N204, N203}) );
  CPU_DW01_inc_1 add_105 ( .A(program_counter), .SUM(program_counter_plus1) );
  DFFRQX2 \addr_bus_reg[9]  ( .D(n377), .CK(clk), .RN(rst_n), .Q(addr_bus[9])
         );
  DFFRQX2 \addr_bus_reg[8]  ( .D(n379), .CK(clk), .RN(n3448), .Q(addr_bus[8])
         );
  DFFRQX2 \addr_bus_reg[13]  ( .D(n369), .CK(clk), .RN(n3449), .Q(addr_bus[13]) );
  DFFRQX2 \addr_bus_reg[12]  ( .D(n371), .CK(clk), .RN(n3448), .Q(addr_bus[12]) );
  DFFRQX2 \addr_bus_reg[15]  ( .D(n365), .CK(clk), .RN(n3448), .Q(addr_bus[15]) );
  DFFRQX2 \addr_bus_reg[14]  ( .D(n367), .CK(clk), .RN(n3448), .Q(addr_bus[14]) );
  DFFRQX2 \addr_bus_reg[10]  ( .D(n375), .CK(clk), .RN(n3448), .Q(addr_bus[10]) );
  DFFRQX2 \addr_bus_reg[11]  ( .D(n373), .CK(clk), .RN(n3449), .Q(addr_bus[11]) );
  DFFRQX2 \nop_cnt_reg[0]  ( .D(n319), .CK(clk), .RN(n3448), .Q(nop_cnt[0]) );
  DFFRQX2 \data_out_reg[6]  ( .D(n328), .CK(clk), .RN(n3447), .Q(data_out[6])
         );
  DFFRQX2 \data_out_reg[5]  ( .D(n327), .CK(clk), .RN(n3447), .Q(data_out[5])
         );
  DFFRQX2 \data_out_reg[4]  ( .D(n326), .CK(clk), .RN(n3447), .Q(data_out[4])
         );
  DFFRQX2 \data_out_reg[3]  ( .D(n325), .CK(clk), .RN(n3447), .Q(data_out[3])
         );
  DFFRQX2 \data_out_reg[2]  ( .D(n324), .CK(clk), .RN(n3447), .Q(data_out[2])
         );
  DFFRQX2 \data_out_reg[1]  ( .D(n323), .CK(clk), .RN(n3447), .Q(data_out[1])
         );
  DFFRQX2 \data_out_reg[7]  ( .D(n321), .CK(clk), .RN(n3446), .Q(data_out[7])
         );
  DFFRQX2 \data_out_reg[0]  ( .D(n322), .CK(clk), .RN(n3447), .Q(data_out[0])
         );
  DFFRQX2 ram_read_done_reg ( .D(n497), .CK(clk), .RN(n3446), .Q(ram_read_done) );
  DFFRQX2 \psw_reg[6]  ( .D(n344), .CK(clk), .RN(n3448), .Q(psw[6]) );
  DFFRQX2 \psw_reg[5]  ( .D(n345), .CK(clk), .RN(n3448), .Q(psw[5]) );
  DFFRQX2 \psw_reg[2]  ( .D(n348), .CK(clk), .RN(n3447), .Q(psw[2]) );
  DFFRQX2 \psw_reg[1]  ( .D(n349), .CK(clk), .RN(n3446), .Q(psw[1]) );
  DFFRQX2 \psw_reg[0]  ( .D(n350), .CK(clk), .RN(n3442), .Q(psw[0]) );
  DFFRQX2 read_en_reg ( .D(read_en_nxt), .CK(clk), .RN(n3446), .Q(n677) );
  DFFRQX2 get_ins_done_reg ( .D(n498), .CK(clk), .RN(n3446), .Q(get_ins_done)
         );
  DFFRQX4 rom_read_done_reg ( .D(n492), .CK(clk), .RN(n3445), .Q(rom_read_done) );
  DFFRQX4 interupt_en_reg ( .D(n331), .CK(clk), .RN(n3446), .Q(interupt_en) );
  DFFRQX2 write_en_reg ( .D(n496), .CK(clk), .RN(n3441), .Q(n678) );
  DFFRQX2 \addr_bus_reg[7]  ( .D(n381), .CK(clk), .RN(n3446), .Q(addr_bus[7])
         );
  DFFRQX2 \addr_bus_reg[6]  ( .D(n382), .CK(clk), .RN(n3445), .Q(addr_bus[6])
         );
  DFFRQX4 ram_write_done_reg ( .D(n496), .CK(clk), .RN(n3446), .Q(
        ram_write_done) );
  DFFRQX2 \int_addr_reg[0]  ( .D(n329), .CK(clk), .RN(n3443), .Q(int_addr[0])
         );
  DFFRQX2 \int_addr_reg[5]  ( .D(n418), .CK(clk), .RN(n3443), .Q(int_addr[5])
         );
  DFFRQX2 \int_addr_reg[4]  ( .D(n417), .CK(clk), .RN(n3443), .Q(int_addr[4])
         );
  DFFRQX2 \int_addr_reg[1]  ( .D(n330), .CK(clk), .RN(n3440), .Q(int_addr[1])
         );
  DFFRQX2 \int_addr_reg[3]  ( .D(n416), .CK(clk), .RN(n3440), .Q(int_addr[3])
         );
  DFFRQX4 \b_reg[1]  ( .D(n357), .CK(clk), .RN(n3445), .Q(b[1]) );
  DFFRQX4 \b_reg[5]  ( .D(n353), .CK(clk), .RN(n3444), .Q(b[5]) );
  DFFRQX4 \b_reg[4]  ( .D(n354), .CK(clk), .RN(n3441), .Q(b[4]) );
  DFFRQX4 \b_reg[6]  ( .D(n352), .CK(clk), .RN(n3445), .Q(b[6]) );
  DFFRQX4 \b_reg[2]  ( .D(n356), .CK(clk), .RN(n3445), .Q(b[2]) );
  DFFRQX4 \acc_reg[5]  ( .D(n363), .CK(clk), .RN(n3444), .Q(acc[5]) );
  DFFRQX4 \acc_reg[4]  ( .D(n362), .CK(clk), .RN(n3444), .Q(acc[4]) );
  DFFRQX4 \acc_reg[0]  ( .D(n415), .CK(clk), .RN(n3442), .Q(acc[0]) );
  DFFRQX4 \acc_reg[1]  ( .D(n359), .CK(clk), .RN(n3440), .Q(acc[1]) );
  DFFRQX4 \b_reg[3]  ( .D(n355), .CK(clk), .RN(n3443), .Q(b[3]) );
  DFFRQX4 \acc_reg[7]  ( .D(n414), .CK(clk), .RN(n3444), .Q(acc[7]) );
  DFFRQX4 \acc_reg[2]  ( .D(n360), .CK(clk), .RN(n3443), .Q(acc[2]) );
  DFFRQX4 \acc_reg[3]  ( .D(n361), .CK(clk), .RN(n3445), .Q(acc[3]) );
  DFFRQX4 \acc_reg[6]  ( .D(n364), .CK(clk), .RN(n3444), .Q(acc[6]) );
  DFFRQX4 \psw_reg[4]  ( .D(n346), .CK(clk), .RN(n3444), .Q(psw[4]) );
  DFFRQX4 \psw_reg[3]  ( .D(n347), .CK(clk), .RN(n3443), .Q(psw[3]) );
  DFFRQX4 \rom_data_register_reg[1]  ( .D(n338), .CK(clk), .RN(n3442), .Q(
        rom_data_register[1]) );
  DFFRQX4 \rom_data_register_reg[2]  ( .D(n337), .CK(clk), .RN(n3439), .Q(
        rom_data_register[2]) );
  TBUFX4 \data_bus_tri[6]  ( .A(data_out[6]), .OE(write_en), .Y(data_bus[6])
         );
  TBUFX4 \data_bus_tri[4]  ( .A(data_out[4]), .OE(write_en), .Y(data_bus[4])
         );
  TBUFX4 \data_bus_tri[1]  ( .A(data_out[1]), .OE(write_en), .Y(data_bus[1])
         );
  TBUFX4 \data_bus_tri[2]  ( .A(data_out[2]), .OE(write_en), .Y(data_bus[2])
         );
  TBUFX4 \data_bus_tri[3]  ( .A(data_out[3]), .OE(write_en), .Y(data_bus[3])
         );
  TBUFX4 \data_bus_tri[5]  ( .A(data_out[5]), .OE(write_en), .Y(data_bus[5])
         );
  TBUFX4 \data_bus_tri[7]  ( .A(data_out[7]), .OE(write_en), .Y(data_bus[7])
         );
  TBUFX4 \data_bus_tri[0]  ( .A(data_out[0]), .OE(n678), .Y(data_bus[0]) );
  DFFRQX2 \status_reg[3]  ( .D(n407), .CK(clk), .RN(n3436), .Q(status[3]) );
  DFFRQX4 \b_reg[0]  ( .D(n358), .CK(clk), .RN(n3441), .Q(b[0]) );
  DFFRQX2 \status_reg[1]  ( .D(n409), .CK(clk), .RN(n3443), .Q(status[1]) );
  DFFRQX2 \addr_bus_reg[1]  ( .D(n387), .CK(clk), .RN(n3439), .Q(n3562) );
  DFFRQX2 \addr_bus_reg[4]  ( .D(n3489), .CK(clk), .RN(rst_n), .Q(n3395) );
  DFFRQX2 \psw_reg[7]  ( .D(n343), .CK(clk), .RN(rst_n), .Q(psw[7]) );
  DFFSQX4 \nop_cnt_reg[1]  ( .D(n320), .CK(clk), .SN(n3449), .Q(nop_cnt[1]) );
  DFFRQX2 \addr_bus_reg[3]  ( .D(n385), .CK(clk), .RN(n3442), .Q(n864) );
  DFFSQX4 \nop_cnt_reg[2]  ( .D(n318), .CK(clk), .SN(n3449), .Q(nop_cnt[2]) );
  DFFSQX2 memory_select_reg ( .D(n397), .CK(clk), .SN(n3449), .Q(memory_select) );
  DFFSQX2 \status_reg[0]  ( .D(n410), .CK(clk), .SN(n3449), .Q(status[0]) );
  DFFRQX2 \ram_data_register_reg[0]  ( .D(n3304), .CK(clk), .RN(n3440), .Q(
        n464) );
  DFFRQX4 \b_reg[7]  ( .D(n351), .CK(clk), .RN(rst_n), .Q(n3345) );
  DFFRQX4 \ins_register_reg[0]  ( .D(n78), .CK(clk), .RN(n3436), .Q(
        ins_register[0]) );
  DFFRQX4 \ins_register_reg[1]  ( .D(n316), .CK(clk), .RN(n3436), .Q(
        ins_register[1]) );
  DFFRQX2 \ins_register_reg[6]  ( .D(n134), .CK(clk), .RN(n3438), .Q(
        ins_register[6]) );
  DFFRQX4 \ins_register_reg[7]  ( .D(n167), .CK(clk), .RN(n3440), .Q(
        ins_register[7]) );
  AOI31X4 U4 ( .A0(n144), .A1(n145), .A2(n146), .B0(n3417), .Y(pro_b[1]) );
  OAI2BB2X4 U12 ( .B0(n3303), .B1(n3558), .A0N(n130), .A1N(
        rom_data_register[3]), .Y(n143) );
  BUFX8 U13 ( .A(n307), .Y(n3301) );
  CLKBUFX40 U14 ( .A(a_data_from[0]), .Y(n3291) );
  BUFX20 U15 ( .A(addr_register_out[4]), .Y(n3292) );
  BUFX20 U16 ( .A(n305), .Y(n3293) );
  BUFX20 U17 ( .A(n303), .Y(n3294) );
  INVX20 U20 ( .A(n477), .Y(n3481) );
  OAI2BB2X4 U21 ( .B0(n3303), .B1(n3545), .A0N(n130), .A1N(
        rom_data_register[4]), .Y(n139) );
  CLKINVX1 U22 ( .A(ins_register[7]), .Y(n3295) );
  CLKINVX3 U24 ( .A(n3295), .Y(n3296) );
  CLKINVX32 U25 ( .A(b_data_from[2]), .Y(n3497) );
  CLKINVX24 U26 ( .A(n3300), .Y(n3302) );
  CLKINVX32 U27 ( .A(n3291), .Y(n3509) );
  OAI2BB2X2 U30 ( .B0(n3303), .B1(n3557), .A0N(n130), .A1N(
        rom_data_register[1]), .Y(n147) );
  BUFX16 U31 ( .A(n135), .Y(n3411) );
  BUFX14 U32 ( .A(n132), .Y(n3399) );
  INVX4 U33 ( .A(n464), .Y(n3335) );
  AND2X2 U35 ( .A(n3297), .B(n3298), .Y(n280) );
  OR2X2 U36 ( .A(n3357), .B(n3358), .Y(n3297) );
  NOR2X2 U37 ( .A(n285), .B(n3356), .Y(n3298) );
  BUFX14 U41 ( .A(run_phase[0]), .Y(n3351) );
  INVX12 U42 ( .A(n3338), .Y(n3339) );
  INVX6 U43 ( .A(ins_register[0]), .Y(n3338) );
  NOR2X4 U45 ( .A(n3467), .B(n173), .Y(n3331) );
  AOI22X2 U47 ( .A0(n3334), .A1(b[3]), .B0(n3333), .B1(rom_data_register[3]), 
        .Y(n474) );
  CLKXOR2X2 U49 ( .A(pro_ans[3]), .B(n3406), .Y(n296) );
  OAI211X2 U51 ( .A0(n3549), .A1(n3359), .B0(n451), .C0(n452), .Y(n307) );
  AOI22X2 U52 ( .A0(acc[7]), .A1(n3491), .B0(n433), .B1(n3379), .Y(n478) );
  CLKINVX12 U53 ( .A(n3294), .Y(n3485) );
  INVX8 U57 ( .A(n3293), .Y(n3487) );
  INVX4 U58 ( .A(n3301), .Y(n3476) );
  NAND2BX2 U60 ( .AN(n424), .B(n3394), .Y(n3393) );
  BUFX5 U62 ( .A(pro_ans[1]), .Y(n3407) );
  BUFX18 U64 ( .A(pro_ans[0]), .Y(n3408) );
  OR3X4 U66 ( .A(a_data_from[1]), .B(a_data_from[2]), .C(n3509), .Y(n3299) );
  OR2X2 U67 ( .A(b_data_from[3]), .B(b_data_from[1]), .Y(n3300) );
  INVX8 U68 ( .A(n3313), .Y(n3330) );
  AOI222X4 U69 ( .A0(n433), .A1(n3411), .B0(n3399), .B1(n3345), .C0(
        addr_register_out[7]), .C1(n3409), .Y(n163) );
  AOI22X4 U70 ( .A0(addr_register_out[1]), .A1(n3409), .B0(n434), .B1(n3411), 
        .Y(n144) );
  OAI2BB2X4 U71 ( .B0(n3303), .B1(n3542), .A0N(n130), .A1N(
        rom_data_register[5]), .Y(n128) );
  CLKBUFX40 U73 ( .A(n129), .Y(n3303) );
  NAND4X4 U74 ( .A(b_data_from[3]), .B(n3496), .C(n3510), .D(n3497), .Y(n129)
         );
  CLKINVX40 U75 ( .A(n3348), .Y(n3496) );
  AOI22X2 U76 ( .A0(program_counter[6]), .A1(n3410), .B0(program_counter[14]), 
        .B1(n3305), .Y(n484) );
  BUFX4 U79 ( .A(b_data_from[0]), .Y(n3348) );
  BUFX10 U81 ( .A(run_phase[2]), .Y(n3340) );
  INVX4 U82 ( .A(a_data_from[1]), .Y(n3493) );
  AOI22X2 U83 ( .A0(program_counter[2]), .A1(n3410), .B0(program_counter[10]), 
        .B1(n3305), .Y(n157) );
  AOI22X2 U84 ( .A0(rom_data_register[2]), .A1(n130), .B0(acc[2]), .B1(n3412), 
        .Y(n158) );
  AOI22X2 U85 ( .A0(n3491), .A1(acc[4]), .B0(n3380), .B1(n448), .Y(n456) );
  OAI22X2 U89 ( .A0(n3488), .A1(n454), .B0(n3554), .B1(n3330), .Y(n458) );
  INVX5 U90 ( .A(n3382), .Y(n3561) );
  AOI22X2 U91 ( .A0(n3491), .A1(acc[5]), .B0(n3380), .B1(n436), .Y(n451) );
  INVX5 U92 ( .A(n156), .Y(n3506) );
  BUFX5 U93 ( .A(n160), .Y(n3350) );
  OAI2B11X2 U94 ( .A1N(n3333), .A0(rom_data_register[6]), .B0(n446), .C0(n447), 
        .Y(n160) );
  AOI222X2 U96 ( .A0(n3492), .A1(n3534), .B0(n3491), .B1(n3536), .C0(n3380), 
        .C1(n3518), .Y(n447) );
  BUFX10 U97 ( .A(ins_register[6]), .Y(n3349) );
  INVX4 U98 ( .A(status[4]), .Y(n3517) );
  CLKBUFX4 U100 ( .A(run_phase[1]), .Y(n3325) );
  INVX6 U101 ( .A(n3322), .Y(n3433) );
  OR2X2 U102 ( .A(n3331), .B(n3332), .Y(n3306) );
  BUFX6 U104 ( .A(ins_register[1]), .Y(n3346) );
  OR2X2 U105 ( .A(n3319), .B(n3306), .Y(n3304) );
  AND3X8 U106 ( .A(n3302), .B(n3496), .C(b_data_from[2]), .Y(n3305) );
  AND2X2 U108 ( .A(n3374), .B(n3368), .Y(n3307) );
  CLKAND2X8 U109 ( .A(n3398), .B(n3318), .Y(n3308) );
  AND2X1 U110 ( .A(n3396), .B(n3500), .Y(n3309) );
  OR2X4 U112 ( .A(n3516), .B(n3371), .Y(n3310) );
  AND2X2 U113 ( .A(n153), .B(n3506), .Y(n3311) );
  INVX2 U114 ( .A(n279), .Y(n3367) );
  CLKAND2X4 U116 ( .A(n3378), .B(n3323), .Y(n3312) );
  AND3X2 U117 ( .A(a_data_from[1]), .B(n3509), .C(a_data_from[2]), .Y(n3313)
         );
  AOI22X2 U118 ( .A0(program_counter[12]), .A1(n3305), .B0(b[4]), .B1(n3399), 
        .Y(n137) );
  AND3X4 U120 ( .A(n3516), .B(n3504), .C(status[5]), .Y(n3314) );
  CLKAND2X6 U121 ( .A(n3375), .B(n3307), .Y(n3315) );
  CLKAND2X8 U122 ( .A(n3397), .B(n3309), .Y(n3316) );
  INVX5 U123 ( .A(n310), .Y(n3480) );
  AOI21X2 U124 ( .A0(n3360), .A1(n3330), .B0(n278), .Y(n3317) );
  AND2X2 U125 ( .A(n281), .B(n3317), .Y(n3318) );
  AO22X2 U126 ( .A0(n3342), .A1(n3337), .B0(n176), .B1(n222), .Y(n3319) );
  OR2X4 U128 ( .A(n492), .B(n498), .Y(n3320) );
  CLKINVX1 U129 ( .A(n153), .Y(n3501) );
  AND2X2 U130 ( .A(n3416), .B(n152), .Y(n3321) );
  OR2X4 U131 ( .A(n496), .B(read_en_nxt), .Y(n3322) );
  BUFX2 U132 ( .A(n274), .Y(n3371) );
  INVX4 U133 ( .A(n3371), .Y(n3500) );
  AND2X1 U134 ( .A(n185), .B(n3543), .Y(n3323) );
  INVX2 U135 ( .A(n3345), .Y(n3207) );
  BUFX12 U136 ( .A(n864), .Y(addr_bus[3]) );
  INVX2 U137 ( .A(n3310), .Y(n3430) );
  INVX8 U138 ( .A(n3310), .Y(n3431) );
  CLKINVX3 U139 ( .A(n3430), .Y(n3326) );
  INVX4 U140 ( .A(n3326), .Y(n3327) );
  CLKINVX6 U141 ( .A(n3326), .Y(n3328) );
  CLKBUFX4 U142 ( .A(ins_register[2]), .Y(n3347) );
  INVX4 U143 ( .A(n309), .Y(n3358) );
  INVX2 U144 ( .A(n3404), .Y(n3329) );
  OR3X4 U145 ( .A(n3291), .B(a_data_from[2]), .C(n3493), .Y(n3404) );
  INVX12 U146 ( .A(n3404), .Y(n3333) );
  NOR2X2 U147 ( .A(n220), .B(n172), .Y(n3332) );
  INVX20 U148 ( .A(n3408), .Y(n3467) );
  NOR3X8 U149 ( .A(n3340), .B(run_phase[3]), .C(n3325), .Y(n185) );
  OR2X2 U150 ( .A(n3308), .B(n3553), .Y(n3402) );
  AOI221X4 U151 ( .A0(n3333), .A1(rom_data_register[0]), .B0(n241), .B1(
        program_counter[0]), .C0(n469), .Y(n468) );
  OAI22X2 U152 ( .A0(n3483), .A1(n454), .B0(n3553), .B1(n3330), .Y(n469) );
  OR2X1 U153 ( .A(n3482), .B(n3372), .Y(n3401) );
  INVX2 U154 ( .A(n3351), .Y(n3378) );
  AOI221X4 U155 ( .A0(rom_data_register[2]), .A1(n3333), .B0(
        program_counter[2]), .B1(n241), .C0(n461), .Y(n460) );
  OAI2B2X2 U156 ( .A1N(addr_register_out[2]), .A0(n454), .B0(n3330), .B1(n3531), .Y(n461) );
  AOI22X2 U157 ( .A0(n3491), .A1(acc[0]), .B0(n3379), .B1(n3337), .Y(n467) );
  INVX12 U158 ( .A(n309), .Y(n3491) );
  CLKINVX4 U159 ( .A(n3299), .Y(n3379) );
  AO21X2 U160 ( .A0(run_phase_init[2]), .A1(n3312), .B0(n317), .Y(n342) );
  OAI2BB1X1 U161 ( .A0N(run_phase_init[3]), .A1N(n3312), .B0(n182), .Y(n412)
         );
  OAI2BB1X1 U162 ( .A0N(run_phase_init[1]), .A1N(n3312), .B0(n419), .Y(n341)
         );
  AOI22X2 U163 ( .A0(program_counter[9]), .A1(n3305), .B0(b[1]), .B1(n3399), 
        .Y(n145) );
  AOI221X4 U164 ( .A0(n241), .A1(program_counter[3]), .B0(n3491), .B1(acc[3]), 
        .C0(n476), .Y(n475) );
  OA21X2 U165 ( .A0(status[4]), .A1(n3329), .B0(n3363), .Y(n429) );
  INVX2 U166 ( .A(run_phase[0]), .Y(n3519) );
  AOI2B1X4 U167 ( .A1N(n186), .A0(run_phase[1]), .B0(n384), .Y(n187) );
  CLKINVX4 U168 ( .A(n3330), .Y(n3334) );
  INVX18 U169 ( .A(n3335), .Y(n3336) );
  INVX4 U170 ( .A(n3335), .Y(n3337) );
  INVX2 U171 ( .A(n175), .Y(n3341) );
  CLKINVX8 U172 ( .A(n3341), .Y(n3342) );
  AOI31X2 U173 ( .A0(n224), .A1(status[5]), .A2(n3380), .B0(n156), .Y(n175) );
  INVX2 U174 ( .A(n3395), .Y(n3343) );
  INVX8 U175 ( .A(n3343), .Y(addr_bus[4]) );
  AOI22X2 U176 ( .A0(program_counter[13]), .A1(n3305), .B0(b[5]), .B1(n3399), 
        .Y(n122) );
  OAI22X4 U177 ( .A0(n3477), .A1(n454), .B0(n3533), .B1(n3330), .Y(n453) );
  NOR2BX8 U178 ( .AN(n488), .B(n3497), .Y(n132) );
  CLKAND2X12 U179 ( .A(n488), .B(n3497), .Y(n130) );
  NOR3X8 U180 ( .A(n3348), .B(b_data_from[3]), .C(n3510), .Y(n488) );
  AOI22X4 U181 ( .A0(program_counter[11]), .A1(n3305), .B0(b[3]), .B1(n3399), 
        .Y(n141) );
  OAI222X4 U182 ( .A0(n3482), .A1(n3478), .B0(n289), .B1(n3424), .C0(n3366), 
        .C1(n3552), .Y(n350) );
  XNOR2X4 U183 ( .A(n3405), .B(n292), .Y(n289) );
  CLKINVX8 U184 ( .A(n273), .Y(n3352) );
  INVX2 U185 ( .A(n273), .Y(n3494) );
  AOI21X2 U186 ( .A0(n3475), .A1(n3494), .B0(n276), .Y(n258) );
  INVX8 U187 ( .A(n258), .Y(n3353) );
  INVX3 U188 ( .A(pro_psw_out[7]), .Y(n3475) );
  CLKINVX8 U189 ( .A(a_data_from[2]), .Y(n3511) );
  BUFX8 U190 ( .A(n3562), .Y(addr_bus[1]) );
  CLKINVX1 U191 ( .A(n3425), .Y(n3355) );
  NOR2X2 U192 ( .A(n3355), .B(status[5]), .Y(n3356) );
  CLKINVX1 U193 ( .A(n3360), .Y(n3357) );
  INVX8 U194 ( .A(status[5]), .Y(n3513) );
  NAND3X3 U195 ( .A(n3493), .B(n3511), .C(n3509), .Y(n309) );
  INVX20 U196 ( .A(n3396), .Y(n3359) );
  OAI211X2 U197 ( .A0(n3507), .A1(n3359), .B0(n467), .C0(n468), .Y(n466) );
  CLKINVX3 U198 ( .A(n275), .Y(n3396) );
  NAND3X4 U199 ( .A(n3509), .B(n3493), .C(a_data_from[2]), .Y(n275) );
  BUFX5 U200 ( .A(n287), .Y(n3360) );
  NOR2X2 U201 ( .A(n3513), .B(n3367), .Y(n287) );
  CLKBUFX4 U202 ( .A(n3425), .Y(n3361) );
  CLKBUFX4 U203 ( .A(n3425), .Y(n3362) );
  AND4X2 U204 ( .A(n3362), .B(n3480), .C(n3368), .D(n3513), .Y(n283) );
  CLKBUFX4 U205 ( .A(n180), .Y(n3425) );
  NOR2X6 U207 ( .A(n3484), .B(n3417), .Y(pro_a[1]) );
  CLKBUFX4 U208 ( .A(n443), .Y(n3363) );
  BUFX2 U209 ( .A(n3423), .Y(n3364) );
  BUFX8 U210 ( .A(n179), .Y(n3423) );
  INVX2 U211 ( .A(n3390), .Y(n3365) );
  CLKINVX2 U212 ( .A(n241), .Y(n3390) );
  NOR3BX4 U213 ( .AN(n3302), .B(n3348), .C(b_data_from[2]), .Y(n126) );
  BUFX8 U214 ( .A(n290), .Y(n3366) );
  OAI21X2 U215 ( .A0(n3366), .A1(n3540), .B0(n304), .Y(n346) );
  OAI21X2 U216 ( .A0(n3366), .A1(n3539), .B0(n302), .Y(n347) );
  OAI21X2 U218 ( .A0(n3366), .A1(n3524), .B0(n297), .Y(n349) );
  OAI21X2 U219 ( .A0(n3366), .A1(n3523), .B0(n300), .Y(n348) );
  OAI21X2 U220 ( .A0(n3366), .A1(n3522), .B0(n306), .Y(n345) );
  OAI21X2 U221 ( .A0(n3366), .A1(n3521), .B0(n308), .Y(n344) );
  NOR2BX2 U222 ( .AN(n280), .B(n278), .Y(n290) );
  INVX4 U223 ( .A(n3367), .Y(n3368) );
  BUFX2 U224 ( .A(n3426), .Y(n3369) );
  BUFX8 U225 ( .A(n178), .Y(n3426) );
  INVX5 U226 ( .A(n3490), .Y(n3370) );
  OAI222X2 U227 ( .A0(n168), .A1(n3550), .B0(n3482), .B1(n169), .C0(n3424), 
        .C1(n3467), .Y(n415) );
  INVX8 U228 ( .A(n3424), .Y(n3490) );
  CLKBUFX6 U229 ( .A(n170), .Y(n3424) );
  NOR3BX4 U230 ( .AN(n3302), .B(b_data_from[2]), .C(n3496), .Y(n135) );
  CLKINVX8 U231 ( .A(n283), .Y(n3372) );
  OAI222X2 U232 ( .A0(n3472), .A1(n282), .B0(n3481), .B1(n3372), .C0(n3207), 
        .C1(n3308), .Y(n351) );
  OAI222X2 U233 ( .A0(n3474), .A1(n282), .B0(n3485), .B1(n3372), .C0(n3308), 
        .C1(n3532), .Y(n355) );
  OAI222X2 U234 ( .A0(n3471), .A1(n282), .B0(n3350), .B1(n3372), .C0(n3308), 
        .C1(n3528), .Y(n352) );
  OAI222X2 U235 ( .A0(n3473), .A1(n282), .B0(n3476), .B1(n3372), .C0(n3308), 
        .C1(n3533), .Y(n353) );
  OAI222X2 U236 ( .A0(n3470), .A1(n282), .B0(n3487), .B1(n3372), .C0(n3308), 
        .C1(n3554), .Y(n354) );
  OAI222X2 U237 ( .A0(n3468), .A1(n282), .B0(n3484), .B1(n3372), .C0(n3308), 
        .C1(n3530), .Y(n357) );
  OAI222X2 U238 ( .A0(n3469), .A1(n282), .B0(n3486), .B1(n3372), .C0(n3308), 
        .C1(n3531), .Y(n356) );
  BUFX8 U239 ( .A(n427), .Y(n3373) );
  NOR2BX2 U240 ( .AN(n3363), .B(n3517), .Y(n427) );
  CLKINVX1 U241 ( .A(n281), .Y(n3374) );
  CLKINVX1 U242 ( .A(n310), .Y(n3375) );
  OR2X2 U243 ( .A(n3475), .B(n273), .Y(n257) );
  INVX8 U244 ( .A(n257), .Y(n3376) );
  OR2X2 U245 ( .A(n228), .B(n3433), .Y(n243) );
  INVX8 U246 ( .A(n243), .Y(n3377) );
  NAND2X4 U247 ( .A(status[2]), .B(n3415), .Y(n154) );
  CLKBUFX6 U248 ( .A(status[1]), .Y(n3434) );
  CLKINVX6 U249 ( .A(n3299), .Y(n3380) );
  OR2X2 U250 ( .A(n120), .B(n3548), .Y(n493) );
  INVX5 U251 ( .A(n493), .Y(n3381) );
  CLKBUFX4 U252 ( .A(n445), .Y(n3382) );
  CLKINVX8 U254 ( .A(n429), .Y(n3383) );
  CLKNAND2X8 U255 ( .A(n3384), .B(n3385), .Y(n176) );
  INVX2 U257 ( .A(n3506), .Y(n3386) );
  CLKINVX1 U258 ( .A(n223), .Y(n3387) );
  NAND2X2 U259 ( .A(n3386), .B(n310), .Y(n3384) );
  NAND2X2 U260 ( .A(n3386), .B(n3387), .Y(n3385) );
  CLKNAND2X2 U261 ( .A(n3477), .B(n3488), .Y(n223) );
  CLKNAND2X8 U262 ( .A(n3388), .B(n3389), .Y(n233) );
  CLKINVX1 U263 ( .A(n3500), .Y(n3391) );
  NAND2X2 U265 ( .A(n3310), .B(n3390), .Y(n3388) );
  NAND2X2 U266 ( .A(n3310), .B(n3391), .Y(n3389) );
  CLKNAND2X4 U267 ( .A(n3392), .B(n3393), .Y(n186) );
  INVX2 U268 ( .A(n423), .Y(n3394) );
  NAND2X1 U270 ( .A(n3321), .B(n3311), .Y(n3392) );
  OAI21X2 U271 ( .A0(n186), .A1(n3515), .B0(n187), .Y(n183) );
  CLKINVX1 U272 ( .A(n226), .Y(n3397) );
  NAND2X5 U273 ( .A(n3517), .B(n3413), .Y(n226) );
  CLKINVX1 U274 ( .A(n285), .Y(n3398) );
  CLKXOR2X4 U275 ( .A(n3467), .B(n3407), .Y(n295) );
  CLKINVX3 U276 ( .A(n3406), .Y(n3469) );
  OR2X1 U277 ( .A(n3467), .B(n282), .Y(n3400) );
  CLKBUFX40 U278 ( .A(n133), .Y(n3409) );
  CLKINVX2 U279 ( .A(addr_register_out[0]), .Y(n3483) );
  NAND3X1 U281 ( .A(n3400), .B(n3401), .C(n3402), .Y(n358) );
  INVX4 U283 ( .A(status[3]), .Y(n3505) );
  INVX4 U284 ( .A(status[2]), .Y(n3555) );
  BUFX2 U286 ( .A(n3458), .Y(n3452) );
  BUFX2 U288 ( .A(n3458), .Y(n3454) );
  BUFX2 U289 ( .A(n3458), .Y(n3453) );
  BUFX2 U291 ( .A(n3459), .Y(n3451) );
  BUFX2 U294 ( .A(n3459), .Y(n3450) );
  BUFX2 U296 ( .A(n3457), .Y(n3455) );
  BUFX2 U298 ( .A(n3457), .Y(n3456) );
  BUFX2 U301 ( .A(n3460), .Y(n3459) );
  BUFX2 U303 ( .A(n3462), .Y(n3460) );
  OR3X2 U306 ( .A(n3511), .B(a_data_from[1]), .C(n3509), .Y(n3403) );
  INVX20 U308 ( .A(n3403), .Y(n241) );
  BUFX2 U310 ( .A(rst_n), .Y(n3462) );
  BUFX20 U312 ( .A(n127), .Y(n3410) );
  CLKINVX4 U314 ( .A(addr_register_out[5]), .Y(n3477) );
  NAND3X3 U315 ( .A(n3516), .B(n3500), .C(n3365), .Y(n273) );
  CLKINVX3 U316 ( .A(n3416), .Y(n3503) );
  BUFX8 U318 ( .A(n3463), .Y(read_en) );
  BUFX12 U320 ( .A(n126), .Y(n3412) );
  XNOR2X4 U321 ( .A(n295), .B(n296), .Y(n3405) );
  CLKINVX4 U322 ( .A(n3292), .Y(n3488) );
  INVX4 U324 ( .A(n299), .Y(n3484) );
  INVX4 U325 ( .A(n301), .Y(n3486) );
  BUFX8 U326 ( .A(n678), .Y(write_en) );
  INVX2 U327 ( .A(n195), .Y(n3514) );
  NAND2BX2 U328 ( .AN(n497), .B(n3427), .Y(read_en_nxt) );
  NAND2X1 U329 ( .A(n165), .B(n3561), .Y(n164) );
  BUFX2 U331 ( .A(n677), .Y(n3463) );
  CLKNAND2X4 U332 ( .A(n226), .B(n252), .Y(n228) );
  CLKINVX1 U333 ( .A(acc[1]), .Y(n3559) );
  CLKINVX1 U336 ( .A(acc[2]), .Y(n3546) );
  AOI22X1 U337 ( .A0(n233), .A1(program_counter[0]), .B0(n3352), .B1(n3408), 
        .Y(n232) );
  CLKNAND2X2 U338 ( .A(n259), .B(n260), .Y(n378) );
  CLKNAND2X2 U339 ( .A(n261), .B(n262), .Y(n376) );
  CLKNAND2X2 U341 ( .A(n254), .B(n255), .Y(n380) );
  AOI22X1 U342 ( .A0(n3316), .A1(n3408), .B0(N203), .B1(n3376), .Y(n255) );
  CLKINVX1 U343 ( .A(b[3]), .Y(n3532) );
  CLKINVX1 U344 ( .A(acc[3]), .Y(n3529) );
  CLKNAND2X2 U347 ( .A(n263), .B(n264), .Y(n374) );
  CLKNAND2X2 U348 ( .A(n271), .B(n272), .Y(n366) );
  CLKNAND2X2 U349 ( .A(n265), .B(n266), .Y(n372) );
  CLKNAND2X2 U350 ( .A(n267), .B(n268), .Y(n370) );
  CLKNAND2X2 U351 ( .A(n269), .B(n270), .Y(n368) );
  CLKINVX1 U352 ( .A(acc[5]), .Y(n3535) );
  INVX2 U353 ( .A(int_addr[1]), .Y(n3557) );
  INVX2 U354 ( .A(int_addr[0]), .Y(n3541) );
  CLKINVX2 U355 ( .A(b[6]), .Y(n3528) );
  CLKINVX1 U356 ( .A(n455), .Y(n3518) );
  CLKINVX2 U357 ( .A(program_counter[13]), .Y(n3549) );
  CLKINVX2 U358 ( .A(b[5]), .Y(n3533) );
  CLKNAND2X4 U359 ( .A(status[3]), .B(n3414), .Y(n252) );
  OR2X1 U360 ( .A(ram_write_done), .B(n312), .Y(n311) );
  CLKINVX2 U361 ( .A(program_counter[10]), .Y(n3547) );
  CLKINVX2 U363 ( .A(b[1]), .Y(n3530) );
  CLKINVX2 U364 ( .A(b[2]), .Y(n3531) );
  INVX4 U367 ( .A(n197), .Y(n3419) );
  NAND2X1 U369 ( .A(n3414), .B(n3555), .Y(n230) );
  CLKINVX3 U370 ( .A(status[0]), .Y(n3551) );
  AO2B2X1 U372 ( .B0(addr_bus[11]), .B1(n3428), .A0(program_counter[11]), 
        .A1N(n3428), .Y(n373) );
  CLKNAND2X2 U373 ( .A(run_phase[0]), .B(n185), .Y(n195) );
  CLKBUFX4 U374 ( .A(status[1]), .Y(n3435) );
  NAND2X1 U378 ( .A(ins_register[5]), .B(n3413), .Y(n491) );
  NAND2X1 U379 ( .A(ins_register[4]), .B(n3413), .Y(n472) );
  CLKINVX2 U381 ( .A(psw[4]), .Y(n3540) );
  CLKINVX2 U382 ( .A(psw[3]), .Y(n3539) );
  BUFX8 U383 ( .A(n3454), .Y(n3441) );
  BUFX8 U384 ( .A(n3452), .Y(n3444) );
  BUFX8 U385 ( .A(n3453), .Y(n3443) );
  BUFX8 U386 ( .A(n3452), .Y(n3445) );
  BUFX8 U389 ( .A(n3451), .Y(n3446) );
  BUFX8 U391 ( .A(n3451), .Y(n3447) );
  BUFX8 U392 ( .A(n3450), .Y(n3448) );
  BUFX8 U393 ( .A(n3454), .Y(n3440) );
  BUFX8 U394 ( .A(n3453), .Y(n3442) );
  CLKBUFX6 U395 ( .A(n3450), .Y(n3449) );
  BUFX8 U396 ( .A(n3456), .Y(n3437) );
  BUFX8 U397 ( .A(n3455), .Y(n3439) );
  BUFX8 U398 ( .A(n3455), .Y(n3438) );
  BUFX8 U399 ( .A(n3456), .Y(n3436) );
  CLKBUFX4 U400 ( .A(n3460), .Y(n3458) );
  CLKINVX2 U401 ( .A(n275), .Y(n3492) );
  CLKBUFX4 U402 ( .A(n3461), .Y(n3457) );
  BUFX2 U403 ( .A(n3462), .Y(n3461) );
  INVX4 U405 ( .A(b_data_from[1]), .Y(n3510) );
  CLKNAND2X8 U407 ( .A(n3379), .B(n3503), .Y(n173) );
  CLKINVX3 U409 ( .A(n3315), .Y(n3478) );
  INVX4 U410 ( .A(decoder_next_status[0]), .Y(n3512) );
  INVX4 U411 ( .A(n3432), .Y(n3502) );
  NOR2X2 U412 ( .A(n3487), .B(n3417), .Y(n485) );
  AOI31X2 U413 ( .A0(a_data_from[2]), .A1(n3493), .A2(n3500), .B0(n3327), .Y(
        n276) );
  NOR2X2 U414 ( .A(n3476), .B(n3418), .Y(n483) );
  NOR2X2 U415 ( .A(n3485), .B(n3416), .Y(n2643) );
  INVX5 U416 ( .A(n226), .Y(n3516) );
  INVX4 U417 ( .A(n312), .Y(n3504) );
  BUFX5 U418 ( .A(n3544), .Y(n3413) );
  NOR2X2 U419 ( .A(n3488), .B(addr_register_out[5]), .Y(n179) );
  CLKNAND2X8 U420 ( .A(n3360), .B(n3334), .Y(n282) );
  CLKAND2X8 U421 ( .A(n280), .B(n281), .Y(n168) );
  NOR2X2 U422 ( .A(n3488), .B(n3477), .Y(n180) );
  NAND2X1 U423 ( .A(n3360), .B(n3358), .Y(n170) );
  INVX4 U424 ( .A(decoder_next_status[1]), .Y(n3498) );
  NAND2X4 U425 ( .A(decoder_next_status[2]), .B(n3543), .Y(n188) );
  CLKBUFX6 U426 ( .A(n3544), .Y(n3414) );
  CLKBUFX6 U427 ( .A(n3544), .Y(n3415) );
  NOR2X6 U428 ( .A(interupt[3]), .B(interupt[2]), .Y(n165) );
  CLKAND2X8 U429 ( .A(n228), .B(n3502), .Y(n244) );
  INVX6 U430 ( .A(n3322), .Y(n3432) );
  INVX5 U431 ( .A(n3320), .Y(n3427) );
  BUFX8 U432 ( .A(n3463), .Y(n3465) );
  INVX6 U433 ( .A(n3320), .Y(n3429) );
  INVX6 U434 ( .A(n3320), .Y(n3428) );
  CLKXOR2X2 U435 ( .A(n293), .B(n294), .Y(n292) );
  INVX4 U436 ( .A(n3407), .Y(n3468) );
  OAI222X2 U437 ( .A0(n168), .A1(n3536), .B0(n3350), .B1(n169), .C0(n3424), 
        .C1(n3471), .Y(n364) );
  CLKINVX3 U438 ( .A(pro_ans[6]), .Y(n3471) );
  CLKINVX3 U439 ( .A(pro_ans[4]), .Y(n3470) );
  CLKINVX3 U440 ( .A(pro_ans[7]), .Y(n3472) );
  CLKINVX3 U441 ( .A(pro_ans[3]), .Y(n3474) );
  CLKINVX3 U442 ( .A(pro_ans[5]), .Y(n3473) );
  CLKXOR2X2 U443 ( .A(pro_ans[5]), .B(pro_ans[4]), .Y(n294) );
  CLKXOR2X2 U444 ( .A(pro_ans[7]), .B(pro_ans[6]), .Y(n293) );
  OAI222X2 U445 ( .A0(n3481), .A1(n3478), .B0(n3424), .B1(n3475), .C0(n3366), 
        .C1(n3548), .Y(n343) );
  NAND2X4 U446 ( .A(n3505), .B(n3555), .Y(n312) );
  INVX8 U447 ( .A(n3314), .Y(n3418) );
  INVX8 U448 ( .A(n3314), .Y(n3417) );
  INVX4 U449 ( .A(n3434), .Y(n3544) );
  NOR3X4 U450 ( .A(n156), .B(n3434), .C(n3358), .Y(n155) );
  INVX8 U451 ( .A(n3314), .Y(n3416) );
  NAND4X4 U452 ( .A(addr_register_out[7]), .B(n3483), .C(addr_register_out[6]), 
        .D(n314), .Y(n310) );
  NOR3X4 U453 ( .A(addr_register_out[1]), .B(addr_register_out[3]), .C(
        addr_register_out[2]), .Y(n314) );
  NAND2X4 U454 ( .A(n3423), .B(n3513), .Y(n281) );
  NOR2X2 U455 ( .A(n3477), .B(n3292), .Y(n178) );
  CLKNAND2X8 U456 ( .A(n3480), .B(n156), .Y(n172) );
  AOI22X1 U457 ( .A0(pro_psw_out[4]), .A1(n3490), .B0(n3315), .B1(n3293), .Y(
        n304) );
  NOR2X4 U458 ( .A(n120), .B(n3540), .Y(pro_psw_in[4]) );
  AOI22X1 U459 ( .A0(pro_psw_out[3]), .A1(n3490), .B0(n3315), .B1(n3294), .Y(
        n302) );
  NOR2X4 U460 ( .A(n120), .B(n3539), .Y(pro_psw_in[3]) );
  AOI22X1 U461 ( .A0(pro_psw_out[1]), .A1(n3490), .B0(n3315), .B1(n299), .Y(
        n297) );
  NOR2X4 U462 ( .A(n120), .B(n3524), .Y(pro_psw_in[1]) );
  AOI22X1 U463 ( .A0(pro_psw_out[2]), .A1(n3490), .B0(n3315), .B1(n301), .Y(
        n300) );
  NOR2X4 U464 ( .A(n120), .B(n3523), .Y(pro_psw_in[2]) );
  AOI22X1 U465 ( .A0(pro_psw_out[5]), .A1(n3490), .B0(n3315), .B1(n3301), .Y(
        n306) );
  NOR2X4 U466 ( .A(n120), .B(n3522), .Y(pro_psw_in[5]) );
  AOI2BB2X2 U467 ( .B0(pro_psw_out[6]), .B1(n3490), .A0N(n3478), .A1N(n3350), 
        .Y(n308) );
  NOR2X4 U468 ( .A(n120), .B(n3521), .Y(pro_psw_in[6]) );
  NAND3X6 U469 ( .A(n3504), .B(n3513), .C(n3516), .Y(n152) );
  OAI22X2 U470 ( .A0(n3495), .A1(n3555), .B0(n196), .B1(n3502), .Y(n408) );
  AOI21X2 U471 ( .A0(n192), .A1(n195), .B0(n3435), .Y(n196) );
  OR2X6 U472 ( .A(decoder_next_status[2]), .B(n154), .Y(n189) );
  OAI211X2 U473 ( .A0(n420), .A1(n3519), .B0(n3499), .C0(n421), .Y(n340) );
  NAND2X1 U474 ( .A(run_phase_init[0]), .B(n3312), .Y(n421) );
  OAI22X2 U475 ( .A0(n3433), .A1(n3414), .B0(n191), .B1(n3502), .Y(n409) );
  NOR3X4 U476 ( .A(n3512), .B(decoder_next_status[1]), .C(n188), .Y(n194) );
  INVX6 U477 ( .A(n198), .Y(n3495) );
  OAI211X2 U478 ( .A0(n188), .A1(n3498), .B0(n199), .C0(n3432), .Y(n198) );
  OAI2BB1X1 U479 ( .A0N(n3520), .A1N(n200), .B0(n201), .Y(n199) );
  OAI21X4 U480 ( .A0(n186), .A1(n3519), .B0(n420), .Y(n384) );
  NAND2X1 U481 ( .A(n3382), .B(n3557), .Y(n330) );
  NAND2X1 U482 ( .A(n3382), .B(n3541), .Y(n329) );
  CLKNAND2X4 U483 ( .A(n201), .B(n3520), .Y(n470) );
  OAI22X2 U484 ( .A0(n3558), .A1(n3561), .B0(interupt[0]), .B1(n166), .Y(n416)
         );
  AOI2B1X2 U485 ( .A1N(interupt[2]), .A0(interupt[3]), .B0(interupt[1]), .Y(
        n166) );
  NOR2BX4 U486 ( .AN(n200), .B(n470), .Y(n193) );
  INVX8 U487 ( .A(n277), .Y(n3526) );
  INVX4 U488 ( .A(n184), .Y(n3499) );
  INVX6 U489 ( .A(n3419), .Y(n3421) );
  OAI22X2 U490 ( .A0(n201), .A1(n3520), .B0(n200), .B1(n470), .Y(n319) );
  NAND4X4 U491 ( .A(n3420), .B(n3416), .C(n153), .D(n3506), .Y(n192) );
  INVX4 U492 ( .A(n154), .Y(n3543) );
  INVX6 U493 ( .A(n3419), .Y(n3420) );
  INVX6 U494 ( .A(n3419), .Y(n3422) );
  NOR2X4 U495 ( .A(n120), .B(n3552), .Y(pro_psw_in[0]) );
  AOI32X2 U496 ( .A0(a_data_from[1]), .A1(n3479), .A2(n3291), .B0(
        a_data_from[2]), .B1(n449), .Y(n446) );
  INVX2 U497 ( .A(addr_register_out[6]), .Y(n3479) );
  INVX2 U498 ( .A(acc[0]), .Y(n3550) );
  AOI222X2 U499 ( .A0(n3426), .A1(acc[0]), .B0(n3423), .B1(psw[0]), .C0(n3361), 
        .C1(b[0]), .Y(n220) );
  OAI222X2 U500 ( .A0(n168), .A1(n3559), .B0(n3484), .B1(n169), .C0(n3424), 
        .C1(n3468), .Y(n359) );
  OAI222X2 U501 ( .A0(n168), .A1(n3546), .B0(n3486), .B1(n169), .C0(n3370), 
        .C1(n3469), .Y(n360) );
  OAI2B2X2 U502 ( .A1N(addr_register_out[7]), .A0(n454), .B0(n3207), .B1(n3330), .Y(n480) );
  OAI221X2 U503 ( .A0(n214), .A1(n172), .B0(n173), .B1(n3469), .C0(n215), .Y(
        n400) );
  AOI222X2 U504 ( .A0(n3426), .A1(acc[2]), .B0(n3423), .B1(psw[2]), .C0(n3362), 
        .C1(b[2]), .Y(n214) );
  AOI22X1 U505 ( .A0(n3342), .A1(n441), .B0(n176), .B1(n216), .Y(n215) );
  OAI221X2 U506 ( .A0(n217), .A1(n172), .B0(n173), .B1(n3468), .C0(n218), .Y(
        n399) );
  AOI222X2 U507 ( .A0(n3369), .A1(acc[1]), .B0(n3423), .B1(psw[1]), .C0(n3362), 
        .C1(b[1]), .Y(n217) );
  AOI22X1 U508 ( .A0(n3342), .A1(n434), .B0(n176), .B1(n219), .Y(n218) );
  OAI21X2 U509 ( .A0(program_counter[6]), .A1(n3509), .B0(n450), .Y(n449) );
  OAI21X2 U510 ( .A0(n3291), .A1(n3528), .B0(a_data_from[1]), .Y(n450) );
  AOI222X2 U511 ( .A0(n441), .A1(n3411), .B0(b[2]), .B1(n3399), .C0(
        addr_register_out[2]), .C1(n3409), .Y(n159) );
  AOI22X1 U512 ( .A0(rom_data_register[0]), .A1(n3383), .B0(n430), .B1(n3408), 
        .Y(n428) );
  AOI22X1 U513 ( .A0(rom_data_register[2]), .A1(n3383), .B0(n430), .B1(n3406), 
        .Y(n432) );
  AOI22X1 U514 ( .A0(rom_data_register[1]), .A1(n3383), .B0(n430), .B1(n3407), 
        .Y(n431) );
  AOI22X2 U515 ( .A0(program_counter[7]), .A1(n3410), .B0(program_counter[15]), 
        .B1(n3305), .Y(n161) );
  OAI2BB1X1 U516 ( .A0N(program_counter_plus1[0]), .A1N(n3328), .B0(n232), .Y(
        n396) );
  OAI2BB1X1 U517 ( .A0N(program_counter_plus1[1]), .A1N(n3431), .B0(n234), .Y(
        n395) );
  AOI22X1 U518 ( .A0(n233), .A1(program_counter[1]), .B0(n3352), .B1(n3407), 
        .Y(n234) );
  OAI2BB1X1 U519 ( .A0N(program_counter_plus1[2]), .A1N(n3328), .B0(n235), .Y(
        n394) );
  AOI22X1 U520 ( .A0(n233), .A1(program_counter[2]), .B0(n3352), .B1(n3406), 
        .Y(n235) );
  AOI22X2 U521 ( .A0(program_counter[8]), .A1(n3305), .B0(b[0]), .B1(n3399), 
        .Y(n149) );
  AOI22X2 U522 ( .A0(addr_register_out[0]), .A1(n3409), .B0(n3337), .B1(n3411), 
        .Y(n148) );
  AOI22X1 U523 ( .A0(program_counter[10]), .A1(n3353), .B0(
        program_counter_plus1[10]), .B1(n3431), .Y(n261) );
  AOI22X1 U524 ( .A0(n3316), .A1(n3406), .B0(N205), .B1(n3376), .Y(n262) );
  AOI22X1 U525 ( .A0(program_counter[9]), .A1(n3353), .B0(
        program_counter_plus1[9]), .B1(n3327), .Y(n259) );
  AOI22X1 U526 ( .A0(n3316), .A1(n3407), .B0(N204), .B1(n3376), .Y(n260) );
  AOI22X1 U527 ( .A0(program_counter[8]), .A1(n3353), .B0(
        program_counter_plus1[8]), .B1(n3431), .Y(n254) );
  AOI222X2 U528 ( .A0(n455), .A1(n3411), .B0(b[6]), .B1(n3399), .C0(
        addr_register_out[6]), .C1(n3409), .Y(n487) );
  AOI22X2 U529 ( .A0(addr_register_out[3]), .A1(n3409), .B0(n439), .B1(n3411), 
        .Y(n140) );
  AOI22X2 U530 ( .A0(addr_register_out[5]), .A1(n3409), .B0(n436), .B1(n3411), 
        .Y(n121) );
  AOI22X2 U531 ( .A0(n3292), .A1(n3409), .B0(n448), .B1(n3411), .Y(n136) );
  AO22X1 U532 ( .A0(program_counter[11]), .A1(n3492), .B0(n439), .B1(n3379), 
        .Y(n476) );
  OAI222X2 U533 ( .A0(n168), .A1(n3538), .B0(n3487), .B1(n169), .C0(n3370), 
        .C1(n3470), .Y(n362) );
  INVX2 U534 ( .A(acc[4]), .Y(n3538) );
  OAI222X2 U535 ( .A0(n168), .A1(n3537), .B0(n3481), .B1(n169), .C0(n3370), 
        .C1(n3472), .Y(n414) );
  INVX2 U536 ( .A(acc[7]), .Y(n3537) );
  OAI222X2 U537 ( .A0(n168), .A1(n3535), .B0(n3476), .B1(n169), .C0(n3370), 
        .C1(n3473), .Y(n363) );
  OAI222X2 U538 ( .A0(n168), .A1(n3529), .B0(n3485), .B1(n169), .C0(n3370), 
        .C1(n3474), .Y(n361) );
  OAI221X2 U539 ( .A0(n211), .A1(n172), .B0(n173), .B1(n3474), .C0(n212), .Y(
        n401) );
  AOI222X2 U540 ( .A0(n3426), .A1(acc[3]), .B0(n3423), .B1(psw[3]), .C0(n3361), 
        .C1(b[3]), .Y(n211) );
  AOI22X1 U541 ( .A0(n3342), .A1(n439), .B0(n176), .B1(n213), .Y(n212) );
  OAI221X2 U542 ( .A0(n202), .A1(n172), .B0(n173), .B1(n3471), .C0(n203), .Y(
        n404) );
  AOI222X2 U543 ( .A0(acc[6]), .A1(n3426), .B0(n3364), .B1(psw[6]), .C0(n3361), 
        .C1(b[6]), .Y(n202) );
  AOI22X1 U544 ( .A0(n455), .A1(n3342), .B0(n176), .B1(n204), .Y(n203) );
  OAI221X2 U545 ( .A0(n205), .A1(n172), .B0(n173), .B1(n3473), .C0(n206), .Y(
        n403) );
  AOI222X2 U546 ( .A0(n3369), .A1(acc[5]), .B0(n3364), .B1(psw[5]), .C0(n3425), 
        .C1(b[5]), .Y(n205) );
  AOI22X1 U547 ( .A0(n3342), .A1(n436), .B0(n176), .B1(n207), .Y(n206) );
  OAI221X2 U548 ( .A0(n208), .A1(n172), .B0(n173), .B1(n3470), .C0(n209), .Y(
        n402) );
  AOI222X2 U549 ( .A0(n3426), .A1(acc[4]), .B0(n3423), .B1(psw[4]), .C0(n3362), 
        .C1(b[4]), .Y(n208) );
  AOI22X1 U550 ( .A0(n3342), .A1(n448), .B0(n176), .B1(n210), .Y(n209) );
  OAI221X2 U551 ( .A0(n171), .A1(n172), .B0(n3472), .B1(n173), .C0(n174), .Y(
        n413) );
  AOI222X2 U552 ( .A0(n3426), .A1(acc[7]), .B0(n3423), .B1(psw[7]), .C0(n3361), 
        .C1(n3345), .Y(n171) );
  AOI22X1 U553 ( .A0(n3342), .A1(n433), .B0(n176), .B1(n177), .Y(n174) );
  AOI22X1 U554 ( .A0(rom_data_register[6]), .A1(n3383), .B0(n430), .B1(
        pro_ans[6]), .Y(n440) );
  AOI22X1 U555 ( .A0(rom_data_register[4]), .A1(n3383), .B0(n430), .B1(
        pro_ans[4]), .Y(n437) );
  AOI22X1 U556 ( .A0(rom_data_register[7]), .A1(n3383), .B0(n430), .B1(
        pro_ans[7]), .Y(n442) );
  AOI22X1 U557 ( .A0(rom_data_register[3]), .A1(n3383), .B0(n430), .B1(
        pro_ans[3]), .Y(n435) );
  OAI2BB1X1 U558 ( .A0N(program_counter_plus1[6]), .A1N(n3328), .B0(n239), .Y(
        n390) );
  AOI22X1 U559 ( .A0(program_counter[6]), .A1(n233), .B0(n3352), .B1(
        pro_ans[6]), .Y(n239) );
  OAI2BB1X1 U560 ( .A0N(program_counter_plus1[4]), .A1N(n3328), .B0(n237), .Y(
        n392) );
  AOI22X1 U561 ( .A0(n233), .A1(program_counter[4]), .B0(n3352), .B1(
        pro_ans[4]), .Y(n237) );
  OAI2BB1X1 U562 ( .A0N(program_counter_plus1[3]), .A1N(n3431), .B0(n236), .Y(
        n393) );
  AOI22X1 U563 ( .A0(n233), .A1(program_counter[3]), .B0(n3352), .B1(
        pro_ans[3]), .Y(n236) );
  OAI2BB1X1 U564 ( .A0N(program_counter_plus1[7]), .A1N(n3431), .B0(n240), .Y(
        n389) );
  AOI22X1 U565 ( .A0(n233), .A1(program_counter[7]), .B0(n3352), .B1(
        pro_ans[7]), .Y(n240) );
  AOI22X1 U566 ( .A0(program_counter[15]), .A1(n3353), .B0(
        program_counter_plus1[15]), .B1(n3328), .Y(n271) );
  AOI22X1 U567 ( .A0(n3316), .A1(pro_ans[7]), .B0(N210), .B1(n3376), .Y(n272)
         );
  AOI22X1 U568 ( .A0(program_counter[11]), .A1(n3353), .B0(
        program_counter_plus1[11]), .B1(n3327), .Y(n263) );
  AOI22X1 U569 ( .A0(n3316), .A1(pro_ans[3]), .B0(N206), .B1(n3376), .Y(n264)
         );
  AOI22X1 U570 ( .A0(program_counter[12]), .A1(n3353), .B0(
        program_counter_plus1[12]), .B1(n3431), .Y(n265) );
  AOI22X1 U571 ( .A0(n3316), .A1(pro_ans[4]), .B0(N207), .B1(n3376), .Y(n266)
         );
  AOI22X1 U572 ( .A0(program_counter[13]), .A1(n3353), .B0(
        program_counter_plus1[13]), .B1(n3328), .Y(n267) );
  AOI22X1 U573 ( .A0(n3316), .A1(pro_ans[5]), .B0(N208), .B1(n3376), .Y(n268)
         );
  AOI22X1 U574 ( .A0(program_counter[14]), .A1(n3353), .B0(
        program_counter_plus1[14]), .B1(n3431), .Y(n269) );
  AOI22X1 U575 ( .A0(n3316), .A1(pro_ans[6]), .B0(N209), .B1(n3376), .Y(n270)
         );
  AOI22X1 U576 ( .A0(n3491), .A1(acc[1]), .B0(n3380), .B1(n434), .Y(n462) );
  OAI2B2X2 U577 ( .A1N(addr_register_out[1]), .A0(n454), .B0(n3530), .B1(n3330), .Y(n465) );
  AOI22X1 U578 ( .A0(acc[2]), .A1(n3491), .B0(n441), .B1(n3380), .Y(n459) );
  INVX5 U579 ( .A(n466), .Y(n3482) );
  AOI22X1 U580 ( .A0(rom_data_register[5]), .A1(n3383), .B0(n430), .B1(
        pro_ans[5]), .Y(n438) );
  OAI2BB1X1 U581 ( .A0N(program_counter_plus1[5]), .A1N(n3431), .B0(n238), .Y(
        n391) );
  AOI22X1 U582 ( .A0(n233), .A1(program_counter[5]), .B0(n3352), .B1(
        pro_ans[5]), .Y(n238) );
  INVX2 U583 ( .A(program_counter[14]), .Y(n3534) );
  INVX2 U584 ( .A(program_counter[15]), .Y(n3560) );
  INVX2 U585 ( .A(acc[6]), .Y(n3536) );
  INVX2 U586 ( .A(int_addr[5]), .Y(n3542) );
  INVX2 U587 ( .A(int_addr[3]), .Y(n3558) );
  INVX2 U588 ( .A(int_addr[4]), .Y(n3545) );
  NOR2X2 U589 ( .A(n226), .B(status[2]), .Y(n224) );
  INVX2 U590 ( .A(program_counter[12]), .Y(n3556) );
  INVX2 U591 ( .A(b[4]), .Y(n3554) );
  OAI2BB2X2 U592 ( .B0(n3350), .B1(n3420), .A0N(data_out[6]), .A1N(n3422), .Y(
        n328) );
  OAI2BB2X2 U593 ( .B0(n3484), .B1(n3421), .A0N(data_out[1]), .A1N(n3420), .Y(
        n323) );
  OAI2BB2X2 U594 ( .B0(n3486), .B1(n3422), .A0N(data_out[2]), .A1N(n3421), .Y(
        n324) );
  OAI2BB2X2 U595 ( .B0(n3487), .B1(n3421), .A0N(data_out[4]), .A1N(n3420), .Y(
        n326) );
  OAI2BB2X2 U596 ( .B0(n3476), .B1(n3422), .A0N(data_out[5]), .A1N(n3421), .Y(
        n327) );
  OAI2BB2X2 U597 ( .B0(n3485), .B1(n3420), .A0N(data_out[3]), .A1N(n3422), .Y(
        n325) );
  OAI2BB2X2 U598 ( .B0(n3481), .B1(n3422), .A0N(data_out[7]), .A1N(n3421), .Y(
        n321) );
  OAI2BB2X2 U599 ( .B0(n3482), .B1(n3420), .A0N(data_out[0]), .A1N(n3422), .Y(
        n322) );
  INVX4 U600 ( .A(status[6]), .Y(n3527) );
  NAND3X6 U601 ( .A(n3504), .B(n3415), .C(status[4]), .Y(n153) );
  OAI2BB1X1 U602 ( .A0N(n864), .A1N(n3432), .B0(n247), .Y(n385) );
  AOI22X1 U603 ( .A0(n3377), .A1(program_counter[3]), .B0(n244), .B1(
        addr_register_out[3]), .Y(n247) );
  OAI2BB1X1 U604 ( .A0N(addr_bus[7]), .A1N(n3433), .B0(n251), .Y(n381) );
  AOI22X1 U605 ( .A0(n3377), .A1(program_counter[7]), .B0(n244), .B1(
        addr_register_out[7]), .Y(n251) );
  OAI2BB1X1 U606 ( .A0N(n1345), .A1N(n3433), .B0(n249), .Y(n383) );
  AOI22X1 U607 ( .A0(n3377), .A1(program_counter[5]), .B0(n244), .B1(
        addr_register_out[5]), .Y(n249) );
  OAI2BB1X1 U608 ( .A0N(n3562), .A1N(n3432), .B0(n245), .Y(n387) );
  AOI22X1 U609 ( .A0(n3377), .A1(program_counter[1]), .B0(n244), .B1(
        addr_register_out[1]), .Y(n245) );
  OAI2BB1X1 U610 ( .A0N(addr_bus[0]), .A1N(n3433), .B0(n242), .Y(n388) );
  AOI22X1 U611 ( .A0(n3377), .A1(program_counter[0]), .B0(n244), .B1(
        addr_register_out[0]), .Y(n242) );
  OAI2BB1X1 U612 ( .A0N(addr_bus[2]), .A1N(n3433), .B0(n246), .Y(n386) );
  AOI22X1 U613 ( .A0(n3377), .A1(program_counter[2]), .B0(n244), .B1(
        addr_register_out[2]), .Y(n246) );
  AOI2BB2X2 U614 ( .B0(n3325), .B1(n384), .A0N(n3499), .A1N(n3325), .Y(n419)
         );
  OAI2BB1X1 U615 ( .A0N(addr_bus[6]), .A1N(n3432), .B0(n250), .Y(n382) );
  AOI22X1 U616 ( .A0(n3377), .A1(program_counter[6]), .B0(n244), .B1(
        addr_register_out[6]), .Y(n250) );
  INVX2 U617 ( .A(program_counter[8]), .Y(n3507) );
  INVX2 U618 ( .A(program_counter[9]), .Y(n3508) );
  INVX2 U619 ( .A(psw[7]), .Y(n3548) );
  INVX2 U620 ( .A(b[0]), .Y(n3553) );
  INVX2 U621 ( .A(n248), .Y(n3489) );
  AOI222X2 U622 ( .A0(n3292), .A1(n244), .B0(program_counter[4]), .B1(n3377), 
        .C0(n3432), .C1(n3395), .Y(n248) );
  NOR2X4 U623 ( .A(n186), .B(n3351), .Y(n184) );
  NOR2X6 U624 ( .A(n3421), .B(ram_write_done), .Y(n496) );
  AOI22X1 U625 ( .A0(run_phase[3]), .A1(n183), .B0(n184), .B1(n185), .Y(n182)
         );
  NOR2X4 U626 ( .A(n3414), .B(interupt_en), .Y(n277) );
  NOR2X4 U627 ( .A(n153), .B(rom_read_done), .Y(n492) );
  NOR2X4 U628 ( .A(n3526), .B(get_ins_done), .Y(n498) );
  NOR2X4 U629 ( .A(n3506), .B(ram_read_done), .Y(n497) );
  INVX2 U630 ( .A(rom_read_done), .Y(n3525) );
  OAI2BB1X1 U631 ( .A0N(n426), .A1N(n3516), .B0(n252), .Y(n425) );
  AOI21X2 U632 ( .A0(ram_write_done), .A1(status[6]), .B0(status[5]), .Y(n426)
         );
  NAND2BX2 U633 ( .AN(n152), .B(status[6]), .Y(n197) );
  CLKXOR2X2 U634 ( .A(n3561), .B(interupt_en), .Y(n331) );
  AO2B2X2 U635 ( .B0(n227), .B1(n228), .A0(memory_select), .A1N(n227), .Y(n397) );
  AOI21X2 U636 ( .A0(status[6]), .A1(n3513), .B0(status[4]), .Y(n229) );
  NOR2X6 U637 ( .A(nop_cnt[2]), .B(nop_cnt[1]), .Y(n200) );
  OAI2BB2X2 U638 ( .B0(n3429), .B1(n3547), .A0N(addr_bus[10]), .A1N(n3429), 
        .Y(n375) );
  OAI2BB2X2 U639 ( .B0(n3427), .B1(n3534), .A0N(addr_bus[14]), .A1N(n3428), 
        .Y(n367) );
  OAI2BB2X2 U640 ( .B0(n3427), .B1(n3560), .A0N(addr_bus[15]), .A1N(n3429), 
        .Y(n365) );
  OAI2BB2X2 U641 ( .B0(n3427), .B1(n3556), .A0N(addr_bus[12]), .A1N(n3428), 
        .Y(n371) );
  OAI2BB2X2 U642 ( .B0(n3427), .B1(n3549), .A0N(addr_bus[13]), .A1N(n3429), 
        .Y(n369) );
  OAI2BB2X2 U643 ( .B0(n3429), .B1(n3507), .A0N(addr_bus[8]), .A1N(n3429), .Y(
        n379) );
  OAI2BB2X2 U644 ( .B0(n3428), .B1(n3508), .A0N(addr_bus[9]), .A1N(n3428), .Y(
        n377) );
  NOR2BX4 U645 ( .AN(ram_read_done), .B(n3505), .Y(n424) );
  XNOR2X2 U646 ( .A(nop_cnt[1]), .B(n470), .Y(n320) );
  CLKINVX2 U647 ( .A(n3340), .Y(n3515) );
  NAND2X1 U648 ( .A(n3296), .B(n3413), .Y(n481) );
  INVX4 U649 ( .A(nop_cnt[0]), .Y(n3520) );
  INVX2 U650 ( .A(psw[1]), .Y(n3524) );
  INVX2 U651 ( .A(psw[2]), .Y(n3523) );
  INVX2 U652 ( .A(psw[5]), .Y(n3522) );
  INVX2 U653 ( .A(psw[6]), .Y(n3521) );
  NAND2BX2 U654 ( .AN(n193), .B(n471), .Y(n318) );
  OAI21X2 U655 ( .A0(nop_cnt[1]), .A1(n470), .B0(nop_cnt[2]), .Y(n471) );
  NAND2X5 U656 ( .A(interupt_en), .B(n3435), .Y(n473) );
  NAND2X1 U657 ( .A(n3349), .B(n3413), .Y(n490) );
  INVX2 U658 ( .A(psw[0]), .Y(n3552) );
  CLKBUFX6 U659 ( .A(pro_ans[2]), .Y(n3406) );
  AOI221X4 U660 ( .A0(acc[4]), .A1(n3412), .B0(program_counter[4]), .B1(n3410), 
        .C0(n139), .Y(n138) );
  NOR4X4 U661 ( .A(n3496), .B(n3510), .C(b_data_from[2]), .D(b_data_from[3]), 
        .Y(n133) );
  AOI22X2 U662 ( .A0(rom_data_register[6]), .A1(n130), .B0(acc[6]), .B1(n3412), 
        .Y(n486) );
endmodule


module Mcu ( reset, clk, tx_clk, cnt_0, cnt_1, inti0, inti1, rxd, txd );
  input reset, clk, tx_clk, cnt_0, cnt_1, inti0, inti1, rxd;
  output txd;
  wire   fifo_w_en, to0, to1, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N129, N130, N131, N132, N136, N137,
         N138, N139, N140, N149, N152, N153, N157, N162, N173, N176, N178,
         N179, N180, N213, N217, N218, N219, read_en, memory_select, N479,
         N480, N481, N482, N483, N484, N485, N486, \data_from_cpu[7] ,
         \data_from_cpu[6] , \data_from_cpu[5] , \data_from_cpu[4] ,
         \data_from_cpu[3] , \data_from_cpu[2] , \data_from_cpu[1] ,
         \data_from_cpu[0] , n321, n322, n323, n324, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n368, n369, n370, n371, n372, n419,
         n421, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n1316, n1317, n1318, n1319, n1320,
         n1321, n1322, n1363, n1401, n1402, n1431, n1432, n1433, n1434, n1435,
         n1436, n1453, n1454, n2168, n2229, n2244, n2275, n2276, n2279, n2284,
         n2308, n2309, n2310, n2311, n2312, n2313, n2314, n2315, n2434, n2574,
         n2575, n3130, n4643, n4644, n4817, n5487, n5520, n5554, n6368, n6461,
         n6462, n6463, n6464, n6873, n6874, n7366, n7370, n7377, n7379, n7385,
         n7399, n7400, n7401, n7409, n7430, n7432, n7440, n7441, n7443, n7444,
         n7445, n7446, n7447, n7448, n7451, n7463, n7465, n7466, n7467, n7468,
         n7469, n7470, n7471, n7472, n7691, n8306, n8336, n8337, n8622, n8626,
         n8627, n8630, n8631, n8632, n8633, n8634, n8635, n8636, n8637, n8638,
         n8639, n8640, n8641, n8642, n8643, n8644, n8645, n8646, n8647, n8648,
         n8649, n8650, n8674, n8675, n8676, n8677, n8865, n8867, n8868, n8869,
         n8870, n8871, n8872, n8873, n8874, n8875, n8876, n8877, n8878, n8880,
         n8881, n8882, n8883, n8884, n8885, n8886, n8887, n8890, n8891, n8892,
         n8893, n8894, n8896, n8897, n8899, n8902, n8903, n8904, n8905, n8906,
         n8907, n8908, n8909, n8910, n8911, n8912, n8913, n8914, n8915, n8916,
         n8917, n8918, n8919, n8920, n8921, n8922, n8923, n8924, n8925, n8926,
         n8927, n8928, n8929, n8930, n8931, n8932, n8933, n8934, n8935, n8936,
         n8937, n8938, n8939, n8940, n8941, n8942, n8943, n8945, n8946, n8947,
         n8948, n8949, n8950, n8951, n8952, n8953, n8954, n8955, n8956, n8957,
         n8958, n8959, n8960, n8961, n8962, n8963, n8964, n8965, n8966, n8967,
         n8968, n8969, n8970, n8971, n8972, n8973, n8974, n8975, n8976, n8977,
         n8978, n8979, n8980, n8981, n8982, n8983, n8984, n8985, n8986, n8987,
         n8988, n8989, n8990, n8991, n8992, n8993, n8994, n8995, n8996, n8997,
         n8998, n8999, n9000, n9001, n9002, n9003, n9004, n9005, n9006, n9007,
         n9008, n9009, n9010, n9011, n9012, n9013, n9014, n9015, n9016, n9017,
         n9018, n9019, n9020, n9021, n9022, n9023, n9024, n9025, n9026, n9027,
         n9028, n9029, n9030, n9031, n9032, n9033, n9034, n9035, n9036, n9037,
         n9038, n9039, n9040, n9041, n9042, n9043, n9044, n9045, n9046, n9047,
         n9048, n9049, n9050, n9052, n9053, n9054, n9055, n9056, n9057, n9058,
         n9059, n9060, n9061, n9062, n9063, n9064, n9066, n9067, n9068, n9069,
         n9070, n9071, n9072, n9073, n9074, n9075, n9076, n9077, n9078, n9079,
         n9080, n9081, n9082, n9083, n9084, n9085, n9086, n9087, n9088, n9089,
         n9090, n9091, n9092, n9093, n9094, n9096, n9098, n9099, n9101, n9103,
         n9105, n9108, n9111, n9112, n9113, n9114, n9115, n9116, n9117, n9118,
         n9119, n9120, n9121, n9122, n9123, n9124, n9127, n9129, n9131, n9135,
         n9136, n9137, n9138, n9139, n9140, n9141, n9142, n9143, n9144, n9145,
         n9146, n9147, n9148, n9149, n9150, n9151, n9152, n9153, n9154, n9155,
         n9156, n9157, n9158, n9159, n9160, n9161, n9162, n9163, n9164, n9165,
         n9166, n9167, n9168, n9169, n9170, n9171, n9172, n9173, n9174, n9175,
         n9176, n9177, n9178, n9179, n9180, n9181, n9182, n9183, n9184, n9185,
         n9186, n9187, n9188, n9189, n9190, n9191, n9192, n9193, n9194, n9195,
         n9196, n9197, n9198, n9199, n9200, n9201, n9202, n9203, n9204, n9205,
         n9206, n9207, n9208, n9209, n9210, n9211, n9212, n9213, n9214, n9215,
         n9216, n9217, n9218, n9219, n9220, n9221, n9222, n9223, n9224, n9225,
         n9226, n9227, n9228, n9229, n9230, n9231, n9232, n9233, n9234, n9235,
         n9236, n9237, n9238, n9239, n9240, n9241, n9242, n9243, n9244, n9245,
         n9246, n9247, n9248, n9249, n9250, n9251, n9252, n9253, n9254, n9255,
         n9256, n9375, n9376, n9377, n9378, n9379, n9380, n9381, n9382, n9383,
         n9384, n9385, n9386, n9387, n9388, n9389, n9390, n9391, n9392, n9393,
         n9394, n9395, n9396, n9397, n9398, n9399, n9400, n9401, n9402, n9403,
         n9404, n9405, n9406, n9407, n9408, n9409, n9410, n9411, n9412, n9413,
         n9414, n9415, n9416, n9417, n9418, n9419, n9420, n9421, n9422, n9423,
         n9424, n9425, n9426, n9427, n9428, n9429, n9430, n9431, n9432, n9433,
         n9434, n9435, n9436, n9437, n9438, n9439, n9440, n9441, n9442, n9443,
         n9444, n9445, n9446, n9447, n9448, n9449, n9450, n9451, n9452, n9453,
         n9454, n9455, n9456, n9457, n9458, n9459, n9460, n9461, n9462, n9463,
         n9464, n9465, n9466, n9467, n9468, n9469, n9470, n9471, n9472, n9473,
         n9474, n9475, n9476, n9477, n9478, n9479, n9480, n9481, n9482, n9483,
         n9484, n9485, n9486, n9487, n9488, n9489, n9490, n9491, n9492, n9493,
         n9494, n9495, n9496, n9497, n9498, n9499, n9500, n9501, n9502, n9503,
         n9504, n9505, n9506, n9507, n9508, n9509, n9510, n9511, n9512, n9513,
         n9514, n9515, n9516, n9517, n9518, n9519, n9520, n9521, n9522, n9523,
         n9524, n9525, n9526, n9527, n9528, n9529, n9530, n9531, n9532, n9533,
         n9534, n9535, n9536, n9537;
  wire   [7:0] tcon;
  wire   [7:0] r_data;
  wire   [7:0] th0_out;
  wire   [7:0] tl0_out;
  wire   [7:0] th1_out;
  wire   [7:0] tl1_out;
  wire   [7:0] p1;
  wire   [7:0] p2;
  wire   [7:0] ie;
  wire   [7:0] tcon_reg;
  wire   [15:0] addr_bus;
  wire   [7:0] tcon_nxt;
  wire   [4:0] interupt;
  tri   [7:0] data_bus;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  AO22X4 U3 ( .A0(n9471), .A1(\data_from_cpu[6] ), .B0(n9467), .B1(data_bus[6]), .Y(\data_from_cpu[6] ) );
  AO22X4 U4 ( .A0(n9470), .A1(\data_from_cpu[5] ), .B0(data_bus[5]), .B1(n9468), .Y(\data_from_cpu[5] ) );
  AO22X4 U5 ( .A0(n9471), .A1(\data_from_cpu[4] ), .B0(data_bus[4]), .B1(n9468), .Y(\data_from_cpu[4] ) );
  AO22X4 U6 ( .A0(n9471), .A1(\data_from_cpu[3] ), .B0(data_bus[3]), .B1(n9468), .Y(\data_from_cpu[3] ) );
  AO22X4 U7 ( .A0(n9470), .A1(\data_from_cpu[2] ), .B0(data_bus[2]), .B1(n9467), .Y(\data_from_cpu[2] ) );
  AO22X4 U8 ( .A0(n9472), .A1(\data_from_cpu[1] ), .B0(data_bus[1]), .B1(n9468), .Y(\data_from_cpu[1] ) );
  AO22X4 U9 ( .A0(n9471), .A1(\data_from_cpu[0] ), .B0(data_bus[0]), .B1(n9468), .Y(\data_from_cpu[0] ) );
  AO22X4 U10 ( .A0(n9471), .A1(\data_from_cpu[7] ), .B0(data_bus[7]), .B1(
        n9467), .Y(\data_from_cpu[7] ) );
  AND3X8 U5673 ( .A(n9388), .B(n9443), .C(n9442), .Y(n8869) );
  OAI31X4 U5729 ( .A0(n8929), .A1(n9481), .A2(n9496), .B0(n9460), .Y(n8867) );
  OAI32X4 U5735 ( .A0(n8932), .A1(n9507), .A2(n8933), .B0(n9200), .B1(n8934), 
        .Y(n371) );
  OAI32X4 U5739 ( .A0(n8933), .A1(n8627), .A2(n9507), .B0(n9508), .B1(n9528), 
        .Y(n369) );
  OAI31X4 U5934 ( .A0(n9040), .A1(n9041), .A2(n9042), .B0(n9460), .Y(n9039) );
  OAI31X4 U5964 ( .A0(n9527), .A1(to1), .A2(n9467), .B0(n8877), .Y(N486) );
  OAI31X4 U5965 ( .A0(n9526), .A1(to0), .A2(n9467), .B0(n8876), .Y(N485) );
  OAI31X4 U5976 ( .A0(n9056), .A1(n9483), .A2(n9486), .B0(n9460), .Y(n8886) );
  OAI31X4 U5983 ( .A0(n9052), .A1(n9470), .A2(n9042), .B0(n9461), .Y(n8896) );
  OAI31X4 U5990 ( .A0(n8929), .A1(n9481), .A2(n9480), .B0(n9460), .Y(n8890) );
  OAI31X4 U5994 ( .A0(n9032), .A1(n9488), .A2(n9380), .B0(n9460), .Y(n8899) );
  OAI31X4 U6001 ( .A0(n8929), .A1(n9480), .A2(n9496), .B0(n9460), .Y(n8897) );
  NAND2BX8 U6014 ( .AN(n9062), .B(n9182), .Y(n9061) );
  AND4X8 U6041 ( .A(n9388), .B(n9443), .C(n9441), .D(n9467), .Y(n9069) );
  CLKNAND2X12 U6045 ( .A(\data_from_cpu[6] ), .B(n9467), .Y(n8876) );
  CLKNAND2X12 U6047 ( .A(\data_from_cpu[5] ), .B(n9466), .Y(n8874) );
  CLKNAND2X12 U6049 ( .A(\data_from_cpu[4] ), .B(n9466), .Y(n8871) );
  CLKNAND2X12 U6051 ( .A(\data_from_cpu[3] ), .B(n9466), .Y(n8872) );
  CLKNAND2X12 U6053 ( .A(\data_from_cpu[2] ), .B(n9466), .Y(n8873) );
  CLKNAND2X12 U6055 ( .A(\data_from_cpu[1] ), .B(n9466), .Y(n8878) );
  AND4X8 U6057 ( .A(n9388), .B(n9441), .C(n9442), .D(n9467), .Y(n9071) );
  NOR4BBX4 U6058 ( .AN(n9406), .BN(n9072), .C(n9031), .D(n9483), .Y(n8880) );
  CLKNAND2X12 U6061 ( .A(\data_from_cpu[0] ), .B(n9466), .Y(n8875) );
  AND4X8 U6063 ( .A(n9406), .B(n9382), .C(n9057), .D(n9449), .Y(n9055) );
  NOR3BX4 U6079 ( .AN(n9424), .B(n9489), .C(n9042), .Y(n9058) );
  AOI211X4 U6086 ( .A0(addr_bus[4]), .A1(n9395), .B0(n9053), .C0(n9082), .Y(
        n9081) );
  NAND3X8 U6095 ( .A(addr_bus[3]), .B(addr_bus[2]), .C(n9084), .Y(n8915) );
  NOR2X8 U6104 ( .A(addr_bus[1]), .B(addr_bus[2]), .Y(n9077) );
  CLKNAND2X12 U6105 ( .A(\data_from_cpu[7] ), .B(n9466), .Y(n8877) );
  Uart_FIFO_DEPTH16_FIFO_WIDTH8_ADDR_WIDTH4 Uart_ins ( .fifo_w_clk(clk), 
        .tx_clk(tx_clk), .rst_n(n9181), .fifo_w_en(n9466), .fifo_w_data({n7466, 
        n7467, n9185, n9187, n9183, n9184, n7465, n9186}), .rxd_int_in(n9195), 
        .rxd(rxd), .is_full(tcon_nxt[5]), .rxd_int(tcon_nxt[4]), .r_data(
        r_data), .txd(txd) );
  Timer_0 Timer_ins_0 ( .clk(clk), .rst_n(n9182), .cnt_sig(cnt_0), .t_s(n9247), 
        .tmod({n9203, n9233, n5520}), .th({n9189, n9222, n9212, n9242, n9204, 
        n9238, n9240, n9220}), .tl({n9214, n9196, n9199, n7432, n7409, n9219, 
        n9131, n9226}), .th_nxt(th0_out), .tl_nxt(tl0_out), .t_o(to0) );
  Timer_1 Timer_ins_1 ( .clk(clk), .rst_n(n9180), .cnt_sig(cnt_1), .t_s(n9251), 
        .tmod({n2279, n2244, n9399}), .th({n9210, n9234, n9216, n9244, n9224, 
        n9248, n9252, n9129}), .tl({n9229, n9231, n9236, n9127, n9227, n9208, 
        n9198, n9218}), .th_nxt(th1_out), .tl_nxt(tl1_out), .t_o(to1) );
  IntControl IntControl_ins ( .clk(clk), .rst_n(n9256), .IE({n9206, ie[6:0]}), 
        .TCON({n9251, n9247, tcon[5], n9195, tcon[3:0]}), .SCON({n9191, n7430}), .interupt(interupt) );
  CPU cpu ( .clk(clk), .rst_n(n9181), .data_bus(data_bus), .addr_bus({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, addr_bus[7:0]}), 
        .interupt(interupt), .read_en(read_en), .write_en(fifo_w_en), 
        .memory_select(memory_select) );
  TLATX1 \tcon_reg_reg[0]  ( .G(n9455), .D(N479), .Q(tcon_reg[0]) );
  TLATX1 \tcon_reg_reg[2]  ( .G(n9455), .D(N481), .Q(tcon_reg[2]) );
  TLATX1 \tcon_reg_reg[4]  ( .G(n9455), .D(N483), .Q(tcon_reg[4]) );
  TLATX1 \tcon_reg_reg[7]  ( .G(n9455), .D(N486), .Q(tcon_reg[7]) );
  TLATX1 \tcon_reg_reg[6]  ( .G(n9455), .D(N485), .Q(tcon_reg[6]) );
  TLATX1 \tcon_reg_reg[1]  ( .G(n9455), .D(N480), .Q(tcon_reg[1]) );
  TLATX1 \tcon_reg_reg[3]  ( .G(n9455), .D(N482), .Q(tcon_reg[3]) );
  TLATX1 \tcon_reg_reg[5]  ( .G(n9455), .D(N484), .Q(tcon_reg[5]) );
  TBUFX4 \data_bus_tri[6]  ( .A(n328), .OE(n9463), .Y(data_bus[6]) );
  TBUFX4 \data_bus_tri[4]  ( .A(n330), .OE(n9463), .Y(data_bus[4]) );
  TBUFX4 \data_bus_tri[1]  ( .A(n333), .OE(n9463), .Y(data_bus[1]) );
  TBUFX4 \data_bus_tri[2]  ( .A(n332), .OE(n9464), .Y(data_bus[2]) );
  TBUFX4 \data_bus_tri[3]  ( .A(n331), .OE(n9464), .Y(data_bus[3]) );
  TBUFX4 \data_bus_tri[5]  ( .A(n329), .OE(n9463), .Y(data_bus[5]) );
  TBUFX4 \data_bus_tri[7]  ( .A(n327), .OE(n9463), .Y(data_bus[7]) );
  TBUFX4 \data_bus_tri[0]  ( .A(n334), .OE(n9463), .Y(data_bus[0]) );
  DFFTRX2 \th1_reg[1]  ( .D(1'b1), .RN(n1453), .CK(clk), .QN(n9253) );
  DFFTRX2 \tcon_reg[7]_inst  ( .D(tcon_reg[7]), .RN(n9255), .CK(clk), .Q(
        tcon[7]), .QN(n9527) );
  DFFTRX2 \tcon_reg[6]_inst  ( .D(tcon_reg[6]), .RN(n9255), .CK(clk), .Q(
        tcon[6]), .QN(n9526) );
  DFFTRX2 \tmod_reg[1]  ( .D(1'b1), .RN(n6462), .CK(clk), .QN(n2168) );
  DFFTRX2 \tl1_reg[6]  ( .D(1'b1), .RN(n495), .CK(clk), .QN(n9232) );
  DFFQX4 \cnt_rst_reg[2]  ( .D(n369), .CK(clk), .Q(n8627) );
  DFFTRX2 \tl0_reg[0]  ( .D(1'b1), .RN(n509), .CK(clk), .QN(n9505) );
  DFFQX4 \th1_reg[0]  ( .D(n505), .CK(clk), .Q(n9129) );
  DFFTRX2 \tl0_reg[2]  ( .D(1'b1), .RN(n503), .CK(clk), .QN(n9525) );
  DFFQX4 \tl1_reg[4]  ( .D(n498), .CK(clk), .Q(n9127) );
  DFFTRX2 \tmod_reg[2]  ( .D(1'b1), .RN(n2284), .CK(clk), .Q(n4817), .QN(n5487) );
  DFFQX4 \cnt_rst_reg[1]  ( .D(n370), .CK(clk), .Q(n8622) );
  DFFTRX2 \tl0_reg[5]  ( .D(1'b1), .RN(n497), .CK(clk), .QN(n9504) );
  DFFTRX2 \tl1_reg[1]  ( .D(1'b1), .RN(n506), .CK(clk), .Q(n8306), .QN(n9114)
         );
  DFFTRX2 \tl0_reg[6]  ( .D(1'b1), .RN(n494), .CK(clk), .QN(n9506) );
  DFFTRX2 \tcon_reg[4]_inst  ( .D(tcon_reg[4]), .RN(n9256), .CK(clk), .QN(
        n9113) );
  DFFTRX2 \tmod_reg[6]  ( .D(1'b1), .RN(N179), .CK(clk), .Q(n2279), .QN(n2575)
         );
  DFFTRX2 \tmod_reg[0]  ( .D(1'b1), .RN(N173), .CK(clk), .Q(n5520), .QN(n6368)
         );
  DFFTRX2 \tmod_reg[5]  ( .D(1'b1), .RN(N178), .CK(clk), .Q(n2244), .QN(n2434)
         );
  DFFTRX2 \scon_reg[2]  ( .D(1'b1), .RN(n7444), .CK(clk), .QN(n9086) );
  DFFTRX2 \tcon_reg[3]_inst  ( .D(tcon_reg[3]), .RN(n9255), .CK(clk), .Q(
        tcon[3]), .QN(n324) );
  DFFQX2 \tl0_reg[1]  ( .D(n507), .CK(clk), .Q(n9131) );
  DFFTRX2 \pcon_reg[0]  ( .D(1'b1), .RN(N157), .CK(clk), .QN(n9513) );
  DFFTRX2 \tl0_reg[4]  ( .D(1'b1), .RN(n499), .CK(clk), .Q(n7432), .QN(n9524)
         );
  DFFTRX2 \tl0_reg[3]  ( .D(1'b1), .RN(n501), .CK(clk), .Q(n7409), .QN(n9529)
         );
  DFFTRX2 \dpl_reg[7]  ( .D(1'b1), .RN(N140), .CK(clk), .QN(n9091) );
  DFFTRX2 \p0_reg[6]  ( .D(1'b1), .RN(N99), .CK(clk), .QN(n9522) );
  DFFTRX2 \ie_reg[0]  ( .D(1'b1), .RN(N149), .CK(clk), .Q(ie[0]), .QN(n1322)
         );
  DFFTRX2 \tmod_reg[4]  ( .D(1'b1), .RN(n6464), .CK(clk), .Q(n2229), .QN(n2574) );
  DFFTRX2 \sbuf_reg[3]  ( .D(r_data[3]), .RN(n9461), .CK(clk), .QN(n9122) );
  DFFTRX2 \sbuf_reg[2]  ( .D(r_data[2]), .RN(n9256), .CK(clk), .QN(n9118) );
  DFFTRX2 \sbuf_reg[0]  ( .D(r_data[0]), .RN(n9256), .CK(clk), .QN(n9116) );
  DFFTRX2 \sbuf_reg[5]  ( .D(r_data[5]), .RN(n9255), .CK(clk), .QN(n9117) );
  DFFTRX2 \scon_reg[5]  ( .D(1'b1), .RN(N218), .CK(clk), .QN(n9088) );
  DFFTRX2 \scon_reg[0]  ( .D(1'b1), .RN(N213), .CK(clk), .Q(n7430), .QN(n7691)
         );
  DFFTRX2 \dpl_reg[1]  ( .D(1'b1), .RN(n3130), .CK(clk), .QN(n9098) );
  DFFTRX2 \dpl_reg[2]  ( .D(1'b1), .RN(n6461), .CK(clk), .QN(n9087) );
  DFFTRX2 \dpl_reg[5]  ( .D(1'b1), .RN(N138), .CK(clk), .QN(n9085) );
  DFFTRX2 \dpl_reg[4]  ( .D(1'b1), .RN(N137), .CK(clk), .QN(n9124) );
  DFFTRX2 \dpl_reg[6]  ( .D(1'b1), .RN(N139), .CK(clk), .QN(n9090) );
  DFFTRX2 \dpl_reg[3]  ( .D(1'b1), .RN(N136), .CK(clk), .QN(n9092) );
  DFFTRX2 \p3_reg[6]  ( .D(1'b1), .RN(N123), .CK(clk), .QN(n8632) );
  DFFTRX2 \p3_reg[5]  ( .D(1'b1), .RN(N122), .CK(clk), .QN(n8633) );
  DFFTRX2 \p3_reg[4]  ( .D(1'b1), .RN(N121), .CK(clk), .QN(n8635) );
  DFFTRX2 \p3_reg[3]  ( .D(1'b1), .RN(N120), .CK(clk), .QN(n8676) );
  DFFTRX2 \p3_reg[2]  ( .D(1'b1), .RN(N119), .CK(clk), .QN(n8630) );
  DFFTRX2 \p3_reg[0]  ( .D(1'b1), .RN(N117), .CK(clk), .QN(n8636) );
  DFFTRX2 \dph_reg[3]  ( .D(1'b1), .RN(n8337), .CK(clk), .QN(n9516) );
  DFFTRX2 \p3_reg[1]  ( .D(1'b1), .RN(N118), .CK(clk), .QN(n8631) );
  DFFTRX2 \ie_reg[5]  ( .D(1'b1), .RN(n1402), .CK(clk), .Q(ie[5]), .QN(n1317)
         );
  DFFTRX2 \ie_reg[3]  ( .D(1'b1), .RN(N152), .CK(clk), .Q(ie[3]), .QN(n1319)
         );
  DFFTRX2 \ie_reg[4]  ( .D(1'b1), .RN(N153), .CK(clk), .Q(ie[4]), .QN(n1318)
         );
  DFFTRX2 \scon_reg[4]  ( .D(1'b1), .RN(N217), .CK(clk), .QN(n9123) );
  DFFTRX2 \scon_reg[6]  ( .D(1'b1), .RN(N219), .CK(clk), .QN(n9089) );
  DFFTRX2 \p3_reg[7]  ( .D(1'b1), .RN(N124), .CK(clk), .QN(n8675) );
  DFFTRX2 \pcon_reg[5]  ( .D(1'b1), .RN(N162), .CK(clk), .QN(n9511) );
  DFFTRX2 \sp_reg[3]  ( .D(1'b1), .RN(N128), .CK(clk), .QN(n9410) );
  DFFTRX2 \sbuf_reg[4]  ( .D(r_data[4]), .RN(n9255), .CK(clk), .QN(n9115) );
  DFFTRX2 \sp_reg[5]  ( .D(1'b1), .RN(N130), .CK(clk), .QN(n9535) );
  DFFTRX2 \sp_reg[4]  ( .D(1'b1), .RN(N129), .CK(clk), .QN(n9536) );
  DFFTRX2 \sp_reg[6]  ( .D(1'b1), .RN(N131), .CK(clk), .QN(n9537) );
  DFFTRX2 \sp_reg[7]  ( .D(1'b1), .RN(N132), .CK(clk), .QN(n9402) );
  DFFTRX2 \ie_reg[2]  ( .D(1'b1), .RN(n9157), .CK(clk), .Q(ie[2]), .QN(n1320)
         );
  DFFTRX2 \dph_reg[5]  ( .D(1'b1), .RN(n8336), .CK(clk), .QN(n9512) );
  DFFTRX2 \tcon_reg[1]_inst  ( .D(tcon_reg[1]), .RN(n9255), .CK(clk), .Q(
        tcon[1]), .QN(n322) );
  DFFTRX2 \sp_reg[2]  ( .D(1'b1), .RN(N127), .CK(clk), .QN(n9411) );
  DFFTRX2 \sp_reg[0]  ( .D(1'b1), .RN(N125), .CK(clk), .QN(n9412) );
  DFFQX2 \pcon_reg[7]  ( .D(n7443), .CK(clk), .Q(n9093) );
  DFFQX2 \pcon_reg[1]  ( .D(n7440), .CK(clk), .Q(n9111) );
  DFFTRX2 \sp_reg[1]  ( .D(1'b1), .RN(N126), .CK(clk), .QN(n9409) );
  DFFTRX2 \tmod_reg[7]  ( .D(1'b1), .RN(N180), .CK(clk), .Q(n7370) );
  DFFTRX2 \p0_reg[5]  ( .D(1'b1), .RN(N98), .CK(clk), .QN(n8634) );
  DFFTRX2 \p0_reg[4]  ( .D(1'b1), .RN(N97), .CK(clk), .QN(n8647) );
  DFFTRX2 \p0_reg[2]  ( .D(1'b1), .RN(N95), .CK(clk), .QN(n8648) );
  DFFTRX2 \p0_reg[0]  ( .D(1'b1), .RN(N93), .CK(clk), .QN(n8650) );
  DFFTRX2 \scon_reg[7]  ( .D(1'b1), .RN(n4644), .CK(clk), .Q(n6873) );
  DFFTRX2 \sbuf_reg[7]  ( .D(r_data[7]), .RN(n9256), .CK(clk), .Q(n9121), .QN(
        n9140) );
  DFFTRX2 \tmod_reg[3]  ( .D(1'b1), .RN(N176), .CK(clk), .Q(n7385) );
  DFFQX2 \dph_reg[7]  ( .D(n7448), .CK(clk), .Q(n9094) );
  DFFQX2 \dph_reg[1]  ( .D(n7441), .CK(clk), .Q(n9112) );
  DFFTRX2 \ie_reg[6]  ( .D(1'b1), .RN(n1401), .CK(clk), .Q(ie[6]), .QN(n1316)
         );
  DFFTRX2 \p1_reg[5]  ( .D(1'b1), .RN(N106), .CK(clk), .QN(n8642) );
  DFFTRX2 \p1_reg[4]  ( .D(1'b1), .RN(N105), .CK(clk), .QN(n8643) );
  DFFTRX2 \p1_reg[3]  ( .D(1'b1), .RN(N104), .CK(clk), .QN(n8644) );
  DFFTRX2 \p1_reg[2]  ( .D(1'b1), .RN(N103), .CK(clk), .QN(n8645) );
  DFFTRX2 \p1_reg[0]  ( .D(1'b1), .RN(N101), .CK(clk), .QN(n8646) );
  DFFTRX2 \p2_reg[5]  ( .D(1'b1), .RN(N114), .CK(clk), .QN(n8637) );
  DFFTRX2 \p2_reg[4]  ( .D(1'b1), .RN(N113), .CK(clk), .QN(n8638) );
  DFFTRX2 \p2_reg[3]  ( .D(1'b1), .RN(N112), .CK(clk), .QN(n8639) );
  DFFTRX2 \p2_reg[2]  ( .D(1'b1), .RN(N111), .CK(clk), .QN(n8640) );
  DFFTRX2 \p2_reg[0]  ( .D(1'b1), .RN(N109), .CK(clk), .QN(n8641) );
  DFFTRX2 \scon_reg[3]  ( .D(1'b1), .RN(n4643), .CK(clk), .Q(n6874) );
  DFFQX2 \ip_reg[3]  ( .D(n7446), .CK(clk), .Q(n9105) );
  DFFQX2 \ip_reg[5]  ( .D(n2276), .CK(clk), .Q(n9103) );
  DFFQX2 \ip_reg[2]  ( .D(n7445), .CK(clk), .Q(n9108) );
  DFFTRX2 \sbuf_reg[6]  ( .D(r_data[6]), .RN(n9462), .CK(clk), .Q(n9120), .QN(
        n9138) );
  DFFTRX2 \sbuf_reg[1]  ( .D(r_data[1]), .RN(n9256), .CK(clk), .Q(n9119), .QN(
        n9136) );
  DFFTRX2 \ip_reg[4]  ( .D(1'b1), .RN(n421), .CK(clk), .Q(n7400) );
  DFFQX2 \ip_reg[0]  ( .D(n7463), .CK(clk), .Q(n9101) );
  DFFTRX2 \pcon_reg[3]  ( .D(1'b1), .RN(n9156), .CK(clk), .QN(n9391) );
  DFFTRX2 \pcon_reg[6]  ( .D(1'b1), .RN(n9155), .CK(clk), .QN(n9403) );
  DFFTRX2 \pcon_reg[4]  ( .D(1'b1), .RN(n9154), .CK(clk), .QN(n9515) );
  DFFTRX2 \dpl_reg[0]  ( .D(1'b1), .RN(n9150), .CK(clk), .QN(n9099) );
  DFFTRX2 \pcon_reg[2]  ( .D(1'b1), .RN(n9149), .CK(clk), .QN(n9510) );
  DFFTRX2 \dph_reg[2]  ( .D(1'b1), .RN(n9153), .CK(clk), .QN(n9384) );
  DFFTRX2 \dph_reg[0]  ( .D(1'b1), .RN(n9152), .CK(clk), .QN(n9400) );
  DFFTRX2 \dph_reg[4]  ( .D(1'b1), .RN(n9151), .CK(clk), .QN(n9514) );
  DFFTRX2 \ip_reg[1]  ( .D(1'b1), .RN(n419), .CK(clk), .Q(n7401) );
  DFFTRX2 \ip_reg[7]  ( .D(1'b1), .RN(n2275), .CK(clk), .Q(n7399) );
  DFFTRX2 \ip_reg[6]  ( .D(1'b1), .RN(n6463), .CK(clk), .Q(n7366) );
  DFFTRX2 \ie_reg[1]  ( .D(1'b1), .RN(n9148), .CK(clk), .Q(ie[1]), .QN(n1321)
         );
  DFFTRX2 \tcon_reg[0]_inst  ( .D(tcon_reg[0]), .RN(n9255), .CK(clk), .Q(
        tcon[0]), .QN(n321) );
  DFFTRX2 \tcon_reg[2]_inst  ( .D(tcon_reg[2]), .RN(n9256), .CK(clk), .Q(
        tcon[2]), .QN(n323) );
  DFFTRX2 \tl1_reg[0]  ( .D(1'b1), .RN(n508), .CK(clk), .Q(n9166), .QN(n9188)
         );
  DFFTRX2 \p0_reg[7]  ( .D(1'b1), .RN(N100), .CK(clk), .Q(n9531), .QN(n8677)
         );
  DFFTRX2 \p0_reg[3]  ( .D(1'b1), .RN(N96), .CK(clk), .Q(n9532), .QN(n8674) );
  DFFTRX2 \p0_reg[1]  ( .D(1'b1), .RN(N94), .CK(clk), .Q(n9533), .QN(n8649) );
  DFFTRX2 \p1_reg[7]  ( .D(1'b1), .RN(N108), .CK(clk), .Q(p1[7]), .QN(n9523)
         );
  DFFTRX2 \p1_reg[6]  ( .D(1'b1), .RN(N107), .CK(clk), .Q(n7377), .QN(n9517)
         );
  DFFTRX2 \p1_reg[1]  ( .D(1'b1), .RN(N102), .CK(clk), .Q(p1[1]), .QN(n9518)
         );
  DFFTRX2 \p2_reg[7]  ( .D(1'b1), .RN(N116), .CK(clk), .Q(p2[7]), .QN(n9519)
         );
  DFFTRX2 \p2_reg[6]  ( .D(1'b1), .RN(N115), .CK(clk), .Q(n7379), .QN(n9521)
         );
  DFFTRX2 \p2_reg[1]  ( .D(1'b1), .RN(N110), .CK(clk), .Q(p2[1]), .QN(n9520)
         );
  DFFTRX2 \th0_reg[4]  ( .D(1'b1), .RN(n1454), .CK(clk), .QN(n9243) );
  DFFTRX2 \th1_reg[2]  ( .D(1'b1), .RN(n2312), .CK(clk), .QN(n9249) );
  DFFTRX2 \th1_reg[4]  ( .D(1'b1), .RN(n2309), .CK(clk), .QN(n9245) );
  DFFTRX2 \th0_reg[1]  ( .D(1'b1), .RN(n2315), .CK(clk), .QN(n9241) );
  DFFTRX2 \th0_reg[2]  ( .D(1'b1), .RN(n2313), .CK(clk), .QN(n9239) );
  DFFTRX2 \th1_reg[6]  ( .D(1'b1), .RN(n1436), .CK(clk), .QN(n9235) );
  DFFTRX2 \tl1_reg[5]  ( .D(1'b1), .RN(n496), .CK(clk), .QN(n9237) );
  DFFTRX2 \tl1_reg[7]  ( .D(1'b1), .RN(n1433), .CK(clk), .QN(n9230) );
  DFFQX2 rst_n_reg ( .D(n368), .CK(clk), .Q(n8626) );
  DFFTRX2 \cnt_rst_reg[0]  ( .D(1'b1), .RN(n372), .CK(clk), .Q(n9194) );
  DFFTRX2 \cnt_rst_reg[3]  ( .D(1'b1), .RN(n371), .CK(clk), .Q(n9201) );
  DFFTRX2 \th0_reg[0]  ( .D(1'b1), .RN(n504), .CK(clk), .QN(n9221) );
  DFFTRX2 \ie_reg[7]  ( .D(1'b1), .RN(n5554), .CK(clk), .QN(n9207) );
  DFFTRX2 \scon_reg[1]  ( .D(1'b1), .RN(n7451), .CK(clk), .QN(n9192) );
  DFFTRX2 \th0_reg[6]  ( .D(1'b1), .RN(n1434), .CK(clk), .QN(n9223) );
  DFFTRX2 \th0_reg[5]  ( .D(1'b1), .RN(n2311), .CK(clk), .QN(n9213) );
  DFFTRX2 \th0_reg[7]  ( .D(1'b1), .RN(n1432), .CK(clk), .QN(n9190) );
  DFFTRX2 \tl0_reg[7]  ( .D(1'b1), .RN(n1431), .CK(clk), .QN(n9215) );
  DFFTRX2 \th1_reg[3]  ( .D(1'b1), .RN(n2310), .CK(clk), .QN(n9225) );
  DFFTRX2 \th0_reg[3]  ( .D(1'b1), .RN(n2314), .CK(clk), .QN(n9205) );
  DFFTRX2 \tl1_reg[3]  ( .D(1'b1), .RN(n500), .CK(clk), .QN(n9228) );
  DFFTRX2 \tl1_reg[2]  ( .D(1'b1), .RN(n502), .CK(clk), .QN(n9209) );
  DFFTRX2 \th1_reg[7]  ( .D(1'b1), .RN(n1435), .CK(clk), .QN(n9211) );
  DFFTRX2 \th1_reg[5]  ( .D(1'b1), .RN(n2308), .CK(clk), .QN(n9217) );
  DFFQX2 \dph_reg[6]  ( .D(n7447), .CK(clk), .Q(n9096) );
  DFFTRX2 \tcon_reg[5]_inst  ( .D(tcon_reg[5]), .RN(n9256), .CK(clk), .Q(
        tcon[5]), .QN(n326) );
  OA22X2 U6182 ( .A0(n9136), .A1(n8869), .B0(n8870), .B1(n8878), .Y(n9135) );
  INVX2 U6183 ( .A(n9135), .Y(n7465) );
  OA22X2 U6184 ( .A0(n9138), .A1(n8869), .B0(n8870), .B1(n8876), .Y(n9137) );
  INVX2 U6185 ( .A(n9137), .Y(n7467) );
  OA22X2 U6186 ( .A0(n9140), .A1(n8869), .B0(n8870), .B1(n8877), .Y(n9139) );
  INVX2 U6187 ( .A(n9139), .Y(n7466) );
  INVX2 U6188 ( .A(n9041), .Y(n9484) );
  INVX5 U6189 ( .A(n9059), .Y(n9382) );
  INVX2 U6190 ( .A(n9057), .Y(n9486) );
  NAND3X2 U6191 ( .A(n8912), .B(n9425), .C(n9484), .Y(n9052) );
  INVX6 U6192 ( .A(n9420), .Y(n9424) );
  BUFX2 U6193 ( .A(n7472), .Y(n9187) );
  BUFX2 U6194 ( .A(n7468), .Y(n9186) );
  BUFX2 U6195 ( .A(n7470), .Y(n9184) );
  BUFX2 U6196 ( .A(n7471), .Y(n9183) );
  BUFX2 U6197 ( .A(n7469), .Y(n9185) );
  INVX8 U6198 ( .A(n9164), .Y(n9450) );
  INVX8 U6199 ( .A(n9164), .Y(n9449) );
  INVX4 U6200 ( .A(n9505), .Y(n9226) );
  CLKNAND2X8 U6201 ( .A(n1363), .B(n9463), .Y(n8937) );
  CLKNAND2X8 U6202 ( .A(n9463), .B(n9424), .Y(n8939) );
  INVX8 U6203 ( .A(n9250), .Y(n9251) );
  OAI22X2 U6204 ( .A0(n8937), .A1(n321), .B0(n8938), .B1(n8939), .Y(n334) );
  OAI22X2 U6205 ( .A0(n8937), .A1(n9527), .B0(n9013), .B1(n8939), .Y(n327) );
  OAI22X2 U6206 ( .A0(n8937), .A1(n324), .B0(n8973), .B1(n8939), .Y(n331) );
  OAI22X2 U6207 ( .A0(n8937), .A1(n322), .B0(n8953), .B1(n8939), .Y(n333) );
  OAI22X2 U6208 ( .A0(n9113), .A1(n8937), .B0(n8983), .B1(n8939), .Y(n330) );
  OAI22X2 U6209 ( .A0(n8937), .A1(n9526), .B0(n9003), .B1(n8939), .Y(n328) );
  CLKBUFX6 U6210 ( .A(n9473), .Y(n9472) );
  INVX5 U6211 ( .A(n9179), .Y(n9180) );
  AND2X2 U6212 ( .A(n9390), .B(n9446), .Y(n9141) );
  AND2X2 U6213 ( .A(n9386), .B(n9387), .Y(n9142) );
  CLKBUFX6 U6214 ( .A(n9462), .Y(n9461) );
  CLKBUFX8 U6215 ( .A(n8912), .Y(n9438) );
  NAND3X2 U6216 ( .A(addr_bus[3]), .B(addr_bus[2]), .C(n9078), .Y(n8912) );
  AND3X4 U6217 ( .A(n9073), .B(n9502), .C(addr_bus[5]), .Y(n9143) );
  CLKBUFX8 U6218 ( .A(n8881), .Y(n9443) );
  CLKBUFX8 U6219 ( .A(n8904), .Y(n9427) );
  OR3X2 U6220 ( .A(n9496), .B(n9481), .C(n9480), .Y(n9144) );
  OR2X2 U6221 ( .A(n9144), .B(n9385), .Y(n9145) );
  CLKAND2X8 U6222 ( .A(n9415), .B(n9141), .Y(n9146) );
  OR2X2 U6223 ( .A(n9493), .B(n9052), .Y(n9147) );
  OAI22X2 U6224 ( .A0(n1321), .A1(n9401), .B0(n8887), .B1(n9446), .Y(n9148) );
  OAI22X2 U6225 ( .A0(n9389), .A1(n9510), .B0(n9431), .B1(n9174), .Y(n9149) );
  OAI22X2 U6226 ( .A0(n9099), .A1(n9408), .B0(n9171), .B1(n9435), .Y(n9150) );
  OAI22X2 U6227 ( .A0(n9434), .A1(n9452), .B0(n9398), .B1(n9514), .Y(n9151) );
  OAI22X2 U6228 ( .A0(n9433), .A1(n9172), .B0(n9398), .B1(n9400), .Y(n9152) );
  OAI22X2 U6229 ( .A0(n9433), .A1(n9175), .B0(n9398), .B1(n9384), .Y(n9153) );
  OAI22X2 U6230 ( .A0(n9431), .A1(n9452), .B0(n9389), .B1(n9515), .Y(n9154) );
  OAI22X2 U6231 ( .A0(n9432), .A1(n9454), .B0(n9389), .B1(n9403), .Y(n9155) );
  OAI22X2 U6232 ( .A0(n9451), .A1(n9432), .B0(n9389), .B1(n9391), .Y(n9156) );
  OAI22X2 U6233 ( .A0(n1320), .A1(n9401), .B0(n9174), .B1(n9446), .Y(n9157) );
  AND3X4 U6234 ( .A(n9498), .B(n9503), .C(n9079), .Y(n9158) );
  AND3X4 U6235 ( .A(n9079), .B(n9498), .C(addr_bus[3]), .Y(n9159) );
  AND3X4 U6236 ( .A(n9395), .B(n9405), .C(n9077), .Y(n9160) );
  CLKAND2X3 U6237 ( .A(n9395), .B(n9079), .Y(n9161) );
  CLKAND2X3 U6238 ( .A(n9075), .B(n9405), .Y(n9162) );
  AND4X4 U6239 ( .A(addr_bus[2]), .B(n9395), .C(addr_bus[1]), .D(n9405), .Y(
        n9163) );
  AND3X4 U6240 ( .A(n9073), .B(n9499), .C(addr_bus[4]), .Y(n9164) );
  OR2X2 U6241 ( .A(n9041), .B(n9042), .Y(n9165) );
  INVX5 U6242 ( .A(n9239), .Y(n9238) );
  CLKBUFX8 U6243 ( .A(n8885), .Y(n9444) );
  CLKINVX3 U6244 ( .A(n9035), .Y(n9167) );
  INVX4 U6245 ( .A(n9167), .Y(n9168) );
  INVX5 U6246 ( .A(n9167), .Y(n9169) );
  CLKINVX3 U6247 ( .A(n8884), .Y(n9170) );
  INVX5 U6248 ( .A(n9170), .Y(n9171) );
  CLKINVX6 U6249 ( .A(n9170), .Y(n9172) );
  CLKINVX3 U6250 ( .A(n8893), .Y(n9173) );
  INVX5 U6251 ( .A(n9173), .Y(n9174) );
  CLKINVX6 U6252 ( .A(n9173), .Y(n9175) );
  CLKINVX3 U6253 ( .A(n8892), .Y(n9176) );
  INVX6 U6254 ( .A(n9176), .Y(n9177) );
  CLKINVX6 U6255 ( .A(n9176), .Y(n9178) );
  CLKINVX4 U6256 ( .A(n8626), .Y(n9179) );
  CLKINVX6 U6257 ( .A(n9179), .Y(n9181) );
  INVX8 U6258 ( .A(n9179), .Y(n9182) );
  OR2X2 U6259 ( .A(n9498), .B(addr_bus[3]), .Y(n9080) );
  NAND2X2 U6260 ( .A(n9500), .B(addr_bus[1]), .Y(n9387) );
  INVX2 U6261 ( .A(n9188), .Y(n9218) );
  OAI22X2 U6262 ( .A0(n8937), .A1(n326), .B0(n8993), .B1(n8939), .Y(n329) );
  OAI22X2 U6263 ( .A0(n8937), .A1(n323), .B0(n8963), .B1(n8939), .Y(n332) );
  OAI2B2X2 U6264 ( .A1N(n9191), .A0(n9419), .B0(n8887), .B1(n9450), .Y(n7451)
         );
  OAI2B2X2 U6265 ( .A1N(n9206), .A0(n9401), .B0(n9177), .B1(n9446), .Y(n5554)
         );
  INVX5 U6266 ( .A(n9237), .Y(n9236) );
  INVX5 U6267 ( .A(n9235), .Y(n9234) );
  OAI2B2X2 U6268 ( .A1N(n9112), .A0(n9398), .B0(n9434), .B1(n8887), .Y(n7441)
         );
  OAI2B2X2 U6269 ( .A1N(n9094), .A0(n9398), .B0(n9433), .B1(n9178), .Y(n7448)
         );
  OAI2B2X2 U6270 ( .A1N(n6873), .A0(n9419), .B0(n9450), .B1(n9178), .Y(n4644)
         );
  OAI222X4 U6271 ( .A0(n9439), .A1(n6368), .B0(n8951), .B1(n8650), .C0(n9450), 
        .C1(n7691), .Y(n8948) );
  OAI222X4 U6272 ( .A0(n9439), .A1(n5487), .B0(n8951), .B1(n8648), .C0(n9449), 
        .C1(n9086), .Y(n8970) );
  OAI222X4 U6273 ( .A0(n9439), .A1(n2574), .B0(n8951), .B1(n8647), .C0(n9450), 
        .C1(n9123), .Y(n8990) );
  OAI222X4 U6274 ( .A0(n9439), .A1(n2434), .B0(n8951), .B1(n8634), .C0(n9449), 
        .C1(n9088), .Y(n9000) );
  OAI2B2X2 U6275 ( .A1N(n7370), .A0(n9417), .B0(n9177), .B1(n9440), .Y(N180)
         );
  OAI2B2X2 U6276 ( .A1N(n9111), .A0(n9389), .B0(n8887), .B1(n9431), .Y(n7440)
         );
  AOI22X1 U6277 ( .A0(n9111), .A1(n9496), .B0(n9112), .B1(n9480), .Y(n8958) );
  OAI2B2X2 U6278 ( .A1N(n9093), .A0(n9389), .B0(n9431), .B1(n9178), .Y(n7443)
         );
  AOI22X1 U6279 ( .A0(n9093), .A1(n9496), .B0(n9094), .B1(n9480), .Y(n9018) );
  OAI222X4 U6280 ( .A0(n9439), .A1(n2575), .B0(n9522), .B1(n8951), .C0(n9450), 
        .C1(n9089), .Y(n9009) );
  OAI22X2 U6281 ( .A0(n9117), .A1(n8869), .B0(n8874), .B1(n8870), .Y(n7469) );
  OAI22X2 U6282 ( .A0(n9116), .A1(n8869), .B0(n8870), .B1(n8875), .Y(n7468) );
  OAI22X2 U6283 ( .A0(n9118), .A1(n8869), .B0(n8870), .B1(n8873), .Y(n7470) );
  OAI22X2 U6284 ( .A0(n9122), .A1(n8869), .B0(n8872), .B1(n8870), .Y(n7471) );
  OAI22X2 U6285 ( .A0(n9171), .A1(n9447), .B0(n1322), .B1(n9401), .Y(N149) );
  OAI22X2 U6286 ( .A0(n9178), .A1(n9435), .B0(n9091), .B1(n9408), .Y(N140) );
  OAI22X2 U6287 ( .A0(n9172), .A1(n9431), .B0(n9389), .B1(n9513), .Y(N157) );
  OAI22X2 U6288 ( .A0(n9449), .A1(n9175), .B0(n9086), .B1(n9419), .Y(n7444) );
  OAI22X2 U6289 ( .A0(n9172), .A1(n9440), .B0(n6368), .B1(n9417), .Y(N173) );
  INVX4 U6290 ( .A(n9190), .Y(n9189) );
  INVX4 U6291 ( .A(n9192), .Y(n9191) );
  INVX4 U6292 ( .A(n9194), .Y(n9193) );
  INVX4 U6293 ( .A(n9113), .Y(n9195) );
  INVX4 U6294 ( .A(n9506), .Y(n9196) );
  CLKINVX2 U6295 ( .A(n8306), .Y(n9197) );
  INVX4 U6296 ( .A(n9197), .Y(n9198) );
  INVX4 U6297 ( .A(n9504), .Y(n9199) );
  INVX4 U6298 ( .A(n9201), .Y(n9200) );
  CLKINVX2 U6299 ( .A(n4817), .Y(n9202) );
  INVX4 U6300 ( .A(n9202), .Y(n9203) );
  INVX4 U6301 ( .A(n9205), .Y(n9204) );
  INVX4 U6302 ( .A(n9207), .Y(n9206) );
  INVX4 U6303 ( .A(n9209), .Y(n9208) );
  INVX4 U6304 ( .A(n9211), .Y(n9210) );
  INVX4 U6305 ( .A(n9213), .Y(n9212) );
  INVX4 U6306 ( .A(n9215), .Y(n9214) );
  INVX4 U6307 ( .A(n9217), .Y(n9216) );
  INVX4 U6308 ( .A(n9525), .Y(n9219) );
  INVX4 U6309 ( .A(n9221), .Y(n9220) );
  INVX4 U6310 ( .A(n9223), .Y(n9222) );
  INVX4 U6311 ( .A(n9225), .Y(n9224) );
  INVX4 U6312 ( .A(n9228), .Y(n9227) );
  NAND2X1 U6313 ( .A(n9200), .B(n8627), .Y(n8932) );
  INVX5 U6314 ( .A(n9230), .Y(n9229) );
  INVX5 U6315 ( .A(n9232), .Y(n9231) );
  INVX5 U6316 ( .A(n2168), .Y(n9233) );
  INVX6 U6317 ( .A(n9241), .Y(n9240) );
  INVX6 U6318 ( .A(n9243), .Y(n9242) );
  INVX6 U6319 ( .A(n9245), .Y(n9244) );
  CLKINVX2 U6320 ( .A(tcon[6]), .Y(n9246) );
  INVX6 U6321 ( .A(n9246), .Y(n9247) );
  INVX6 U6322 ( .A(n9249), .Y(n9248) );
  CLKINVX2 U6323 ( .A(tcon[7]), .Y(n9250) );
  INVX8 U6324 ( .A(n9253), .Y(n9252) );
  INVX4 U6325 ( .A(n8626), .Y(n9254) );
  CLKINVX8 U6326 ( .A(n9254), .Y(n9255) );
  CLKINVX8 U6327 ( .A(n9254), .Y(n9256) );
  OAI2BB1X4 U6446 ( .A0N(n9049), .A1N(n9047), .B0(n9461), .Y(n8907) );
  BUFX8 U6447 ( .A(n8894), .Y(n9375) );
  OAI22X2 U6448 ( .A0(n9375), .A1(n9447), .B0(n1318), .B1(n9401), .Y(N153) );
  CLKBUFX4 U6449 ( .A(n8894), .Y(n9452) );
  NAND4X4 U6450 ( .A(n9382), .B(n9484), .C(n9060), .D(n9425), .Y(n8929) );
  AND3X4 U6451 ( .A(n9049), .B(n9430), .C(n9050), .Y(n9060) );
  BUFX5 U6452 ( .A(n9453), .Y(n9376) );
  OAI22X2 U6453 ( .A0(n9434), .A1(n9376), .B0(n9398), .B1(n9512), .Y(n8336) );
  OAI22X2 U6454 ( .A0(n9376), .A1(n9432), .B0(n9389), .B1(n9511), .Y(N162) );
  OAI22X2 U6455 ( .A0(n9453), .A1(n9447), .B0(n1317), .B1(n9401), .Y(n1402) );
  BUFX8 U6456 ( .A(n8868), .Y(n9453) );
  BUFX8 U6457 ( .A(n8891), .Y(n9377) );
  OAI22X2 U6458 ( .A0(n9450), .A1(n9377), .B0(n9089), .B1(n9419), .Y(N219) );
  OAI22X2 U6459 ( .A0(n9434), .A1(n9377), .B0(n9398), .B1(n9530), .Y(n7447) );
  OAI22X2 U6460 ( .A0(n9377), .A1(n9437), .B0(n9090), .B1(n9408), .Y(N139) );
  OAI22X2 U6461 ( .A0(n9377), .A1(n9448), .B0(n1316), .B1(n9401), .Y(n1401) );
  CLKBUFX4 U6462 ( .A(n8891), .Y(n9454) );
  INVX2 U6463 ( .A(n9486), .Y(n9378) );
  NOR3X6 U6464 ( .A(n9067), .B(n9490), .C(n9031), .Y(n9057) );
  OAI22X2 U6465 ( .A0(n9087), .A1(n9408), .B0(n9174), .B1(n9436), .Y(n6461) );
  INVX2 U6466 ( .A(n9488), .Y(n9379) );
  OAI221X2 U6467 ( .A0(n8635), .A1(n9445), .B0(n9429), .B1(n9524), .C0(n8988), 
        .Y(n8985) );
  OAI221X2 U6468 ( .A0(n8636), .A1(n9445), .B0(n9430), .B1(n9505), .C0(n8946), 
        .Y(n8941) );
  BUFX8 U6469 ( .A(n8945), .Y(n9445) );
  CLKINVX4 U6470 ( .A(n9415), .Y(n9380) );
  INVX2 U6471 ( .A(n9490), .Y(n9415) );
  INVX8 U6472 ( .A(n9444), .Y(n9490) );
  BUFX8 U6473 ( .A(n8865), .Y(n9381) );
  OAI22X2 U6474 ( .A0(n9381), .A1(n9434), .B0(n9398), .B1(n9516), .Y(n8337) );
  OAI2B2X2 U6475 ( .A1N(n7385), .A0(n9417), .B0(n9381), .B1(n9440), .Y(N176)
         );
  OAI2B2X2 U6476 ( .A1N(n6874), .A0(n9419), .B0(n9381), .B1(n9449), .Y(n4643)
         );
  OAI22X2 U6477 ( .A0(n9381), .A1(n9448), .B0(n1319), .B1(n9401), .Y(N152) );
  CLKBUFX4 U6478 ( .A(n8865), .Y(n9451) );
  OAI22X2 U6479 ( .A0(n9375), .A1(n9435), .B0(n9124), .B1(n9408), .Y(N137) );
  OR3X2 U6480 ( .A(n9393), .B(n9470), .C(n9493), .Y(n9059) );
  INVX2 U6481 ( .A(n9382), .Y(n9383) );
  OAI22X2 U6482 ( .A0(n9172), .A1(n9450), .B0(n7691), .B1(n9419), .Y(N213) );
  OAI22X2 U6483 ( .A0(n9453), .A1(n9436), .B0(n9085), .B1(n9408), .Y(N138) );
  OAI22X2 U6484 ( .A0(n9175), .A1(n9440), .B0(n5487), .B1(n9417), .Y(n2284) );
  INVX2 U6485 ( .A(n9385), .Y(n9050) );
  CLKNAND2X2 U6486 ( .A(addr_bus[0]), .B(addr_bus[5]), .Y(n9386) );
  CLKNAND2X2 U6487 ( .A(n9081), .B(n9142), .Y(n9385) );
  CLKBUFX4 U6488 ( .A(n8880), .Y(n9388) );
  BUFX8 U6489 ( .A(n8890), .Y(n9389) );
  INVX2 U6490 ( .A(n9032), .Y(n9390) );
  CLKBUFX16 U6491 ( .A(n1363), .Y(n9455) );
  CLKAND2X3 U6492 ( .A(n9053), .B(n9424), .Y(n1363) );
  NAND3X4 U6493 ( .A(addr_bus[5]), .B(n9502), .C(n9074), .Y(n8882) );
  CLKBUFX8 U6494 ( .A(n8882), .Y(n9442) );
  CLKBUFX4 U6495 ( .A(n9478), .Y(n9392) );
  INVX8 U6496 ( .A(n9427), .Y(n9478) );
  CLKBUFX4 U6497 ( .A(n9497), .Y(n9393) );
  BUFX8 U6498 ( .A(n9497), .Y(n9394) );
  INVX2 U6499 ( .A(n9438), .Y(n9497) );
  OAI22X2 U6500 ( .A0(n9453), .A1(n9449), .B0(n9088), .B1(n9419), .Y(N218) );
  OAI22X2 U6501 ( .A0(n9451), .A1(n9437), .B0(n9092), .B1(n9408), .Y(N136) );
  OAI22X2 U6502 ( .A0(n9454), .A1(n9440), .B0(n2575), .B1(n9417), .Y(N179) );
  INVX5 U6503 ( .A(n9080), .Y(n9395) );
  CLKINVX8 U6504 ( .A(n9396), .Y(n8883) );
  NOR2X2 U6505 ( .A(n9031), .B(n9032), .Y(n9397) );
  NOR2X2 U6506 ( .A(n9397), .B(n9254), .Y(n9396) );
  NAND3X3 U6507 ( .A(n9406), .B(n9382), .C(n9066), .Y(n9032) );
  BUFX8 U6508 ( .A(n8867), .Y(n9398) );
  CLKBUFX6 U6509 ( .A(n2229), .Y(n9399) );
  OAI22X2 U6510 ( .A0(n9375), .A1(n9440), .B0(n2574), .B1(n9417), .Y(n6464) );
  OAI2BB1X1 U6511 ( .A0N(n9472), .A1N(to0), .B0(n8878), .Y(N480) );
  NAND3X4 U6512 ( .A(n9075), .B(n9499), .C(addr_bus[4]), .Y(n8952) );
  CLKBUFX8 U6513 ( .A(n8952), .Y(n9441) );
  OAI22X2 U6514 ( .A0(n9449), .A1(n9375), .B0(n9123), .B1(n9419), .Y(N217) );
  OAI22X2 U6515 ( .A0(n9098), .A1(n9408), .B0(n8887), .B1(n9437), .Y(n3130) );
  OAI22X2 U6516 ( .A0(n2168), .A1(n9417), .B0(n8887), .B1(n9440), .Y(n6462) );
  INVX8 U6517 ( .A(n8909), .Y(n8887) );
  NOR2X4 U6518 ( .A(n9147), .B(n9145), .Y(n9047) );
  NOR2X8 U6519 ( .A(n9383), .B(n9165), .Y(n9062) );
  BUFX8 U6520 ( .A(n8899), .Y(n9401) );
  OAI22X2 U6521 ( .A0(n9453), .A1(n9440), .B0(n2434), .B1(n9417), .Y(N178) );
  OAI21X2 U6522 ( .A0(n9392), .A1(n9045), .B0(n9461), .Y(n8917) );
  INVX8 U6523 ( .A(n8917), .Y(n9404) );
  OR2X2 U6524 ( .A(addr_bus[4]), .B(addr_bus[5]), .Y(n9076) );
  INVX8 U6525 ( .A(n9076), .Y(n9405) );
  CLKBUFX4 U6526 ( .A(n9058), .Y(n9406) );
  INVX2 U6527 ( .A(n8897), .Y(n9407) );
  INVX8 U6528 ( .A(n9407), .Y(n9408) );
  INVX4 U6529 ( .A(n9160), .Y(n9413) );
  INVX5 U6530 ( .A(n9160), .Y(n9426) );
  INVX4 U6531 ( .A(n8887), .Y(n9414) );
  NOR2BX4 U6532 ( .AN(n9168), .B(n8878), .Y(n8909) );
  INVX2 U6533 ( .A(n9446), .Y(n9491) );
  INVX2 U6534 ( .A(n8896), .Y(n9416) );
  INVX8 U6535 ( .A(n9416), .Y(n9417) );
  INVX2 U6536 ( .A(n8886), .Y(n9418) );
  INVX8 U6537 ( .A(n9418), .Y(n9419) );
  CLKBUFX4 U6538 ( .A(n9473), .Y(n9469) );
  BUFX2 U6539 ( .A(read_en), .Y(n9465) );
  INVX8 U6540 ( .A(n9161), .Y(n9434) );
  INVX8 U6541 ( .A(n9161), .Y(n9433) );
  INVX8 U6542 ( .A(n9160), .Y(n9425) );
  NAND2X2 U6543 ( .A(n9047), .B(n9428), .Y(n9045) );
  INVX6 U6544 ( .A(n9158), .Y(n9435) );
  NAND4X4 U6545 ( .A(n9424), .B(n9378), .C(n8951), .D(n9450), .Y(n9041) );
  INVX5 U6546 ( .A(n9449), .Y(n9492) );
  INVX8 U6547 ( .A(n9163), .Y(n9431) );
  INVX5 U6548 ( .A(n9159), .Y(n9428) );
  INVX4 U6549 ( .A(n9441), .Y(n9494) );
  BUFX2 U6550 ( .A(n9255), .Y(n9462) );
  AOI22X1 U6551 ( .A0(tl1_out[0]), .A1(n8906), .B0(n9166), .B1(n9477), .Y(
        n8905) );
  AOI22X1 U6552 ( .A0(tl1_out[4]), .A1(n8906), .B0(n9127), .B1(n9477), .Y(
        n8924) );
  AOI22X1 U6553 ( .A0(tl1_out[3]), .A1(n8906), .B0(n9227), .B1(n9477), .Y(
        n8922) );
  AOI22X1 U6554 ( .A0(tl1_out[2]), .A1(n8906), .B0(n9208), .B1(n9477), .Y(
        n8920) );
  INVX6 U6555 ( .A(addr_bus[0]), .Y(n9498) );
  OAI21X4 U6556 ( .A0(reset), .A1(n8622), .B0(n8931), .Y(n8935) );
  INVX2 U6557 ( .A(addr_bus[2]), .Y(n9482) );
  NAND3X4 U6558 ( .A(addr_bus[7]), .B(n9501), .C(memory_select), .Y(n9420) );
  INVX2 U6559 ( .A(n9131), .Y(n9534) );
  INVX8 U6560 ( .A(n8910), .Y(n9477) );
  BUFX5 U6561 ( .A(n9473), .Y(n9470) );
  BUFX8 U6562 ( .A(n9465), .Y(n9463) );
  INVX5 U6563 ( .A(n9469), .Y(n9468) );
  INVX10 U6564 ( .A(n9469), .Y(n9466) );
  INVX10 U6565 ( .A(n9469), .Y(n9467) );
  BUFX5 U6566 ( .A(n9472), .Y(n9471) );
  BUFX2 U6567 ( .A(n9465), .Y(n9464) );
  NAND2X1 U6568 ( .A(n9406), .B(n9382), .Y(n9056) );
  INVX6 U6569 ( .A(n9439), .Y(n9493) );
  INVX2 U6570 ( .A(n9425), .Y(n9489) );
  INVX8 U6571 ( .A(n9039), .Y(n9475) );
  NAND2X2 U6572 ( .A(n9439), .B(n9425), .Y(n9040) );
  OAI21X6 U6573 ( .A0(n9421), .A1(n9045), .B0(n9182), .Y(n8910) );
  INVX8 U6574 ( .A(n8907), .Y(n9476) );
  INVX5 U6575 ( .A(n9433), .Y(n9480) );
  INVX4 U6576 ( .A(n9435), .Y(n9481) );
  CLKAND2X8 U6577 ( .A(n9038), .B(n9479), .Y(n8903) );
  CLKAND2X8 U6578 ( .A(n9038), .B(n9422), .Y(n8918) );
  CLKAND2X4 U6579 ( .A(n9169), .B(n9470), .Y(n9038) );
  BUFX8 U6580 ( .A(n9180), .Y(n9456) );
  BUFX8 U6581 ( .A(n9182), .Y(n9459) );
  BUFX8 U6582 ( .A(n9256), .Y(n9458) );
  BUFX8 U6583 ( .A(n9180), .Y(n9457) );
  BUFX8 U6584 ( .A(n9182), .Y(n9460) );
  NOR4X4 U6585 ( .A(n9380), .B(n9394), .C(n9492), .D(n9493), .Y(n9072) );
  NOR3X4 U6586 ( .A(n9067), .B(n9492), .C(n9483), .Y(n9066) );
  NAND4X6 U6587 ( .A(n9060), .B(n9432), .C(n9434), .D(n9436), .Y(n9042) );
  NOR2X4 U6588 ( .A(n9421), .B(n9478), .Y(n9049) );
  INVX8 U6589 ( .A(n9162), .Y(n9439) );
  CLKBUFX6 U6590 ( .A(n9495), .Y(n9421) );
  INVX6 U6591 ( .A(n9158), .Y(n9436) );
  INVX8 U6592 ( .A(n8951), .Y(n9483) );
  INVX5 U6593 ( .A(n9431), .Y(n9496) );
  CLKBUFX6 U6594 ( .A(n9495), .Y(n9422) );
  INVX6 U6595 ( .A(n9158), .Y(n9437) );
  CLKBUFX4 U6596 ( .A(n9474), .Y(n9473) );
  INVX2 U6597 ( .A(fifo_w_en), .Y(n9474) );
  CLKNAND2X8 U6598 ( .A(n9483), .B(n9423), .Y(n9054) );
  CLKAND2X8 U6599 ( .A(n9038), .B(n9392), .Y(n8906) );
  CLKAND2X8 U6600 ( .A(n9038), .B(n9394), .Y(n8914) );
  NAND2X4 U6601 ( .A(n9489), .B(n9423), .Y(n9063) );
  INVX4 U6602 ( .A(n9428), .Y(n9479) );
  CLKNAND2X8 U6603 ( .A(n9494), .B(n9424), .Y(n8870) );
  CLKNAND2X8 U6604 ( .A(n9488), .B(n9423), .Y(n9064) );
  CLKNAND2X8 U6605 ( .A(n9485), .B(n9423), .Y(n9068) );
  CLKNAND2X8 U6606 ( .A(n9487), .B(n9423), .Y(n9070) );
  INVX8 U6607 ( .A(n9162), .Y(n9440) );
  AND2X2 U6608 ( .A(n9461), .B(n9424), .Y(n9035) );
  OAI21X2 U6609 ( .A0(n9452), .A1(n8915), .B0(n9033), .Y(n1454) );
  AOI22X1 U6610 ( .A0(n9404), .A1(n9242), .B0(th0_out[4]), .B1(n8918), .Y(
        n9033) );
  OAI21X2 U6611 ( .A0(n8907), .A1(n9534), .B0(n8908), .Y(n507) );
  AOI22X1 U6612 ( .A0(n9479), .A1(n9414), .B0(tl0_out[1]), .B1(n8903), .Y(
        n8908) );
  INVX4 U6613 ( .A(reset), .Y(n9509) );
  CLKINVX3 U6614 ( .A(n9405), .Y(n9500) );
  CLKINVX2 U6615 ( .A(n8915), .Y(n9495) );
  NOR2X2 U6616 ( .A(n8930), .B(n8931), .Y(n372) );
  CLKAND2X2 U6617 ( .A(n9073), .B(n9405), .Y(n9053) );
  INVX8 U6618 ( .A(n9163), .Y(n9432) );
  INVX6 U6619 ( .A(n9159), .Y(n9430) );
  CLKNAND2X8 U6620 ( .A(n9074), .B(n9405), .Y(n8951) );
  AND3X4 U6621 ( .A(n9077), .B(n9498), .C(n9503), .Y(n9074) );
  OAI22X2 U6622 ( .A0(n9537), .A1(n9061), .B0(n9377), .B1(n9425), .Y(N131) );
  OAI22X2 U6623 ( .A0(n9536), .A1(n9061), .B0(n9375), .B1(n9425), .Y(N129) );
  OAI22X2 U6624 ( .A0(n9535), .A1(n9061), .B0(n9453), .B1(n9425), .Y(N130) );
  OAI22X2 U6625 ( .A0(n9410), .A1(n9061), .B0(n9451), .B1(n9425), .Y(N128) );
  OAI22X2 U6626 ( .A0(n9402), .A1(n9061), .B0(n9177), .B1(n9413), .Y(N132) );
  NAND3X4 U6627 ( .A(n8952), .B(n8882), .C(n8881), .Y(n9067) );
  NAND2X4 U6628 ( .A(n9445), .B(n9446), .Y(n9031) );
  INVX6 U6629 ( .A(n9159), .Y(n9429) );
  INVX6 U6630 ( .A(n9143), .Y(n9446) );
  INVX4 U6631 ( .A(n9443), .Y(n9487) );
  INVX4 U6632 ( .A(n9442), .Y(n9485) );
  INVX4 U6633 ( .A(n9445), .Y(n9488) );
  INVX6 U6634 ( .A(n9143), .Y(n9448) );
  INVX6 U6635 ( .A(n9143), .Y(n9447) );
  INVX6 U6636 ( .A(n9420), .Y(n9423) );
  OAI21X2 U6637 ( .A0(n9454), .A1(n9427), .B0(n8927), .Y(n495) );
  AOI22X1 U6638 ( .A0(tl1_out[6]), .A1(n8906), .B0(n9231), .B1(n9477), .Y(
        n8927) );
  OAI21X2 U6639 ( .A0(n9177), .A1(n9427), .B0(n9044), .Y(n1433) );
  AOI22X2 U6640 ( .A0(tl1_out[7]), .A1(n8906), .B0(n9229), .B1(n9477), .Y(
        n9044) );
  OAI21X2 U6641 ( .A0(n9377), .A1(n8915), .B0(n9043), .Y(n1434) );
  AOI22X1 U6642 ( .A0(n9222), .A1(n9404), .B0(th0_out[6]), .B1(n8918), .Y(
        n9043) );
  OAI21X2 U6643 ( .A0(n9454), .A1(n9438), .B0(n9036), .Y(n1436) );
  AOI22X1 U6644 ( .A0(n9234), .A1(n9475), .B0(th1_out[6]), .B1(n8914), .Y(
        n9036) );
  OAI21X2 U6645 ( .A0(n9175), .A1(n8915), .B0(n9025), .Y(n2313) );
  AOI22X1 U6646 ( .A0(n9238), .A1(n9404), .B0(th0_out[2]), .B1(n8918), .Y(
        n9025) );
  OAI21X2 U6647 ( .A0(n9174), .A1(n9438), .B0(n9026), .Y(n2312) );
  AOI22X1 U6648 ( .A0(n9248), .A1(n9475), .B0(th1_out[2]), .B1(n8914), .Y(
        n9026) );
  AOI21X2 U6649 ( .A0(n9528), .A1(n9509), .B0(n8935), .Y(n8934) );
  OAI21X2 U6650 ( .A0(n9453), .A1(n9427), .B0(n8926), .Y(n496) );
  AOI22X2 U6651 ( .A0(tl1_out[5]), .A1(n8906), .B0(n9236), .B1(n9477), .Y(
        n8926) );
  OAI21X2 U6652 ( .A0(n9171), .A1(n9427), .B0(n8905), .Y(n508) );
  OAI21X2 U6653 ( .A0(n9174), .A1(n9430), .B0(n8919), .Y(n503) );
  AOI22X2 U6654 ( .A0(tl0_out[2]), .A1(n8903), .B0(n9219), .B1(n9476), .Y(
        n8919) );
  OAI21X2 U6655 ( .A0(n9171), .A1(n9429), .B0(n8902), .Y(n509) );
  AOI22X2 U6656 ( .A0(tl0_out[0]), .A1(n8903), .B0(n9226), .B1(n9476), .Y(
        n8902) );
  OAI21X2 U6657 ( .A0(n9175), .A1(n9427), .B0(n8920), .Y(n502) );
  OAI21X2 U6658 ( .A0(n9376), .A1(n9428), .B0(n8925), .Y(n497) );
  AOI22X2 U6659 ( .A0(tl0_out[5]), .A1(n8903), .B0(n9199), .B1(n9476), .Y(
        n8925) );
  OAI2BB1X1 U6660 ( .A0N(th1_out[1]), .A1N(n8914), .B0(n9034), .Y(n1453) );
  AOI22X1 U6661 ( .A0(n9394), .A1(n8909), .B0(n9252), .B1(n9475), .Y(n9034) );
  OAI21X2 U6662 ( .A0(n9452), .A1(n9438), .B0(n9029), .Y(n2309) );
  AOI22X1 U6663 ( .A0(n9244), .A1(n9475), .B0(th1_out[4]), .B1(n8914), .Y(
        n9029) );
  OAI21X2 U6664 ( .A0(n9376), .A1(n8915), .B0(n9027), .Y(n2311) );
  AOI22X1 U6665 ( .A0(n9212), .A1(n9404), .B0(th0_out[5]), .B1(n8918), .Y(
        n9027) );
  OAI21X2 U6666 ( .A0(n9376), .A1(n9438), .B0(n9030), .Y(n2308) );
  AOI22X2 U6667 ( .A0(n9216), .A1(n9475), .B0(th1_out[5]), .B1(n8914), .Y(
        n9030) );
  OAI21X2 U6668 ( .A0(n9171), .A1(n8915), .B0(n8916), .Y(n504) );
  AOI22X1 U6669 ( .A0(n9220), .A1(n9404), .B0(th0_out[0]), .B1(n8918), .Y(
        n8916) );
  OAI21X2 U6670 ( .A0(n9381), .A1(n8915), .B0(n9024), .Y(n2314) );
  AOI22X1 U6671 ( .A0(n9204), .A1(n9404), .B0(th0_out[3]), .B1(n8918), .Y(
        n9024) );
  OAI2BB1X1 U6672 ( .A0N(th0_out[1]), .A1N(n8918), .B0(n9023), .Y(n2315) );
  AOI22X1 U6673 ( .A0(n9422), .A1(n9414), .B0(n9240), .B1(n9404), .Y(n9023) );
  OAI21X2 U6674 ( .A0(n9375), .A1(n9430), .B0(n8923), .Y(n499) );
  AOI22X2 U6675 ( .A0(tl0_out[4]), .A1(n8903), .B0(n7432), .B1(n9476), .Y(
        n8923) );
  OAI21X2 U6676 ( .A0(n9377), .A1(n9428), .B0(n8928), .Y(n494) );
  AOI22X2 U6677 ( .A0(tl0_out[6]), .A1(n8903), .B0(n9196), .B1(n9476), .Y(
        n8928) );
  OAI21X2 U6678 ( .A0(n9381), .A1(n9438), .B0(n9028), .Y(n2310) );
  AOI22X2 U6679 ( .A0(n9224), .A1(n9475), .B0(th1_out[3]), .B1(n8914), .Y(
        n9028) );
  OAI21X2 U6680 ( .A0(n9375), .A1(n9427), .B0(n8924), .Y(n498) );
  OAI21X2 U6681 ( .A0(n9177), .A1(n9428), .B0(n9048), .Y(n1431) );
  AOI22X2 U6682 ( .A0(tl0_out[7]), .A1(n8903), .B0(n9214), .B1(n9476), .Y(
        n9048) );
  OAI21X2 U6683 ( .A0(n9114), .A1(n8910), .B0(n8911), .Y(n506) );
  AOI22X1 U6684 ( .A0(n9392), .A1(n9414), .B0(tl1_out[1]), .B1(n8906), .Y(
        n8911) );
  NAND2X4 U6685 ( .A(n9193), .B(n9509), .Y(n8931) );
  OAI21X2 U6686 ( .A0(n9172), .A1(n9438), .B0(n8913), .Y(n505) );
  AOI22X2 U6687 ( .A0(n9129), .A1(n9475), .B0(th1_out[0]), .B1(n8914), .Y(
        n8913) );
  OAI21X2 U6688 ( .A0(n9178), .A1(n8915), .B0(n9046), .Y(n1432) );
  AOI22X1 U6689 ( .A0(n9189), .A1(n9404), .B0(th0_out[7]), .B1(n8918), .Y(
        n9046) );
  OAI21X2 U6690 ( .A0(n9381), .A1(n9429), .B0(n8921), .Y(n501) );
  AOI22X2 U6691 ( .A0(tl0_out[3]), .A1(n8903), .B0(n7409), .B1(n9476), .Y(
        n8921) );
  OAI21X2 U6692 ( .A0(n9381), .A1(n9427), .B0(n8922), .Y(n500) );
  OAI21X2 U6693 ( .A0(n9177), .A1(n9438), .B0(n9037), .Y(n1435) );
  AOI22X2 U6694 ( .A0(n9210), .A1(n9475), .B0(th1_out[7]), .B1(n8914), .Y(
        n9037) );
  INVX2 U6695 ( .A(n8935), .Y(n9508) );
  NOR3X4 U6696 ( .A(n9500), .B(addr_bus[1]), .C(addr_bus[0]), .Y(n9084) );
  OAI221X2 U6697 ( .A0(n8875), .A1(n9064), .B0(n8636), .B1(n9146), .C0(n9459), 
        .Y(N117) );
  OAI221X2 U6698 ( .A0(n8878), .A1(n9064), .B0(n8631), .B1(n9146), .C0(n9459), 
        .Y(N118) );
  OAI221X2 U6699 ( .A0(n8873), .A1(n9064), .B0(n8630), .B1(n9146), .C0(n9458), 
        .Y(N119) );
  OAI221X2 U6700 ( .A0(n8872), .A1(n9064), .B0(n8676), .B1(n9146), .C0(n9459), 
        .Y(N120) );
  OAI221X2 U6701 ( .A0(n8871), .A1(n9064), .B0(n8635), .B1(n9146), .C0(n9459), 
        .Y(N121) );
  OAI221X2 U6702 ( .A0(n8874), .A1(n9064), .B0(n8633), .B1(n9146), .C0(n9459), 
        .Y(N122) );
  OAI221X2 U6703 ( .A0(n8876), .A1(n9064), .B0(n8632), .B1(n9146), .C0(n9459), 
        .Y(N123) );
  OAI221X2 U6704 ( .A0(n8877), .A1(n9064), .B0(n8675), .B1(n9146), .C0(n9459), 
        .Y(N124) );
  OAI22X2 U6705 ( .A0(n9115), .A1(n8869), .B0(n8870), .B1(n8871), .Y(n7472) );
  OAI221X2 U6706 ( .A0(n8877), .A1(n9070), .B0(n9071), .B1(n9523), .C0(n9457), 
        .Y(N108) );
  OAI221X2 U6707 ( .A0(n8876), .A1(n9068), .B0(n9069), .B1(n9521), .C0(n9458), 
        .Y(N115) );
  OAI221X2 U6708 ( .A0(n8878), .A1(n9068), .B0(n9069), .B1(n9520), .C0(n9458), 
        .Y(N110) );
  OAI221X2 U6709 ( .A0(n8877), .A1(n9068), .B0(n9069), .B1(n9519), .C0(n9458), 
        .Y(N116) );
  OAI221X2 U6710 ( .A0(n8878), .A1(n9070), .B0(n9071), .B1(n9518), .C0(n9457), 
        .Y(N102) );
  OAI221X2 U6711 ( .A0(n8876), .A1(n9070), .B0(n9071), .B1(n9517), .C0(n9457), 
        .Y(N107) );
  OAI221X2 U6712 ( .A0(n8872), .A1(n9070), .B0(n8644), .B1(n9071), .C0(n9457), 
        .Y(N104) );
  OAI221X2 U6713 ( .A0(n8873), .A1(n9070), .B0(n8645), .B1(n9071), .C0(n9456), 
        .Y(N103) );
  OAI221X2 U6714 ( .A0(n8871), .A1(n9070), .B0(n8643), .B1(n9071), .C0(n9457), 
        .Y(N105) );
  OAI221X2 U6715 ( .A0(n8874), .A1(n9070), .B0(n8642), .B1(n9071), .C0(n9457), 
        .Y(N106) );
  OAI221X2 U6716 ( .A0(n8875), .A1(n9068), .B0(n8641), .B1(n9069), .C0(n9458), 
        .Y(N109) );
  OAI221X2 U6717 ( .A0(n8873), .A1(n9068), .B0(n8640), .B1(n9069), .C0(n9457), 
        .Y(N111) );
  OAI221X2 U6718 ( .A0(n8872), .A1(n9068), .B0(n8639), .B1(n9069), .C0(n9458), 
        .Y(N112) );
  OAI221X2 U6719 ( .A0(n8871), .A1(n9068), .B0(n8638), .B1(n9069), .C0(n9458), 
        .Y(N113) );
  OAI221X2 U6720 ( .A0(n8874), .A1(n9068), .B0(n8637), .B1(n9069), .C0(n9458), 
        .Y(N114) );
  OAI221X2 U6721 ( .A0(n8875), .A1(n9070), .B0(n8646), .B1(n9071), .C0(n9457), 
        .Y(N101) );
  OAI2BB2X2 U6722 ( .B0(addr_bus[1]), .B1(n9503), .A0N(n9395), .A1N(
        addr_bus[1]), .Y(n9083) );
  AND3X4 U6723 ( .A(addr_bus[1]), .B(n9405), .C(n9482), .Y(n9079) );
  OAI2B2X2 U6724 ( .A1N(n9108), .A0(n8883), .B0(n9444), .B1(n9175), .Y(n7445)
         );
  OAI2B2X2 U6725 ( .A1N(n9103), .A0(n8883), .B0(n9453), .B1(n9444), .Y(n2276)
         );
  OAI2B2X2 U6726 ( .A1N(n9105), .A0(n8883), .B0(n9451), .B1(n9444), .Y(n7446)
         );
  OAI2B2X2 U6727 ( .A1N(n9101), .A0(n8883), .B0(n9172), .B1(n8885), .Y(n7463)
         );
  AOI21X2 U6728 ( .A0(n9405), .A1(n9083), .B0(n9482), .Y(n9082) );
  AND3X4 U6729 ( .A(n9077), .B(n9498), .C(addr_bus[3]), .Y(n9073) );
  OAI22X2 U6730 ( .A0(n9507), .A1(n8931), .B0(n8622), .B1(n8933), .Y(n370) );
  CLKINVX3 U6731 ( .A(addr_bus[3]), .Y(n9503) );
  OR2X4 U6732 ( .A(n9193), .B(reset), .Y(n8933) );
  NOR3X4 U6733 ( .A(n9498), .B(addr_bus[1]), .C(n9500), .Y(n9078) );
  NAND3X2 U6734 ( .A(addr_bus[0]), .B(n9079), .C(addr_bus[3]), .Y(n8904) );
  NAND2X2 U6735 ( .A(n9509), .B(n8936), .Y(n368) );
  OAI2BB1X1 U6736 ( .A0N(n9193), .A1N(n8930), .B0(n9461), .Y(n8936) );
  OAI221X2 U6737 ( .A0(n8632), .A1(n9445), .B0(n9429), .B1(n9506), .C0(n9008), 
        .Y(n9005) );
  AOI22X1 U6738 ( .A0(n9231), .A1(n9478), .B0(n9222), .B1(n9421), .Y(n9008) );
  OAI221X2 U6739 ( .A0(n8633), .A1(n9379), .B0(n9430), .B1(n9504), .C0(n8998), 
        .Y(n8995) );
  AOI22X2 U6740 ( .A0(n9236), .A1(n9478), .B0(n9212), .B1(n9421), .Y(n8998) );
  OAI221X2 U6741 ( .A0(n8676), .A1(n9445), .B0(n9430), .B1(n9529), .C0(n8978), 
        .Y(n8975) );
  AOI22X2 U6742 ( .A0(n9227), .A1(n9478), .B0(n9204), .B1(n9421), .Y(n8978) );
  OAI221X2 U6743 ( .A0(n8630), .A1(n9445), .B0(n9429), .B1(n9525), .C0(n8968), 
        .Y(n8965) );
  AOI22X1 U6744 ( .A0(n9208), .A1(n9478), .B0(n9238), .B1(n9421), .Y(n8968) );
  OAI221X2 U6745 ( .A0(n8875), .A1(n9063), .B0(n9062), .B1(n9412), .C0(n9460), 
        .Y(N125) );
  OAI221X2 U6746 ( .A0(n8878), .A1(n9063), .B0(n9062), .B1(n9409), .C0(n9460), 
        .Y(N126) );
  OAI221X2 U6747 ( .A0(n8873), .A1(n9063), .B0(n9062), .B1(n9411), .C0(n9459), 
        .Y(N127) );
  AOI22X1 U6748 ( .A0(n9252), .A1(n9393), .B0(p1[1]), .B1(n9487), .Y(n8961) );
  NOR4X4 U6749 ( .A(n9004), .B(n9005), .C(n9006), .D(n9007), .Y(n9003) );
  OAI22X2 U6750 ( .A0(n9433), .A1(n9530), .B0(n9432), .B1(n9403), .Y(n9006) );
  OAI22X2 U6751 ( .A0(n9413), .A1(n9537), .B0(n9090), .B1(n9435), .Y(n9007) );
  NOR4X4 U6752 ( .A(n8994), .B(n8995), .C(n8996), .D(n8997), .Y(n8993) );
  OAI22X2 U6753 ( .A0(n9434), .A1(n9512), .B0(n9431), .B1(n9511), .Y(n8996) );
  OAI22X2 U6754 ( .A0(n9413), .A1(n9535), .B0(n9085), .B1(n9436), .Y(n8997) );
  NOR4X4 U6755 ( .A(n8974), .B(n8975), .C(n8976), .D(n8977), .Y(n8973) );
  OAI22X2 U6756 ( .A0(n9516), .A1(n9433), .B0(n9391), .B1(n9432), .Y(n8976) );
  OAI22X2 U6757 ( .A0(n9426), .A1(n9410), .B0(n9092), .B1(n9435), .Y(n8977) );
  NOR4X4 U6758 ( .A(n8964), .B(n8965), .C(n8966), .D(n8967), .Y(n8963) );
  OAI22X2 U6759 ( .A0(n9434), .A1(n9384), .B0(n9431), .B1(n9510), .Y(n8966) );
  OAI22X2 U6760 ( .A0(n9426), .A1(n9411), .B0(n9087), .B1(n9436), .Y(n8967) );
  NOR4X4 U6761 ( .A(n8984), .B(n8985), .C(n8986), .D(n8987), .Y(n8983) );
  OAI22X2 U6762 ( .A0(n9433), .A1(n9514), .B0(n9432), .B1(n9515), .Y(n8986) );
  OAI22X2 U6763 ( .A0(n9413), .A1(n9536), .B0(n9124), .B1(n9437), .Y(n8987) );
  OAI221X2 U6764 ( .A0(n8876), .A1(n9054), .B0(n9055), .B1(n9522), .C0(n9182), 
        .Y(N99) );
  OAI221X2 U6765 ( .A0(n8875), .A1(n9054), .B0(n8650), .B1(n9055), .C0(n9456), 
        .Y(N93) );
  OAI221X2 U6766 ( .A0(n8871), .A1(n9054), .B0(n8647), .B1(n9055), .C0(n9456), 
        .Y(N97) );
  OAI221X2 U6767 ( .A0(n8873), .A1(n9054), .B0(n8648), .B1(n9055), .C0(n9456), 
        .Y(N95) );
  OAI221X2 U6768 ( .A0(n8874), .A1(n9054), .B0(n8634), .B1(n9055), .C0(n9456), 
        .Y(N98) );
  OAI221X2 U6769 ( .A0(n8878), .A1(n9054), .B0(n8649), .B1(n9055), .C0(n9456), 
        .Y(N94) );
  OAI221X2 U6770 ( .A0(n8872), .A1(n9054), .B0(n8674), .B1(n9055), .C0(n9456), 
        .Y(N96) );
  OAI221X2 U6771 ( .A0(n8877), .A1(n9054), .B0(n8677), .B1(n9055), .C0(n9456), 
        .Y(N100) );
  CLKINVX2 U6772 ( .A(addr_bus[4]), .Y(n9502) );
  OAI2BB2X2 U6773 ( .B0(n9114), .B1(n8904), .A0N(n9240), .A1N(n9422), .Y(n8957) );
  OAI2B2X2 U6774 ( .A1N(n7399), .A0(n8883), .B0(n9444), .B1(n9178), .Y(n2275)
         );
  OAI2B2X2 U6775 ( .A1N(n7366), .A0(n8883), .B0(n9444), .B1(n9377), .Y(n6463)
         );
  OAI2B2X2 U6776 ( .A1N(n7400), .A0(n8883), .B0(n9444), .B1(n9375), .Y(n421)
         );
  OAI2B2X2 U6777 ( .A1N(n7401), .A0(n8883), .B0(n9444), .B1(n8887), .Y(n419)
         );
  NOR4X4 U6778 ( .A(n8940), .B(n8941), .C(n8942), .D(n8943), .Y(n8938) );
  OAI22X2 U6779 ( .A0(n9433), .A1(n9400), .B0(n9432), .B1(n9513), .Y(n8942) );
  OAI22X2 U6780 ( .A0(n9426), .A1(n9412), .B0(n9099), .B1(n9437), .Y(n8943) );
  NOR4X4 U6781 ( .A(n9014), .B(n9015), .C(n9016), .D(n9017), .Y(n9013) );
  OAI2BB2X2 U6782 ( .B0(n8675), .B1(n9379), .A0N(n9214), .A1N(n9479), .Y(n9016) );
  OAI221X2 U6783 ( .A0(n9091), .A1(n9436), .B0(n9426), .B1(n9402), .C0(n9018), 
        .Y(n9015) );
  NOR4X4 U6784 ( .A(n8954), .B(n8955), .C(n8956), .D(n8957), .Y(n8953) );
  OAI22X2 U6785 ( .A0(n9429), .A1(n9534), .B0(n8631), .B1(n9445), .Y(n8956) );
  OAI221X2 U6786 ( .A0(n9098), .A1(n9437), .B0(n9426), .B1(n9409), .C0(n8958), 
        .Y(n8955) );
  AOI2BB2X2 U6787 ( .B0(n9394), .B1(n9129), .A0N(n9443), .A1N(n8646), .Y(n8950) );
  AOI2BB2X2 U6788 ( .B0(n9216), .B1(n9394), .A0N(n9443), .A1N(n8642), .Y(n9002) );
  AOI2BB2X2 U6789 ( .B0(n9248), .B1(n9394), .A0N(n9443), .A1N(n8645), .Y(n8972) );
  AOI2BB2X2 U6790 ( .B0(n9244), .B1(n9394), .A0N(n9443), .A1N(n8643), .Y(n8992) );
  AOI2BB2X2 U6791 ( .B0(n9224), .B1(n9393), .A0N(n9443), .A1N(n8644), .Y(n8981) );
  AOI22X1 U6792 ( .A0(n9234), .A1(n9393), .B0(n7377), .B1(n9487), .Y(n9012) );
  AOI22X1 U6793 ( .A0(n9210), .A1(n9394), .B0(p1[7]), .B1(n9487), .Y(n9021) );
  AOI22X1 U6794 ( .A0(n9166), .A1(n9478), .B0(n9422), .B1(n9220), .Y(n8946) );
  NAND4BX2 U6795 ( .AN(n8979), .B(n8980), .C(n8981), .D(n8982), .Y(n8974) );
  OAI22X2 U6796 ( .A0(n9441), .A1(n9122), .B0(n9448), .B1(n1319), .Y(n8979) );
  AOI2BB2X2 U6797 ( .B0(n9105), .B1(n9490), .A0N(n9442), .A1N(n8639), .Y(n8980) );
  AOI222X2 U6798 ( .A0(n7385), .A1(n9493), .B0(n9483), .B1(n9532), .C0(n6874), 
        .C1(n9492), .Y(n8982) );
  NAND4BX2 U6799 ( .AN(n9009), .B(n9010), .C(n9011), .D(n9012), .Y(n9004) );
  AOI2BB2X2 U6800 ( .B0(n9120), .B1(n9494), .A0N(n9448), .A1N(n1316), .Y(n9010) );
  AOI22X1 U6801 ( .A0(n7366), .A1(n9490), .B0(n7379), .B1(n9485), .Y(n9011) );
  NAND4BBX2 U6802 ( .AN(n8999), .BN(n9000), .C(n9001), .D(n9002), .Y(n8994) );
  OAI22X2 U6803 ( .A0(n9441), .A1(n9117), .B0(n9448), .B1(n1317), .Y(n8999) );
  AOI2BB2X2 U6804 ( .B0(n9103), .B1(n9380), .A0N(n9442), .A1N(n8637), .Y(n9001) );
  NAND4BBX2 U6805 ( .AN(n8969), .BN(n8970), .C(n8971), .D(n8972), .Y(n8964) );
  OAI22X2 U6806 ( .A0(n9441), .A1(n9118), .B0(n9447), .B1(n1320), .Y(n8969) );
  AOI2BB2X2 U6807 ( .B0(n9108), .B1(n9490), .A0N(n9442), .A1N(n8640), .Y(n8971) );
  NAND4BBX2 U6808 ( .AN(n8989), .BN(n8990), .C(n8991), .D(n8992), .Y(n8984) );
  OAI22X2 U6809 ( .A0(n9441), .A1(n9115), .B0(n9447), .B1(n1318), .Y(n8989) );
  AOI2BB2X2 U6810 ( .B0(n7400), .B1(n9490), .A0N(n9442), .A1N(n8638), .Y(n8991) );
  NAND4BBX2 U6811 ( .AN(n8947), .BN(n8948), .C(n8949), .D(n8950), .Y(n8940) );
  OAI22X2 U6812 ( .A0(n9441), .A1(n9116), .B0(n9448), .B1(n1322), .Y(n8947) );
  AOI2BB2X2 U6813 ( .B0(n9490), .B1(n9101), .A0N(n9442), .A1N(n8641), .Y(n8949) );
  AOI22X2 U6814 ( .A0(n9127), .A1(n9478), .B0(n9422), .B1(n9242), .Y(n8988) );
  INVX4 U6815 ( .A(addr_bus[5]), .Y(n9499) );
  NAND2BX2 U6816 ( .AN(n8877), .B(n9168), .Y(n8892) );
  NAND2BX2 U6817 ( .AN(n8871), .B(n9169), .Y(n8894) );
  NAND2BX2 U6818 ( .AN(n8876), .B(n9169), .Y(n8891) );
  NAND2BX2 U6819 ( .AN(n8874), .B(n9169), .Y(n8868) );
  NAND2BX2 U6820 ( .AN(n8875), .B(n9168), .Y(n8884) );
  AND3X2 U6821 ( .A(n9077), .B(addr_bus[0]), .C(addr_bus[3]), .Y(n9075) );
  NAND4X2 U6822 ( .A(n8959), .B(n8960), .C(n8961), .D(n8962), .Y(n8954) );
  AOI2BB2X2 U6823 ( .B0(n9119), .B1(n9494), .A0N(n9447), .A1N(n1321), .Y(n8959) );
  AOI22X1 U6824 ( .A0(n7401), .A1(n9490), .B0(p2[1]), .B1(n9485), .Y(n8960) );
  AOI222X2 U6825 ( .A0(n9493), .A1(n9233), .B0(n9483), .B1(n9533), .C0(n9191), 
        .C1(n9492), .Y(n8962) );
  NAND3X2 U6826 ( .A(addr_bus[5]), .B(addr_bus[4]), .C(n9074), .Y(n8945) );
  AO22X2 U6827 ( .A0(n9422), .A1(n9189), .B0(n9392), .B1(n9229), .Y(n9017) );
  NAND4X2 U6828 ( .A(n9019), .B(n9020), .C(n9021), .D(n9022), .Y(n9014) );
  AOI22X2 U6829 ( .A0(n9121), .A1(n9494), .B0(n9206), .B1(n9491), .Y(n9019) );
  AOI22X1 U6830 ( .A0(n7399), .A1(n9380), .B0(p2[7]), .B1(n9485), .Y(n9020) );
  AOI222X2 U6831 ( .A0(n7370), .A1(n9493), .B0(n9483), .B1(n9531), .C0(n6873), 
        .C1(n9492), .Y(n9022) );
  NAND3X2 U6832 ( .A(addr_bus[4]), .B(n9073), .C(addr_bus[5]), .Y(n8885) );
  NAND3X2 U6833 ( .A(addr_bus[4]), .B(n9499), .C(n9074), .Y(n8881) );
  NAND2BX2 U6834 ( .AN(n8873), .B(n9168), .Y(n8893) );
  NAND2BX2 U6835 ( .AN(n8872), .B(n9169), .Y(n8865) );
  INVX2 U6836 ( .A(addr_bus[6]), .Y(n9501) );
  NOR3X6 U6837 ( .A(n8627), .B(n9200), .C(n9507), .Y(n8930) );
  INVX5 U6838 ( .A(n8622), .Y(n9507) );
  CLKINVX2 U6839 ( .A(n8627), .Y(n9528) );
  INVX2 U6840 ( .A(n9096), .Y(n9530) );
  OAI2BB1X1 U6841 ( .A0N(inti0), .A1N(n9473), .B0(n8873), .Y(N481) );
  OAI2BB1X1 U6842 ( .A0N(inti1), .A1N(n9474), .B0(n8875), .Y(N479) );
  OAI2BB1X1 U6843 ( .A0N(tcon_nxt[4]), .A1N(n9472), .B0(n8871), .Y(N483) );
  OAI2BB1X1 U6844 ( .A0N(tcon_nxt[5]), .A1N(n9472), .B0(n8874), .Y(N484) );
  OAI2BB1X1 U6845 ( .A0N(n9472), .A1N(to1), .B0(n8872), .Y(N482) );
endmodule

