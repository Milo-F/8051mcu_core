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
endinterface

class chnl_trans;
  int data;
  int id;
  int num;
endclass

class chnl_initiator;
  local string name;
  local int idle_cycles;
  virtual chnl_intf intf;

  function new(string name = "chnl_initiator");
    this.name = name;
    this.idle_cycles = 1;
  endfunction

  function void set_idle_cycles(int n);
    this.idle_cycles = n;
  endfunction

  function void set_name(string s);
    this.name = s;
  endfunction

  function void set_interface(virtual chnl_intf intf);
    if(intf == null)
      $error("interface handle is NULL, please check if target interface has been intantiated");
    else
      this.intf = intf;
  endfunction

  task chnl_write(input chnl_trans t);
    @(posedge intf.clk);
    // USER TODO 1.1
    // Please use the clocking drv_ck of chnl_intf to drive data
    intf.ch_valid <= 1;
    intf.ch_data <= t.data;
    wait(intf.ch_ready === 'b1);
    $display("%t channel initiator [%s] sent data %x", $time, name, t.data);
    // USER TODO 1.2
    // Apply variable idle_cycles and decide how many idle cycles to be
    // inserted between two sequential data
    chnl_idle();
  endtask
  
  task chnl_idle();
    @(posedge intf.clk);
    // USER TODO 1.1
    // Please use the clocking drv_ck of chnl_intf to drive data
    intf.ch_valid <= 0;
    intf.ch_data <= 0;
  endtask
endclass

// USER TODO 3.4
// check if the object use is correct?
class chnl_generator;
  chnl_trans trans[$];
  int num;
  int id;
  chnl_trans t;
  function new(int n);
    this.id = n;
    this.num = 0;
    t = new();
  endfunction
  function chnl_trans get_trans();
    t.data = 'h00C0_0000 + (this.id<<16) + this.num;
    t.id = this.id;
    t.num = this.num;
    this.num++;
    this.trans.push_back(t);
    return t;
  endfunction
endclass

module tb3;
  logic         clk;
  logic         rstn;
  logic [31:0]  mcdt_data;
  logic         mcdt_val;
  logic [ 1:0]  mcdt_id;
  
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
    ,.mcdt_data_o (mcdt_data          )
    ,.mcdt_val_o  (mcdt_val           )
    ,.mcdt_id_o   (mcdt_id            )
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

  chnl_intf chnl0_if(.*);
  chnl_intf chnl1_if(.*);
  chnl_intf chnl2_if(.*);

  chnl_initiator chnl0_init;
  chnl_initiator chnl1_init;
  chnl_initiator chnl2_init;
  chnl_generator chnl0_gen;
  chnl_generator chnl1_gen;
  chnl_generator chnl2_gen;
  
  initial begin 
    // USER TODO 3.1
    // instantiate the components chn0/1/2_init chnl0/1/2_gen

    // USER TODO 3.2
    // assign the interface handle to each chnl_initiator objects

    // USER TODO 3.3
    // START TESTs
    $display("*****************all of tests have been finished********************");
    $finish();
  end

  // each channel send data with idle_cycles inside [1:3]
  // each channel send out 200 data
  // then to finish the test
  task automatic basic_test();
    chnl0_init.set_idle_cycles($urandom_range(1, 3));
    chnl1_init.set_idle_cycles($urandom_range(1, 3));
    chnl2_init.set_idle_cycles($urandom_range(1, 3));
    $display("basic_test initialized components");
    wait (rstn === 1'b1);
    repeat(5) @(posedge clk);
    $display("basic_test started testing DUT");
    // Please check the SV book for fork-join basic knowledge
    // and get understood it is for parallel thread running
    fork
      repeat(100) chnl0_init.chnl_write(chnl0_gen.get_trans());
      repeat(100) chnl1_init.chnl_write(chnl1_gen.get_trans());
      repeat(100) chnl2_init.chnl_write(chnl2_gen.get_trans());
    join
    $display("basic_test finished testing DUT");
  endtask

  // USER TODO 2.1
  // each channel send data with idle_cycles == 0
  // each channel send out 500 data
  // then to finish the test
  task automatic burst_test();
  endtask

  // USER TODO 2.2
  // The test should be immediately finished when all of channels
  // have been reached fifo full state, but not all reaching
  // fifo full at the same time
  task automatic fifo_full_test();
  endtask

endmodule

