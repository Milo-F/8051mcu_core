package chnl_pkg1;
  class chnl_trans;
    rand bit[31:0] data[];
    rand int ch_id;
    rand int pkt_id;
    rand int data_nidles;
    rand int pkt_nidles;
    bit rsp;
    local static int obj_id = 0;
    // USER TODO 1.1.
    // Specify constraint to match the chnl_basic_test request
    constraint cstr{
      data.size inside {[4:8]};
      foreach(data[i]) data[i] == 'hC000_0000 + (this.ch_id<<24) + (this.pkt_id<<8) + i;
      soft ch_id == 0;
      soft pkt_id == 0;
      data_nidles inside {[0:2]};
      pkt_nidles inside {[1:10]};
    };

    function new();
      this.obj_id++;
    endfunction

    function chnl_trans clone();
      chnl_trans c = new();
      c.data = this.data;
      c.ch_id = this.ch_id;
      c.pkt_id = this.pkt_id;
      c.data_nidles = this.data_nidles;
      c.pkt_nidles = this.pkt_nidles;
      c.rsp = this.rsp;
      // USER TODO 1.2
      // Could we put c.obj_id = this.obj_id here? and why?
      return c;
    endfunction

    function string sprint();
      string s;
      s = {s, $sformatf("=======================================\n")};
      s = {s, $sformatf("chnl_trans object content is as below: \n")};
      s = {s, $sformatf("obj_id = %0d: \n", this.obj_id)};
      foreach(data[i]) s = {s, $sformatf("data[%0d] = %8x \n", i, this.data[i])};
      s = {s, $sformatf("ch_id = %0d: \n", this.ch_id)};
      s = {s, $sformatf("pkt_id = %0d: \n", this.pkt_id)};
      s = {s, $sformatf("data_nidles = %0d: \n", this.data_nidles)};
      s = {s, $sformatf("pkt_nidles = %0d: \n", this.pkt_nidles)};
      s = {s, $sformatf("rsp = %0d: \n", this.rsp)};
      s = {s, $sformatf("=======================================\n")};
      return s;
    endfunction
  endclass: chnl_trans
  
  class chnl_initiator;
    local string name;
    local virtual chnl_intf intf;
    mailbox #(chnl_trans) req_mb;
    mailbox #(chnl_trans) rsp_mb;
  
    function new(string name = "chnl_initiator");
      this.name = name;
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

    task run();
      this.drive();
    endtask

    task drive();
      chnl_trans req, rsp;
      @(posedge intf.rstn);
      forever begin
        this.req_mb.get(req);
        this.chnl_write(req);
        rsp = req.clone();
        rsp.rsp = 1;
        this.rsp_mb.put(rsp);
      end
    endtask
  
    task chnl_write(input chnl_trans t);
      foreach(t.data[i]) begin
        @(posedge intf.clk);
        intf.drv_ck.ch_valid <= 1;
        intf.drv_ck.ch_data <= t.data[i];
        wait(intf.ch_ready === 'b1);
        $display("%0t channel initiator [%s] sent data %x", $time, name, t.data[i]);
        repeat(t.data_nidles) chnl_idle();
      end
      repeat(t.pkt_nidles) chnl_idle();
    endtask
    
    task chnl_idle();
      @(posedge intf.clk);
      intf.drv_ck.ch_valid <= 0;
      intf.drv_ck.ch_data <= 0;
    endtask
  endclass: chnl_initiator
  
  class chnl_generator;
    int pkt_id;
    int ch_id;
    int ntrans;
    int data_nidles;
    mailbox #(chnl_trans) req_mb;
    mailbox #(chnl_trans) rsp_mb;

    function new(int ch_id, int ntrans);
      this.ch_id = ch_id;
      this.pkt_id = 0;
      this.ntrans = ntrans;
      this.req_mb = new();
      this.rsp_mb = new();
    endfunction

    task run();
      repeat(ntrans) send_trans();
    endtask

    // generate transaction and put into local mailbox
    task send_trans();
      chnl_trans req, rsp;
      req = new();
      assert(req.randomize with {ch_id == local::ch_id; pkt_id == local::pkt_id;})
        else $fatal("[RNDFAIL] channel packet randomization failure!");
      this.pkt_id++;
      $display(req.sprint());
      this.req_mb.put(req);
      this.rsp_mb.get(rsp);
      $display(rsp.sprint());
      assert(rsp.rsp)
        else $error("[RSPERR] %0t error response received!", $time);
    endtask
  endclass: chnl_generator

  class chnl_agent;
    chnl_generator gen;
    chnl_initiator init;
    local virtual chnl_intf vif;
    function new(string name = "chnl_agent", int id = 0, int ntrans = 1);
      this.gen = new(id, ntrans);
      this.init = new(name);
    endfunction
    function void set_interface(virtual chnl_intf vif);
      this.vif = vif;
      init.set_interface(vif);
    endfunction
    task run();
      this.init.req_mb = this.gen.req_mb;
      this.init.rsp_mb = this.gen.rsp_mb;
      fork
        gen.run();
        init.run();
      join_any
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
      $display($sformatf("*****************%s started********************", this.name));
      fork
        agent[0].run();
        agent[1].run();
        agent[2].run();
      join
      $display($sformatf("*****************%s finished********************", this.name));
      // USER TODO 1.3
      // Please move the $finish statement from the test run task to generator
      // You woudl put it anywhere you like inside generator to stop test when
      // all transactions have been transfered
      $finish();
      // USER TODO 1.4
      // Apply 'vsim -novopt -solvefaildebug -sv_seed 0 work.tb1' to run the
      // simulation, and check if the generated data is the same as previously
      // Then use 'vsim -novopt -solvefaildebug -sv_seed random work.tb1' to
      // run the test 2 times, and check if the data generated of 2 times are
      // is the same or not?
      
      // USER TODO 1.5
      // In the last chnl_trans object content display, why the object_id is
      // 1200? How is it counted and finally as the value 1200?
    endtask
    function void set_interface(virtual chnl_intf ch0_vif, virtual chnl_intf ch1_vif, virtual chnl_intf ch2_vif);
      agent[0].set_interface(ch0_vif);
      agent[1].set_interface(ch1_vif);
      agent[2].set_interface(ch2_vif);
    endfunction
  endclass

  // USER TODO 1.1
  // each channel send data with idle_cycles inside [0:2]
  // and idle peroids between sequential packets should be inside [3:5]
  // each channel send out 200 data then to finish the test
  // The idle_cycle constraint should be specified inside chnl_trans
  class chnl_basic_test extends chnl_root_test;
    function new(int ntrans = 200, string name = "chnl_basic_test");
      super.new(ntrans, name);
    endfunction
  endclass: chnl_basic_test

  class chnl_burst_test extends chnl_root_test;
    //USER TODO
  endclass: chnl_burst_test

  class chnl_fifo_full_test extends chnl_root_test;
    // USER TODO
  endclass: chnl_fifo_full_test

endpackage


