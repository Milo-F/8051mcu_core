`timescale 1ns/1ps

module tb1;
reg          clk;
reg          rstn;
reg  [31:0]  ch0_data;
reg          ch0_valid;
wire         ch0_ready;
wire [ 4:0]  ch0_margin;
reg  [31:0]  ch1_data;
reg          ch1_valid;
wire         ch1_ready;
wire [ 4:0]  ch1_margin;
reg  [31:0]  ch2_data;
reg          ch2_valid;
wire         ch2_ready;
wire [ 4:0]  ch2_margin;
wire [31:0]  mcdt_data;
wire         mcdt_val;
wire [ 1:0]  mcdt_id;

mcdt dut(
   .clk_i(clk)
  ,.rstn_i(rstn)
  ,.ch0_data_i(ch0_data)
  ,.ch0_valid_i(ch0_valid)
  ,.ch0_ready_o(ch0_ready)
  ,.ch0_margin_o(ch0_margin)
  ,.ch1_data_i(ch1_data)
  ,.ch1_valid_i(ch1_valid)
  ,.ch1_ready_o(ch1_ready)
  ,.ch1_margin_o(ch1_margin)
  ,.ch2_data_i(ch2_data)
  ,.ch2_valid_i(ch2_valid)
  ,.ch2_ready_o(ch2_ready)
  ,.ch2_margin_o(ch2_margin)
  ,.mcdt_data_o(mcdt_data)
  ,.mcdt_val_o(mcdt_val)
  ,.mcdt_id_o(mcdt_id)
);

// clock generation
initial begin 
  clk <= 0;
  forever begin
    #5 clk <= !clk;
  end
end

// reset trigger
initial begin 
  #10 rstn <= 0;
  repeat(10) @(posedge clk);
  rstn <= 1;
end

// data test
initial begin 
  @(posedge rstn);
  repeat(5) @(posedge clk);
  // channel 0 test
  chnl_write(0, 'h00C0_0000);
  chnl_write(0, 'h00C0_0001);
  chnl_write(0, 'h00C0_0002);
  chnl_write(0, 'h00C0_0003);
  chnl_write(0, 'h00C0_0004);
  chnl_write(0, 'h00C0_0005);
  chnl_write(0, 'h00C0_0006);
  chnl_write(0, 'h00C0_0007);
  chnl_write(0, 'h00C0_0008);
  chnl_write(0, 'h00C0_0009);
  // channel 1 test
  chnl_write(1, 'h00C1_0000);
  chnl_write(1, 'h00C1_0001);
  chnl_write(1, 'h00C1_0002);
  chnl_write(1, 'h00C1_0003);
  chnl_write(1, 'h00C1_0004);
  chnl_write(1, 'h00C1_0005);
  chnl_write(1, 'h00C1_0006);
  chnl_write(1, 'h00C1_0007);
  chnl_write(1, 'h00C1_0008);
  chnl_write(1, 'h00C1_0009);
  // channel 2 test
  chnl_write(2, 'h00C2_0000);
  chnl_write(2, 'h00C2_0001);
  chnl_write(2, 'h00C2_0002);
  chnl_write(2, 'h00C2_0003);
  chnl_write(2, 'h00C2_0004);
  chnl_write(2, 'h00C2_0005);
  chnl_write(2, 'h00C2_0006);
  chnl_write(2, 'h00C2_0007);
  chnl_write(2, 'h00C2_0008);
  chnl_write(2, 'h00C2_0009);
end

// channel write task
task chnl_write(input reg[1:0] id, input reg[31:0] data); 
  case(id)
    0: begin
      @(posedge clk);
      ch0_valid <= 1;
      ch0_data <= data;
      @(posedge clk);
      ch0_valid <= 0;
      ch0_data <= 0;
    end
    1: begin
      @(posedge clk);
      ch1_valid <= 1;
      ch1_data <= data;
      @(posedge clk);
      ch1_valid <= 0;
      ch1_data <= 0;
    end
    2: begin
      @(posedge clk);
      ch2_valid <= 1;
      ch2_data <= data;
      @(posedge clk);
      ch2_valid <= 0;
      ch2_data <= 0;
    end
    default: $error("channel id %0d is invalid", id);
  endcase
endtask


endmodule
