// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module get_crop_lines (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        bottom_data_V_dout,
        bottom_data_V_empty_n,
        bottom_data_V_read,
        eroded_data_V_dout,
        eroded_data_V_empty_n,
        eroded_data_V_read,
        weed_mask_tmp_data_V_din,
        weed_mask_tmp_data_V_full_n,
        weed_mask_tmp_data_V_write
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] bottom_data_V_dout;
input   bottom_data_V_empty_n;
output   bottom_data_V_read;
input  [7:0] eroded_data_V_dout;
input   eroded_data_V_empty_n;
output   eroded_data_V_read;
output  [1:0] weed_mask_tmp_data_V_din;
input   weed_mask_tmp_data_V_full_n;
output   weed_mask_tmp_data_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg bottom_data_V_read;
reg eroded_data_V_read;
reg weed_mask_tmp_data_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg   [2:0] line_bases_address0;
reg    line_bases_ce0;
reg    line_bases_we0;
wire   [16:0] line_bases_q0;
reg    line_bases_ce1;
reg    line_bases_we1;
reg   [6:0] centroids_address0;
reg    centroids_ce0;
reg    centroids_we0;
reg   [47:0] centroids_d0;
wire   [47:0] centroids_q0;
reg   [2:0] lines_address0;
reg    lines_ce0;
reg    lines_we0;
wire   [56:0] lines_q0;
wire   [0:0] grp_get_lines_lsl_fu_76_ap_return;
reg   [0:0] lines_founded_reg_109;
wire    ap_CS_fsm_state8;
wire    grp_get_lines_lsl_fu_76_ap_ready;
wire    grp_get_lines_lsl_fu_76_ap_done;
wire    grp_extr_half_1_cent_fu_48_ap_start;
wire    grp_extr_half_1_cent_fu_48_ap_done;
wire    grp_extr_half_1_cent_fu_48_ap_idle;
wire    grp_extr_half_1_cent_fu_48_ap_ready;
wire   [2:0] grp_extr_half_1_cent_fu_48_line_bases_address0;
wire    grp_extr_half_1_cent_fu_48_line_bases_ce0;
wire    grp_extr_half_1_cent_fu_48_eroded_data_V_read;
wire   [6:0] grp_extr_half_1_cent_fu_48_centroids_address0;
wire    grp_extr_half_1_cent_fu_48_centroids_ce0;
wire    grp_extr_half_1_cent_fu_48_centroids_we0;
wire   [47:0] grp_extr_half_1_cent_fu_48_centroids_d0;
wire    grp_extr_half_2_cent_fu_62_ap_start;
wire    grp_extr_half_2_cent_fu_62_ap_done;
wire    grp_extr_half_2_cent_fu_62_ap_idle;
wire    grp_extr_half_2_cent_fu_62_ap_ready;
wire   [2:0] grp_extr_half_2_cent_fu_62_line_bases_active_address0;
wire    grp_extr_half_2_cent_fu_62_line_bases_active_ce0;
wire    grp_extr_half_2_cent_fu_62_eroded_data_V_read;
wire   [6:0] grp_extr_half_2_cent_fu_62_centroids_address0;
wire    grp_extr_half_2_cent_fu_62_centroids_ce0;
wire    grp_extr_half_2_cent_fu_62_centroids_we0;
wire   [47:0] grp_extr_half_2_cent_fu_62_centroids_d0;
wire    grp_get_lines_lsl_fu_76_ap_start;
wire    grp_get_lines_lsl_fu_76_ap_idle;
wire   [2:0] grp_get_lines_lsl_fu_76_line_bases_address0;
wire    grp_get_lines_lsl_fu_76_line_bases_ce0;
wire   [6:0] grp_get_lines_lsl_fu_76_centroids_address0;
wire    grp_get_lines_lsl_fu_76_centroids_ce0;
wire   [2:0] grp_get_lines_lsl_fu_76_lines_address0;
wire    grp_get_lines_lsl_fu_76_lines_ce0;
wire    grp_get_lines_lsl_fu_76_lines_we0;
wire   [56:0] grp_get_lines_lsl_fu_76_lines_d0;
wire    grp_get_line_bases_fu_88_ap_start;
wire    grp_get_line_bases_fu_88_ap_done;
wire    grp_get_line_bases_fu_88_ap_idle;
wire    grp_get_line_bases_fu_88_ap_ready;
wire    grp_get_line_bases_fu_88_bottom_data_V_read;
wire   [2:0] grp_get_line_bases_fu_88_line_bases_address0;
wire    grp_get_line_bases_fu_88_line_bases_ce0;
wire    grp_get_line_bases_fu_88_line_bases_we0;
wire   [16:0] grp_get_line_bases_fu_88_line_bases_d0;
wire   [2:0] grp_get_line_bases_fu_88_line_bases_address1;
wire    grp_get_line_bases_fu_88_line_bases_ce1;
wire    grp_get_line_bases_fu_88_line_bases_we1;
wire   [16:0] grp_get_line_bases_fu_88_line_bases_d1;
wire    grp_get_weed_mask_fu_100_ap_start;
wire    grp_get_weed_mask_fu_100_ap_done;
wire    grp_get_weed_mask_fu_100_ap_idle;
wire    grp_get_weed_mask_fu_100_ap_ready;
wire   [1:0] grp_get_weed_mask_fu_100_weed_mask_tmp_data_V_din;
wire    grp_get_weed_mask_fu_100_weed_mask_tmp_data_V_write;
wire    grp_get_weed_mask_fu_100_lines_founded_read;
wire   [2:0] grp_get_weed_mask_fu_100_lines_address0;
wire    grp_get_weed_mask_fu_100_lines_ce0;
reg    grp_extr_half_1_cent_fu_48_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_extr_half_2_cent_fu_62_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_get_lines_lsl_fu_76_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_get_line_bases_fu_88_ap_start_reg;
reg    ap_block_state1_ignore_call3;
wire    ap_CS_fsm_state2;
reg    grp_get_weed_mask_fu_100_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [9:0] ap_NS_fsm;
reg    ap_block_state1;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_extr_half_1_cent_fu_48_ap_start_reg = 1'b0;
#0 grp_extr_half_2_cent_fu_62_ap_start_reg = 1'b0;
#0 grp_get_lines_lsl_fu_76_ap_start_reg = 1'b0;
#0 grp_get_line_bases_fu_88_ap_start_reg = 1'b0;
#0 grp_get_weed_mask_fu_100_ap_start_reg = 1'b0;
end

get_crop_lines_li0iy #(
    .DataWidth( 17 ),
    .AddressRange( 6 ),
    .AddressWidth( 3 ))
line_bases_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(line_bases_address0),
    .ce0(line_bases_ce0),
    .we0(line_bases_we0),
    .d0(grp_get_line_bases_fu_88_line_bases_d0),
    .q0(line_bases_q0),
    .address1(grp_get_line_bases_fu_88_line_bases_address1),
    .ce1(line_bases_ce1),
    .we1(line_bases_we1),
    .d1(grp_get_line_bases_fu_88_line_bases_d1)
);

get_crop_lines_ce1iI #(
    .DataWidth( 48 ),
    .AddressRange( 72 ),
    .AddressWidth( 7 ))
centroids_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(centroids_address0),
    .ce0(centroids_ce0),
    .we0(centroids_we0),
    .d0(centroids_d0),
    .q0(centroids_q0)
);

get_crop_lines_li2iS #(
    .DataWidth( 57 ),
    .AddressRange( 6 ),
    .AddressWidth( 3 ))
lines_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(lines_address0),
    .ce0(lines_ce0),
    .we0(lines_we0),
    .d0(grp_get_lines_lsl_fu_76_lines_d0),
    .q0(lines_q0)
);

extr_half_1_cent grp_extr_half_1_cent_fu_48(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_extr_half_1_cent_fu_48_ap_start),
    .ap_done(grp_extr_half_1_cent_fu_48_ap_done),
    .ap_idle(grp_extr_half_1_cent_fu_48_ap_idle),
    .ap_ready(grp_extr_half_1_cent_fu_48_ap_ready),
    .line_bases_address0(grp_extr_half_1_cent_fu_48_line_bases_address0),
    .line_bases_ce0(grp_extr_half_1_cent_fu_48_line_bases_ce0),
    .line_bases_q0(line_bases_q0),
    .eroded_data_V_dout(eroded_data_V_dout),
    .eroded_data_V_empty_n(eroded_data_V_empty_n),
    .eroded_data_V_read(grp_extr_half_1_cent_fu_48_eroded_data_V_read),
    .centroids_address0(grp_extr_half_1_cent_fu_48_centroids_address0),
    .centroids_ce0(grp_extr_half_1_cent_fu_48_centroids_ce0),
    .centroids_we0(grp_extr_half_1_cent_fu_48_centroids_we0),
    .centroids_d0(grp_extr_half_1_cent_fu_48_centroids_d0),
    .centroids_q0(centroids_q0)
);

extr_half_2_cent grp_extr_half_2_cent_fu_62(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_extr_half_2_cent_fu_62_ap_start),
    .ap_done(grp_extr_half_2_cent_fu_62_ap_done),
    .ap_idle(grp_extr_half_2_cent_fu_62_ap_idle),
    .ap_ready(grp_extr_half_2_cent_fu_62_ap_ready),
    .line_bases_active_address0(grp_extr_half_2_cent_fu_62_line_bases_active_address0),
    .line_bases_active_ce0(grp_extr_half_2_cent_fu_62_line_bases_active_ce0),
    .line_bases_active_q0(line_bases_q0),
    .eroded_data_V_dout(eroded_data_V_dout),
    .eroded_data_V_empty_n(eroded_data_V_empty_n),
    .eroded_data_V_read(grp_extr_half_2_cent_fu_62_eroded_data_V_read),
    .centroids_address0(grp_extr_half_2_cent_fu_62_centroids_address0),
    .centroids_ce0(grp_extr_half_2_cent_fu_62_centroids_ce0),
    .centroids_we0(grp_extr_half_2_cent_fu_62_centroids_we0),
    .centroids_d0(grp_extr_half_2_cent_fu_62_centroids_d0),
    .centroids_q0(centroids_q0)
);

get_lines_lsl grp_get_lines_lsl_fu_76(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_get_lines_lsl_fu_76_ap_start),
    .ap_done(grp_get_lines_lsl_fu_76_ap_done),
    .ap_idle(grp_get_lines_lsl_fu_76_ap_idle),
    .ap_ready(grp_get_lines_lsl_fu_76_ap_ready),
    .line_bases_address0(grp_get_lines_lsl_fu_76_line_bases_address0),
    .line_bases_ce0(grp_get_lines_lsl_fu_76_line_bases_ce0),
    .line_bases_q0(line_bases_q0),
    .centroids_address0(grp_get_lines_lsl_fu_76_centroids_address0),
    .centroids_ce0(grp_get_lines_lsl_fu_76_centroids_ce0),
    .centroids_q0(centroids_q0),
    .lines_address0(grp_get_lines_lsl_fu_76_lines_address0),
    .lines_ce0(grp_get_lines_lsl_fu_76_lines_ce0),
    .lines_we0(grp_get_lines_lsl_fu_76_lines_we0),
    .lines_d0(grp_get_lines_lsl_fu_76_lines_d0),
    .lines_q0(lines_q0),
    .ap_return(grp_get_lines_lsl_fu_76_ap_return)
);

get_line_bases grp_get_line_bases_fu_88(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_get_line_bases_fu_88_ap_start),
    .ap_done(grp_get_line_bases_fu_88_ap_done),
    .ap_idle(grp_get_line_bases_fu_88_ap_idle),
    .ap_ready(grp_get_line_bases_fu_88_ap_ready),
    .bottom_data_V_dout(bottom_data_V_dout),
    .bottom_data_V_empty_n(bottom_data_V_empty_n),
    .bottom_data_V_read(grp_get_line_bases_fu_88_bottom_data_V_read),
    .line_bases_address0(grp_get_line_bases_fu_88_line_bases_address0),
    .line_bases_ce0(grp_get_line_bases_fu_88_line_bases_ce0),
    .line_bases_we0(grp_get_line_bases_fu_88_line_bases_we0),
    .line_bases_d0(grp_get_line_bases_fu_88_line_bases_d0),
    .line_bases_q0(line_bases_q0),
    .line_bases_address1(grp_get_line_bases_fu_88_line_bases_address1),
    .line_bases_ce1(grp_get_line_bases_fu_88_line_bases_ce1),
    .line_bases_we1(grp_get_line_bases_fu_88_line_bases_we1),
    .line_bases_d1(grp_get_line_bases_fu_88_line_bases_d1)
);

get_weed_mask grp_get_weed_mask_fu_100(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_get_weed_mask_fu_100_ap_start),
    .ap_done(grp_get_weed_mask_fu_100_ap_done),
    .ap_idle(grp_get_weed_mask_fu_100_ap_idle),
    .ap_ready(grp_get_weed_mask_fu_100_ap_ready),
    .weed_mask_tmp_data_V_din(grp_get_weed_mask_fu_100_weed_mask_tmp_data_V_din),
    .weed_mask_tmp_data_V_full_n(weed_mask_tmp_data_V_full_n),
    .weed_mask_tmp_data_V_write(grp_get_weed_mask_fu_100_weed_mask_tmp_data_V_write),
    .lines_founded_read(grp_get_weed_mask_fu_100_lines_founded_read),
    .lines_address0(grp_get_weed_mask_fu_100_lines_address0),
    .lines_ce0(grp_get_weed_mask_fu_100_lines_ce0),
    .lines_q0(lines_q0)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state10) & (grp_get_weed_mask_fu_100_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_extr_half_1_cent_fu_48_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_extr_half_1_cent_fu_48_ap_start_reg <= 1'b1;
        end else if ((grp_extr_half_1_cent_fu_48_ap_ready == 1'b1)) begin
            grp_extr_half_1_cent_fu_48_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_extr_half_2_cent_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_extr_half_2_cent_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_extr_half_2_cent_fu_62_ap_ready == 1'b1)) begin
            grp_extr_half_2_cent_fu_62_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_line_bases_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_get_line_bases_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_get_line_bases_fu_88_ap_ready == 1'b1)) begin
            grp_get_line_bases_fu_88_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_lines_lsl_fu_76_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_get_lines_lsl_fu_76_ap_start_reg <= 1'b1;
        end else if ((grp_get_lines_lsl_fu_76_ap_ready == 1'b1)) begin
            grp_get_lines_lsl_fu_76_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_weed_mask_fu_100_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_get_weed_mask_fu_100_ap_start_reg <= 1'b1;
        end else if ((grp_get_weed_mask_fu_100_ap_ready == 1'b1)) begin
            grp_get_weed_mask_fu_100_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_get_lines_lsl_fu_76_ap_done == 1'b1))) begin
        lines_founded_reg_109 <= grp_get_lines_lsl_fu_76_ap_return;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_get_weed_mask_fu_100_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bottom_data_V_read = grp_get_line_bases_fu_88_bottom_data_V_read;
    end else begin
        bottom_data_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        centroids_address0 = grp_get_lines_lsl_fu_76_centroids_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        centroids_address0 = grp_extr_half_2_cent_fu_62_centroids_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        centroids_address0 = grp_extr_half_1_cent_fu_48_centroids_address0;
    end else begin
        centroids_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        centroids_ce0 = grp_get_lines_lsl_fu_76_centroids_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        centroids_ce0 = grp_extr_half_2_cent_fu_62_centroids_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        centroids_ce0 = grp_extr_half_1_cent_fu_48_centroids_ce0;
    end else begin
        centroids_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        centroids_d0 = grp_extr_half_2_cent_fu_62_centroids_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        centroids_d0 = grp_extr_half_1_cent_fu_48_centroids_d0;
    end else begin
        centroids_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        centroids_we0 = grp_extr_half_2_cent_fu_62_centroids_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        centroids_we0 = grp_extr_half_1_cent_fu_48_centroids_we0;
    end else begin
        centroids_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        eroded_data_V_read = grp_extr_half_2_cent_fu_62_eroded_data_V_read;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        eroded_data_V_read = grp_extr_half_1_cent_fu_48_eroded_data_V_read;
    end else begin
        eroded_data_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_get_weed_mask_fu_100_ap_done == 1'b1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        line_bases_address0 = grp_get_line_bases_fu_88_line_bases_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        line_bases_address0 = grp_get_lines_lsl_fu_76_line_bases_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        line_bases_address0 = grp_extr_half_2_cent_fu_62_line_bases_active_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        line_bases_address0 = grp_extr_half_1_cent_fu_48_line_bases_address0;
    end else begin
        line_bases_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        line_bases_ce0 = grp_get_line_bases_fu_88_line_bases_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        line_bases_ce0 = grp_get_lines_lsl_fu_76_line_bases_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        line_bases_ce0 = grp_extr_half_2_cent_fu_62_line_bases_active_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        line_bases_ce0 = grp_extr_half_1_cent_fu_48_line_bases_ce0;
    end else begin
        line_bases_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        line_bases_ce1 = grp_get_line_bases_fu_88_line_bases_ce1;
    end else begin
        line_bases_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        line_bases_we0 = grp_get_line_bases_fu_88_line_bases_we0;
    end else begin
        line_bases_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        line_bases_we1 = grp_get_line_bases_fu_88_line_bases_we1;
    end else begin
        line_bases_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        lines_address0 = grp_get_weed_mask_fu_100_lines_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        lines_address0 = grp_get_lines_lsl_fu_76_lines_address0;
    end else begin
        lines_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        lines_ce0 = grp_get_weed_mask_fu_100_lines_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        lines_ce0 = grp_get_lines_lsl_fu_76_lines_ce0;
    end else begin
        lines_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        lines_we0 = grp_get_lines_lsl_fu_76_lines_we0;
    end else begin
        lines_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        weed_mask_tmp_data_V_write = grp_get_weed_mask_fu_100_weed_mask_tmp_data_V_write;
    end else begin
        weed_mask_tmp_data_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_get_line_bases_fu_88_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_extr_half_1_cent_fu_48_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_extr_half_2_cent_fu_62_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_get_lines_lsl_fu_76_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_get_weed_mask_fu_100_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call3 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign grp_extr_half_1_cent_fu_48_ap_start = grp_extr_half_1_cent_fu_48_ap_start_reg;

assign grp_extr_half_2_cent_fu_62_ap_start = grp_extr_half_2_cent_fu_62_ap_start_reg;

assign grp_get_line_bases_fu_88_ap_start = grp_get_line_bases_fu_88_ap_start_reg;

assign grp_get_lines_lsl_fu_76_ap_start = grp_get_lines_lsl_fu_76_ap_start_reg;

assign grp_get_weed_mask_fu_100_ap_start = grp_get_weed_mask_fu_100_ap_start_reg;

assign grp_get_weed_mask_fu_100_lines_founded_read = lines_founded_reg_109;

assign start_out = real_start;

assign weed_mask_tmp_data_V_din = grp_get_weed_mask_fu_100_weed_mask_tmp_data_V_din;

endmodule //get_crop_lines