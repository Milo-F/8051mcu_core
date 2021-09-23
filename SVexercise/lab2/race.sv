`timescale 1ns/1ns
module race1;

bit clk1, clk2;
bit rstn;
logic[7:0] d1;

initial begin
  forever #5 clk1 <= !clk1;
end

always @(clk1) clk2 <= clk1;

initial begin
  #10 rstn <= 0;
  #20 rstn <= 1;
end

always @(posedge clk1, negedge rstn) begin
  if(!rstn) d1 <= 0;
  else d1 <= d1 + 1;
end

always @(posedge clk1) $display("%0t ns d1 value is 0x%0x", $time, d1);
always @(posedge clk2) $display("%0t ns d1 value is 0x%0x", $time, d1);
endmodule
