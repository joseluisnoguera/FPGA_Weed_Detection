// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xfExtractPixels (
        ap_ready,
        tmp_buf_0_V_read,
        tmp_buf_1_V_read,
        tmp_buf_2_V_read,
        tmp_buf_3_V_read,
        val1_V_read,
        pos_r,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);


output   ap_ready;
input  [23:0] tmp_buf_0_V_read;
input  [23:0] tmp_buf_1_V_read;
input  [23:0] tmp_buf_2_V_read;
input  [23:0] tmp_buf_3_V_read;
input  [23:0] val1_V_read;
input  [0:0] pos_r;
output  [23:0] ap_return_0;
output  [23:0] ap_return_1;
output  [23:0] ap_return_2;
output  [23:0] ap_return_3;

wire   [1:0] zext_ln321_fu_60_p1;
wire   [0:0] write_flag_fu_64_p6;
wire   [0:0] write_flag4_fu_78_p6;
wire   [0:0] write_flag8_fu_106_p6;
wire   [0:0] write_flag1_fu_92_p6;
wire   [23:0] select_ln78_fu_120_p3;
wire   [23:0] select_ln78_1_fu_128_p3;
wire   [23:0] select_ln78_2_fu_136_p3;
wire   [23:0] select_ln78_3_fu_144_p3;

ip_accel_app_mux_bdk #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 1 ))
ip_accel_app_mux_bdk_U559(
    .din0(1'd1),
    .din1(1'd0),
    .din2(1'd0),
    .din3(1'd0),
    .din4(zext_ln321_fu_60_p1),
    .dout(write_flag_fu_64_p6)
);

ip_accel_app_mux_bdk #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 1 ))
ip_accel_app_mux_bdk_U560(
    .din0(1'd0),
    .din1(1'd1),
    .din2(1'd0),
    .din3(1'd0),
    .din4(zext_ln321_fu_60_p1),
    .dout(write_flag4_fu_78_p6)
);

ip_accel_app_mux_bdk #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 1 ))
ip_accel_app_mux_bdk_U561(
    .din0(1'd0),
    .din1(1'd0),
    .din2(1'd0),
    .din3(1'd1),
    .din4(zext_ln321_fu_60_p1),
    .dout(write_flag1_fu_92_p6)
);

ip_accel_app_mux_bdk #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 1 ))
ip_accel_app_mux_bdk_U562(
    .din0(1'd0),
    .din1(1'd0),
    .din2(1'd1),
    .din3(1'd0),
    .din4(zext_ln321_fu_60_p1),
    .dout(write_flag8_fu_106_p6)
);

assign ap_ready = 1'b1;

assign ap_return_0 = select_ln78_fu_120_p3;

assign ap_return_1 = select_ln78_1_fu_128_p3;

assign ap_return_2 = select_ln78_2_fu_136_p3;

assign ap_return_3 = select_ln78_3_fu_144_p3;

assign select_ln78_1_fu_128_p3 = ((write_flag4_fu_78_p6[0:0] === 1'b1) ? val1_V_read : tmp_buf_1_V_read);

assign select_ln78_2_fu_136_p3 = ((write_flag8_fu_106_p6[0:0] === 1'b1) ? val1_V_read : tmp_buf_2_V_read);

assign select_ln78_3_fu_144_p3 = ((write_flag1_fu_92_p6[0:0] === 1'b1) ? val1_V_read : tmp_buf_3_V_read);

assign select_ln78_fu_120_p3 = ((write_flag_fu_64_p6[0:0] === 1'b1) ? val1_V_read : tmp_buf_0_V_read);

assign zext_ln321_fu_60_p1 = pos_r;

endmodule //xfExtractPixels
