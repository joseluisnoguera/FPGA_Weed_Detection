// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module extr_half_1_cent (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        line_bases_address0,
        line_bases_ce0,
        line_bases_q0,
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
output  [2:0] line_bases_address0;
output   line_bases_ce0;
input  [16:0] line_bases_q0;
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
reg[2:0] line_bases_address0;
reg line_bases_ce0;
reg eroded_data_V_read;
reg[6:0] centroids_address0;
reg centroids_ce0;
reg centroids_we0;
reg[47:0] centroids_d0;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] line_index_fu_246_p2;
reg   [2:0] line_index_reg_462;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln207_fu_252_p1;
reg   [63:0] zext_ln207_reg_467;
wire   [0:0] icmp_ln206_fu_240_p2;
wire   [0:0] grp_fu_232_p3;
reg   [0:0] tmp_75_reg_477;
wire    ap_CS_fsm_state3;
wire   [15:0] select_ln211_fu_297_p3;
reg   [15:0] select_ln211_reg_481;
wire   [15:0] select_ln211_1_fu_312_p3;
reg   [15:0] select_ln211_1_reg_488;
wire   [15:0] sub_ln214_fu_321_p2;
reg   [15:0] sub_ln214_reg_494;
wire    ap_CS_fsm_state5;
wire   [2:0] line_index_1_fu_336_p2;
reg   [2:0] line_index_1_reg_502;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln229_fu_342_p1;
reg   [63:0] zext_ln229_reg_507;
wire   [0:0] icmp_ln228_fu_330_p2;
reg   [0:0] tmp_77_reg_517;
wire    ap_CS_fsm_state9;
wire   [15:0] select_ln234_fu_399_p3;
reg   [15:0] select_ln234_reg_526;
wire    ap_CS_fsm_state10;
wire   [15:0] select_ln234_1_fu_414_p3;
reg   [15:0] select_ln234_1_reg_533;
wire   [15:0] sub_ln237_fu_423_p2;
reg   [15:0] sub_ln237_reg_539;
wire    ap_CS_fsm_state12;
reg   [9:0] micro_roi_1_data_V_address0;
reg    micro_roi_1_data_V_ce0;
reg    micro_roi_1_data_V_we0;
wire   [7:0] micro_roi_1_data_V_q0;
reg   [9:0] micro_roi_0_data_V_address0;
reg    micro_roi_0_data_V_ce0;
reg    micro_roi_0_data_V_we0;
wire   [7:0] micro_roi_0_data_V_q0;
wire    grp_extract_third_and_fo_fu_189_ap_start;
wire    grp_extract_third_and_fo_fu_189_ap_done;
wire    grp_extract_third_and_fo_fu_189_ap_idle;
wire    grp_extract_third_and_fo_fu_189_ap_ready;
wire   [2:0] grp_extract_third_and_fo_fu_189_line_bases_active_address0;
wire    grp_extract_third_and_fo_fu_189_line_bases_active_ce0;
wire    grp_extract_third_and_fo_fu_189_eroded_data_V_read;
wire   [6:0] grp_extract_third_and_fo_fu_189_centroids_address0;
wire    grp_extract_third_and_fo_fu_189_centroids_ce0;
wire    grp_extract_third_and_fo_fu_189_centroids_we0;
wire   [47:0] grp_extract_third_and_fo_fu_189_centroids_d0;
wire   [9:0] grp_get_centroid_fh_fu_203_micro_roi_data_V_address0;
wire    grp_get_centroid_fh_fu_203_micro_roi_data_V_ce0;
wire   [7:0] grp_get_centroid_fh_fu_203_micro_roi_data_V_d0;
reg   [7:0] grp_get_centroid_fh_fu_203_micro_roi_data_V_q0;
wire    grp_get_centroid_fh_fu_203_micro_roi_data_V_we0;
wire   [9:0] grp_get_centroid_fh_fu_203_micro_roi_data_V_address1;
wire    grp_get_centroid_fh_fu_203_micro_roi_data_V_ce1;
wire   [7:0] grp_get_centroid_fh_fu_203_micro_roi_data_V_d1;
wire    grp_get_centroid_fh_fu_203_micro_roi_data_V_we1;
reg   [15:0] grp_get_centroid_fh_fu_203_h_offset;
reg   [7:0] grp_get_centroid_fh_fu_203_v_offset;
reg   [7:0] grp_get_centroid_fh_fu_203_v_limit;
reg   [15:0] grp_get_centroid_fh_fu_203_h_limit;
wire   [47:0] grp_get_centroid_fh_fu_203_c;
wire    grp_get_centroid_fh_fu_203_ap_start;
wire    grp_get_centroid_fh_fu_203_c_ap_vld;
wire    grp_get_centroid_fh_fu_203_ap_done;
wire    grp_get_centroid_fh_fu_203_ap_ready;
wire    grp_get_centroid_fh_fu_203_ap_idle;
reg    grp_get_centroid_fh_fu_203_ap_continue;
wire    grp_extract_micro_roi_fu_217_ap_start;
wire    grp_extract_micro_roi_fu_217_ap_done;
wire    grp_extract_micro_roi_fu_217_ap_idle;
wire    grp_extract_micro_roi_fu_217_ap_ready;
wire    grp_extract_micro_roi_fu_217_img_in_mr_data_V_read;
reg   [9:0] grp_extract_micro_roi_fu_217_x_top;
reg   [9:0] grp_extract_micro_roi_fu_217_x_bottom;
reg   [15:0] grp_extract_micro_roi_fu_217_y_left;
reg   [15:0] grp_extract_micro_roi_fu_217_y_right;
wire   [9:0] grp_extract_micro_roi_fu_217_micro_roi_data_V_address0;
wire    grp_extract_micro_roi_fu_217_micro_roi_data_V_ce0;
wire    grp_extract_micro_roi_fu_217_micro_roi_data_V_we0;
wire   [7:0] grp_extract_micro_roi_fu_217_micro_roi_data_V_d0;
reg   [2:0] line_index_0_i_reg_166;
wire    ap_CS_fsm_state7;
reg   [2:0] line_index_0_i2_reg_177;
wire    ap_CS_fsm_state14;
reg    grp_extract_third_and_fo_fu_189_ap_start_reg;
wire    ap_CS_fsm_state15;
reg    grp_get_centroid_fh_fu_203_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_sync_grp_get_centroid_fh_fu_203_ap_ready;
wire    ap_sync_grp_get_centroid_fh_fu_203_ap_done;
reg    ap_block_state6_on_subcall_done;
reg    ap_sync_reg_grp_get_centroid_fh_fu_203_ap_ready;
reg    ap_sync_reg_grp_get_centroid_fh_fu_203_ap_done;
wire    ap_CS_fsm_state13;
reg    ap_block_state13_on_subcall_done;
reg   [47:0] c_fu_108;
reg   [47:0] c_1_fu_100;
reg    grp_extract_micro_roi_fu_217_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln238_1_fu_438_p1;
wire   [15:0] trunc_ln208_fu_257_p1;
wire   [16:0] zext_ln208_fu_261_p1;
wire   [16:0] y_left_fu_265_p2;
wire   [16:0] y_right_fu_271_p2;
wire   [0:0] tmp_76_fu_277_p3;
wire   [15:0] add_ln211_1_fu_291_p2;
wire   [0:0] icmp_ln210_fu_285_p2;
wire   [15:0] add_ln211_fu_306_p2;
wire   [31:0] centroids_y_11_load_s_fu_347_p4;
wire   [31:0] y_left_1_fu_367_p2;
wire   [31:0] y_right_1_fu_373_p2;
wire   [15:0] tmp_fu_357_p4;
wire   [0:0] tmp_78_fu_379_p3;
wire   [15:0] add_ln234_1_fu_393_p2;
wire   [0:0] icmp_ln233_fu_387_p2;
wire   [15:0] add_ln234_fu_408_p2;
wire   [3:0] zext_ln238_fu_428_p1;
wire   [3:0] add_ln238_fu_432_p2;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_extract_third_and_fo_fu_189_ap_start_reg = 1'b0;
#0 grp_get_centroid_fh_fu_203_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_get_centroid_fh_fu_203_ap_ready = 1'b0;
#0 ap_sync_reg_grp_get_centroid_fh_fu_203_ap_done = 1'b0;
#0 grp_extract_micro_roi_fu_217_ap_start_reg = 1'b0;
end

extr_half_1_cent_UhA #(
    .DataWidth( 8 ),
    .AddressRange( 736 ),
    .AddressWidth( 10 ))
micro_roi_1_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(micro_roi_1_data_V_address0),
    .ce0(micro_roi_1_data_V_ce0),
    .we0(micro_roi_1_data_V_we0),
    .d0(grp_extract_micro_roi_fu_217_micro_roi_data_V_d0),
    .q0(micro_roi_1_data_V_q0)
);

extr_half_1_cent_UhA #(
    .DataWidth( 8 ),
    .AddressRange( 736 ),
    .AddressWidth( 10 ))
micro_roi_0_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(micro_roi_0_data_V_address0),
    .ce0(micro_roi_0_data_V_ce0),
    .we0(micro_roi_0_data_V_we0),
    .d0(grp_extract_micro_roi_fu_217_micro_roi_data_V_d0),
    .q0(micro_roi_0_data_V_q0)
);

extract_third_and_fo grp_extract_third_and_fo_fu_189(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_extract_third_and_fo_fu_189_ap_start),
    .ap_done(grp_extract_third_and_fo_fu_189_ap_done),
    .ap_idle(grp_extract_third_and_fo_fu_189_ap_idle),
    .ap_ready(grp_extract_third_and_fo_fu_189_ap_ready),
    .line_bases_active_address0(grp_extract_third_and_fo_fu_189_line_bases_active_address0),
    .line_bases_active_ce0(grp_extract_third_and_fo_fu_189_line_bases_active_ce0),
    .line_bases_active_q0(line_bases_q0),
    .eroded_data_V_dout(eroded_data_V_dout),
    .eroded_data_V_empty_n(eroded_data_V_empty_n),
    .eroded_data_V_read(grp_extract_third_and_fo_fu_189_eroded_data_V_read),
    .centroids_address0(grp_extract_third_and_fo_fu_189_centroids_address0),
    .centroids_ce0(grp_extract_third_and_fo_fu_189_centroids_ce0),
    .centroids_we0(grp_extract_third_and_fo_fu_189_centroids_we0),
    .centroids_d0(grp_extract_third_and_fo_fu_189_centroids_d0),
    .centroids_q0(centroids_q0)
);

get_centroid_fh grp_get_centroid_fh_fu_203(
    .micro_roi_data_V_address0(grp_get_centroid_fh_fu_203_micro_roi_data_V_address0),
    .micro_roi_data_V_ce0(grp_get_centroid_fh_fu_203_micro_roi_data_V_ce0),
    .micro_roi_data_V_d0(grp_get_centroid_fh_fu_203_micro_roi_data_V_d0),
    .micro_roi_data_V_q0(grp_get_centroid_fh_fu_203_micro_roi_data_V_q0),
    .micro_roi_data_V_we0(grp_get_centroid_fh_fu_203_micro_roi_data_V_we0),
    .micro_roi_data_V_address1(grp_get_centroid_fh_fu_203_micro_roi_data_V_address1),
    .micro_roi_data_V_ce1(grp_get_centroid_fh_fu_203_micro_roi_data_V_ce1),
    .micro_roi_data_V_d1(grp_get_centroid_fh_fu_203_micro_roi_data_V_d1),
    .micro_roi_data_V_q1(8'd0),
    .micro_roi_data_V_we1(grp_get_centroid_fh_fu_203_micro_roi_data_V_we1),
    .h_offset(grp_get_centroid_fh_fu_203_h_offset),
    .v_offset(grp_get_centroid_fh_fu_203_v_offset),
    .v_limit(grp_get_centroid_fh_fu_203_v_limit),
    .h_limit(grp_get_centroid_fh_fu_203_h_limit),
    .c(grp_get_centroid_fh_fu_203_c),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .h_offset_ap_vld(1'b1),
    .v_offset_ap_vld(1'b1),
    .v_limit_ap_vld(1'b1),
    .h_limit_ap_vld(1'b1),
    .ap_start(grp_get_centroid_fh_fu_203_ap_start),
    .c_ap_vld(grp_get_centroid_fh_fu_203_c_ap_vld),
    .ap_done(grp_get_centroid_fh_fu_203_ap_done),
    .ap_ready(grp_get_centroid_fh_fu_203_ap_ready),
    .ap_idle(grp_get_centroid_fh_fu_203_ap_idle),
    .ap_continue(grp_get_centroid_fh_fu_203_ap_continue)
);

extract_micro_roi grp_extract_micro_roi_fu_217(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_extract_micro_roi_fu_217_ap_start),
    .ap_done(grp_extract_micro_roi_fu_217_ap_done),
    .ap_idle(grp_extract_micro_roi_fu_217_ap_idle),
    .ap_ready(grp_extract_micro_roi_fu_217_ap_ready),
    .img_in_mr_data_V_dout(eroded_data_V_dout),
    .img_in_mr_data_V_empty_n(eroded_data_V_empty_n),
    .img_in_mr_data_V_read(grp_extract_micro_roi_fu_217_img_in_mr_data_V_read),
    .x_top(grp_extract_micro_roi_fu_217_x_top),
    .x_bottom(grp_extract_micro_roi_fu_217_x_bottom),
    .y_left(grp_extract_micro_roi_fu_217_y_left),
    .y_right(grp_extract_micro_roi_fu_217_y_right),
    .micro_roi_data_V_address0(grp_extract_micro_roi_fu_217_micro_roi_data_V_address0),
    .micro_roi_data_V_ce0(grp_extract_micro_roi_fu_217_micro_roi_data_V_ce0),
    .micro_roi_data_V_we0(grp_extract_micro_roi_fu_217_micro_roi_data_V_we0),
    .micro_roi_data_V_d0(grp_extract_micro_roi_fu_217_micro_roi_data_V_d0)
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
        ap_sync_reg_grp_get_centroid_fh_fu_203_ap_done <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13)) | ((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6)))) begin
            ap_sync_reg_grp_get_centroid_fh_fu_203_ap_done <= 1'b0;
        end else if ((grp_get_centroid_fh_fu_203_ap_done == 1'b1)) begin
            ap_sync_reg_grp_get_centroid_fh_fu_203_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_get_centroid_fh_fu_203_ap_ready <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13)) | ((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6)))) begin
            ap_sync_reg_grp_get_centroid_fh_fu_203_ap_ready <= 1'b0;
        end else if ((grp_get_centroid_fh_fu_203_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_get_centroid_fh_fu_203_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_extract_micro_roi_fu_217_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) | ((grp_fu_232_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
            grp_extract_micro_roi_fu_217_ap_start_reg <= 1'b1;
        end else if ((grp_extract_micro_roi_fu_217_ap_ready == 1'b1)) begin
            grp_extract_micro_roi_fu_217_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_extract_third_and_fo_fu_189_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln228_fu_330_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
            grp_extract_third_and_fo_fu_189_ap_start_reg <= 1'b1;
        end else if ((grp_extract_third_and_fo_fu_189_ap_ready == 1'b1)) begin
            grp_extract_third_and_fo_fu_189_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_centroid_fh_fu_203_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state12) | ((ap_sync_grp_get_centroid_fh_fu_203_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state13)) | ((ap_sync_grp_get_centroid_fh_fu_203_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state6)))) begin
            grp_get_centroid_fh_fu_203_ap_start_reg <= 1'b1;
        end else if ((grp_get_centroid_fh_fu_203_ap_ready == 1'b1)) begin
            grp_get_centroid_fh_fu_203_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln206_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        line_index_0_i2_reg_177 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        line_index_0_i2_reg_177 <= line_index_1_reg_502;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        line_index_0_i_reg_166 <= line_index_reg_462;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        line_index_0_i_reg_166 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_get_centroid_fh_fu_203_c_ap_vld == 1'b1))) begin
        c_1_fu_100 <= grp_get_centroid_fh_fu_203_c;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_get_centroid_fh_fu_203_c_ap_vld == 1'b1))) begin
        c_fu_108 <= grp_get_centroid_fh_fu_203_c;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        line_index_1_reg_502 <= line_index_1_fu_336_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        line_index_reg_462 <= line_index_fu_246_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_232_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        select_ln211_1_reg_488 <= select_ln211_1_fu_312_p3;
        select_ln211_reg_481 <= select_ln211_fu_297_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        select_ln234_1_reg_533 <= select_ln234_1_fu_414_p3;
        select_ln234_reg_526 <= select_ln234_fu_399_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sub_ln214_reg_494 <= sub_ln214_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sub_ln237_reg_539 <= sub_ln237_fu_423_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_75_reg_477 <= line_bases_q0[32'd16];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_77_reg_517 <= line_bases_q0[32'd16];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln206_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln207_reg_467[2 : 0] <= zext_ln207_fu_252_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln228_fu_330_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        zext_ln229_reg_507[2 : 0] <= zext_ln229_fu_342_p1[2 : 0];
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state15) & (grp_extract_third_and_fo_fu_189_ap_done == 1'b1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state15) & (grp_extract_third_and_fo_fu_189_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        centroids_address0 = zext_ln238_1_fu_438_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        centroids_address0 = zext_ln229_reg_507;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        centroids_address0 = zext_ln207_reg_467;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        centroids_address0 = grp_extract_third_and_fo_fu_189_centroids_address0;
    end else begin
        centroids_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state9))) begin
        centroids_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        centroids_ce0 = grp_extract_third_and_fo_fu_189_centroids_ce0;
    end else begin
        centroids_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        centroids_d0 = c_1_fu_100;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        centroids_d0 = c_fu_108;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        centroids_d0 = grp_extract_third_and_fo_fu_189_centroids_d0;
    end else begin
        centroids_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_77_reg_517 == 1'd1) & (1'b1 == ap_CS_fsm_state14)) | ((tmp_75_reg_477 == 1'd1) & (1'b1 == ap_CS_fsm_state7)))) begin
        centroids_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        centroids_we0 = grp_extract_third_and_fo_fu_189_centroids_we0;
    end else begin
        centroids_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state4))) begin
        eroded_data_V_read = grp_extract_micro_roi_fu_217_img_in_mr_data_V_read;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        eroded_data_V_read = grp_extract_third_and_fo_fu_189_eroded_data_V_read;
    end else begin
        eroded_data_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_extract_micro_roi_fu_217_x_bottom = 10'd161;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_extract_micro_roi_fu_217_x_bottom = 10'd180;
    end else begin
        grp_extract_micro_roi_fu_217_x_bottom = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_extract_micro_roi_fu_217_x_top = 10'd134;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_extract_micro_roi_fu_217_x_top = 10'd161;
    end else begin
        grp_extract_micro_roi_fu_217_x_top = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_extract_micro_roi_fu_217_y_left = select_ln234_reg_526;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_extract_micro_roi_fu_217_y_left = select_ln211_reg_481;
    end else begin
        grp_extract_micro_roi_fu_217_y_left = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_extract_micro_roi_fu_217_y_right = select_ln234_1_reg_533;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_extract_micro_roi_fu_217_y_right = select_ln211_1_reg_488;
    end else begin
        grp_extract_micro_roi_fu_217_y_right = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13)) | ((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_get_centroid_fh_fu_203_ap_continue = 1'b1;
    end else begin
        grp_get_centroid_fh_fu_203_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_get_centroid_fh_fu_203_h_limit = sub_ln237_reg_539;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_get_centroid_fh_fu_203_h_limit = sub_ln214_reg_494;
    end else begin
        grp_get_centroid_fh_fu_203_h_limit = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_get_centroid_fh_fu_203_h_offset = select_ln234_reg_526;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_get_centroid_fh_fu_203_h_offset = select_ln211_reg_481;
    end else begin
        grp_get_centroid_fh_fu_203_h_offset = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_get_centroid_fh_fu_203_micro_roi_data_V_q0 = micro_roi_1_data_V_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_get_centroid_fh_fu_203_micro_roi_data_V_q0 = micro_roi_0_data_V_q0;
    end else begin
        grp_get_centroid_fh_fu_203_micro_roi_data_V_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_get_centroid_fh_fu_203_v_limit = 8'd27;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_get_centroid_fh_fu_203_v_limit = 8'd19;
    end else begin
        grp_get_centroid_fh_fu_203_v_limit = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_get_centroid_fh_fu_203_v_offset = 8'd134;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_get_centroid_fh_fu_203_v_offset = 8'd161;
    end else begin
        grp_get_centroid_fh_fu_203_v_offset = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln228_fu_330_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        line_bases_address0 = zext_ln229_fu_342_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        line_bases_address0 = zext_ln207_fu_252_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        line_bases_address0 = grp_extract_third_and_fo_fu_189_line_bases_active_address0;
    end else begin
        line_bases_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln228_fu_330_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        line_bases_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        line_bases_ce0 = grp_extract_third_and_fo_fu_189_line_bases_active_ce0;
    end else begin
        line_bases_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        micro_roi_0_data_V_address0 = grp_extract_micro_roi_fu_217_micro_roi_data_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        micro_roi_0_data_V_address0 = grp_get_centroid_fh_fu_203_micro_roi_data_V_address0;
    end else begin
        micro_roi_0_data_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        micro_roi_0_data_V_ce0 = grp_extract_micro_roi_fu_217_micro_roi_data_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        micro_roi_0_data_V_ce0 = grp_get_centroid_fh_fu_203_micro_roi_data_V_ce0;
    end else begin
        micro_roi_0_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        micro_roi_0_data_V_we0 = grp_extract_micro_roi_fu_217_micro_roi_data_V_we0;
    end else begin
        micro_roi_0_data_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        micro_roi_1_data_V_address0 = grp_extract_micro_roi_fu_217_micro_roi_data_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        micro_roi_1_data_V_address0 = grp_get_centroid_fh_fu_203_micro_roi_data_V_address0;
    end else begin
        micro_roi_1_data_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        micro_roi_1_data_V_ce0 = grp_extract_micro_roi_fu_217_micro_roi_data_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        micro_roi_1_data_V_ce0 = grp_get_centroid_fh_fu_203_micro_roi_data_V_ce0;
    end else begin
        micro_roi_1_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        micro_roi_1_data_V_we0 = grp_extract_micro_roi_fu_217_micro_roi_data_V_we0;
    end else begin
        micro_roi_1_data_V_we0 = 1'b0;
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
            if (((icmp_ln206_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_fu_232_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_extract_micro_roi_fu_217_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln228_fu_330_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((grp_fu_232_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (grp_extract_micro_roi_fu_217_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_extract_third_and_fo_fu_189_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln211_1_fu_291_p2 = ($signed(16'd65520) + $signed(trunc_ln208_fu_257_p1));

assign add_ln211_fu_306_p2 = (16'd16 + trunc_ln208_fu_257_p1);

assign add_ln234_1_fu_393_p2 = ($signed(tmp_fu_357_p4) + $signed(16'd65521));

assign add_ln234_fu_408_p2 = (tmp_fu_357_p4 + 16'd15);

assign add_ln238_fu_432_p2 = (zext_ln238_fu_428_p1 + 4'd6);

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
    ap_block_state13_on_subcall_done = ((ap_sync_grp_get_centroid_fh_fu_203_ap_ready & ap_sync_grp_get_centroid_fh_fu_203_ap_done) == 1'b0);
end

always @ (*) begin
    ap_block_state6_on_subcall_done = ((ap_sync_grp_get_centroid_fh_fu_203_ap_ready & ap_sync_grp_get_centroid_fh_fu_203_ap_done) == 1'b0);
end

assign ap_sync_grp_get_centroid_fh_fu_203_ap_done = (grp_get_centroid_fh_fu_203_ap_done | ap_sync_reg_grp_get_centroid_fh_fu_203_ap_done);

assign ap_sync_grp_get_centroid_fh_fu_203_ap_ready = (grp_get_centroid_fh_fu_203_ap_ready | ap_sync_reg_grp_get_centroid_fh_fu_203_ap_ready);

assign centroids_y_11_load_s_fu_347_p4 = {{centroids_q0[47:16]}};

assign grp_extract_micro_roi_fu_217_ap_start = grp_extract_micro_roi_fu_217_ap_start_reg;

assign grp_extract_third_and_fo_fu_189_ap_start = grp_extract_third_and_fo_fu_189_ap_start_reg;

assign grp_fu_232_p3 = line_bases_q0[32'd16];

assign grp_get_centroid_fh_fu_203_ap_start = grp_get_centroid_fh_fu_203_ap_start_reg;

assign icmp_ln206_fu_240_p2 = ((line_index_0_i_reg_166 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln210_fu_285_p2 = ((y_right_fu_271_p2 > 17'd319) ? 1'b1 : 1'b0);

assign icmp_ln228_fu_330_p2 = ((line_index_0_i2_reg_177 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln233_fu_387_p2 = (($signed(y_right_1_fu_373_p2) > $signed(32'd319)) ? 1'b1 : 1'b0);

assign line_index_1_fu_336_p2 = (line_index_0_i2_reg_177 + 3'd1);

assign line_index_fu_246_p2 = (line_index_0_i_reg_166 + 3'd1);

assign select_ln211_1_fu_312_p3 = ((icmp_ln210_fu_285_p2[0:0] === 1'b1) ? 16'd319 : add_ln211_fu_306_p2);

assign select_ln211_fu_297_p3 = ((tmp_76_fu_277_p3[0:0] === 1'b1) ? 16'd0 : add_ln211_1_fu_291_p2);

assign select_ln234_1_fu_414_p3 = ((icmp_ln233_fu_387_p2[0:0] === 1'b1) ? 16'd319 : add_ln234_fu_408_p2);

assign select_ln234_fu_399_p3 = ((tmp_78_fu_379_p3[0:0] === 1'b1) ? 16'd0 : add_ln234_1_fu_393_p2);

assign sub_ln214_fu_321_p2 = (select_ln211_1_reg_488 - select_ln211_reg_481);

assign sub_ln237_fu_423_p2 = (select_ln234_1_reg_533 - select_ln234_reg_526);

assign tmp_76_fu_277_p3 = y_left_fu_265_p2[32'd16];

assign tmp_78_fu_379_p3 = y_left_1_fu_367_p2[32'd31];

assign tmp_fu_357_p4 = {{centroids_q0[31:16]}};

assign trunc_ln208_fu_257_p1 = line_bases_q0[15:0];

assign y_left_1_fu_367_p2 = ($signed(centroids_y_11_load_s_fu_347_p4) + $signed(32'd4294967281));

assign y_left_fu_265_p2 = ($signed(17'd131056) + $signed(zext_ln208_fu_261_p1));

assign y_right_1_fu_373_p2 = (centroids_y_11_load_s_fu_347_p4 + 32'd15);

assign y_right_fu_271_p2 = (17'd16 + zext_ln208_fu_261_p1);

assign zext_ln207_fu_252_p1 = line_index_0_i_reg_166;

assign zext_ln208_fu_261_p1 = trunc_ln208_fu_257_p1;

assign zext_ln229_fu_342_p1 = line_index_0_i2_reg_177;

assign zext_ln238_1_fu_438_p1 = add_ln238_fu_432_p2;

assign zext_ln238_fu_428_p1 = line_index_0_i2_reg_177;

always @ (posedge ap_clk) begin
    zext_ln207_reg_467[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln229_reg_507[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end

endmodule //extr_half_1_cent
