`timescale 1ns/1ps


module chnl_initiator(
  input               clk,
  input               rstn,
  output logic [31:0] ch_data,
  output logic        ch_valid,
  input               ch_ready,
  input        [ 5:0] ch_margin
);

string name;

function void set_name(string s);
  name = s;
endfunction

task chnl_write(input logic[31:0] data);
    // USER TODO
    // drive valid data
    @(posedge clk);
    ch_data <= data;
    ch_valid <= 1'b1;
    @(negedge clk);
    wait(ch_ready == 1);
    $display("%t channel initial [%s] sent data %x", $time, name, data);
    chnl_idle();
endtask

task chnl_idle();
  // USER TODO
  // drive idle data
    @(posedge clk);
    ch_valid <= 1'b0;
    ch_data <= 32'b0;
endtask

endmodule

module tb4;
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
    foreach (chnl0_arr[i]) begin
        chnl0_arr[i] = 32'h00c0_0000 + i;
        chnl1_arr[i] = 32'h00c1_0000 + i;
        chnl2_arr[i] = 32'h00c2_0000 + i;
    end
end

// USER TODO
// use the dynamic array, user would send all of data
// data test
initial begin 
  @(posedge rstn);
  repeat(5) @(posedge clk);
  // USER TODO
  // Give unique names to each channel initiator
  // ...


  // channel 0 test
  // TODO use chnl0_arr to send all data
  chnl0_init.chnl_write('h00C0_0000);
  chnl0_init.chnl_write('h00C0_0001);
  chnl0_init.chnl_write('h00C0_0002);
  chnl0_init.chnl_write('h00C0_0003);

  // channel 1 test
  // TODO use chnl1_arr to send all data
  chnl1_init.chnl_write('h00C1_0000);
  chnl1_init.chnl_write('h00C1_0001);
  chnl1_init.chnl_write('h00C1_0002);
  chnl1_init.chnl_write('h00C1_0003);

  // channel 2 test
  // TODO use chnl2_arr to send all data
  chnl2_init.chnl_write('h00C2_0000);
  chnl2_init.chnl_write('h00C2_0001);
  chnl2_init.chnl_write('h00C2_0002);
  chnl2_init.chnl_write('h00C2_0003);
end

chnl_initiator chnl0_init(
  .clk      (clk),
  .rstn     (rstn),
  .ch_data  (ch0_data),
  .ch_valid (ch0_valid),
  .ch_ready (ch0_ready),
  .ch_margin(ch0_margin) 
);

chnl_initiator chnl1_init(
  .clk      (clk),
  .rstn     (rstn),
  .ch_data  (ch1_data),
  .ch_valid (ch1_valid),
  .ch_ready (ch1_ready),
  .ch_margin(ch1_margin) 
);

chnl_initiator chnl2_init(
  .clk      (clk),
  .rstn     (rstn),
  .ch_data  (ch2_data),
  .ch_valid (ch2_valid),
  .ch_ready (ch2_ready),
  .ch_margin(ch2_margin) 
);

endmodule

