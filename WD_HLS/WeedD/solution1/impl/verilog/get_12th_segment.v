// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module get_12th_segment (
        eroded_data_V_dout,
        eroded_data_V_empty_n,
        eroded_data_V_read,
        bottom_data_V_din,
        bottom_data_V_full_n,
        bottom_data_V_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [7:0] eroded_data_V_dout;
input   eroded_data_V_empty_n;
output   eroded_data_V_read;
output  [7:0] bottom_data_V_din;
input   bottom_data_V_full_n;
output   bottom_data_V_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    get_12th_segment_Loo_U0_ap_start;
wire    get_12th_segment_Loo_U0_ap_done;
wire    get_12th_segment_Loo_U0_ap_continue;
wire    get_12th_segment_Loo_U0_ap_idle;
wire    get_12th_segment_Loo_U0_ap_ready;
wire    get_12th_segment_Loo_U0_eroded_data_V_read;
wire   [7:0] get_12th_segment_Loo_U0_bottom_data_V_din;
wire    get_12th_segment_Loo_U0_bottom_data_V_write;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    get_12th_segment_Loo_U0_start_full_n;
wire    get_12th_segment_Loo_U0_start_write;

get_12th_segment_Loo get_12th_segment_Loo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(get_12th_segment_Loo_U0_ap_start),
    .ap_done(get_12th_segment_Loo_U0_ap_done),
    .ap_continue(get_12th_segment_Loo_U0_ap_continue),
    .ap_idle(get_12th_segment_Loo_U0_ap_idle),
    .ap_ready(get_12th_segment_Loo_U0_ap_ready),
    .eroded_data_V_dout(eroded_data_V_dout),
    .eroded_data_V_empty_n(eroded_data_V_empty_n),
    .eroded_data_V_read(get_12th_segment_Loo_U0_eroded_data_V_read),
    .bottom_data_V_din(get_12th_segment_Loo_U0_bottom_data_V_din),
    .bottom_data_V_full_n(bottom_data_V_full_n),
    .bottom_data_V_write(get_12th_segment_Loo_U0_bottom_data_V_write)
);

assign ap_done = get_12th_segment_Loo_U0_ap_done;

assign ap_idle = get_12th_segment_Loo_U0_ap_idle;

assign ap_ready = get_12th_segment_Loo_U0_ap_ready;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = get_12th_segment_Loo_U0_ap_done;

assign ap_sync_ready = get_12th_segment_Loo_U0_ap_ready;

assign bottom_data_V_din = get_12th_segment_Loo_U0_bottom_data_V_din;

assign bottom_data_V_write = get_12th_segment_Loo_U0_bottom_data_V_write;

assign eroded_data_V_read = get_12th_segment_Loo_U0_eroded_data_V_read;

assign get_12th_segment_Loo_U0_ap_continue = ap_continue;

assign get_12th_segment_Loo_U0_ap_start = ap_start;

assign get_12th_segment_Loo_U0_start_full_n = 1'b1;

assign get_12th_segment_Loo_U0_start_write = 1'b0;

endmodule //get_12th_segment
