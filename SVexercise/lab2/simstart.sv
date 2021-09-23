module simstart1;

logic a1=0; 
logic a2, a3, a4, a5;
bit rstn, clk;

assign a2 = a1; // assign

initial begin // initial
  a3 = a1;
end

always @(posedge clk, negedge rstn) begin // sequential logic
  if(rstn === 'b0) a4 <= 0;
  else a4 <= a1;
end

always @(a1) begin // combination logic
  a5 <= a1;
end

initial begin
  #10ns rstn <= 0;
  #20ns rstn <= 1;
end

initial forever #5ns clk <= !clk;

endmodule


