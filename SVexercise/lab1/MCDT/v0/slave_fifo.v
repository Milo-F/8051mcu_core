//------------------------------------------------------------------------------------------------------------------------//
// Original version : 9/10/2017 slave and fifo of MCDT
//------------------------------------------------------------------------------------------------------------------------//
module slave_fifo (
input                       clk_i,                  // Clock input 
input                       rstn_i,                 // Reset signal 
input [31:0]                chx_data_i,             // Data input                 ---->From outside
input                       a2sx_ack_i,             // Read ack                   ---->From Arbiter
input                       chx_valid_i,            // Data is valid From outside ---->From Outside
output reg [31:0]           slvx_data_o,            // Data Output                ---->To Arbiter
output [4:0]                slvx_margin_o,          // Data margin               ---->To Outside
output reg                  chx_ready_o,            // Ready to accept data       ---->To outside
output reg                  slvx_val_o,             // Output data is valid       ---->To Arbiter
output reg                  slvx_req_o              // Request to send data       ---->To Arbiter
);     
//------------------------------Internal variables-------------------//
reg [5:0] wr_pointer_r;
reg [5:0] rd_pointer_r;
reg [31:0] mem [0:31]; //FIFO 32bits width and 32 deepth
//-----------------------------Variable assignments------------------//
wire full_s, empty_s, rd_en_s ;
wire [4:0] data_cnt_s;
assign full_s = ({~wr_pointer_r[5],wr_pointer_r[4:0]}==rd_pointer_r);
assign empty_s = (wr_pointer_r == rd_pointer_r);
assign data_cnt_s = (5'd31 - (wr_pointer_r - rd_pointer_r));
assign slvx_margin_o = data_cnt_s;
assign rd_en_s = a2sx_ack_i;

//-----------Code Start---------------------------------------------//
always @ (*) //ready signal
begin
if (!full_s) chx_ready_o = 1'b1;                  //If FIFO is not full then it is ready to accept data
else chx_ready_o = 1'b0;
end

always @ (*) //reset signal
begin 
  if (!rstn_i) slvx_req_o = 1'b0;
  else if (!empty_s) slvx_req_o = 1'b1;           //If FIFO is not empty then it is ready to send data
  else slvx_req_o = 1'b0;
end 

//write pointer increment
always @ (posedge clk_i or negedge rstn_i)
begin : WRITE_POINTER
  if (!rstn_i) begin
    wr_pointer_r <= 6'b0000;
  end else 
  if (chx_valid_i && chx_ready_o) begin
    wr_pointer_r <= wr_pointer_r + 6'b0001;
  end
end

//read pointer increment
always @ (posedge clk_i or negedge rstn_i)
begin : READ_POINTER
  if (!rstn_i) begin
    rd_pointer_r <= 6'b0000;
  end else 
  if (rd_en_s && (!empty_s)) begin
    rd_pointer_r <= rd_pointer_r + 6'b0001;
  end
end

//data output is vaild 
always @ (posedge clk_i or negedge rstn_i)
begin
  if (!rstn_i) slvx_val_o <= 1'b0;
  else if (rd_en_s && (!empty_s))
    slvx_val_o <= 1'b1;
    else slvx_val_o <= 1'b0;
end 

// Memory Read Block 
always  @ (posedge clk_i )
begin : READ_DATA 
  if (rstn_i && rd_en_s && (!empty_s)) begin
    slvx_data_o <= mem[rd_pointer_r[4:0]];
  end
end

// Memory Write Block 
always @ (posedge clk_i)
begin : MEM_WRITE
	if (rstn_i && chx_valid_i && chx_ready_o) begin
	  mem[wr_pointer_r[4:0]] <= chx_data_i;
	 end
end

endmodule 
