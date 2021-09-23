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

package chnl_pkg;
  class chnl_trans;
    int data;
    int id;
    int num;
  endclass: chnl_trans
  
  class chnl_initiator;
    local string name;
    local int idle_cycles;
    local virtual chnl_intf intf;
  
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
  endclass: chnl_initiator
  
  class chnl_generator;
    chnl_trans trans[$];
    int num;
    int id;
    function new(int n);
      this.id = n;
      this.num = 0;
    endfunction
    function chnl_trans get_trans();
      chnl_trans t = new();
      t.data = 'h00C0_0000 + (this.id<<16) + this.num;
      t.id = this.id;
      t.num = this.num;
      this.num++;
      this.trans.push_back(t);
      return t;
    endfunction
  endclass: chnl_generator

  class chnl_agent;
    chnl_generator gen;
    chnl_initiator init;
    local int ntrans;
    local virtual chnl_intf vif;
    function new(string name = "chnl_agent", int id = 0, int ntrans = 1);
      this.gen = new(id);
      this.init = new(name);
      this.ntrans = ntrans;
    endfunction
    function void set_ntrans(int n);
      this.ntrans = n;
    endfunction
    function void set_interface(virtual chnl_intf vif);
      this.vif = vif;
      init.set_interface(vif);
    endfunction
    task run();
      repeat(this.ntrans) this.init.chnl_write(this.gen.get_trans());
    endtask
  endclass: chnl_agent

  class chnl_root_test;
    chnl_agent agent[3];
    protected string name;
    function new(int ntrans = 100, string name = "chnl_root_test");
      foreach(agent[i]) begin
        this.agent[i] = new($sformatf("chnl_agent%0d",i), i, ntrans);
      end
      this.name = name;
      $display("%s instantiate objects", this.name);
    endfunction
    task run();
      $display("%s started testing DUT", this.name);
      fork
        agent[0].run();
        agent[1].run();
        agent[2].run();
      join
      $display("%s finished testing DUT", this.name);
    endtask
    function void set_interface(virtual chnl_intf ch0_vif, virtual chnl_intf ch1_vif, virtual chnl_intf ch2_vif);
      agent[0].set_interface(ch0_vif);
      agent[1].set_interface(ch1_vif);
      agent[2].set_interface(ch2_vif);
    endfunction
  endclass

  // each channel send data with idle_cycles inside [1:3]
  // each channel send out 200 data
  // then to finish the test
  class chnl_basic_test extends chnl_root_test;
    function new(int ntrans = 200, string name = "chnl_basic_test");
      super.new(ntrans, name);
      foreach(agent[i]) begin
        this.agent[i].init.set_idle_cycles($urandom_range(1, 3));
      end
      $display("%s configured objects", this.name);
    endfunction
  endclass: chnl_basic_test

  // USER TODO 4.2
  // Refer to chnl_basic_test, and extend another 2 tests
  // chnl_burst_test, chnl_fifo_full_test
  // each channel send data with idle_cycles == 0
  // each channel send out 500 data
  // then to finish the test
  class chnl_burst_test extends chnl_root_test;
    //USER TODO
  endclass: chnl_burst_test

  // USER TODO 4.2
  // The test should be immediately finished when all of channels
  // have been reached fifo full state, but not all reaching
  // fifo full at the same time
  class chnl_fifo_full_test extends chnl_root_test;
    // USER TODO
  endclass: chnl_fifo_full_test

endpackage: chnl_pkg


module tb4;
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

  // USER TODO 4.1
  // import defined class from chnl_pkg

  chnl_intf chnl0_if(.*);
  chnl_intf chnl1_if(.*);
  chnl_intf chnl2_if(.*);

  chnl_basic_test basic_test;
  chnl_burst_test burst_test;
  chnl_fifo_full_test fifo_full_test;

  initial begin 
    // USER TODO 4.3
    // Instantiate the three test environment

    // USER TODO 4.4
    // assign the interface handle to each chnl_initiator objects

    // USER TODO 4.5
    // START TESTs
    $display("*****************all of tests have been finished********************");
    $finish();
  end


endmodule

