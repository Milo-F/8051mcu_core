`timescale 1ns/1ps

`include "param_def.v"

interface chnl_intf(input clk, input rstn);
  logic [31:0] ch_data;
  logic        ch_valid;
  logic        ch_ready;
  clocking drv_ck @(posedge clk);
    default input #1ns output #1ns;
    output ch_data, ch_valid;
    input ch_ready;
  endclocking
  clocking mon_ck @(posedge clk);
    default input #1ns output #1ns;
    input ch_data, ch_valid, ch_ready;
  endclocking
endinterface

interface reg_intf(input clk, input rstn);
  logic [1:0]                 cmd;
  logic [`ADDR_WIDTH-1:0]     cmd_addr;
  logic [`CMD_DATA_WIDTH-1:0] cmd_data_s2m;
  logic [`CMD_DATA_WIDTH-1:0] cmd_data_m2s;
  clocking drv_ck @(posedge clk);
    default input #1ns output #1ns;
    output cmd, cmd_addr, cmd_data_m2s;
    input cmd_data_s2m;
  endclocking
  clocking mon_ck @(posedge clk);
    default input #1ns output #1ns;
    input cmd, cmd_addr, cmd_data_m2s, cmd_data_s2m;
  endclocking
endinterface

interface arb_intf(input clk, input rstn);
  // ... ignored
endinterface

interface fmt_intf(input clk, input rstn);
  logic        fmt_grant;
  logic [1:0]  fmt_chid;
  logic        fmt_req;
  logic [5:0]  fmt_length;
  logic [31:0] fmt_data;
  logic        fmt_start;
  logic        fmt_end;
  clocking drv_ck @(posedge clk);
    default input #1ns output #1ns;
    input fmt_chid, fmt_req, fmt_length, fmt_data, fmt_start;
    output fmt_grant;
  endclocking
  clocking mon_ck @(posedge clk);
    default input #1ns output #1ns;
    input fmt_grant, fmt_chid, fmt_req, fmt_length, fmt_data, fmt_start;
  endclocking
endinterface

interface mcdf_intf(input clk, input rstn);
  // USER TODO
  // To define those signals which do not exsit in
  // reg_if, chnl_if, arb_if or fmt_if


  clocking mon_ck @(posedge clk);
    default input #1ns output #1ns;
  endclocking
endinterface

module tb;
  logic         clk;
  logic         rstn;

  mcdf dut(
     .clk_i       (clk                )
    ,.rstn_i      (rstn               )
    ,.cmd_i       (reg_if.cmd         ) 
    ,.cmd_addr_i  (reg_if.cmd_addr    ) 
    ,.cmd_data_i  (reg_if.cmd_data_m2s)  
    ,.cmd_data_o  (reg_if.cmd_data_s2m)  
    ,.ch0_data_i  (chnl0_if.ch_data   )
    ,.ch0_vld_i   (chnl0_if.ch_valid  )
    ,.ch0_ready_o (chnl0_if.ch_ready  )
    ,.ch1_data_i  (chnl1_if.ch_data   )
    ,.ch1_vld_i   (chnl1_if.ch_valid  )
    ,.ch1_ready_o (chnl1_if.ch_ready  )
    ,.ch2_data_i  (chnl2_if.ch_data   )
    ,.ch2_vld_i   (chnl2_if.ch_valid  )
    ,.ch2_ready_o (chnl2_if.ch_ready  )
    ,.fmt_grant_i (fmt_if.fmt_grant   ) 
    ,.fmt_chid_o  (fmt_if.fmt_chid    ) 
    ,.fmt_req_o   (fmt_if.fmt_req     ) 
    ,.fmt_length_o(fmt_if.fmt_length  )    
    ,.fmt_data_o  (fmt_if.fmt_data    )  
    ,.fmt_start_o (fmt_if.fmt_start   )  
    ,.fmt_end_o   (fmt_if.fmt_end     )  
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

  import chnl_pkg::*;
  import reg_pkg::*;
  import arb_pkg::*;
  import fmt_pkg::*;
  import mcdf_pkg::*;

  reg_intf  reg_if(.*);
  chnl_intf chnl0_if(.*);
  chnl_intf chnl1_if(.*);
  chnl_intf chnl2_if(.*);
  arb_intf  arb_if(.*);
  fmt_intf  fmt_if(.*);
  mcdf_intf mcdf_if(.*);

  mcdf_data_consistence_basic_test t1;
  mcdf_base_test tests[string];
  string name;

  initial begin 
    t1 = new();
    tests["mcdf_data_consistence_basic_test"] = t1;
    if($value$plusargs("TESTNAME=%s", name)) begin
      if(tests.exists(name)) begin
        tests[name].set_interface(chnl0_if, chnl1_if, chnl2_if, reg_if, fmt_if, mcdf_if);
        tests[name].run();
      end
      else begin
        $fatal($sformatf("[ERRTEST], test name %s is invalid, please specify a valid name!", name));
      end
    end
    else begin
      $display("NO runtime optiont +TESTNAME=xxx is configured, and run default test mcdf_data_consistence_basic_test");
      tests["mcdf_data_consistence_basic_test"].set_interface(chnl0_if, chnl1_if, chnl2_if, reg_if, fmt_if, mcdf_if);
      tests["mcdf_data_consistence_basic_test"].run();
    end
  end
endmodule

