`include "param_def.v"

package mcdf_pkg;

  import chnl_pkg::*;
  import reg_pkg::*;
  import arb_pkg::*;
  import fmt_pkg::*;
  import rpt_pkg::*;

  typedef struct packed {
    bit[2:0] len;
    bit[1:0] prio;
    bit en;
    bit[7:0] avail;
  } mcdf_reg_t;

  typedef enum {RW_LEN, RW_PRIO, RW_EN, RD_AVAIL} mcdf_field_t;

  class mcdf_refmod;
    local virtual mcdf_intf intf;
    local string name;
    mcdf_reg_t regs[3];
    mailbox #(reg_trans) reg_mb;
    mailbox #(mon_data_t) in_mbs[3];
    mailbox #(fmt_trans) out_mbs[3];

    function new(string name="mcdf_refmod");
      this.name = name;
      foreach(this.out_mbs[i]) this.out_mbs[i] = new();
    endfunction

    task run();
      fork
        do_reset();
        this.do_reg_update();
        do_packet(0);
        do_packet(1);
        do_packet(2);
      join
    endtask

    task do_reg_update();
      reg_trans t;
      forever begin
        this.reg_mb.get(t);
        if(t.addr[7:4] == 0 && t.cmd == `WRITE) begin
          this.regs[t.addr[3:2]].en = t.data[0];
          this.regs[t.addr[3:2]].prio = t.data[2:1];
          this.regs[t.addr[3:2]].len = t.data[5:3];
        end
        else if(t.addr[7:4] == 1 && t.cmd == `READ) begin
          this.regs[t.addr[3:2]].avail = t.data[7:0];
        end
      end
    endtask

    task do_packet(int id);
      fmt_trans ot;
      mon_data_t it;
      forever begin
        this.in_mbs[id].peek(it);
        ot = new();
        ot.length = 4 << (this.get_field_value(id, RW_LEN) & 'b11);
        ot.data = new[ot.length];
        ot.ch_id = id;
        foreach(ot.data[m]) begin
          this.in_mbs[id].get(it);
          ot.data[m] = it.data;
        end
        this.out_mbs[id].put(ot);
      end
    endtask

    function int get_field_value(int id, mcdf_field_t f);
      case(f)
        RW_LEN: return regs[id].len;
        RW_PRIO: return regs[id].prio;
        RW_EN: return regs[id].en;
        RD_AVAIL: return regs[id].avail;
      endcase
    endfunction 

    task do_reset();
      forever begin
        @(negedge intf.rstn); 
        foreach(regs[i]) begin
          regs[i].len = 'h0;
          regs[i].prio = 'h3;
          regs[i].en = 'h1;
          regs[i].avail = 'h20;
        end
      end
    endtask

    function void set_interface(virtual mcdf_intf intf);
      if(intf == null)
        $error("interface handle is NULL, please check if target interface has been intantiated");
      else
        this.intf = intf;
    endfunction
    
  endclass

  class mcdf_checker;
    local string name;
    local int err_count;
    local int total_count;
    local int chnl_count[3];
    local virtual mcdf_intf intf;
    local mcdf_refmod refmod;
    mailbox #(mon_data_t) chnl_mbs[3];
    mailbox #(fmt_trans) fmt_mb;
    mailbox #(reg_trans) reg_mb;
    mailbox #(fmt_trans) exp_mbs[3];

    function new(string name="mcdf_checker");
      this.name = name;
      foreach(this.chnl_mbs[i]) this.chnl_mbs[i] = new();
      this.fmt_mb = new();
      this.reg_mb = new();
      this.refmod = new();
      foreach(this.refmod.in_mbs[i]) begin
        this.refmod.in_mbs[i] = this.chnl_mbs[i];
        this.exp_mbs[i] = this.refmod.out_mbs[i];
      end
      this.refmod.reg_mb = this.reg_mb;
      this.err_count = 0;
      this.total_count = 0;
      foreach(this.chnl_count[i]) this.chnl_count[i] = 0;
    endfunction

    function void set_interface(virtual mcdf_intf intf);
      if(intf == null)
        $error("interface handle is NULL, please check if target interface has been intantiated");
      else
        this.intf = intf;
        this.refmod.set_interface(intf);
    endfunction

    task run();
      fork
        this.do_compare();
        this.refmod.run();
      join
    endtask

    task do_compare();
      fmt_trans expt, mont;
      bit cmp;
      forever begin
        this.fmt_mb.get(mont);
        this.exp_mbs[mont.ch_id].get(expt);
        cmp = mont.compare(expt);   
        this.total_count++;
        this.chnl_count[mont.ch_id]++;
        if(cmp == 0) begin
          this.err_count++;
          rpt_pkg::rpt_msg("[CMPFAIL]", 
            $sformatf("%0t %0dth times comparing but failed! MCDF monitored output packet is different with reference model output", $time, this.total_count),
            rpt_pkg::ERROR,
            rpt_pkg::TOP,
            rpt_pkg::LOG);
        end
        else begin
          rpt_pkg::rpt_msg("[CMPSUCD]",
            $sformatf("%0t %0dth times comparing and succeeded! MCDF monitored output packet is the same with reference model output", $time, this.total_count),
            rpt_pkg::INFO,
            rpt_pkg::HIGH);
        end
      end
    endtask

    function void do_report();
      string s;
      s = "\n---------------------------------------------------------------\n";
      s = {s, "CHECKER SUMMARY \n"}; 
      s = {s, $sformatf("total comparison count: %0d \n", this.total_count)}; 
      foreach(this.chnl_count[i]) s = {s, $sformatf(" channel[%0d] comparison count: %0d \n", i, this.chnl_count[i])};
      s = {s, $sformatf("total error count: %0d \n", this.err_count)}; 
      foreach(this.chnl_mbs[i]) begin
        if(this.chnl_mbs[i].num() != 0)
          s = {s, $sformatf("WARNING:: chnl_mbs[%0d] is not empty! size = %0d \n", i, this.chnl_mbs[i].num())}; 
      end
      if(this.fmt_mb.num() != 0)
          s = {s, $sformatf("WARNING:: fmt_mb is not empty! size = %0d \n", this.fmt_mb.num())}; 
      s = {s, "---------------------------------------------------------------\n"};
      rpt_pkg::rpt_msg($sformatf("[%s]",this.name), s, rpt_pkg::INFO, rpt_pkg::TOP);
    endfunction
  endclass


  class mcdf_env;
    chnl_agent chnl_agts[3];
    reg_agent reg_agt;
    fmt_agent fmt_agt;
    mcdf_checker chker;
    protected string name;

    function new(string name = "mcdf_env");
      this.name = name;
      this.chker = new();
      foreach(chnl_agts[i]) begin
        this.chnl_agts[i] = new($sformatf("chnl_agts[%0d]",i));
        this.chnl_agts[i].monitor.mon_mb = this.chker.chnl_mbs[i];
      end
      this.reg_agt = new("reg_agt");
      this.reg_agt.monitor.mon_mb = this.chker.reg_mb;
      this.fmt_agt = new("fmt_agt");
      this.fmt_agt.monitor.mon_mb = this.chker.fmt_mb;
      $display("%s instantiated and connected objects", this.name);
    endfunction

    virtual task run();
      $display($sformatf("*****************%s started********************", this.name));
      this.do_config();
      fork
        this.chnl_agts[0].run();
        this.chnl_agts[1].run();
        this.chnl_agts[2].run();
        this.reg_agt.run();
        this.fmt_agt.run();
        this.chker.run();
      join
    endtask

    virtual function void do_config();
    endfunction

    virtual function void do_report();
      this.chker.do_report();
    endfunction

  endclass

  class mcdf_base_test;
    chnl_generator chnl_gens[3];
    reg_generator reg_gen;
    fmt_generator fmt_gen;
    mcdf_env env;
    protected string name;

    function new(string name = "mcdf_base_test");
      this.name = name;
      this.env = new("env");

      foreach(this.chnl_gens[i]) begin
        this.chnl_gens[i] = new();
        this.env.chnl_agts[i].driver.req_mb = this.chnl_gens[i].req_mb;
        this.env.chnl_agts[i].driver.rsp_mb = this.chnl_gens[i].rsp_mb;
      end

      this.reg_gen = new();
      this.env.reg_agt.driver.req_mb = this.reg_gen.req_mb;
      this.env.reg_agt.driver.rsp_mb = this.reg_gen.rsp_mb;

      this.fmt_gen = new();
      this.env.fmt_agt.driver.req_mb = this.fmt_gen.req_mb;
      this.env.fmt_agt.driver.rsp_mb = this.fmt_gen.rsp_mb;

      rpt_pkg::logname = {this.name, "_check.log"};
      rpt_pkg::clean_log();
      $display("%s instantiated and connected objects", this.name);
    endfunction

    virtual task run();
      fork
        env.run();
      join_none
      rpt_pkg::rpt_msg("[TEST]",
        $sformatf("=====================%s AT TIME %0t STARTED=====================", this.name, $time),
        rpt_pkg::INFO,
        rpt_pkg::HIGH);
      this.do_reg();
      this.do_formatter();
      this.do_data();
      rpt_pkg::rpt_msg("[TEST]",
        $sformatf("=====================%s AT TIME %0t FINISHED=====================", this.name, $time),
        rpt_pkg::INFO,
        rpt_pkg::HIGH);
      this.do_report();
      $finish();
    endtask

    // do register configuration
    virtual task do_reg();
    endtask

    // do external formatter down stream slave configuration
    virtual task do_formatter();
    endtask

    // do data transition from 3 channel slaves
    virtual task do_data();
    endtask

    // do simulation summary
    virtual function void do_report();
      this.env.do_report();
      rpt_pkg::do_report();
    endfunction

    virtual function void set_interface(virtual chnl_intf ch0_vif 
                                        ,virtual chnl_intf ch1_vif 
                                        ,virtual chnl_intf ch2_vif 
                                        ,virtual reg_intf reg_vif
                                        ,virtual fmt_intf fmt_vif
                                        ,virtual mcdf_intf mcdf_vif
                                      );
      this.env.chnl_agts[0].set_interface(ch0_vif);
      this.env.chnl_agts[1].set_interface(ch1_vif);
      this.env.chnl_agts[2].set_interface(ch2_vif);
      this.env.reg_agt.set_interface(reg_vif);
      this.env.fmt_agt.set_interface(fmt_vif);
      this.env.chker.set_interface(mcdf_vif);
    endfunction

    virtual function bit diff_value(int val1, int val2, string id = "value_compare");
      if(val1 != val2) begin
        rpt_pkg::rpt_msg("[CMPERR]", 
          $sformatf("ERROR! %s val1 %8x != val2 %8x", id, val1, val2), 
          rpt_pkg::ERROR, 
          rpt_pkg::TOP);
        return 0;
      end
      else begin
        rpt_pkg::rpt_msg("[CMPSUC]", 
          $sformatf("SUCCESS! %s val1 %8x == val2 %8x", id, val1, val2),
          rpt_pkg::INFO,
          rpt_pkg::HIGH);
        return 1;
      end
    endfunction

    virtual task idle_reg();
      void'(reg_gen.randomize() with {cmd == `IDLE; addr == 0; data == 0;});
      reg_gen.start();
    endtask

    virtual task write_reg(bit[7:0] addr, bit[31:0] data);
      void'(reg_gen.randomize() with {cmd == `WRITE; addr == local::addr; data == local::data;});
      reg_gen.start();
    endtask

    virtual task read_reg(bit[7:0] addr, output bit[31:0] data);
      void'(reg_gen.randomize() with {cmd == `READ; addr == local::addr;});
      reg_gen.start();
      data = reg_gen.data;
    endtask
  endclass

  class mcdf_data_consistence_basic_test extends mcdf_base_test;
    function new(string name = "mcdf_data_consistence_basic_test");
      super.new(name);
    endfunction

    task do_reg();
      bit[31:0] wr_val, rd_val;
      // slv0 with len=8,  prio=0, en=1
      wr_val = (1<<3)+(0<<1)+1;
      this.write_reg(`SLV0_RW_ADDR, wr_val);
      this.read_reg(`SLV0_RW_ADDR, rd_val);
      void'(this.diff_value(wr_val, rd_val, "SLV0_WR_REG"));

      // slv1 with len=16, prio=1, en=1
      wr_val = (2<<3)+(1<<1)+1;
      this.write_reg(`SLV1_RW_ADDR, wr_val);
      this.read_reg(`SLV1_RW_ADDR, rd_val);
      void'(this.diff_value(wr_val, rd_val, "SLV1_WR_REG"));

      // slv2 with len=32, prio=2, en=1
      wr_val = (3<<3)+(2<<1)+1;
      this.write_reg(`SLV2_RW_ADDR, wr_val);
      this.read_reg(`SLV2_RW_ADDR, rd_val);
      void'(this.diff_value(wr_val, rd_val, "SLV2_WR_REG"));

      // send IDLE command
      this.idle_reg();
    endtask

    task do_formatter();
      void'(fmt_gen.randomize() with {fifo == LONG_FIFO; bandwidth == HIGH_WIDTH;});
      fmt_gen.start();
    endtask

    task do_data();
      void'(chnl_gens[0].randomize() with {ntrans==100; ch_id==0; data_nidles==0; pkt_nidles==1; data_size==8; });
      void'(chnl_gens[1].randomize() with {ntrans==100; ch_id==1; data_nidles==1; pkt_nidles==4; data_size==16;});
      void'(chnl_gens[2].randomize() with {ntrans==100; ch_id==2; data_nidles==2; pkt_nidles==8; data_size==32;});
      fork
        chnl_gens[0].start();
        chnl_gens[1].start();
        chnl_gens[2].start();
      join
      #10us; // wait until all data haven been transfered through MCDF
    endtask
  endclass

endpackage
