// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module extract_third_and_fo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        line_bases_active_address0,
        line_bases_active_ce0,
        line_bases_active_q0,
        eroded_data_V_dout,
        eroded_data_V_empty_n,
        eroded_data_V_read,
        centroids_address0,
        centroids_ce0,
        centroids_we0,
        centroids_d0,
        centroids_q0
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] line_bases_active_address0;
output   line_bases_active_ce0;
input  [16:0] line_bases_active_q0;
input  [7:0] eroded_data_V_dout;
input   eroded_data_V_empty_n;
output   eroded_data_V_read;
output  [6:0] centroids_address0;
output   centroids_ce0;
output   centroids_we0;
output  [47:0] centroids_d0;
input  [47:0] centroids_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg line_bases_active_ce0;
reg eroded_data_V_read;
reg[6:0] centroids_address0;
reg centroids_ce0;
reg centroids_we0;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] segments648_address0;
reg    segments648_ce0;
wire   [7:0] segments648_q0;
reg   [1:0] last_c_address0;
reg    last_c_ce0;
reg    last_c_we0;
wire   [47:0] last_c_q0;
reg   [7:0] reg_263;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire   [2:0] add_ln255_fu_274_p2;
reg   [2:0] add_ln255_reg_651;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln252_fu_268_p2;
wire   [31:0] zext_ln177_fu_290_p1;
wire   [4:0] sub_ln253_fu_319_p2;
reg   [4:0] sub_ln253_reg_671;
wire   [31:0] zext_ln264_fu_339_p1;
reg   [31:0] zext_ln264_reg_676;
wire   [7:0] sub_ln270_fu_343_p2;
reg   [7:0] sub_ln270_reg_682;
wire   [31:0] grp_fu_259_p1;
reg   [31:0] tmp_i_reg_687;
wire   [9:0] zext_ln267_fu_349_p1;
reg   [9:0] zext_ln267_reg_692;
wire   [9:0] zext_ln267_1_fu_353_p1;
reg   [9:0] zext_ln267_1_reg_697;
wire   [3:0] zext_ln259_fu_357_p1;
reg   [3:0] zext_ln259_reg_702;
wire   [15:0] zext_ln264_1_fu_360_p1;
reg   [15:0] zext_ln264_1_reg_708;
wire   [2:0] line_index_fu_370_p2;
reg   [2:0] line_index_reg_716;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln257_fu_364_p2;
wire   [11:0] add_ln703_fu_381_p2;
wire   [2:0] seg_index_fu_387_p2;
wire   [0:0] tmp_65_fu_393_p3;
reg   [0:0] tmp_65_reg_736;
wire    ap_CS_fsm_state6;
wire   [4:0] add_ln271_fu_415_p2;
reg   [4:0] add_ln271_reg_740;
wire    ap_CS_fsm_state9;
wire    grp_least_squares_line_fu_209_ap_ready;
wire    grp_least_squares_line_fu_209_ap_done;
wire   [31:0] grp_fu_254_p2;
wire    ap_CS_fsm_state10;
wire   [15:0] select_ln267_fu_606_p3;
reg   [15:0] select_ln267_reg_765;
wire    ap_CS_fsm_state11;
wire   [15:0] select_ln267_1_fu_620_p3;
reg   [15:0] select_ln267_1_reg_772;
wire   [15:0] sub_ln270_1_fu_629_p2;
reg   [15:0] sub_ln270_1_reg_778;
wire    ap_CS_fsm_state13;
reg   [9:0] micro_roi_2_data_V_address0;
reg    micro_roi_2_data_V_ce0;
reg    micro_roi_2_data_V_we0;
wire   [7:0] micro_roi_2_data_V_q0;
wire    grp_least_squares_line_fu_209_ap_start;
wire    grp_least_squares_line_fu_209_ap_idle;
wire   [1:0] grp_least_squares_line_fu_209_centroids_4_address0;
wire    grp_least_squares_line_fu_209_centroids_4_ce0;
wire   [31:0] grp_least_squares_line_fu_209_ap_return_0;
wire   [31:0] grp_least_squares_line_fu_209_ap_return_1;
wire   [9:0] grp_get_centroid_fh_fu_216_micro_roi_data_V_address0;
wire    grp_get_centroid_fh_fu_216_micro_roi_data_V_ce0;
wire   [7:0] grp_get_centroid_fh_fu_216_micro_roi_data_V_d0;
wire    grp_get_centroid_fh_fu_216_micro_roi_data_V_we0;
wire   [9:0] grp_get_centroid_fh_fu_216_micro_roi_data_V_address1;
wire    grp_get_centroid_fh_fu_216_micro_roi_data_V_ce1;
wire   [7:0] grp_get_centroid_fh_fu_216_micro_roi_data_V_d1;
wire    grp_get_centroid_fh_fu_216_micro_roi_data_V_we1;
wire   [47:0] grp_get_centroid_fh_fu_216_c;
wire    grp_get_centroid_fh_fu_216_ap_start;
wire    grp_get_centroid_fh_fu_216_c_ap_vld;
wire    grp_get_centroid_fh_fu_216_ap_done;
wire    grp_get_centroid_fh_fu_216_ap_ready;
wire    grp_get_centroid_fh_fu_216_ap_idle;
reg    grp_get_centroid_fh_fu_216_ap_continue;
wire    grp_extract_micro_roi_fu_226_ap_start;
wire    grp_extract_micro_roi_fu_226_ap_done;
wire    grp_extract_micro_roi_fu_226_ap_idle;
wire    grp_extract_micro_roi_fu_226_ap_ready;
wire    grp_extract_micro_roi_fu_226_img_in_mr_data_V_read;
wire   [9:0] grp_extract_micro_roi_fu_226_micro_roi_data_V_address0;
wire    grp_extract_micro_roi_fu_226_micro_roi_data_V_ce0;
wire    grp_extract_micro_roi_fu_226_micro_roi_data_V_we0;
wire   [7:0] grp_extract_micro_roi_fu_226_micro_roi_data_V_d0;
wire   [6:0] grp_get_last_centroids_fu_237_centroids_address0;
wire    grp_get_last_centroids_fu_237_centroids_ce0;
wire   [47:0] grp_get_last_centroids_fu_237_centroids_d0;
wire    grp_get_last_centroids_fu_237_centroids_we0;
wire   [6:0] grp_get_last_centroids_fu_237_centroids_address1;
wire    grp_get_last_centroids_fu_237_centroids_ce1;
wire   [47:0] grp_get_last_centroids_fu_237_centroids_d1;
wire    grp_get_last_centroids_fu_237_centroids_we1;
wire   [1:0] grp_get_last_centroids_fu_237_last_c_2_address0;
wire    grp_get_last_centroids_fu_237_last_c_2_ce0;
wire   [47:0] grp_get_last_centroids_fu_237_last_c_2_d0;
wire    grp_get_last_centroids_fu_237_last_c_2_we0;
wire   [1:0] grp_get_last_centroids_fu_237_last_c_2_address1;
wire    grp_get_last_centroids_fu_237_last_c_2_ce1;
wire   [47:0] grp_get_last_centroids_fu_237_last_c_2_d1;
wire    grp_get_last_centroids_fu_237_last_c_2_we1;
wire    grp_get_last_centroids_fu_237_ap_start;
wire    grp_get_last_centroids_fu_237_ap_done;
wire    grp_get_last_centroids_fu_237_ap_ready;
wire    grp_get_last_centroids_fu_237_ap_idle;
reg    grp_get_last_centroids_fu_237_ap_continue;
reg   [11:0] p_Val2_s_reg_173;
reg   [2:0] seg_index_0_reg_185;
reg   [2:0] line_index_0_reg_197;
wire    ap_CS_fsm_state15;
reg    grp_least_squares_line_fu_209_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_get_centroid_fh_fu_216_ap_start_reg;
wire    ap_CS_fsm_state14;
wire    ap_sync_grp_get_centroid_fh_fu_216_ap_ready;
wire    ap_sync_grp_get_centroid_fh_fu_216_ap_done;
reg    ap_block_state14_on_subcall_done;
reg    ap_sync_reg_grp_get_centroid_fh_fu_216_ap_ready;
reg    ap_sync_reg_grp_get_centroid_fh_fu_216_ap_done;
reg   [47:0] c_fu_118;
reg    grp_extract_micro_roi_fu_226_ap_start_reg;
wire    ap_CS_fsm_state12;
reg    grp_get_last_centroids_fu_237_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_sync_grp_get_last_centroids_fu_237_ap_ready;
wire    ap_sync_grp_get_last_centroids_fu_237_ap_done;
reg    ap_block_state7_on_subcall_done;
reg    ap_sync_reg_grp_get_last_centroids_fu_237_ap_ready;
reg    ap_sync_reg_grp_get_last_centroids_fu_237_ap_done;
wire   [63:0] zext_ln255_fu_280_p1;
wire   [63:0] zext_ln255_1_fu_285_p1;
wire   [63:0] zext_ln258_fu_376_p1;
wire   [63:0] zext_ln271_1_fu_634_p1;
reg   [31:0] grp_fu_259_p0;
wire   [1:0] trunc_ln253_fu_295_p1;
wire   [3:0] shl_ln253_1_fu_307_p3;
wire   [4:0] shl_ln_fu_299_p3;
wire   [4:0] zext_ln253_fu_315_p1;
wire   [2:0] trunc_ln_fu_325_p4;
wire  signed [3:0] sext_ln254_fu_335_p1;
wire   [3:0] zext_ln271_fu_401_p1;
wire   [3:0] add_ln271_1_fu_405_p2;
wire  signed [4:0] sext_ln271_fu_411_p1;
wire   [31:0] grp_fu_250_p2;
wire   [31:0] p_Val2_47_fu_430_p1;
wire   [22:0] tmp_V_30_fu_452_p1;
wire   [24:0] mantissa_V_fu_456_p4;
wire   [7:0] tmp_V_fu_442_p4;
wire   [8:0] zext_ln339_fu_470_p1;
wire   [8:0] add_ln339_fu_474_p2;
wire   [7:0] sub_ln1311_fu_488_p2;
wire   [0:0] isNeg_fu_480_p3;
wire  signed [8:0] sext_ln1311_fu_494_p1;
wire  signed [8:0] ush_fu_498_p3;
wire  signed [31:0] sext_ln1311_5_fu_506_p1;
wire  signed [24:0] sext_ln1311_6_fu_510_p1;
wire   [78:0] zext_ln682_fu_466_p1;
wire   [78:0] zext_ln1287_fu_514_p1;
wire   [24:0] r_V_fu_518_p2;
wire   [0:0] tmp_68_fu_530_p3;
wire   [78:0] r_V_7_fu_524_p2;
wire   [31:0] zext_ln662_fu_538_p1;
wire   [31:0] tmp_s_fu_542_p4;
wire   [31:0] p_Val2_52_fu_552_p3;
wire   [0:0] p_Result_s_fu_434_p3;
wire   [31:0] result_V_5_fu_560_p2;
wire   [31:0] p_Val2_53_fu_566_p3;
wire   [31:0] y_left_fu_574_p2;
wire   [31:0] y_right_fu_583_p2;
wire   [0:0] tmp_69_fu_588_p3;
wire   [15:0] trunc_ln267_fu_602_p1;
wire   [15:0] trunc_ln264_fu_579_p1;
wire   [0:0] icmp_ln266_fu_596_p2;
wire   [15:0] add_ln267_fu_615_p2;
reg    grp_fu_254_ce;
reg    grp_fu_259_ce;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_least_squares_line_fu_209_ap_start_reg = 1'b0;
#0 grp_get_centroid_fh_fu_216_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_get_centroid_fh_fu_216_ap_ready = 1'b0;
#0 ap_sync_reg_grp_get_centroid_fh_fu_216_ap_done = 1'b0;
#0 grp_extract_micro_roi_fu_226_ap_start_reg = 1'b0;
#0 grp_get_last_centroids_fu_237_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_get_last_centroids_fu_237_ap_ready = 1'b0;
#0 ap_sync_reg_grp_get_last_centroids_fu_237_ap_done = 1'b0;
end

extract_third_andPgM #(
    .DataWidth( 8 ),
    .AddressRange( 13 ),
    .AddressWidth( 4 ))
segments648_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(segments648_address0),
    .ce0(segments648_ce0),
    .q0(segments648_q0)
);

extract_third_andQgW #(
    .DataWidth( 48 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
last_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(last_c_address0),
    .ce0(last_c_ce0),
    .we0(last_c_we0),
    .d0(grp_get_last_centroids_fu_237_last_c_2_d0),
    .q0(last_c_q0)
);

extract_third_andRg6 #(
    .DataWidth( 8 ),
    .AddressRange( 736 ),
    .AddressWidth( 10 ))
micro_roi_2_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(micro_roi_2_data_V_address0),
    .ce0(micro_roi_2_data_V_ce0),
    .we0(micro_roi_2_data_V_we0),
    .d0(grp_extract_micro_roi_fu_226_micro_roi_data_V_d0),
    .q0(micro_roi_2_data_V_q0)
);

least_squares_line grp_least_squares_line_fu_209(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_least_squares_line_fu_209_ap_start),
    .ap_done(grp_least_squares_line_fu_209_ap_done),
    .ap_idle(grp_least_squares_line_fu_209_ap_idle),
    .ap_ready(grp_least_squares_line_fu_209_ap_ready),
    .centroids_4_address0(grp_least_squares_line_fu_209_centroids_4_address0),
    .centroids_4_ce0(grp_least_squares_line_fu_209_centroids_4_ce0),
    .centroids_4_q0(last_c_q0),
    .size(zext_ln259_reg_702),
    .ap_return_0(grp_least_squares_line_fu_209_ap_return_0),
    .ap_return_1(grp_least_squares_line_fu_209_ap_return_1)
);

get_centroid_fh grp_get_centroid_fh_fu_216(
    .micro_roi_data_V_address0(grp_get_centroid_fh_fu_216_micro_roi_data_V_address0),
    .micro_roi_data_V_ce0(grp_get_centroid_fh_fu_216_micro_roi_data_V_ce0),
    .micro_roi_data_V_d0(grp_get_centroid_fh_fu_216_micro_roi_data_V_d0),
    .micro_roi_data_V_q0(micro_roi_2_data_V_q0),
    .micro_roi_data_V_we0(grp_get_centroid_fh_fu_216_micro_roi_data_V_we0),
    .micro_roi_data_V_address1(grp_get_centroid_fh_fu_216_micro_roi_data_V_address1),
    .micro_roi_data_V_ce1(grp_get_centroid_fh_fu_216_micro_roi_data_V_ce1),
    .micro_roi_data_V_d1(grp_get_centroid_fh_fu_216_micro_roi_data_V_d1),
    .micro_roi_data_V_q1(8'd0),
    .micro_roi_data_V_we1(grp_get_centroid_fh_fu_216_micro_roi_data_V_we1),
    .h_offset(select_ln267_reg_765),
    .v_offset(reg_263),
    .v_limit(sub_ln270_reg_682),
    .h_limit(sub_ln270_1_reg_778),
    .c(grp_get_centroid_fh_fu_216_c),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .h_offset_ap_vld(1'b1),
    .v_offset_ap_vld(1'b1),
    .v_limit_ap_vld(1'b1),
    .h_limit_ap_vld(1'b1),
    .ap_start(grp_get_centroid_fh_fu_216_ap_start),
    .c_ap_vld(grp_get_centroid_fh_fu_216_c_ap_vld),
    .ap_done(grp_get_centroid_fh_fu_216_ap_done),
    .ap_ready(grp_get_centroid_fh_fu_216_ap_ready),
    .ap_idle(grp_get_centroid_fh_fu_216_ap_idle),
    .ap_continue(grp_get_centroid_fh_fu_216_ap_continue)
);

extract_micro_roi grp_extract_micro_roi_fu_226(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_extract_micro_roi_fu_226_ap_start),
    .ap_done(grp_extract_micro_roi_fu_226_ap_done),
    .ap_idle(grp_extract_micro_roi_fu_226_ap_idle),
    .ap_ready(grp_extract_micro_roi_fu_226_ap_ready),
    .img_in_mr_data_V_dout(eroded_data_V_dout),
    .img_in_mr_data_V_empty_n(eroded_data_V_empty_n),
    .img_in_mr_data_V_read(grp_extract_micro_roi_fu_226_img_in_mr_data_V_read),
    .x_top(zext_ln267_reg_692),
    .x_bottom(zext_ln267_1_reg_697),
    .y_left(select_ln267_reg_765),
    .y_right(select_ln267_1_reg_772),
    .micro_roi_data_V_address0(grp_extract_micro_roi_fu_226_micro_roi_data_V_address0),
    .micro_roi_data_V_ce0(grp_extract_micro_roi_fu_226_micro_roi_data_V_ce0),
    .micro_roi_data_V_we0(grp_extract_micro_roi_fu_226_micro_roi_data_V_we0),
    .micro_roi_data_V_d0(grp_extract_micro_roi_fu_226_micro_roi_data_V_d0)
);

get_last_centroids grp_get_last_centroids_fu_237(
    .centroids_address0(grp_get_last_centroids_fu_237_centroids_address0),
    .centroids_ce0(grp_get_last_centroids_fu_237_centroids_ce0),
    .centroids_d0(grp_get_last_centroids_fu_237_centroids_d0),
    .centroids_q0(centroids_q0),
    .centroids_we0(grp_get_last_centroids_fu_237_centroids_we0),
    .centroids_address1(grp_get_last_centroids_fu_237_centroids_address1),
    .centroids_ce1(grp_get_last_centroids_fu_237_centroids_ce1),
    .centroids_d1(grp_get_last_centroids_fu_237_centroids_d1),
    .centroids_q1(48'd0),
    .centroids_we1(grp_get_last_centroids_fu_237_centroids_we1),
    .selected_line(line_index_0_reg_197),
    .last_c_2_address0(grp_get_last_centroids_fu_237_last_c_2_address0),
    .last_c_2_ce0(grp_get_last_centroids_fu_237_last_c_2_ce0),
    .last_c_2_d0(grp_get_last_centroids_fu_237_last_c_2_d0),
    .last_c_2_q0(48'd0),
    .last_c_2_we0(grp_get_last_centroids_fu_237_last_c_2_we0),
    .last_c_2_address1(grp_get_last_centroids_fu_237_last_c_2_address1),
    .last_c_2_ce1(grp_get_last_centroids_fu_237_last_c_2_ce1),
    .last_c_2_d1(grp_get_last_centroids_fu_237_last_c_2_d1),
    .last_c_2_q1(48'd0),
    .last_c_2_we1(grp_get_last_centroids_fu_237_last_c_2_we1),
    .seg_index_start(4'd0),
    .size(zext_ln259_reg_702),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .size_ap_vld(1'b1),
    .seg_index_start_ap_vld(1'b1),
    .selected_line_ap_vld(1'b1),
    .ap_start(grp_get_last_centroids_fu_237_ap_start),
    .ap_done(grp_get_last_centroids_fu_237_ap_done),
    .ap_ready(grp_get_last_centroids_fu_237_ap_ready),
    .ap_idle(grp_get_last_centroids_fu_237_ap_idle),
    .ap_continue(grp_get_last_centroids_fu_237_ap_continue)
);

ip_accel_app_faddShg #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ip_accel_app_faddShg_U415(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_254_p2),
    .din1(grp_fu_259_p1),
    .ce(1'b1),
    .dout(grp_fu_250_p2)
);

ip_accel_app_fmulKfY #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ip_accel_app_fmulKfY_U416(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_i_reg_687),
    .din1(grp_least_squares_line_fu_209_ap_return_0),
    .ce(grp_fu_254_ce),
    .dout(grp_fu_254_p2)
);

ip_accel_app_sitoThq #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ip_accel_app_sitoThq_U417(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_259_p0),
    .ce(grp_fu_259_ce),
    .dout(grp_fu_259_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_get_centroid_fh_fu_216_ap_done <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
            ap_sync_reg_grp_get_centroid_fh_fu_216_ap_done <= 1'b0;
        end else if ((grp_get_centroid_fh_fu_216_ap_done == 1'b1)) begin
            ap_sync_reg_grp_get_centroid_fh_fu_216_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_get_centroid_fh_fu_216_ap_ready <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
            ap_sync_reg_grp_get_centroid_fh_fu_216_ap_ready <= 1'b0;
        end else if ((grp_get_centroid_fh_fu_216_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_get_centroid_fh_fu_216_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_get_last_centroids_fu_237_ap_done <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_sync_reg_grp_get_last_centroids_fu_237_ap_done <= 1'b0;
        end else if ((grp_get_last_centroids_fu_237_ap_done == 1'b1)) begin
            ap_sync_reg_grp_get_last_centroids_fu_237_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_get_last_centroids_fu_237_ap_ready <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_sync_reg_grp_get_last_centroids_fu_237_ap_ready <= 1'b0;
        end else if ((grp_get_last_centroids_fu_237_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_get_last_centroids_fu_237_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_extract_micro_roi_fu_226_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_extract_micro_roi_fu_226_ap_start_reg <= 1'b1;
        end else if ((grp_extract_micro_roi_fu_226_ap_ready == 1'b1)) begin
            grp_extract_micro_roi_fu_226_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_centroid_fh_fu_216_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state13) | ((ap_sync_grp_get_centroid_fh_fu_216_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state14)))) begin
            grp_get_centroid_fh_fu_216_ap_start_reg <= 1'b1;
        end else if ((grp_get_centroid_fh_fu_216_ap_ready == 1'b1)) begin
            grp_get_centroid_fh_fu_216_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_last_centroids_fu_237_ap_start_reg <= 1'b0;
    end else begin
        if ((((ap_sync_grp_get_last_centroids_fu_237_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_CS_fsm_state6) & (tmp_65_fu_393_p3 == 1'd1)))) begin
            grp_get_last_centroids_fu_237_ap_start_reg <= 1'b1;
        end else if ((grp_get_last_centroids_fu_237_ap_ready == 1'b1)) begin
            grp_get_last_centroids_fu_237_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_least_squares_line_fu_209_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_least_squares_line_fu_209_ap_start_reg <= 1'b1;
        end else if ((grp_least_squares_line_fu_209_ap_ready == 1'b1)) begin
            grp_least_squares_line_fu_209_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        line_index_0_reg_197 <= line_index_reg_716;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        line_index_0_reg_197 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln257_fu_364_p2 == 1'd1))) begin
        p_Val2_s_reg_173 <= add_ln703_fu_381_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_s_reg_173 <= 12'd3230;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln257_fu_364_p2 == 1'd1))) begin
        seg_index_0_reg_185 <= seg_index_fu_387_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        seg_index_0_reg_185 <= 3'd3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        add_ln255_reg_651 <= add_ln255_fu_274_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_65_fu_393_p3 == 1'd1))) begin
        add_ln271_reg_740 <= add_ln271_fu_415_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (grp_get_centroid_fh_fu_216_c_ap_vld == 1'b1))) begin
        c_fu_118 <= grp_get_centroid_fh_fu_216_c;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        line_index_reg_716 <= line_index_fu_370_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_263 <= segments648_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        select_ln267_1_reg_772 <= select_ln267_1_fu_620_p3;
        select_ln267_reg_765 <= select_ln267_fu_606_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sub_ln253_reg_671[4 : 1] <= sub_ln253_fu_319_p2[4 : 1];
        sub_ln270_reg_682 <= sub_ln270_fu_343_p2;
        tmp_i_reg_687 <= grp_fu_259_p1;
        zext_ln259_reg_702[2 : 0] <= zext_ln259_fu_357_p1[2 : 0];
        zext_ln264_1_reg_708[3 : 0] <= zext_ln264_1_fu_360_p1[3 : 0];
        zext_ln264_reg_676[3 : 0] <= zext_ln264_fu_339_p1[3 : 0];
        zext_ln267_1_reg_697[7 : 0] <= zext_ln267_1_fu_353_p1[7 : 0];
        zext_ln267_reg_692[7 : 0] <= zext_ln267_fu_349_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sub_ln270_1_reg_778 <= sub_ln270_1_fu_629_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_65_reg_736 <= line_bases_active_q0[32'd16];
    end
end

always @ (*) begin
    if ((((icmp_ln252_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln252_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        centroids_address0 = zext_ln271_1_fu_634_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        centroids_address0 = grp_get_last_centroids_fu_237_centroids_address0;
    end else begin
        centroids_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        centroids_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        centroids_ce0 = grp_get_last_centroids_fu_237_centroids_ce0;
    end else begin
        centroids_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (tmp_65_reg_736 == 1'd1))) begin
        centroids_we0 = 1'b1;
    end else begin
        centroids_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        eroded_data_V_read = grp_extract_micro_roi_fu_226_img_in_mr_data_V_read;
    end else begin
        eroded_data_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state9) & (grp_least_squares_line_fu_209_ap_done == 1'b1)))) begin
        grp_fu_254_ce = 1'b1;
    end else begin
        grp_fu_254_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state9) & (grp_least_squares_line_fu_209_ap_done == 1'b1)))) begin
        grp_fu_259_ce = 1'b1;
    end else begin
        grp_fu_259_ce = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_259_p0 = grp_least_squares_line_fu_209_ap_return_1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_259_p0 = zext_ln177_fu_290_p1;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
        grp_get_centroid_fh_fu_216_ap_continue = 1'b1;
    end else begin
        grp_get_centroid_fh_fu_216_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
        grp_get_last_centroids_fu_237_ap_continue = 1'b1;
    end else begin
        grp_get_last_centroids_fu_237_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        last_c_address0 = grp_get_last_centroids_fu_237_last_c_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_c_address0 = grp_least_squares_line_fu_209_centroids_4_address0;
    end else begin
        last_c_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        last_c_ce0 = grp_get_last_centroids_fu_237_last_c_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_c_ce0 = grp_least_squares_line_fu_209_centroids_4_ce0;
    end else begin
        last_c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        last_c_we0 = grp_get_last_centroids_fu_237_last_c_2_we0;
    end else begin
        last_c_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        line_bases_active_ce0 = 1'b1;
    end else begin
        line_bases_active_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        micro_roi_2_data_V_address0 = grp_extract_micro_roi_fu_226_micro_roi_data_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        micro_roi_2_data_V_address0 = grp_get_centroid_fh_fu_216_micro_roi_data_V_address0;
    end else begin
        micro_roi_2_data_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        micro_roi_2_data_V_ce0 = grp_extract_micro_roi_fu_226_micro_roi_data_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        micro_roi_2_data_V_ce0 = grp_get_centroid_fh_fu_216_micro_roi_data_V_ce0;
    end else begin
        micro_roi_2_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        micro_roi_2_data_V_we0 = grp_extract_micro_roi_fu_226_micro_roi_data_V_we0;
    end else begin
        micro_roi_2_data_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        segments648_address0 = zext_ln255_1_fu_285_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        segments648_address0 = zext_ln255_fu_280_p1;
    end else begin
        segments648_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        segments648_ce0 = 1'b1;
    end else begin
        segments648_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln252_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln257_fu_364_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((tmp_65_fu_393_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_least_squares_line_fu_209_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_extract_micro_roi_fu_226_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln255_fu_274_p2 = ($signed(3'd7) + $signed(seg_index_0_reg_185));

assign add_ln267_fu_615_p2 = (zext_ln264_1_reg_708 + trunc_ln264_fu_579_p1);

assign add_ln271_1_fu_405_p2 = ($signed(4'd10) + $signed(zext_ln271_fu_401_p1));

assign add_ln271_fu_415_p2 = ($signed(sub_ln253_reg_671) + $signed(sext_ln271_fu_411_p1));

assign add_ln339_fu_474_p2 = ($signed(9'd385) + $signed(zext_ln339_fu_470_p1));

assign add_ln703_fu_381_p2 = ($signed(p_Val2_s_reg_173) + $signed(12'd3663));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state14_on_subcall_done = ((ap_sync_grp_get_centroid_fh_fu_216_ap_ready & ap_sync_grp_get_centroid_fh_fu_216_ap_done) == 1'b0);
end

always @ (*) begin
    ap_block_state7_on_subcall_done = ((ap_sync_grp_get_last_centroids_fu_237_ap_ready & ap_sync_grp_get_last_centroids_fu_237_ap_done) == 1'b0);
end

assign ap_sync_grp_get_centroid_fh_fu_216_ap_done = (grp_get_centroid_fh_fu_216_ap_done | ap_sync_reg_grp_get_centroid_fh_fu_216_ap_done);

assign ap_sync_grp_get_centroid_fh_fu_216_ap_ready = (grp_get_centroid_fh_fu_216_ap_ready | ap_sync_reg_grp_get_centroid_fh_fu_216_ap_ready);

assign ap_sync_grp_get_last_centroids_fu_237_ap_done = (grp_get_last_centroids_fu_237_ap_done | ap_sync_reg_grp_get_last_centroids_fu_237_ap_done);

assign ap_sync_grp_get_last_centroids_fu_237_ap_ready = (grp_get_last_centroids_fu_237_ap_ready | ap_sync_reg_grp_get_last_centroids_fu_237_ap_ready);

assign centroids_d0 = c_fu_118;

assign grp_extract_micro_roi_fu_226_ap_start = grp_extract_micro_roi_fu_226_ap_start_reg;

assign grp_get_centroid_fh_fu_216_ap_start = grp_get_centroid_fh_fu_216_ap_start_reg;

assign grp_get_last_centroids_fu_237_ap_start = grp_get_last_centroids_fu_237_ap_start_reg;

assign grp_least_squares_line_fu_209_ap_start = grp_least_squares_line_fu_209_ap_start_reg;

assign icmp_ln252_fu_268_p2 = ((seg_index_0_reg_185 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln257_fu_364_p2 = ((line_index_0_reg_197 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln266_fu_596_p2 = (($signed(y_right_fu_583_p2) > $signed(32'd319)) ? 1'b1 : 1'b0);

assign isNeg_fu_480_p3 = add_ln339_fu_474_p2[32'd8];

assign line_bases_active_address0 = zext_ln258_fu_376_p1;

assign line_index_fu_370_p2 = (line_index_0_reg_197 + 3'd1);

assign mantissa_V_fu_456_p4 = {{{{1'd1}, {tmp_V_30_fu_452_p1}}}, {1'd0}};

assign p_Result_s_fu_434_p3 = p_Val2_47_fu_430_p1[32'd31];

assign p_Val2_47_fu_430_p1 = grp_fu_250_p2;

assign p_Val2_52_fu_552_p3 = ((isNeg_fu_480_p3[0:0] === 1'b1) ? zext_ln662_fu_538_p1 : tmp_s_fu_542_p4);

assign p_Val2_53_fu_566_p3 = ((p_Result_s_fu_434_p3[0:0] === 1'b1) ? result_V_5_fu_560_p2 : p_Val2_52_fu_552_p3);

assign r_V_7_fu_524_p2 = zext_ln682_fu_466_p1 << zext_ln1287_fu_514_p1;

assign r_V_fu_518_p2 = mantissa_V_fu_456_p4 >> sext_ln1311_6_fu_510_p1;

assign result_V_5_fu_560_p2 = (32'd0 - p_Val2_52_fu_552_p3);

assign seg_index_fu_387_p2 = (seg_index_0_reg_185 + 3'd1);

assign select_ln267_1_fu_620_p3 = ((icmp_ln266_fu_596_p2[0:0] === 1'b1) ? 16'd319 : add_ln267_fu_615_p2);

assign select_ln267_fu_606_p3 = ((tmp_69_fu_588_p3[0:0] === 1'b1) ? 16'd0 : trunc_ln267_fu_602_p1);

assign sext_ln1311_5_fu_506_p1 = ush_fu_498_p3;

assign sext_ln1311_6_fu_510_p1 = ush_fu_498_p3;

assign sext_ln1311_fu_494_p1 = $signed(sub_ln1311_fu_488_p2);

assign sext_ln254_fu_335_p1 = $signed(trunc_ln_fu_325_p4);

assign sext_ln271_fu_411_p1 = $signed(add_ln271_1_fu_405_p2);

assign shl_ln253_1_fu_307_p3 = {{seg_index_0_reg_185}, {1'd0}};

assign shl_ln_fu_299_p3 = {{trunc_ln253_fu_295_p1}, {3'd0}};

assign sub_ln1311_fu_488_p2 = (8'd127 - tmp_V_fu_442_p4);

assign sub_ln253_fu_319_p2 = (shl_ln_fu_299_p3 - zext_ln253_fu_315_p1);

assign sub_ln270_1_fu_629_p2 = (select_ln267_1_reg_772 - select_ln267_reg_765);

assign sub_ln270_fu_343_p2 = (reg_263 - segments648_q0);

assign tmp_65_fu_393_p3 = line_bases_active_q0[32'd16];

assign tmp_68_fu_530_p3 = r_V_fu_518_p2[32'd24];

assign tmp_69_fu_588_p3 = y_left_fu_574_p2[32'd31];

assign tmp_V_30_fu_452_p1 = p_Val2_47_fu_430_p1[22:0];

assign tmp_V_fu_442_p4 = {{p_Val2_47_fu_430_p1[30:23]}};

assign tmp_s_fu_542_p4 = {{r_V_7_fu_524_p2[55:24]}};

assign trunc_ln253_fu_295_p1 = seg_index_0_reg_185[1:0];

assign trunc_ln264_fu_579_p1 = p_Val2_53_fu_566_p3[15:0];

assign trunc_ln267_fu_602_p1 = y_left_fu_574_p2[15:0];

assign trunc_ln_fu_325_p4 = {{p_Val2_s_reg_173[11:9]}};

assign ush_fu_498_p3 = ((isNeg_fu_480_p3[0:0] === 1'b1) ? sext_ln1311_fu_494_p1 : add_ln339_fu_474_p2);

assign y_left_fu_574_p2 = (p_Val2_53_fu_566_p3 - zext_ln264_reg_676);

assign y_right_fu_583_p2 = (zext_ln264_reg_676 + p_Val2_53_fu_566_p3);

assign zext_ln1287_fu_514_p1 = $unsigned(sext_ln1311_5_fu_506_p1);

assign zext_ln177_fu_290_p1 = segments648_q0;

assign zext_ln253_fu_315_p1 = shl_ln253_1_fu_307_p3;

assign zext_ln255_1_fu_285_p1 = seg_index_0_reg_185;

assign zext_ln255_fu_280_p1 = add_ln255_fu_274_p2;

assign zext_ln258_fu_376_p1 = line_index_0_reg_197;

assign zext_ln259_fu_357_p1 = add_ln255_reg_651;

assign zext_ln264_1_fu_360_p1 = $unsigned(sext_ln254_fu_335_p1);

assign zext_ln264_fu_339_p1 = $unsigned(sext_ln254_fu_335_p1);

assign zext_ln267_1_fu_353_p1 = reg_263;

assign zext_ln267_fu_349_p1 = segments648_q0;

assign zext_ln271_1_fu_634_p1 = add_ln271_reg_740;

assign zext_ln271_fu_401_p1 = line_index_0_reg_197;

assign zext_ln339_fu_470_p1 = tmp_V_fu_442_p4;

assign zext_ln662_fu_538_p1 = tmp_68_fu_530_p3;

assign zext_ln682_fu_466_p1 = mantissa_V_fu_456_p4;

always @ (posedge ap_clk) begin
    sub_ln253_reg_671[0] <= 1'b0;
    zext_ln264_reg_676[31:4] <= 28'b0000000000000000000000000000;
    zext_ln267_reg_692[9:8] <= 2'b00;
    zext_ln267_1_reg_697[9:8] <= 2'b00;
    zext_ln259_reg_702[3] <= 1'b0;
    zext_ln264_1_reg_708[15:4] <= 12'b000000000000;
end

endmodule //extract_third_and_fo
