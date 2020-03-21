// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "xfMat2AXIvideo.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic xfMat2AXIvideo::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic xfMat2AXIvideo::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> xfMat2AXIvideo::ap_ST_fsm_state1 = "1";
const sc_lv<4> xfMat2AXIvideo::ap_ST_fsm_state2 = "10";
const sc_lv<4> xfMat2AXIvideo::ap_ST_fsm_pp0_stage0 = "100";
const sc_lv<4> xfMat2AXIvideo::ap_ST_fsm_state6 = "1000";
const sc_lv<32> xfMat2AXIvideo::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool xfMat2AXIvideo::ap_const_boolean_1 = true;
const sc_lv<32> xfMat2AXIvideo::ap_const_lv32_2 = "10";
const bool xfMat2AXIvideo::ap_const_boolean_0 = false;
const sc_lv<1> xfMat2AXIvideo::ap_const_lv1_1 = "1";
const sc_lv<32> xfMat2AXIvideo::ap_const_lv32_1 = "1";
const sc_lv<1> xfMat2AXIvideo::ap_const_lv1_0 = "0";
const sc_lv<10> xfMat2AXIvideo::ap_const_lv10_0 = "0000000000";
const sc_lv<32> xfMat2AXIvideo::ap_const_lv32_3 = "11";
const sc_lv<11> xfMat2AXIvideo::ap_const_lv11_0 = "00000000000";
const sc_lv<4> xfMat2AXIvideo::ap_const_lv4_F = "1111";
const sc_lv<4> xfMat2AXIvideo::ap_const_lv4_0 = "0000";
const sc_lv<10> xfMat2AXIvideo::ap_const_lv10_2D0 = "1011010000";
const sc_lv<10> xfMat2AXIvideo::ap_const_lv10_1 = "1";
const sc_lv<11> xfMat2AXIvideo::ap_const_lv11_500 = "10100000000";
const sc_lv<11> xfMat2AXIvideo::ap_const_lv11_1 = "1";
const sc_lv<11> xfMat2AXIvideo::ap_const_lv11_4FF = "10011111111";
const sc_lv<8> xfMat2AXIvideo::ap_const_lv8_FF = "11111111";

xfMat2AXIvideo::xfMat2AXIvideo(sc_module_name name) : sc_module(name), mVcdFile(0) {
    regslice_both_AXI_video_strm_V_data_V_U = new regslice_both<32>("regslice_both_AXI_video_strm_V_data_V_U");
    regslice_both_AXI_video_strm_V_data_V_U->ap_clk(ap_clk);
    regslice_both_AXI_video_strm_V_data_V_U->ap_rst(ap_rst);
    regslice_both_AXI_video_strm_V_data_V_U->data_in(stream_out_TDATA_int);
    regslice_both_AXI_video_strm_V_data_V_U->vld_in(stream_out_TVALID_int);
    regslice_both_AXI_video_strm_V_data_V_U->ack_in(stream_out_TREADY_int);
    regslice_both_AXI_video_strm_V_data_V_U->data_out(stream_out_TDATA);
    regslice_both_AXI_video_strm_V_data_V_U->vld_out(regslice_both_AXI_video_strm_V_data_V_U_vld_out);
    regslice_both_AXI_video_strm_V_data_V_U->ack_out(stream_out_TREADY);
    regslice_both_AXI_video_strm_V_data_V_U->apdone_blk(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk);
    regslice_both_AXI_video_strm_V_keep_V_U = new regslice_both<4>("regslice_both_AXI_video_strm_V_keep_V_U");
    regslice_both_AXI_video_strm_V_keep_V_U->ap_clk(ap_clk);
    regslice_both_AXI_video_strm_V_keep_V_U->ap_rst(ap_rst);
    regslice_both_AXI_video_strm_V_keep_V_U->data_in(ap_var_for_const0);
    regslice_both_AXI_video_strm_V_keep_V_U->vld_in(stream_out_TVALID_int);
    regslice_both_AXI_video_strm_V_keep_V_U->ack_in(regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy);
    regslice_both_AXI_video_strm_V_keep_V_U->data_out(stream_out_TKEEP);
    regslice_both_AXI_video_strm_V_keep_V_U->vld_out(regslice_both_AXI_video_strm_V_keep_V_U_vld_out);
    regslice_both_AXI_video_strm_V_keep_V_U->ack_out(stream_out_TREADY);
    regslice_both_AXI_video_strm_V_keep_V_U->apdone_blk(regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk);
    regslice_both_AXI_video_strm_V_strb_V_U = new regslice_both<4>("regslice_both_AXI_video_strm_V_strb_V_U");
    regslice_both_AXI_video_strm_V_strb_V_U->ap_clk(ap_clk);
    regslice_both_AXI_video_strm_V_strb_V_U->ap_rst(ap_rst);
    regslice_both_AXI_video_strm_V_strb_V_U->data_in(ap_var_for_const1);
    regslice_both_AXI_video_strm_V_strb_V_U->vld_in(stream_out_TVALID_int);
    regslice_both_AXI_video_strm_V_strb_V_U->ack_in(regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy);
    regslice_both_AXI_video_strm_V_strb_V_U->data_out(stream_out_TSTRB);
    regslice_both_AXI_video_strm_V_strb_V_U->vld_out(regslice_both_AXI_video_strm_V_strb_V_U_vld_out);
    regslice_both_AXI_video_strm_V_strb_V_U->ack_out(stream_out_TREADY);
    regslice_both_AXI_video_strm_V_strb_V_U->apdone_blk(regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk);
    regslice_both_AXI_video_strm_V_user_V_U = new regslice_both<1>("regslice_both_AXI_video_strm_V_user_V_U");
    regslice_both_AXI_video_strm_V_user_V_U->ap_clk(ap_clk);
    regslice_both_AXI_video_strm_V_user_V_U->ap_rst(ap_rst);
    regslice_both_AXI_video_strm_V_user_V_U->data_in(tmp_user_V_fu_84);
    regslice_both_AXI_video_strm_V_user_V_U->vld_in(stream_out_TVALID_int);
    regslice_both_AXI_video_strm_V_user_V_U->ack_in(regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy);
    regslice_both_AXI_video_strm_V_user_V_U->data_out(stream_out_TUSER);
    regslice_both_AXI_video_strm_V_user_V_U->vld_out(regslice_both_AXI_video_strm_V_user_V_U_vld_out);
    regslice_both_AXI_video_strm_V_user_V_U->ack_out(stream_out_TREADY);
    regslice_both_AXI_video_strm_V_user_V_U->apdone_blk(regslice_both_AXI_video_strm_V_user_V_U_apdone_blk);
    regslice_both_AXI_video_strm_V_last_V_U = new regslice_both<1>("regslice_both_AXI_video_strm_V_last_V_U");
    regslice_both_AXI_video_strm_V_last_V_U->ap_clk(ap_clk);
    regslice_both_AXI_video_strm_V_last_V_U->ap_rst(ap_rst);
    regslice_both_AXI_video_strm_V_last_V_U->data_in(axi_last_V_reg_223);
    regslice_both_AXI_video_strm_V_last_V_U->vld_in(stream_out_TVALID_int);
    regslice_both_AXI_video_strm_V_last_V_U->ack_in(regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy);
    regslice_both_AXI_video_strm_V_last_V_U->data_out(stream_out_TLAST);
    regslice_both_AXI_video_strm_V_last_V_U->vld_out(regslice_both_AXI_video_strm_V_last_V_U_vld_out);
    regslice_both_AXI_video_strm_V_last_V_U->ack_out(stream_out_TREADY);
    regslice_both_AXI_video_strm_V_last_V_U->apdone_blk(regslice_both_AXI_video_strm_V_last_V_U_apdone_blk);
    regslice_both_AXI_video_strm_V_id_V_U = new regslice_both<1>("regslice_both_AXI_video_strm_V_id_V_U");
    regslice_both_AXI_video_strm_V_id_V_U->ap_clk(ap_clk);
    regslice_both_AXI_video_strm_V_id_V_U->ap_rst(ap_rst);
    regslice_both_AXI_video_strm_V_id_V_U->data_in(ap_var_for_const2);
    regslice_both_AXI_video_strm_V_id_V_U->vld_in(stream_out_TVALID_int);
    regslice_both_AXI_video_strm_V_id_V_U->ack_in(regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy);
    regslice_both_AXI_video_strm_V_id_V_U->data_out(stream_out_TID);
    regslice_both_AXI_video_strm_V_id_V_U->vld_out(regslice_both_AXI_video_strm_V_id_V_U_vld_out);
    regslice_both_AXI_video_strm_V_id_V_U->ack_out(stream_out_TREADY);
    regslice_both_AXI_video_strm_V_id_V_U->apdone_blk(regslice_both_AXI_video_strm_V_id_V_U_apdone_blk);
    regslice_both_AXI_video_strm_V_dest_V_U = new regslice_both<1>("regslice_both_AXI_video_strm_V_dest_V_U");
    regslice_both_AXI_video_strm_V_dest_V_U->ap_clk(ap_clk);
    regslice_both_AXI_video_strm_V_dest_V_U->ap_rst(ap_rst);
    regslice_both_AXI_video_strm_V_dest_V_U->data_in(ap_var_for_const2);
    regslice_both_AXI_video_strm_V_dest_V_U->vld_in(stream_out_TVALID_int);
    regslice_both_AXI_video_strm_V_dest_V_U->ack_in(regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy);
    regslice_both_AXI_video_strm_V_dest_V_U->data_out(stream_out_TDEST);
    regslice_both_AXI_video_strm_V_dest_V_U->vld_out(regslice_both_AXI_video_strm_V_dest_V_U_vld_out);
    regslice_both_AXI_video_strm_V_dest_V_U->ack_out(stream_out_TREADY);
    regslice_both_AXI_video_strm_V_dest_V_U->apdone_blk(regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( img_data_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln187_reg_214 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( img_data_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln187_reg_214 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_state4_io );
    sensitive << ( ap_block_state5_io );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( img_data_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln187_reg_214 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_state4_io );
    sensitive << ( ap_block_state5_io );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state4_io);
    sensitive << ( icmp_ln187_reg_214 );
    sensitive << ( stream_out_TREADY_int );

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter1);
    sensitive << ( img_data_V_empty_n );
    sensitive << ( icmp_ln187_reg_214 );

    SC_METHOD(thread_ap_block_state5_io);
    sensitive << ( icmp_ln187_reg_214_pp0_iter1_reg );
    sensitive << ( stream_out_TREADY_int );

    SC_METHOD(thread_ap_block_state5_pp0_stage0_iter2);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state3);
    sensitive << ( icmp_ln187_fu_162_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( icmp_ln186_fu_150_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( regslice_both_AXI_video_strm_V_data_V_U_apdone_blk );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( icmp_ln186_fu_150_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( regslice_both_AXI_video_strm_V_data_V_U_apdone_blk );

    SC_METHOD(thread_axi_last_V_fu_174_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( j_0_reg_134 );
    sensitive << ( icmp_ln187_fu_162_p2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_i_fu_156_p2);
    sensitive << ( i_0_reg_123 );

    SC_METHOD(thread_icmp_ln186_fu_150_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( regslice_both_AXI_video_strm_V_data_V_U_apdone_blk );
    sensitive << ( i_0_reg_123 );

    SC_METHOD(thread_icmp_ln187_fu_162_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( j_0_reg_134 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_img_data_V_blk_n);
    sensitive << ( img_data_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln187_reg_214 );

    SC_METHOD(thread_img_data_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln187_reg_214 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_j_fu_168_p2);
    sensitive << ( j_0_reg_134 );

    SC_METHOD(thread_stream_out_TDATA_blk_n);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln187_reg_214 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( icmp_ln187_reg_214_pp0_iter1_reg );
    sensitive << ( stream_out_TREADY_int );

    SC_METHOD(thread_stream_out_TDATA_int);
    sensitive << ( img_data_V_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln187_reg_214 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_stream_out_TVALID);
    sensitive << ( regslice_both_AXI_video_strm_V_data_V_U_vld_out );

    SC_METHOD(thread_stream_out_TVALID_int);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln187_reg_214 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( icmp_ln186_fu_150_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( regslice_both_AXI_video_strm_V_data_V_U_apdone_blk );
    sensitive << ( icmp_ln187_fu_162_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    SC_THREAD(thread_ap_var_for_const2);

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "xfMat2AXIvideo_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, img_data_V_dout, "(port)img_data_V_dout");
    sc_trace(mVcdFile, img_data_V_empty_n, "(port)img_data_V_empty_n");
    sc_trace(mVcdFile, img_data_V_read, "(port)img_data_V_read");
    sc_trace(mVcdFile, stream_out_TDATA, "(port)stream_out_TDATA");
    sc_trace(mVcdFile, stream_out_TVALID, "(port)stream_out_TVALID");
    sc_trace(mVcdFile, stream_out_TREADY, "(port)stream_out_TREADY");
    sc_trace(mVcdFile, stream_out_TKEEP, "(port)stream_out_TKEEP");
    sc_trace(mVcdFile, stream_out_TSTRB, "(port)stream_out_TSTRB");
    sc_trace(mVcdFile, stream_out_TUSER, "(port)stream_out_TUSER");
    sc_trace(mVcdFile, stream_out_TLAST, "(port)stream_out_TLAST");
    sc_trace(mVcdFile, stream_out_TID, "(port)stream_out_TID");
    sc_trace(mVcdFile, stream_out_TDEST, "(port)stream_out_TDEST");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, img_data_V_blk_n, "img_data_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln187_reg_214, "icmp_ln187_reg_214");
    sc_trace(mVcdFile, stream_out_TDATA_blk_n, "stream_out_TDATA_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, icmp_ln187_reg_214_pp0_iter1_reg, "icmp_ln187_reg_214_pp0_iter1_reg");
    sc_trace(mVcdFile, j_0_reg_134, "j_0_reg_134");
    sc_trace(mVcdFile, icmp_ln186_fu_150_p2, "icmp_ln186_fu_150_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_data_V_U_apdone_blk, "regslice_both_AXI_video_strm_V_data_V_U_apdone_blk");
    sc_trace(mVcdFile, i_fu_156_p2, "i_fu_156_p2");
    sc_trace(mVcdFile, i_reg_209, "i_reg_209");
    sc_trace(mVcdFile, icmp_ln187_fu_162_p2, "icmp_ln187_fu_162_p2");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter0, "ap_block_state3_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter1, "ap_block_state4_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_io, "ap_block_state4_io");
    sc_trace(mVcdFile, ap_block_state5_pp0_stage0_iter2, "ap_block_state5_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_state5_io, "ap_block_state5_io");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, j_fu_168_p2, "j_fu_168_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, axi_last_V_fu_174_p2, "axi_last_V_fu_174_p2");
    sc_trace(mVcdFile, axi_last_V_reg_223, "axi_last_V_reg_223");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state3, "ap_condition_pp0_exit_iter0_state3");
    sc_trace(mVcdFile, i_0_reg_123, "i_0_reg_123");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_user_V_fu_84, "tmp_user_V_fu_84");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
    sc_trace(mVcdFile, stream_out_TDATA_int, "stream_out_TDATA_int");
    sc_trace(mVcdFile, stream_out_TVALID_int, "stream_out_TVALID_int");
    sc_trace(mVcdFile, stream_out_TREADY_int, "stream_out_TREADY_int");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_data_V_U_vld_out, "regslice_both_AXI_video_strm_V_data_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk, "regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy, "regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_keep_V_U_vld_out, "regslice_both_AXI_video_strm_V_keep_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk, "regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy, "regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_strb_V_U_vld_out, "regslice_both_AXI_video_strm_V_strb_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_user_V_U_apdone_blk, "regslice_both_AXI_video_strm_V_user_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy, "regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_user_V_U_vld_out, "regslice_both_AXI_video_strm_V_user_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_last_V_U_apdone_blk, "regslice_both_AXI_video_strm_V_last_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy, "regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_last_V_U_vld_out, "regslice_both_AXI_video_strm_V_last_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_id_V_U_apdone_blk, "regslice_both_AXI_video_strm_V_id_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy, "regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_id_V_U_vld_out, "regslice_both_AXI_video_strm_V_id_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk, "regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy, "regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_AXI_video_strm_V_dest_V_U_vld_out, "regslice_both_AXI_video_strm_V_dest_V_U_vld_out");
#endif

    }
}

xfMat2AXIvideo::~xfMat2AXIvideo() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete regslice_both_AXI_video_strm_V_data_V_U;
    delete regslice_both_AXI_video_strm_V_keep_V_U;
    delete regslice_both_AXI_video_strm_V_strb_V_U;
    delete regslice_both_AXI_video_strm_V_user_V_U;
    delete regslice_both_AXI_video_strm_V_last_V_U;
    delete regslice_both_AXI_video_strm_V_id_V_U;
    delete regslice_both_AXI_video_strm_V_dest_V_U;
}

void xfMat2AXIvideo::thread_ap_var_for_const2() {
    ap_var_for_const2 = ap_const_lv1_0;
}

void xfMat2AXIvideo::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv4_F;
}

void xfMat2AXIvideo::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv4_0;
}

void xfMat2AXIvideo::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0) && 
                    esl_seteq<1,1,1>(icmp_ln186_fu_150_p2.read(), ap_const_lv1_0))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln186_fu_150_p2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state3.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln186_fu_150_p2.read()))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_0_reg_123 = i_reg_209.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        i_0_reg_123 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln187_fu_162_p2.read()))) {
        j_0_reg_134 = j_fu_168_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln186_fu_150_p2.read()))) {
        j_0_reg_134 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_user_V_fu_84 = ap_const_lv1_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        tmp_user_V_fu_84 = ap_const_lv1_1;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln187_fu_162_p2.read()))) {
        axi_last_V_reg_223 = axi_last_V_fu_174_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0))) {
        i_reg_209 = i_fu_156_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln187_reg_214 = icmp_ln187_fu_162_p2.read();
        icmp_ln187_reg_214_pp0_iter1_reg = icmp_ln187_reg_214.read();
    }
}

void xfMat2AXIvideo::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[2];
}

void xfMat2AXIvideo::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void xfMat2AXIvideo::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void xfMat2AXIvideo::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[3];
}

void xfMat2AXIvideo::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void xfMat2AXIvideo::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_0, img_data_V_empty_n.read()));
}

void xfMat2AXIvideo::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  ((esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1) && 
    esl_seteq<1,1,1>(ap_const_logic_0, img_data_V_empty_n.read())) || 
   esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state4_io.read()))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state5_io.read())));
}

void xfMat2AXIvideo::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  ((esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1) && 
    esl_seteq<1,1,1>(ap_const_logic_0, img_data_V_empty_n.read())) || 
   esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state4_io.read()))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state5_io.read())));
}

void xfMat2AXIvideo::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void xfMat2AXIvideo::thread_ap_block_state3_pp0_stage0_iter0() {
    ap_block_state3_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void xfMat2AXIvideo::thread_ap_block_state4_io() {
    ap_block_state4_io = (esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_0, stream_out_TREADY_int.read()));
}

void xfMat2AXIvideo::thread_ap_block_state4_pp0_stage0_iter1() {
    ap_block_state4_pp0_stage0_iter1 = (esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_0, img_data_V_empty_n.read()));
}

void xfMat2AXIvideo::thread_ap_block_state5_io() {
    ap_block_state5_io = (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln187_reg_214_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_logic_0, stream_out_TREADY_int.read()));
}

void xfMat2AXIvideo::thread_ap_block_state5_pp0_stage0_iter2() {
    ap_block_state5_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void xfMat2AXIvideo::thread_ap_condition_pp0_exit_iter0_state3() {
    if (esl_seteq<1,1,1>(icmp_ln187_fu_162_p2.read(), ap_const_lv1_0)) {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_0;
    }
}

void xfMat2AXIvideo::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(icmp_ln186_fu_150_p2.read(), ap_const_lv1_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void xfMat2AXIvideo::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void xfMat2AXIvideo::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void xfMat2AXIvideo::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void xfMat2AXIvideo::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(icmp_ln186_fu_150_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void xfMat2AXIvideo::thread_axi_last_V_fu_174_p2() {
    axi_last_V_fu_174_p2 = (!j_0_reg_134.read().is_01() || !ap_const_lv11_4FF.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_134.read() == ap_const_lv11_4FF);
}

void xfMat2AXIvideo::thread_i_fu_156_p2() {
    i_fu_156_p2 = (!i_0_reg_123.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(i_0_reg_123.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void xfMat2AXIvideo::thread_icmp_ln186_fu_150_p2() {
    icmp_ln186_fu_150_p2 = (!i_0_reg_123.read().is_01() || !ap_const_lv10_2D0.is_01())? sc_lv<1>(): (sc_biguint<10>(i_0_reg_123.read()) < sc_biguint<10>(ap_const_lv10_2D0));
}

void xfMat2AXIvideo::thread_icmp_ln187_fu_162_p2() {
    icmp_ln187_fu_162_p2 = (!j_0_reg_134.read().is_01() || !ap_const_lv11_500.is_01())? sc_lv<1>(): (sc_biguint<11>(j_0_reg_134.read()) < sc_biguint<11>(ap_const_lv11_500));
}

void xfMat2AXIvideo::thread_img_data_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1))) {
        img_data_V_blk_n = img_data_V_empty_n.read();
    } else {
        img_data_V_blk_n = ap_const_logic_1;
    }
}

void xfMat2AXIvideo::thread_img_data_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        img_data_V_read = ap_const_logic_1;
    } else {
        img_data_V_read = ap_const_logic_0;
    }
}

void xfMat2AXIvideo::thread_j_fu_168_p2() {
    j_fu_168_p2 = (!j_0_reg_134.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(j_0_reg_134.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void xfMat2AXIvideo::thread_stream_out_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln187_reg_214_pp0_iter1_reg.read())))) {
        stream_out_TDATA_blk_n = stream_out_TREADY_int.read();
    } else {
        stream_out_TDATA_blk_n = ap_const_logic_1;
    }
}

void xfMat2AXIvideo::thread_stream_out_TDATA_int() {
    stream_out_TDATA_int = esl_concat<8,24>(ap_const_lv8_FF, img_data_V_dout.read());
}

void xfMat2AXIvideo::thread_stream_out_TVALID() {
    stream_out_TVALID = regslice_both_AXI_video_strm_V_data_V_U_vld_out.read();
}

void xfMat2AXIvideo::thread_stream_out_TVALID_int() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln187_reg_214.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        stream_out_TVALID_int = ap_const_logic_1;
    } else {
        stream_out_TVALID_int = ap_const_logic_0;
    }
}

void xfMat2AXIvideo::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0) && esl_seteq<1,1,1>(icmp_ln186_fu_150_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln186_fu_150_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln187_fu_162_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(icmp_ln187_fu_162_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}
