`timescale 1ns/1ps

module tb3_ref;
logic         clk;
logic         rstn;
logic [31:0]  ch0_data;
logic         ch0_valid;
logic         ch0_ready;
logic [ 5:0]  ch0_margin;
logic [31:0]  ch1_data;
logic         ch1_valid;
logic         ch1_ready;
logic [ 5:0]  ch1_margin;
logic [31:0]  ch2_data;
logic         ch2_valid;
logic         ch2_ready;
logic [ 5:0]  ch2_margin;
logic [31:0]  mcdt_data;
logic         mcdt_val;
logic [ 1:0]  mcdt_id;

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

logic [31:0] chnl0_arr[];
logic [31:0] chnl1_arr[];
logic [31:0] chnl2_arr[];
// USER TODO
// generate 100 data for each dynamic array
initial begin
  chnl0_arr = new[100];
  chnl1_arr = new[100];
  chnl2_arr = new[100];
  foreach(chnl0_arr[i]) begin
    chnl0_arr[i] = 'h00C0_00000 + i;
	chnl1_arr[i] = 'h00C1_00000 + i;
	chnl2_arr[i] = 'h00C2_00000 + i;
  end
end

// USER TODO
// use the dynamic array, user would send all of data
// data test
initial begin 
  @(posedge rstn);
  repeat(5) @(posedge clk);
  // channel 0 test
  // TODO use chnl0_arr to send all data
  foreach(chnl0_arr[i]) chnl_write(0, chnl0_arr[i]);

  // channel 1 test
  // TODO use chnl1_arr to send all data
  foreach(chnl1_arr[i]) chnl_write(1, chnl1_arr[i]);

  // channel 2 test
  // TODO use chnl2_arr to send all data
  foreach(chnl2_arr[i]) chnl_write(2, chnl2_arr[i]);

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
