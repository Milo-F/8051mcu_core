`timescale 1ns/1ps

interface chnl_intf(input clk, input rstn);
  logic [31:0] ch_data;
  logic        ch_valid;
  logic        ch_ready;
  logic [ 5:0] ch_margin;
  clocking drv_ck @(posedge clk);
    default input #1ns output #1ns;
    output ch_data, ch_valid;
    input ch_ready, ch_margin;
  endclocking
  clocking mon_ck @(posedge clk);
    default input #1ns output #1ns;
    input ch_data, ch_valid, ch_ready, ch_margin;
  endclocking
endinterface

interface mcdt_intf(input clk, input rstn);
  logic [31:0]  mcdt_data;
  logic         mcdt_val;
  logic [ 1:0]  mcdt_id;
  clocking mon_ck @(posedge clk);
    default input #1ns output #1ns;
    input mcdt_data, mcdt_val, mcdt_id;
  endclocking
endinterface

module tb3;
  logic         clk;
  logic         rstn;
  
  mcdt dut(
     .clk_i       (clk                )
    ,.rstn_i      (rstn               )
    ,.ch0_data_i  (chnl0_if.ch_data   )
    ,.ch0_valid_i (chnl0_if.ch_valid  )
    ,.ch0_ready_o (chnl0_if.ch_ready  )
    ,.ch0_margin_o(chnl0_if.ch_margin )
    ,.ch1_data_i  (chnl1_if.ch_data   )
    ,.ch1_valid_i (chnl1_if.ch_valid  )
    ,.ch1_ready_o (chnl1_if.ch_ready  )
    ,.ch1_margin_o(chnl1_if.ch_margin )
    ,.ch2_data_i  (chnl2_if.ch_data   )
    ,.ch2_valid_i (chnl2_if.ch_valid  )
    ,.ch2_ready_o (chnl2_if.ch_ready  )
    ,.ch2_margin_o(chnl2_if.ch_margin )
    ,.mcdt_data_o (mcdt_if.mcdt_data  )
    ,.mcdt_val_o  (mcdt_if.mcdt_val   )
    ,.mcdt_id_o   (mcdt_if.mcdt_id    )
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

  import chnl_pkg3::*;

  chnl_intf chnl0_if(.*);
  chnl_intf chnl1_if(.*);
  chnl_intf chnl2_if(.*);
  mcdt_intf mcdt_if(.*);

  chnl_basic_test basic_test;
  chnl_burst_test burst_test;
  chnl_fifo_full_test fifo_full_test;
  chnl_root_test tests[string];
  string name;

  initial begin 
    basic_test = new();
    burst_test = new();
    fifo_full_test = new();
    tests["chnl_basic_test"] = basic_test;
    tests["chnl_burst_test"] = burst_test;
    tests["chnl_fifo_full_test"] = fifo_full_test;
    if($value$plusargs("TESTNAME=%s", name)) begin
      if(tests.exists(name)) begin
        tests[name].set_interface(chnl0_if, chnl1_if, chnl2_if, mcdt_if);
        tests[name].run();
      end
      else begin
        $fatal($sformatf("[ERRTEST], test name %s is invalid, please specify a valid name!", name));
      end
    end
    else begin
      $display("NO runtime optiont TEST=[testname] is configured, and run default test chnl_basic_test");
      tests["chnl_basic_test"].set_interface(chnl0_if, chnl1_if, chnl2_if, mcdt_if);
      tests["chnl_basic_test"].run(); 
    end
  end
endmodule

