//------------------------------------------------------------------------------------------------------------------------//
//Original version : 9/10/2017 mcdt multi-channel data distributor
//------------------------------------------------------------------------------------------------------------------------//
module mcdt (
input                 clk_i,
input                 rstn_i,

input   [31:0]        ch0_data_i,
input                 ch0_valid_i,
output                ch0_ready_o,
output  [4:0]         ch0_margin_o,

input   [31:0]        ch1_data_i,
input                 ch1_valid_i,
output                ch1_ready_o,
output  [4:0]         ch1_margin_o,

input   [31:0]        ch2_data_i,
input                 ch2_valid_i,
output                ch2_ready_o,
output  [4:0]         ch2_margin_o,

output  [31:0]        mcdt_data_o,
output                mcdt_val_o,
output  [1:0]         mcdt_id_o);

wire a2s0_ack_s;
wire [31:0] slv0_data_s;
wire slv0_val_s;
wire slv0_req_s;

wire a2s1_ack_s;
wire [31:0] slv1_data_s;
wire slv1_val_s;
wire slv1_req_s;

wire a2s2_ack_s;
wire [31:0] slv2_data_s;
wire slv2_val_s;
wire slv2_req_s;

slave_fifo inst_slva_fifo_0 (
            .clk_i (clk_i),
            .rstn_i (rstn_i),
            .chx_data_i (ch0_data_i),
            .a2sx_ack_i (a2s0_ack_s),
            .chx_valid_i (ch0_valid_i),
            .slvx_data_o (slv0_data_s),
            .slvx_margin_o (ch0_margin_o),
            .chx_ready_o (ch0_ready_o),
            .slvx_val_o (slv0_val_s),
            .slvx_req_o (slv0_req_s)
);

slave_fifo inst_slva_fifo_1 (
            .clk_i (clk_i),
            .rstn_i (rstn_i),
            .chx_data_i (ch1_data_i),
            .a2sx_ack_i (a2s1_ack_s),
            .chx_valid_i (ch1_valid_i),
            .slvx_data_o (slv1_data_s),
            .slvx_margin_o (ch1_margin_o),
            .chx_ready_o (ch1_ready_o),
            .slvx_val_o (slv1_val_s),
            .slvx_req_o (slv1_req_s)
);

slave_fifo inst_slva_fifo_2 (
            .clk_i (clk_i),
            .rstn_i (rstn_i),
            .chx_data_i (ch2_data_i),
            .a2sx_ack_i (a2s2_ack_s),
            .chx_valid_i (ch2_valid_i),
            .slvx_data_o (slv2_data_s),
            .slvx_margin_o (ch2_margin_o),
            .chx_ready_o (ch2_ready_o),
            .slvx_val_o (slv2_val_s),
            .slvx_req_o (slv2_req_s)
);

arbiter inst_arbiter (
            .clk_i(clk_i),
            .rstn_i(rstn_i),
            .slv0_data_i(slv0_data_s),
            .slv1_data_i(slv1_data_s),
            .slv2_data_i(slv2_data_s),
            .slv0_req_i(slv0_req_s),
            .slv1_req_i(slv1_req_s),
            .slv2_req_i(slv2_req_s),
            .slv0_val_i(slv0_val_s),
            .slv1_val_i(slv1_val_s),
            .slv2_val_i(slv2_val_s),
            .a2s0_ack_o(a2s0_ack_s),
            .a2s1_ack_o(a2s1_ack_s),
            .a2s2_ack_o(a2s2_ack_s),
            .data_val_o(mcdt_val_o),
            .arb_id_o(mcdt_id_o),
            .arb_data_o(mcdt_data_o)   
);

endmodule 
