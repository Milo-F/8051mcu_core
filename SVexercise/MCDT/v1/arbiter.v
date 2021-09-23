//------------------------------------------------------------------------------------------------------------------------//
//2017-09-10: V0.1 zhangshi   arbiter with simple Round Robin of MCDT 
//2017-09-12: V0.2 zhangshi   output is only depend on slv_valid signal, if valid then output.
//------------------------------------------------------------------------------------------------------------------------//
module arbiter(
input                    clk_i,
input                    rstn_i,

//connect with slave port
input  [31:0]            slv0_data_i,
input  [31:0]            slv1_data_i,
input  [31:0]            slv2_data_i,
input                    slv0_req_i,
input                    slv1_req_i,
input                    slv2_req_i,
input                    slv0_val_i,
input                    slv1_val_i,
input                    slv2_val_i,
output                   a2s0_ack_o,
output                   a2s1_ack_o,
output                   a2s2_ack_o,

//Output of MCDT
output                   data_val_o,
output [1:0]             arb_id_o,
output [31:0]            arb_data_o       
);

reg                   data_val_r;
reg [1:0]             arb_id_r;
reg [31:0]            arb_data_r;
reg [2:0]             c_state;
reg [2:0]             n_state;

//--------------------------------use FSM to implete simple Round Robin Arbiter                             

parameter   IDLE = 3'b000,
            GRANT0 = 3'b001,
            GRANT1 = 3'b010,
            GRANT2 = 3'b100;

always @ (posedge clk_i or negedge rstn_i)
begin
  if (!rstn_i) c_state <= IDLE;
  else c_state <= n_state;
end 

always @ (*)
begin
  if (!rstn_i) n_state = IDLE; //default priority slv0 > slv1 > slv2
  else 
    case (c_state)
      IDLE :  if (slv0_req_i) n_state = GRANT0;
              else if (slv1_req_i) n_state = GRANT1;
              else if (slv2_req_i) n_state = GRANT2;
              else n_state = IDLE;

     GRANT0 : if (slv1_req_i) n_state = GRANT1;
              else if (slv2_req_i) n_state = GRANT2;
              else if (slv0_req_i) n_state = GRANT0;
              else n_state = IDLE;

     GRANT1 : if (slv2_req_i) n_state = GRANT2;
              else if (slv0_req_i) n_state = GRANT0;
              else if (slv1_req_i) n_state = GRANT1;
              else n_state = IDLE;

    GRANT2 : if (slv0_req_i) n_state = GRANT0;
             else if (slv1_req_i) n_state = GRANT1;
             else if (slv2_req_i) n_state = GRANT2;
             else n_state = IDLE;
    default : n_state = IDLE;
    endcase
end 

assign {a2s2_ack_o,a2s1_ack_o,a2s0_ack_o} =  c_state;


// please check only one valid at a time @@ zhangshi  
always @ (*)
begin 
if (!rstn_i) begin
    data_val_r = 1'b0;
    arb_id_r = 2'b11;
    arb_data_r = 32'hffff_ffff;
  end 
  else 
	case ({slv2_val_i,slv1_val_i,slv0_val_i})			
	3'b001 : begin
				data_val_r = slv0_val_i;
            arb_id_r = 2'b00;
            arb_data_r = slv0_data_i;
				end
	3'b010 : begin
            data_val_r = slv1_val_i;
            arb_id_r = 2'b01;
            arb_data_r = slv1_data_i;
            end 
	3'b100 : begin
            data_val_r = slv2_val_i;
            arb_id_r = 2'b10;
            arb_data_r = slv2_data_i;
            end 
				
	default : begin
				data_val_r = 1'b0;
				arb_id_r = 2'b11;
				arb_data_r = 32'hffff_ffff;	
				end 
	endcase 
	
end 

assign data_val_o = data_val_r;
assign arb_data_o = arb_data_r;
assign arb_id_o = arb_id_r;

endmodule