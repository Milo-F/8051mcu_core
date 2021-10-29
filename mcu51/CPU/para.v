/*------------------------------------------------------
    相关参数宏定义
------------------------------------------------------*/
// 数据寄存器定义
`define Rn {3'b0,psw[4:3],instruction[2:0]}
`define Ri {3'b0,psw[4:3],2'b0,instruction[0]}

// SFR 宏定义------------------------------------------
`define p0 8'h80
`define sp 8'h81
`define dpl 8'h82
`define dph 8'h83
`define pcon 8'h87
`define tcon 8'h88
`define tmod 8'h89
`define tl0 8'h8a
`define tl1 8'h8b
`define th0 8'h8c
`define th1 8'h8d
`define p1 8'h90
`define scon 8'h98
`define sbuf 8'h99
`define p2 8'ha0
`define ie 8'ha8
`define p3 8'hb0
`define ip 8'hb8
// CPU内部寄存器地址映射
`define b 8'hf0
`define acc 8'he0
`define psw 8'hd0

// alu操作选择宏定义------------------------------------------
`define inc 4'b0000 //0
`define dec 4'b0001 //1
`define add 4'b0010 //2
`define addc 4'b0011 //3
`define orl 4'b0100 //4
`define anl 4'b0101 //5
`define xrl 4'b0110 //6
`define setb 4'b0111 //7
`define div 4'b1000 //8
`define subb 4'b1001 //9
`define mul 4'b1010 //10
`define clr 4'b1011 //11
`define cpl 4'b1100 //12
`define mov 4'b1110
`define no_alu 4'b1111
