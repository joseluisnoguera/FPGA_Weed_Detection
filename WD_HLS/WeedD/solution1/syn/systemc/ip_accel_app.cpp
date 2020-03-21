// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ip_accel_app.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<32> ip_accel_app::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<4> ip_accel_app::ap_const_lv4_0 = "0000";
const sc_lv<1> ip_accel_app::ap_const_lv1_0 = "0";
const sc_logic ip_accel_app::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ip_accel_app::ap_const_logic_0 = sc_dt::Log_0;

ip_accel_app::ip_accel_app(sc_module_name name) : sc_module(name), mVcdFile(0) {
    Block_proc642_U0 = new Block_proc642("Block_proc642_U0");
    Block_proc642_U0->ap_clk(ap_clk);
    Block_proc642_U0->ap_rst(ap_rst_n_inv);
    Block_proc642_U0->ap_start(Block_proc642_U0_ap_start);
    Block_proc642_U0->ap_done(Block_proc642_U0_ap_done);
    Block_proc642_U0->ap_continue(Block_proc642_U0_ap_continue);
    Block_proc642_U0->ap_idle(Block_proc642_U0_ap_idle);
    Block_proc642_U0->ap_ready(Block_proc642_U0_ap_ready);
    Block_proc642_U0->img_in_cols(Block_proc642_U0_img_in_cols);
    Block_proc642_U0->img_in_cols_ap_vld(Block_proc642_U0_img_in_cols_ap_vld);
    AXIvideo2xfMat_U0 = new AXIvideo2xfMat("AXIvideo2xfMat_U0");
    AXIvideo2xfMat_U0->ap_clk(ap_clk);
    AXIvideo2xfMat_U0->ap_rst(ap_rst_n_inv);
    AXIvideo2xfMat_U0->ap_start(AXIvideo2xfMat_U0_ap_start);
    AXIvideo2xfMat_U0->ap_done(AXIvideo2xfMat_U0_ap_done);
    AXIvideo2xfMat_U0->ap_continue(AXIvideo2xfMat_U0_ap_continue);
    AXIvideo2xfMat_U0->ap_idle(AXIvideo2xfMat_U0_ap_idle);
    AXIvideo2xfMat_U0->ap_ready(AXIvideo2xfMat_U0_ap_ready);
    AXIvideo2xfMat_U0->stream_in_TDATA(stream_in_TDATA);
    AXIvideo2xfMat_U0->stream_in_TVALID(stream_in_TVALID);
    AXIvideo2xfMat_U0->stream_in_TREADY(AXIvideo2xfMat_U0_stream_in_TREADY);
    AXIvideo2xfMat_U0->stream_in_TKEEP(stream_in_TKEEP);
    AXIvideo2xfMat_U0->stream_in_TSTRB(stream_in_TSTRB);
    AXIvideo2xfMat_U0->stream_in_TUSER(stream_in_TUSER);
    AXIvideo2xfMat_U0->stream_in_TLAST(stream_in_TLAST);
    AXIvideo2xfMat_U0->stream_in_TID(stream_in_TID);
    AXIvideo2xfMat_U0->stream_in_TDEST(stream_in_TDEST);
    AXIvideo2xfMat_U0->img_data_V_din(AXIvideo2xfMat_U0_img_data_V_din);
    AXIvideo2xfMat_U0->img_data_V_full_n(img_in_data_V_full_n);
    AXIvideo2xfMat_U0->img_data_V_write(AXIvideo2xfMat_U0_img_data_V_write);
    weed_detection_U0 = new weed_detection("weed_detection_U0");
    weed_detection_U0->ap_start(weed_detection_U0_ap_start);
    weed_detection_U0->start_full_n(start_for_xfMat2AXIvideo_U0_full_n);
    weed_detection_U0->start_out(weed_detection_U0_start_out);
    weed_detection_U0->start_write(weed_detection_U0_start_write);
    weed_detection_U0->img_in_cols(img_in_cols_channel7_dout);
    weed_detection_U0->img_in_data_V_dout(img_in_data_V_dout);
    weed_detection_U0->img_in_data_V_empty_n(img_in_data_V_empty_n);
    weed_detection_U0->img_in_data_V_read(weed_detection_U0_img_in_data_V_read);
    weed_detection_U0->img_out_data_V_din(weed_detection_U0_img_out_data_V_din);
    weed_detection_U0->img_out_data_V_full_n(img_out_data_V_full_n);
    weed_detection_U0->img_out_data_V_write(weed_detection_U0_img_out_data_V_write);
    weed_detection_U0->ap_clk(ap_clk);
    weed_detection_U0->ap_rst(ap_rst_n_inv);
    weed_detection_U0->img_in_cols_ap_vld(ap_var_for_const0);
    weed_detection_U0->ap_done(weed_detection_U0_ap_done);
    weed_detection_U0->ap_ready(weed_detection_U0_ap_ready);
    weed_detection_U0->ap_idle(weed_detection_U0_ap_idle);
    weed_detection_U0->ap_continue(weed_detection_U0_ap_continue);
    xfMat2AXIvideo_U0 = new xfMat2AXIvideo("xfMat2AXIvideo_U0");
    xfMat2AXIvideo_U0->ap_clk(ap_clk);
    xfMat2AXIvideo_U0->ap_rst(ap_rst_n_inv);
    xfMat2AXIvideo_U0->ap_start(xfMat2AXIvideo_U0_ap_start);
    xfMat2AXIvideo_U0->ap_done(xfMat2AXIvideo_U0_ap_done);
    xfMat2AXIvideo_U0->ap_continue(xfMat2AXIvideo_U0_ap_continue);
    xfMat2AXIvideo_U0->ap_idle(xfMat2AXIvideo_U0_ap_idle);
    xfMat2AXIvideo_U0->ap_ready(xfMat2AXIvideo_U0_ap_ready);
    xfMat2AXIvideo_U0->img_data_V_dout(img_out_data_V_dout);
    xfMat2AXIvideo_U0->img_data_V_empty_n(img_out_data_V_empty_n);
    xfMat2AXIvideo_U0->img_data_V_read(xfMat2AXIvideo_U0_img_data_V_read);
    xfMat2AXIvideo_U0->stream_out_TDATA(xfMat2AXIvideo_U0_stream_out_TDATA);
    xfMat2AXIvideo_U0->stream_out_TVALID(xfMat2AXIvideo_U0_stream_out_TVALID);
    xfMat2AXIvideo_U0->stream_out_TREADY(stream_out_TREADY);
    xfMat2AXIvideo_U0->stream_out_TKEEP(xfMat2AXIvideo_U0_stream_out_TKEEP);
    xfMat2AXIvideo_U0->stream_out_TSTRB(xfMat2AXIvideo_U0_stream_out_TSTRB);
    xfMat2AXIvideo_U0->stream_out_TUSER(xfMat2AXIvideo_U0_stream_out_TUSER);
    xfMat2AXIvideo_U0->stream_out_TLAST(xfMat2AXIvideo_U0_stream_out_TLAST);
    xfMat2AXIvideo_U0->stream_out_TID(xfMat2AXIvideo_U0_stream_out_TID);
    xfMat2AXIvideo_U0->stream_out_TDEST(xfMat2AXIvideo_U0_stream_out_TDEST);
    img_in_cols_channel7_U = new fifo_w12_d2_A_x0("img_in_cols_channel7_U");
    img_in_cols_channel7_U->clk(ap_clk);
    img_in_cols_channel7_U->reset(ap_rst_n_inv);
    img_in_cols_channel7_U->if_read_ce(ap_var_for_const1);
    img_in_cols_channel7_U->if_write_ce(ap_var_for_const1);
    img_in_cols_channel7_U->if_din(Block_proc642_U0_img_in_cols);
    img_in_cols_channel7_U->if_full_n(img_in_cols_channel7_full_n);
    img_in_cols_channel7_U->if_write(Block_proc642_U0_ap_done);
    img_in_cols_channel7_U->if_dout(img_in_cols_channel7_dout);
    img_in_cols_channel7_U->if_empty_n(img_in_cols_channel7_empty_n);
    img_in_cols_channel7_U->if_read(weed_detection_U0_ap_ready);
    img_in_data_V_U = new fifo_w24_d1_A_x0("img_in_data_V_U");
    img_in_data_V_U->clk(ap_clk);
    img_in_data_V_U->reset(ap_rst_n_inv);
    img_in_data_V_U->if_read_ce(ap_var_for_const1);
    img_in_data_V_U->if_write_ce(ap_var_for_const1);
    img_in_data_V_U->if_din(AXIvideo2xfMat_U0_img_data_V_din);
    img_in_data_V_U->if_full_n(img_in_data_V_full_n);
    img_in_data_V_U->if_write(AXIvideo2xfMat_U0_img_data_V_write);
    img_in_data_V_U->if_dout(img_in_data_V_dout);
    img_in_data_V_U->if_empty_n(img_in_data_V_empty_n);
    img_in_data_V_U->if_read(weed_detection_U0_img_in_data_V_read);
    img_out_data_V_U = new fifo_w24_d1_A_x0("img_out_data_V_U");
    img_out_data_V_U->clk(ap_clk);
    img_out_data_V_U->reset(ap_rst_n_inv);
    img_out_data_V_U->if_read_ce(ap_var_for_const1);
    img_out_data_V_U->if_write_ce(ap_var_for_const1);
    img_out_data_V_U->if_din(weed_detection_U0_img_out_data_V_din);
    img_out_data_V_U->if_full_n(img_out_data_V_full_n);
    img_out_data_V_U->if_write(weed_detection_U0_img_out_data_V_write);
    img_out_data_V_U->if_dout(img_out_data_V_dout);
    img_out_data_V_U->if_empty_n(img_out_data_V_empty_n);
    img_out_data_V_U->if_read(xfMat2AXIvideo_U0_img_data_V_read);
    start_for_xfMat2Abtn_U = new start_for_xfMat2Abtn("start_for_xfMat2Abtn_U");
    start_for_xfMat2Abtn_U->clk(ap_clk);
    start_for_xfMat2Abtn_U->reset(ap_rst_n_inv);
    start_for_xfMat2Abtn_U->if_read_ce(ap_var_for_const1);
    start_for_xfMat2Abtn_U->if_write_ce(ap_var_for_const1);
    start_for_xfMat2Abtn_U->if_din(start_for_xfMat2AXIvideo_U0_din);
    start_for_xfMat2Abtn_U->if_full_n(start_for_xfMat2AXIvideo_U0_full_n);
    start_for_xfMat2Abtn_U->if_write(weed_detection_U0_start_write);
    start_for_xfMat2Abtn_U->if_dout(start_for_xfMat2AXIvideo_U0_dout);
    start_for_xfMat2Abtn_U->if_empty_n(start_for_xfMat2AXIvideo_U0_empty_n);
    start_for_xfMat2Abtn_U->if_read(xfMat2AXIvideo_U0_ap_ready);

    SC_METHOD(thread_AXIvideo2xfMat_U0_ap_continue);

    SC_METHOD(thread_AXIvideo2xfMat_U0_ap_start);

    SC_METHOD(thread_AXIvideo2xfMat_U0_start_full_n);

    SC_METHOD(thread_AXIvideo2xfMat_U0_start_write);

    SC_METHOD(thread_Block_proc642_U0_ap_continue);
    sensitive << ( img_in_cols_channel7_full_n );

    SC_METHOD(thread_Block_proc642_U0_ap_start);

    SC_METHOD(thread_Block_proc642_U0_start_full_n);

    SC_METHOD(thread_Block_proc642_U0_start_write);

    SC_METHOD(thread_ap_channel_done_img_in_cols_channel7);
    sensitive << ( Block_proc642_U0_ap_done );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_start_for_xfMat2AXIvideo_U0_din);

    SC_METHOD(thread_stream_in_TREADY);
    sensitive << ( AXIvideo2xfMat_U0_stream_in_TREADY );

    SC_METHOD(thread_stream_out_TDATA);
    sensitive << ( xfMat2AXIvideo_U0_stream_out_TDATA );

    SC_METHOD(thread_stream_out_TDEST);
    sensitive << ( xfMat2AXIvideo_U0_stream_out_TDEST );

    SC_METHOD(thread_stream_out_TID);
    sensitive << ( xfMat2AXIvideo_U0_stream_out_TID );

    SC_METHOD(thread_stream_out_TKEEP);
    sensitive << ( xfMat2AXIvideo_U0_stream_out_TKEEP );

    SC_METHOD(thread_stream_out_TLAST);
    sensitive << ( xfMat2AXIvideo_U0_stream_out_TLAST );

    SC_METHOD(thread_stream_out_TSTRB);
    sensitive << ( xfMat2AXIvideo_U0_stream_out_TSTRB );

    SC_METHOD(thread_stream_out_TUSER);
    sensitive << ( xfMat2AXIvideo_U0_stream_out_TUSER );

    SC_METHOD(thread_stream_out_TVALID);
    sensitive << ( xfMat2AXIvideo_U0_stream_out_TVALID );

    SC_METHOD(thread_weed_detection_U0_ap_continue);

    SC_METHOD(thread_weed_detection_U0_ap_start);
    sensitive << ( img_in_cols_channel7_empty_n );

    SC_METHOD(thread_xfMat2AXIvideo_U0_ap_continue);

    SC_METHOD(thread_xfMat2AXIvideo_U0_ap_start);
    sensitive << ( start_for_xfMat2AXIvideo_U0_empty_n );

    SC_METHOD(thread_xfMat2AXIvideo_U0_start_full_n);

    SC_METHOD(thread_xfMat2AXIvideo_U0_start_write);

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const1);

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ip_accel_app_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, stream_in_TDATA, "(port)stream_in_TDATA");
    sc_trace(mVcdFile, stream_in_TKEEP, "(port)stream_in_TKEEP");
    sc_trace(mVcdFile, stream_in_TSTRB, "(port)stream_in_TSTRB");
    sc_trace(mVcdFile, stream_in_TUSER, "(port)stream_in_TUSER");
    sc_trace(mVcdFile, stream_in_TLAST, "(port)stream_in_TLAST");
    sc_trace(mVcdFile, stream_in_TID, "(port)stream_in_TID");
    sc_trace(mVcdFile, stream_in_TDEST, "(port)stream_in_TDEST");
    sc_trace(mVcdFile, stream_out_TDATA, "(port)stream_out_TDATA");
    sc_trace(mVcdFile, stream_out_TKEEP, "(port)stream_out_TKEEP");
    sc_trace(mVcdFile, stream_out_TSTRB, "(port)stream_out_TSTRB");
    sc_trace(mVcdFile, stream_out_TUSER, "(port)stream_out_TUSER");
    sc_trace(mVcdFile, stream_out_TLAST, "(port)stream_out_TLAST");
    sc_trace(mVcdFile, stream_out_TID, "(port)stream_out_TID");
    sc_trace(mVcdFile, stream_out_TDEST, "(port)stream_out_TDEST");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, stream_in_TVALID, "(port)stream_in_TVALID");
    sc_trace(mVcdFile, stream_in_TREADY, "(port)stream_in_TREADY");
    sc_trace(mVcdFile, stream_out_TVALID, "(port)stream_out_TVALID");
    sc_trace(mVcdFile, stream_out_TREADY, "(port)stream_out_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, Block_proc642_U0_ap_start, "Block_proc642_U0_ap_start");
    sc_trace(mVcdFile, Block_proc642_U0_ap_done, "Block_proc642_U0_ap_done");
    sc_trace(mVcdFile, Block_proc642_U0_ap_continue, "Block_proc642_U0_ap_continue");
    sc_trace(mVcdFile, Block_proc642_U0_ap_idle, "Block_proc642_U0_ap_idle");
    sc_trace(mVcdFile, Block_proc642_U0_ap_ready, "Block_proc642_U0_ap_ready");
    sc_trace(mVcdFile, Block_proc642_U0_img_in_cols, "Block_proc642_U0_img_in_cols");
    sc_trace(mVcdFile, Block_proc642_U0_img_in_cols_ap_vld, "Block_proc642_U0_img_in_cols_ap_vld");
    sc_trace(mVcdFile, ap_channel_done_img_in_cols_channel7, "ap_channel_done_img_in_cols_channel7");
    sc_trace(mVcdFile, img_in_cols_channel7_full_n, "img_in_cols_channel7_full_n");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_ap_start, "AXIvideo2xfMat_U0_ap_start");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_ap_done, "AXIvideo2xfMat_U0_ap_done");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_ap_continue, "AXIvideo2xfMat_U0_ap_continue");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_ap_idle, "AXIvideo2xfMat_U0_ap_idle");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_ap_ready, "AXIvideo2xfMat_U0_ap_ready");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_stream_in_TREADY, "AXIvideo2xfMat_U0_stream_in_TREADY");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_img_data_V_din, "AXIvideo2xfMat_U0_img_data_V_din");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_img_data_V_write, "AXIvideo2xfMat_U0_img_data_V_write");
    sc_trace(mVcdFile, weed_detection_U0_ap_start, "weed_detection_U0_ap_start");
    sc_trace(mVcdFile, weed_detection_U0_start_out, "weed_detection_U0_start_out");
    sc_trace(mVcdFile, weed_detection_U0_start_write, "weed_detection_U0_start_write");
    sc_trace(mVcdFile, weed_detection_U0_img_in_data_V_read, "weed_detection_U0_img_in_data_V_read");
    sc_trace(mVcdFile, weed_detection_U0_img_out_data_V_din, "weed_detection_U0_img_out_data_V_din");
    sc_trace(mVcdFile, weed_detection_U0_img_out_data_V_write, "weed_detection_U0_img_out_data_V_write");
    sc_trace(mVcdFile, weed_detection_U0_ap_done, "weed_detection_U0_ap_done");
    sc_trace(mVcdFile, weed_detection_U0_ap_ready, "weed_detection_U0_ap_ready");
    sc_trace(mVcdFile, weed_detection_U0_ap_idle, "weed_detection_U0_ap_idle");
    sc_trace(mVcdFile, weed_detection_U0_ap_continue, "weed_detection_U0_ap_continue");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_ap_start, "xfMat2AXIvideo_U0_ap_start");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_ap_done, "xfMat2AXIvideo_U0_ap_done");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_ap_continue, "xfMat2AXIvideo_U0_ap_continue");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_ap_idle, "xfMat2AXIvideo_U0_ap_idle");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_ap_ready, "xfMat2AXIvideo_U0_ap_ready");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_img_data_V_read, "xfMat2AXIvideo_U0_img_data_V_read");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_stream_out_TDATA, "xfMat2AXIvideo_U0_stream_out_TDATA");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_stream_out_TVALID, "xfMat2AXIvideo_U0_stream_out_TVALID");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_stream_out_TKEEP, "xfMat2AXIvideo_U0_stream_out_TKEEP");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_stream_out_TSTRB, "xfMat2AXIvideo_U0_stream_out_TSTRB");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_stream_out_TUSER, "xfMat2AXIvideo_U0_stream_out_TUSER");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_stream_out_TLAST, "xfMat2AXIvideo_U0_stream_out_TLAST");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_stream_out_TID, "xfMat2AXIvideo_U0_stream_out_TID");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_stream_out_TDEST, "xfMat2AXIvideo_U0_stream_out_TDEST");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, img_in_cols_channel7_dout, "img_in_cols_channel7_dout");
    sc_trace(mVcdFile, img_in_cols_channel7_empty_n, "img_in_cols_channel7_empty_n");
    sc_trace(mVcdFile, img_in_data_V_full_n, "img_in_data_V_full_n");
    sc_trace(mVcdFile, img_in_data_V_dout, "img_in_data_V_dout");
    sc_trace(mVcdFile, img_in_data_V_empty_n, "img_in_data_V_empty_n");
    sc_trace(mVcdFile, img_out_data_V_full_n, "img_out_data_V_full_n");
    sc_trace(mVcdFile, img_out_data_V_dout, "img_out_data_V_dout");
    sc_trace(mVcdFile, img_out_data_V_empty_n, "img_out_data_V_empty_n");
    sc_trace(mVcdFile, Block_proc642_U0_start_full_n, "Block_proc642_U0_start_full_n");
    sc_trace(mVcdFile, Block_proc642_U0_start_write, "Block_proc642_U0_start_write");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_start_full_n, "AXIvideo2xfMat_U0_start_full_n");
    sc_trace(mVcdFile, AXIvideo2xfMat_U0_start_write, "AXIvideo2xfMat_U0_start_write");
    sc_trace(mVcdFile, start_for_xfMat2AXIvideo_U0_din, "start_for_xfMat2AXIvideo_U0_din");
    sc_trace(mVcdFile, start_for_xfMat2AXIvideo_U0_full_n, "start_for_xfMat2AXIvideo_U0_full_n");
    sc_trace(mVcdFile, start_for_xfMat2AXIvideo_U0_dout, "start_for_xfMat2AXIvideo_U0_dout");
    sc_trace(mVcdFile, start_for_xfMat2AXIvideo_U0_empty_n, "start_for_xfMat2AXIvideo_U0_empty_n");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_start_full_n, "xfMat2AXIvideo_U0_start_full_n");
    sc_trace(mVcdFile, xfMat2AXIvideo_U0_start_write, "xfMat2AXIvideo_U0_start_write");
#endif

    }
    mHdltvinHandle.open("ip_accel_app.hdltvin.dat");
    mHdltvoutHandle.open("ip_accel_app.hdltvout.dat");
}

ip_accel_app::~ip_accel_app() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete Block_proc642_U0;
    delete AXIvideo2xfMat_U0;
    delete weed_detection_U0;
    delete xfMat2AXIvideo_U0;
    delete img_in_cols_channel7_U;
    delete img_in_data_V_U;
    delete img_out_data_V_U;
    delete start_for_xfMat2Abtn_U;
}

void ip_accel_app::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_logic_1;
}

void ip_accel_app::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_0;
}

void ip_accel_app::thread_AXIvideo2xfMat_U0_ap_continue() {
    AXIvideo2xfMat_U0_ap_continue = ap_const_logic_1;
}

void ip_accel_app::thread_AXIvideo2xfMat_U0_ap_start() {
    AXIvideo2xfMat_U0_ap_start = ap_const_logic_1;
}

void ip_accel_app::thread_AXIvideo2xfMat_U0_start_full_n() {
    AXIvideo2xfMat_U0_start_full_n = ap_const_logic_1;
}

void ip_accel_app::thread_AXIvideo2xfMat_U0_start_write() {
    AXIvideo2xfMat_U0_start_write = ap_const_logic_0;
}

void ip_accel_app::thread_Block_proc642_U0_ap_continue() {
    Block_proc642_U0_ap_continue = img_in_cols_channel7_full_n.read();
}

void ip_accel_app::thread_Block_proc642_U0_ap_start() {
    Block_proc642_U0_ap_start = ap_const_logic_1;
}

void ip_accel_app::thread_Block_proc642_U0_start_full_n() {
    Block_proc642_U0_start_full_n = ap_const_logic_1;
}

void ip_accel_app::thread_Block_proc642_U0_start_write() {
    Block_proc642_U0_start_write = ap_const_logic_0;
}

void ip_accel_app::thread_ap_channel_done_img_in_cols_channel7() {
    ap_channel_done_img_in_cols_channel7 = Block_proc642_U0_ap_done.read();
}

void ip_accel_app::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void ip_accel_app::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_0;
}

void ip_accel_app::thread_start_for_xfMat2AXIvideo_U0_din() {
    start_for_xfMat2AXIvideo_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void ip_accel_app::thread_stream_in_TREADY() {
    stream_in_TREADY = AXIvideo2xfMat_U0_stream_in_TREADY.read();
}

void ip_accel_app::thread_stream_out_TDATA() {
    stream_out_TDATA = xfMat2AXIvideo_U0_stream_out_TDATA.read();
}

void ip_accel_app::thread_stream_out_TDEST() {
    stream_out_TDEST = xfMat2AXIvideo_U0_stream_out_TDEST.read();
}

void ip_accel_app::thread_stream_out_TID() {
    stream_out_TID = xfMat2AXIvideo_U0_stream_out_TID.read();
}

void ip_accel_app::thread_stream_out_TKEEP() {
    stream_out_TKEEP = xfMat2AXIvideo_U0_stream_out_TKEEP.read();
}

void ip_accel_app::thread_stream_out_TLAST() {
    stream_out_TLAST = xfMat2AXIvideo_U0_stream_out_TLAST.read();
}

void ip_accel_app::thread_stream_out_TSTRB() {
    stream_out_TSTRB = xfMat2AXIvideo_U0_stream_out_TSTRB.read();
}

void ip_accel_app::thread_stream_out_TUSER() {
    stream_out_TUSER = xfMat2AXIvideo_U0_stream_out_TUSER.read();
}

void ip_accel_app::thread_stream_out_TVALID() {
    stream_out_TVALID = xfMat2AXIvideo_U0_stream_out_TVALID.read();
}

void ip_accel_app::thread_weed_detection_U0_ap_continue() {
    weed_detection_U0_ap_continue = ap_const_logic_1;
}

void ip_accel_app::thread_weed_detection_U0_ap_start() {
    weed_detection_U0_ap_start = img_in_cols_channel7_empty_n.read();
}

void ip_accel_app::thread_xfMat2AXIvideo_U0_ap_continue() {
    xfMat2AXIvideo_U0_ap_continue = ap_const_logic_1;
}

void ip_accel_app::thread_xfMat2AXIvideo_U0_ap_start() {
    xfMat2AXIvideo_U0_ap_start = start_for_xfMat2AXIvideo_U0_empty_n.read();
}

void ip_accel_app::thread_xfMat2AXIvideo_U0_start_full_n() {
    xfMat2AXIvideo_U0_start_full_n = ap_const_logic_1;
}

void ip_accel_app::thread_xfMat2AXIvideo_U0_start_write() {
    xfMat2AXIvideo_U0_start_write = ap_const_logic_0;
}

void ip_accel_app::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"stream_in_TDATA\" :  \"" << stream_in_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_TKEEP\" :  \"" << stream_in_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_TSTRB\" :  \"" << stream_in_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_TUSER\" :  \"" << stream_in_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_TLAST\" :  \"" << stream_in_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_TID\" :  \"" << stream_in_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_TDEST\" :  \"" << stream_in_TDEST.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"stream_out_TDATA\" :  \"" << stream_out_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_TKEEP\" :  \"" << stream_out_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_TSTRB\" :  \"" << stream_out_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_TUSER\" :  \"" << stream_out_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_TLAST\" :  \"" << stream_out_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_TID\" :  \"" << stream_out_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_TDEST\" :  \"" << stream_out_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_TVALID\" :  \"" << stream_in_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_in_TREADY\" :  \"" << stream_in_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_TVALID\" :  \"" << stream_out_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_out_TREADY\" :  \"" << stream_out_TREADY.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
