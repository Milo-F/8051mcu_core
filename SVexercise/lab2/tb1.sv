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

module chnl_initiator(chnl_intf intf);
  string name;
  int idle_cycles = 1;
  function automatic void set_idle_cycles(int n);
    idle_cycles = n;
  endfunction
  function automatic void set_name(string s);
    name = s;
  endfunction
  task automatic chnl_write(input logic[31:0] data);
    @(posedge intf.clk);
    // USER TODO 1.1
    // Please use the clocking drv_ck of chnl_intf to drive data
    intf.ch_valid <= 1;
    intf.ch_data <= data;
    wait(intf.ch_ready === 'b1);
    $display("%t channel initiator [%s] sent data %x", $time, name, data);
    // USER TODO 1.2
    // Apply variable idle_cycles and decide how many idle cycles to be
    // inserted between two sequential data
    chnl_idle();
  endtask
  task automatic chnl_idle();
    @(posedge intf.clk);
    // USER TODO 1.1
    // Please use the clocking drv_ck of chnl_intf to drive data
    intf.ch_valid <= 0;
    intf.ch_data <= 0;
  endtask
endmodule

module chnl_generator;
  int chnl_arr[$];
  int num;
  int id;
  function automatic void initialize(int n);
    id = n;
    num = 0;
  endfunction
  function automatic int get_data();
    int data;
    data = 'h00C0_0000 + (id<<16) + num;
    num++;
    chnl_arr.push_back(data);
    return data;
  endfunction
endmodule

module tb1;
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
  
  initial begin 
    // verification component initializationi
    chnl0_gen.initialize(0);
    chnl1_gen.initialize(1);
    chnl2_gen.initialize(2);
    chnl0_init.set_name("chnl0_init");
    chnl1_init.set_name("chnl1_init");
    chnl2_init.set_name("chnl2_init");
    chnl0_init.set_idle_cycles(0);
    chnl1_init.set_idle_cycles(0);
    chnl2_init.set_idle_cycles(0);   
  end

  initial begin
    @(posedge rstn);
    repeat(5) @(posedge clk);
    repeat(100) begin
      chnl0_init.chnl_write(chnl0_gen.get_data());      
    end
    chnl0_init.chnl_idle(); 
  end
 
  initial begin
    @(posedge rstn);
    repeat(5) @(posedge clk);
    repeat(100) begin
      chnl1_init.chnl_write(chnl1_gen.get_data());  
    end
    chnl1_init.chnl_idle(); 
  end

  initial begin
    @(posedge rstn);
    repeat(5) @(posedge clk);
    repeat(100) begin
      chnl2_init.chnl_write(chnl2_gen.get_data());
    end
    chnl2_init.chnl_idle(); 
  end
  
  chnl_intf chnl0_if(.*);
  chnl_intf chnl1_if(.*);
  chnl_intf chnl2_if(.*);

  chnl_initiator chnl0_init(chnl0_if);
  chnl_initiator chnl1_init(chnl1_if);
  chnl_initiator chnl2_init(chnl2_if);

  chnl_generator chnl0_gen();
  chnl_generator chnl1_gen();
  chnl_generator chnl2_gen();

endmodule

