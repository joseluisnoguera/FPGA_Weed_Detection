// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "get_max_from_channel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic get_max_from_channel::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<32> get_max_from_channel::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_logic get_max_from_channel::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<2> get_max_from_channel::ap_const_lv2_0 = "00";
const sc_lv<2> get_max_from_channel::ap_const_lv2_1 = "1";
const bool get_max_from_channel::ap_const_boolean_1 = true;

get_max_from_channel::get_max_from_channel(sc_module_name name) : sc_module(name), mVcdFile(0) {
    minMaxLoc435_U0 = new minMaxLoc435("minMaxLoc435_U0");
    minMaxLoc435_U0->ap_clk(ap_clk);
    minMaxLoc435_U0->ap_rst(ap_rst);
    minMaxLoc435_U0->ap_start(minMaxLoc435_U0_ap_start);
    minMaxLoc435_U0->ap_done(minMaxLoc435_U0_ap_done);
    minMaxLoc435_U0->ap_continue(minMaxLoc435_U0_ap_continue);
    minMaxLoc435_U0->ap_idle(minMaxLoc435_U0_ap_idle);
    minMaxLoc435_U0->ap_ready(minMaxLoc435_U0_ap_ready);
    minMaxLoc435_U0->p_src_data_V_dout(r_channel_data_V_dout);
    minMaxLoc435_U0->p_src_data_V_empty_n(r_channel_data_V_empty_n);
    minMaxLoc435_U0->p_src_data_V_read(minMaxLoc435_U0_p_src_data_V_read);
    minMaxLoc435_U0->ap_return(minMaxLoc435_U0_ap_return);
    minMaxLoc436_U0 = new minMaxLoc436("minMaxLoc436_U0");
    minMaxLoc436_U0->ap_clk(ap_clk);
    minMaxLoc436_U0->ap_rst(ap_rst);
    minMaxLoc436_U0->ap_start(minMaxLoc436_U0_ap_start);
    minMaxLoc436_U0->ap_done(minMaxLoc436_U0_ap_done);
    minMaxLoc436_U0->ap_continue(minMaxLoc436_U0_ap_continue);
    minMaxLoc436_U0->ap_idle(minMaxLoc436_U0_ap_idle);
    minMaxLoc436_U0->ap_ready(minMaxLoc436_U0_ap_ready);
    minMaxLoc436_U0->p_src_data_V_dout(g_channel_data_V_dout);
    minMaxLoc436_U0->p_src_data_V_empty_n(g_channel_data_V_empty_n);
    minMaxLoc436_U0->p_src_data_V_read(minMaxLoc436_U0_p_src_data_V_read);
    minMaxLoc436_U0->ap_return(minMaxLoc436_U0_ap_return);
    minMaxLoc_U0 = new minMaxLoc("minMaxLoc_U0");
    minMaxLoc_U0->ap_clk(ap_clk);
    minMaxLoc_U0->ap_rst(ap_rst);
    minMaxLoc_U0->ap_start(minMaxLoc_U0_ap_start);
    minMaxLoc_U0->ap_done(minMaxLoc_U0_ap_done);
    minMaxLoc_U0->ap_continue(minMaxLoc_U0_ap_continue);
    minMaxLoc_U0->ap_idle(minMaxLoc_U0_ap_idle);
    minMaxLoc_U0->ap_ready(minMaxLoc_U0_ap_ready);
    minMaxLoc_U0->p_src_data_V_dout(b_channel_data_V_dout);
    minMaxLoc_U0->p_src_data_V_empty_n(b_channel_data_V_empty_n);
    minMaxLoc_U0->p_src_data_V_read(minMaxLoc_U0_p_src_data_V_read);
    minMaxLoc_U0->ap_return(minMaxLoc_U0_ap_return);
    p_prop_ret_max_b_dc_U0 = new p_prop_ret_max_b_dc_s("p_prop_ret_max_b_dc_U0");
    p_prop_ret_max_b_dc_U0->ap_clk(ap_clk);
    p_prop_ret_max_b_dc_U0->ap_rst(ap_rst);
    p_prop_ret_max_b_dc_U0->ap_start(p_prop_ret_max_b_dc_U0_ap_start);
    p_prop_ret_max_b_dc_U0->ap_done(p_prop_ret_max_b_dc_U0_ap_done);
    p_prop_ret_max_b_dc_U0->ap_continue(p_prop_ret_max_b_dc_U0_ap_continue);
    p_prop_ret_max_b_dc_U0->ap_idle(p_prop_ret_max_b_dc_U0_ap_idle);
    p_prop_ret_max_b_dc_U0->ap_ready(p_prop_ret_max_b_dc_U0_ap_ready);
    p_prop_ret_max_b_dc_U0->p_read(max_b_dc_channel_dout);
    p_prop_ret_max_b_dc_U0->max_b_out_din(p_prop_ret_max_b_dc_U0_max_b_out_din);
    p_prop_ret_max_b_dc_U0->max_b_out_full_n(max_b_out_full_n);
    p_prop_ret_max_b_dc_U0->max_b_out_write(p_prop_ret_max_b_dc_U0_max_b_out_write);
    p_prop_ret_max_g_dc_U0 = new p_prop_ret_max_g_dc_s("p_prop_ret_max_g_dc_U0");
    p_prop_ret_max_g_dc_U0->ap_clk(ap_clk);
    p_prop_ret_max_g_dc_U0->ap_rst(ap_rst);
    p_prop_ret_max_g_dc_U0->ap_start(p_prop_ret_max_g_dc_U0_ap_start);
    p_prop_ret_max_g_dc_U0->ap_done(p_prop_ret_max_g_dc_U0_ap_done);
    p_prop_ret_max_g_dc_U0->ap_continue(p_prop_ret_max_g_dc_U0_ap_continue);
    p_prop_ret_max_g_dc_U0->ap_idle(p_prop_ret_max_g_dc_U0_ap_idle);
    p_prop_ret_max_g_dc_U0->ap_ready(p_prop_ret_max_g_dc_U0_ap_ready);
    p_prop_ret_max_g_dc_U0->p_read(max_g_dc_channel_dout);
    p_prop_ret_max_g_dc_U0->max_g_out_din(p_prop_ret_max_g_dc_U0_max_g_out_din);
    p_prop_ret_max_g_dc_U0->max_g_out_full_n(max_g_out_full_n);
    p_prop_ret_max_g_dc_U0->max_g_out_write(p_prop_ret_max_g_dc_U0_max_g_out_write);
    p_prop_ret_max_r_dc_U0 = new p_prop_ret_max_r_dc_s("p_prop_ret_max_r_dc_U0");
    p_prop_ret_max_r_dc_U0->ap_clk(ap_clk);
    p_prop_ret_max_r_dc_U0->ap_rst(ap_rst);
    p_prop_ret_max_r_dc_U0->ap_start(p_prop_ret_max_r_dc_U0_ap_start);
    p_prop_ret_max_r_dc_U0->ap_done(p_prop_ret_max_r_dc_U0_ap_done);
    p_prop_ret_max_r_dc_U0->ap_continue(p_prop_ret_max_r_dc_U0_ap_continue);
    p_prop_ret_max_r_dc_U0->ap_idle(p_prop_ret_max_r_dc_U0_ap_idle);
    p_prop_ret_max_r_dc_U0->ap_ready(p_prop_ret_max_r_dc_U0_ap_ready);
    p_prop_ret_max_r_dc_U0->p_read(max_r_dc_channel_dout);
    p_prop_ret_max_r_dc_U0->max_r_out_din(p_prop_ret_max_r_dc_U0_max_r_out_din);
    p_prop_ret_max_r_dc_U0->max_r_out_full_n(max_r_out_full_n);
    p_prop_ret_max_r_dc_U0->max_r_out_write(p_prop_ret_max_r_dc_U0_max_r_out_write);
    max_r_dc_channel_U = new fifo_w32_d2_A("max_r_dc_channel_U");
    max_r_dc_channel_U->clk(ap_clk);
    max_r_dc_channel_U->reset(ap_rst);
    max_r_dc_channel_U->if_read_ce(ap_var_for_const0);
    max_r_dc_channel_U->if_write_ce(ap_var_for_const0);
    max_r_dc_channel_U->if_din(minMaxLoc435_U0_ap_return);
    max_r_dc_channel_U->if_full_n(max_r_dc_channel_full_n);
    max_r_dc_channel_U->if_write(minMaxLoc435_U0_ap_done);
    max_r_dc_channel_U->if_dout(max_r_dc_channel_dout);
    max_r_dc_channel_U->if_empty_n(max_r_dc_channel_empty_n);
    max_r_dc_channel_U->if_read(p_prop_ret_max_r_dc_U0_ap_ready);
    max_g_dc_channel_U = new fifo_w32_d2_A("max_g_dc_channel_U");
    max_g_dc_channel_U->clk(ap_clk);
    max_g_dc_channel_U->reset(ap_rst);
    max_g_dc_channel_U->if_read_ce(ap_var_for_const0);
    max_g_dc_channel_U->if_write_ce(ap_var_for_const0);
    max_g_dc_channel_U->if_din(minMaxLoc436_U0_ap_return);
    max_g_dc_channel_U->if_full_n(max_g_dc_channel_full_n);
    max_g_dc_channel_U->if_write(minMaxLoc436_U0_ap_done);
    max_g_dc_channel_U->if_dout(max_g_dc_channel_dout);
    max_g_dc_channel_U->if_empty_n(max_g_dc_channel_empty_n);
    max_g_dc_channel_U->if_read(p_prop_ret_max_g_dc_U0_ap_ready);
    max_b_dc_channel_U = new fifo_w32_d2_A("max_b_dc_channel_U");
    max_b_dc_channel_U->clk(ap_clk);
    max_b_dc_channel_U->reset(ap_rst);
    max_b_dc_channel_U->if_read_ce(ap_var_for_const0);
    max_b_dc_channel_U->if_write_ce(ap_var_for_const0);
    max_b_dc_channel_U->if_din(minMaxLoc_U0_ap_return);
    max_b_dc_channel_U->if_full_n(max_b_dc_channel_full_n);
    max_b_dc_channel_U->if_write(minMaxLoc_U0_ap_done);
    max_b_dc_channel_U->if_dout(max_b_dc_channel_dout);
    max_b_dc_channel_U->if_empty_n(max_b_dc_channel_empty_n);
    max_b_dc_channel_U->if_read(p_prop_ret_max_b_dc_U0_ap_ready);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_channel_done_max_b_dc_channel);
    sensitive << ( minMaxLoc_U0_ap_done );

    SC_METHOD(thread_ap_channel_done_max_g_dc_channel);
    sensitive << ( minMaxLoc436_U0_ap_done );

    SC_METHOD(thread_ap_channel_done_max_r_dc_channel);
    sensitive << ( minMaxLoc435_U0_ap_done );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( minMaxLoc435_U0_ap_idle );
    sensitive << ( minMaxLoc436_U0_ap_idle );
    sensitive << ( minMaxLoc_U0_ap_idle );
    sensitive << ( p_prop_ret_max_b_dc_U0_ap_idle );
    sensitive << ( p_prop_ret_max_g_dc_U0_ap_idle );
    sensitive << ( p_prop_ret_max_r_dc_U0_ap_idle );
    sensitive << ( max_r_dc_channel_empty_n );
    sensitive << ( max_g_dc_channel_empty_n );
    sensitive << ( max_b_dc_channel_empty_n );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sync_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_sync_done );
    sensitive << ( ap_continue );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( p_prop_ret_max_b_dc_U0_ap_done );
    sensitive << ( p_prop_ret_max_g_dc_U0_ap_done );
    sensitive << ( p_prop_ret_max_r_dc_U0_ap_done );

    SC_METHOD(thread_ap_sync_minMaxLoc435_U0_ap_ready);
    sensitive << ( minMaxLoc435_U0_ap_ready );
    sensitive << ( ap_sync_reg_minMaxLoc435_U0_ap_ready );

    SC_METHOD(thread_ap_sync_minMaxLoc436_U0_ap_ready);
    sensitive << ( minMaxLoc436_U0_ap_ready );
    sensitive << ( ap_sync_reg_minMaxLoc436_U0_ap_ready );

    SC_METHOD(thread_ap_sync_minMaxLoc_U0_ap_ready);
    sensitive << ( minMaxLoc_U0_ap_ready );
    sensitive << ( ap_sync_reg_minMaxLoc_U0_ap_ready );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( ap_sync_minMaxLoc435_U0_ap_ready );
    sensitive << ( ap_sync_minMaxLoc436_U0_ap_ready );
    sensitive << ( ap_sync_minMaxLoc_U0_ap_ready );

    SC_METHOD(thread_b_channel_data_V_read);
    sensitive << ( minMaxLoc_U0_p_src_data_V_read );

    SC_METHOD(thread_g_channel_data_V_read);
    sensitive << ( minMaxLoc436_U0_p_src_data_V_read );

    SC_METHOD(thread_max_b_out_din);
    sensitive << ( p_prop_ret_max_b_dc_U0_max_b_out_din );

    SC_METHOD(thread_max_b_out_write);
    sensitive << ( p_prop_ret_max_b_dc_U0_max_b_out_write );

    SC_METHOD(thread_max_g_out_din);
    sensitive << ( p_prop_ret_max_g_dc_U0_max_g_out_din );

    SC_METHOD(thread_max_g_out_write);
    sensitive << ( p_prop_ret_max_g_dc_U0_max_g_out_write );

    SC_METHOD(thread_max_r_out_din);
    sensitive << ( p_prop_ret_max_r_dc_U0_max_r_out_din );

    SC_METHOD(thread_max_r_out_write);
    sensitive << ( p_prop_ret_max_r_dc_U0_max_r_out_write );

    SC_METHOD(thread_minMaxLoc435_U0_ap_continue);
    sensitive << ( max_r_dc_channel_full_n );

    SC_METHOD(thread_minMaxLoc435_U0_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_sync_reg_minMaxLoc435_U0_ap_ready );

    SC_METHOD(thread_minMaxLoc435_U0_start_full_n);

    SC_METHOD(thread_minMaxLoc435_U0_start_write);

    SC_METHOD(thread_minMaxLoc436_U0_ap_continue);
    sensitive << ( max_g_dc_channel_full_n );

    SC_METHOD(thread_minMaxLoc436_U0_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_sync_reg_minMaxLoc436_U0_ap_ready );

    SC_METHOD(thread_minMaxLoc436_U0_start_full_n);

    SC_METHOD(thread_minMaxLoc436_U0_start_write);

    SC_METHOD(thread_minMaxLoc_U0_ap_continue);
    sensitive << ( max_b_dc_channel_full_n );

    SC_METHOD(thread_minMaxLoc_U0_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_sync_reg_minMaxLoc_U0_ap_ready );

    SC_METHOD(thread_minMaxLoc_U0_start_full_n);

    SC_METHOD(thread_minMaxLoc_U0_start_write);

    SC_METHOD(thread_p_prop_ret_max_b_dc_U0_ap_continue);
    sensitive << ( ap_sync_continue );

    SC_METHOD(thread_p_prop_ret_max_b_dc_U0_ap_start);
    sensitive << ( max_b_dc_channel_empty_n );

    SC_METHOD(thread_p_prop_ret_max_b_dc_U0_start_full_n);

    SC_METHOD(thread_p_prop_ret_max_b_dc_U0_start_write);

    SC_METHOD(thread_p_prop_ret_max_g_dc_U0_ap_continue);
    sensitive << ( ap_sync_continue );

    SC_METHOD(thread_p_prop_ret_max_g_dc_U0_ap_start);
    sensitive << ( max_g_dc_channel_empty_n );

    SC_METHOD(thread_p_prop_ret_max_g_dc_U0_start_full_n);

    SC_METHOD(thread_p_prop_ret_max_g_dc_U0_start_write);

    SC_METHOD(thread_p_prop_ret_max_r_dc_U0_ap_continue);
    sensitive << ( ap_sync_continue );

    SC_METHOD(thread_p_prop_ret_max_r_dc_U0_ap_start);
    sensitive << ( max_r_dc_channel_empty_n );

    SC_METHOD(thread_p_prop_ret_max_r_dc_U0_start_full_n);

    SC_METHOD(thread_p_prop_ret_max_r_dc_U0_start_write);

    SC_METHOD(thread_r_channel_data_V_read);
    sensitive << ( minMaxLoc435_U0_p_src_data_V_read );

    SC_THREAD(thread_ap_var_for_const0);

    ap_sync_reg_minMaxLoc435_U0_ap_ready = SC_LOGIC_0;
    minMaxLoc435_U0_ap_ready_count = "00";
    ap_sync_reg_minMaxLoc436_U0_ap_ready = SC_LOGIC_0;
    minMaxLoc436_U0_ap_ready_count = "00";
    ap_sync_reg_minMaxLoc_U0_ap_ready = SC_LOGIC_0;
    minMaxLoc_U0_ap_ready_count = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "get_max_from_channel_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, r_channel_data_V_dout, "(port)r_channel_data_V_dout");
    sc_trace(mVcdFile, r_channel_data_V_empty_n, "(port)r_channel_data_V_empty_n");
    sc_trace(mVcdFile, r_channel_data_V_read, "(port)r_channel_data_V_read");
    sc_trace(mVcdFile, g_channel_data_V_dout, "(port)g_channel_data_V_dout");
    sc_trace(mVcdFile, g_channel_data_V_empty_n, "(port)g_channel_data_V_empty_n");
    sc_trace(mVcdFile, g_channel_data_V_read, "(port)g_channel_data_V_read");
    sc_trace(mVcdFile, b_channel_data_V_dout, "(port)b_channel_data_V_dout");
    sc_trace(mVcdFile, b_channel_data_V_empty_n, "(port)b_channel_data_V_empty_n");
    sc_trace(mVcdFile, b_channel_data_V_read, "(port)b_channel_data_V_read");
    sc_trace(mVcdFile, max_r_out_din, "(port)max_r_out_din");
    sc_trace(mVcdFile, max_r_out_full_n, "(port)max_r_out_full_n");
    sc_trace(mVcdFile, max_r_out_write, "(port)max_r_out_write");
    sc_trace(mVcdFile, max_g_out_din, "(port)max_g_out_din");
    sc_trace(mVcdFile, max_g_out_full_n, "(port)max_g_out_full_n");
    sc_trace(mVcdFile, max_g_out_write, "(port)max_g_out_write");
    sc_trace(mVcdFile, max_b_out_din, "(port)max_b_out_din");
    sc_trace(mVcdFile, max_b_out_full_n, "(port)max_b_out_full_n");
    sc_trace(mVcdFile, max_b_out_write, "(port)max_b_out_write");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, minMaxLoc435_U0_ap_start, "minMaxLoc435_U0_ap_start");
    sc_trace(mVcdFile, minMaxLoc435_U0_ap_done, "minMaxLoc435_U0_ap_done");
    sc_trace(mVcdFile, minMaxLoc435_U0_ap_continue, "minMaxLoc435_U0_ap_continue");
    sc_trace(mVcdFile, minMaxLoc435_U0_ap_idle, "minMaxLoc435_U0_ap_idle");
    sc_trace(mVcdFile, minMaxLoc435_U0_ap_ready, "minMaxLoc435_U0_ap_ready");
    sc_trace(mVcdFile, minMaxLoc435_U0_p_src_data_V_read, "minMaxLoc435_U0_p_src_data_V_read");
    sc_trace(mVcdFile, minMaxLoc435_U0_ap_return, "minMaxLoc435_U0_ap_return");
    sc_trace(mVcdFile, ap_channel_done_max_r_dc_channel, "ap_channel_done_max_r_dc_channel");
    sc_trace(mVcdFile, max_r_dc_channel_full_n, "max_r_dc_channel_full_n");
    sc_trace(mVcdFile, minMaxLoc436_U0_ap_start, "minMaxLoc436_U0_ap_start");
    sc_trace(mVcdFile, minMaxLoc436_U0_ap_done, "minMaxLoc436_U0_ap_done");
    sc_trace(mVcdFile, minMaxLoc436_U0_ap_continue, "minMaxLoc436_U0_ap_continue");
    sc_trace(mVcdFile, minMaxLoc436_U0_ap_idle, "minMaxLoc436_U0_ap_idle");
    sc_trace(mVcdFile, minMaxLoc436_U0_ap_ready, "minMaxLoc436_U0_ap_ready");
    sc_trace(mVcdFile, minMaxLoc436_U0_p_src_data_V_read, "minMaxLoc436_U0_p_src_data_V_read");
    sc_trace(mVcdFile, minMaxLoc436_U0_ap_return, "minMaxLoc436_U0_ap_return");
    sc_trace(mVcdFile, ap_channel_done_max_g_dc_channel, "ap_channel_done_max_g_dc_channel");
    sc_trace(mVcdFile, max_g_dc_channel_full_n, "max_g_dc_channel_full_n");
    sc_trace(mVcdFile, minMaxLoc_U0_ap_start, "minMaxLoc_U0_ap_start");
    sc_trace(mVcdFile, minMaxLoc_U0_ap_done, "minMaxLoc_U0_ap_done");
    sc_trace(mVcdFile, minMaxLoc_U0_ap_continue, "minMaxLoc_U0_ap_continue");
    sc_trace(mVcdFile, minMaxLoc_U0_ap_idle, "minMaxLoc_U0_ap_idle");
    sc_trace(mVcdFile, minMaxLoc_U0_ap_ready, "minMaxLoc_U0_ap_ready");
    sc_trace(mVcdFile, minMaxLoc_U0_p_src_data_V_read, "minMaxLoc_U0_p_src_data_V_read");
    sc_trace(mVcdFile, minMaxLoc_U0_ap_return, "minMaxLoc_U0_ap_return");
    sc_trace(mVcdFile, ap_channel_done_max_b_dc_channel, "ap_channel_done_max_b_dc_channel");
    sc_trace(mVcdFile, max_b_dc_channel_full_n, "max_b_dc_channel_full_n");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_ap_start, "p_prop_ret_max_b_dc_U0_ap_start");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_ap_done, "p_prop_ret_max_b_dc_U0_ap_done");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_ap_continue, "p_prop_ret_max_b_dc_U0_ap_continue");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_ap_idle, "p_prop_ret_max_b_dc_U0_ap_idle");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_ap_ready, "p_prop_ret_max_b_dc_U0_ap_ready");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_max_b_out_din, "p_prop_ret_max_b_dc_U0_max_b_out_din");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_max_b_out_write, "p_prop_ret_max_b_dc_U0_max_b_out_write");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_ap_start, "p_prop_ret_max_g_dc_U0_ap_start");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_ap_done, "p_prop_ret_max_g_dc_U0_ap_done");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_ap_continue, "p_prop_ret_max_g_dc_U0_ap_continue");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_ap_idle, "p_prop_ret_max_g_dc_U0_ap_idle");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_ap_ready, "p_prop_ret_max_g_dc_U0_ap_ready");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_max_g_out_din, "p_prop_ret_max_g_dc_U0_max_g_out_din");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_max_g_out_write, "p_prop_ret_max_g_dc_U0_max_g_out_write");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_ap_start, "p_prop_ret_max_r_dc_U0_ap_start");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_ap_done, "p_prop_ret_max_r_dc_U0_ap_done");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_ap_continue, "p_prop_ret_max_r_dc_U0_ap_continue");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_ap_idle, "p_prop_ret_max_r_dc_U0_ap_idle");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_ap_ready, "p_prop_ret_max_r_dc_U0_ap_ready");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_max_r_out_din, "p_prop_ret_max_r_dc_U0_max_r_out_din");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_max_r_out_write, "p_prop_ret_max_r_dc_U0_max_r_out_write");
    sc_trace(mVcdFile, max_r_dc_channel_dout, "max_r_dc_channel_dout");
    sc_trace(mVcdFile, max_r_dc_channel_empty_n, "max_r_dc_channel_empty_n");
    sc_trace(mVcdFile, max_g_dc_channel_dout, "max_g_dc_channel_dout");
    sc_trace(mVcdFile, max_g_dc_channel_empty_n, "max_g_dc_channel_empty_n");
    sc_trace(mVcdFile, max_b_dc_channel_dout, "max_b_dc_channel_dout");
    sc_trace(mVcdFile, max_b_dc_channel_empty_n, "max_b_dc_channel_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, ap_sync_reg_minMaxLoc435_U0_ap_ready, "ap_sync_reg_minMaxLoc435_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_minMaxLoc435_U0_ap_ready, "ap_sync_minMaxLoc435_U0_ap_ready");
    sc_trace(mVcdFile, minMaxLoc435_U0_ap_ready_count, "minMaxLoc435_U0_ap_ready_count");
    sc_trace(mVcdFile, ap_sync_reg_minMaxLoc436_U0_ap_ready, "ap_sync_reg_minMaxLoc436_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_minMaxLoc436_U0_ap_ready, "ap_sync_minMaxLoc436_U0_ap_ready");
    sc_trace(mVcdFile, minMaxLoc436_U0_ap_ready_count, "minMaxLoc436_U0_ap_ready_count");
    sc_trace(mVcdFile, ap_sync_reg_minMaxLoc_U0_ap_ready, "ap_sync_reg_minMaxLoc_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_minMaxLoc_U0_ap_ready, "ap_sync_minMaxLoc_U0_ap_ready");
    sc_trace(mVcdFile, minMaxLoc_U0_ap_ready_count, "minMaxLoc_U0_ap_ready_count");
    sc_trace(mVcdFile, minMaxLoc435_U0_start_full_n, "minMaxLoc435_U0_start_full_n");
    sc_trace(mVcdFile, minMaxLoc435_U0_start_write, "minMaxLoc435_U0_start_write");
    sc_trace(mVcdFile, minMaxLoc436_U0_start_full_n, "minMaxLoc436_U0_start_full_n");
    sc_trace(mVcdFile, minMaxLoc436_U0_start_write, "minMaxLoc436_U0_start_write");
    sc_trace(mVcdFile, minMaxLoc_U0_start_full_n, "minMaxLoc_U0_start_full_n");
    sc_trace(mVcdFile, minMaxLoc_U0_start_write, "minMaxLoc_U0_start_write");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_start_full_n, "p_prop_ret_max_b_dc_U0_start_full_n");
    sc_trace(mVcdFile, p_prop_ret_max_b_dc_U0_start_write, "p_prop_ret_max_b_dc_U0_start_write");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_start_full_n, "p_prop_ret_max_g_dc_U0_start_full_n");
    sc_trace(mVcdFile, p_prop_ret_max_g_dc_U0_start_write, "p_prop_ret_max_g_dc_U0_start_write");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_start_full_n, "p_prop_ret_max_r_dc_U0_start_full_n");
    sc_trace(mVcdFile, p_prop_ret_max_r_dc_U0_start_write, "p_prop_ret_max_r_dc_U0_start_write");
#endif

    }
}

get_max_from_channel::~get_max_from_channel() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete minMaxLoc435_U0;
    delete minMaxLoc436_U0;
    delete minMaxLoc_U0;
    delete p_prop_ret_max_b_dc_U0;
    delete p_prop_ret_max_g_dc_U0;
    delete p_prop_ret_max_r_dc_U0;
    delete max_r_dc_channel_U;
    delete max_g_dc_channel_U;
    delete max_b_dc_channel_U;
}

void get_max_from_channel::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void get_max_from_channel::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_sync_reg_minMaxLoc435_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (ap_start.read() & 
             ap_sync_ready.read()))) {
            ap_sync_reg_minMaxLoc435_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_minMaxLoc435_U0_ap_ready = ap_sync_minMaxLoc435_U0_ap_ready.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_sync_reg_minMaxLoc436_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (ap_start.read() & 
             ap_sync_ready.read()))) {
            ap_sync_reg_minMaxLoc436_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_minMaxLoc436_U0_ap_ready = ap_sync_minMaxLoc436_U0_ap_ready.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_sync_reg_minMaxLoc_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (ap_start.read() & 
             ap_sync_ready.read()))) {
            ap_sync_reg_minMaxLoc_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_minMaxLoc_U0_ap_ready = ap_sync_minMaxLoc_U0_ap_ready.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_0, minMaxLoc435_U0_ap_ready.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sync_ready.read()))) {
        minMaxLoc435_U0_ap_ready_count = (!minMaxLoc435_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(minMaxLoc435_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(minMaxLoc435_U0_ap_ready.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_logic_0, ap_sync_ready.read()))) {
        minMaxLoc435_U0_ap_ready_count = (!minMaxLoc435_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(minMaxLoc435_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sync_ready.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, minMaxLoc436_U0_ap_ready.read()))) {
        minMaxLoc436_U0_ap_ready_count = (!minMaxLoc436_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(minMaxLoc436_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_sync_ready.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, minMaxLoc436_U0_ap_ready.read()))) {
        minMaxLoc436_U0_ap_ready_count = (!minMaxLoc436_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(minMaxLoc436_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sync_ready.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, minMaxLoc_U0_ap_ready.read()))) {
        minMaxLoc_U0_ap_ready_count = (!minMaxLoc_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(minMaxLoc_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_sync_ready.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, minMaxLoc_U0_ap_ready.read()))) {
        minMaxLoc_U0_ap_ready_count = (!minMaxLoc_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(minMaxLoc_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
}

void get_max_from_channel::thread_ap_channel_done_max_b_dc_channel() {
    ap_channel_done_max_b_dc_channel = minMaxLoc_U0_ap_done.read();
}

void get_max_from_channel::thread_ap_channel_done_max_g_dc_channel() {
    ap_channel_done_max_g_dc_channel = minMaxLoc436_U0_ap_done.read();
}

void get_max_from_channel::thread_ap_channel_done_max_r_dc_channel() {
    ap_channel_done_max_r_dc_channel = minMaxLoc435_U0_ap_done.read();
}

void get_max_from_channel::thread_ap_done() {
    ap_done = ap_sync_done.read();
}

void get_max_from_channel::thread_ap_idle() {
    ap_idle = (minMaxLoc435_U0_ap_idle.read() & minMaxLoc436_U0_ap_idle.read() & minMaxLoc_U0_ap_idle.read() & p_prop_ret_max_b_dc_U0_ap_idle.read() & p_prop_ret_max_g_dc_U0_ap_idle.read() & p_prop_ret_max_r_dc_U0_ap_idle.read() & (max_r_dc_channel_empty_n.read() ^ 
  ap_const_logic_1) & (max_g_dc_channel_empty_n.read() ^ 
  ap_const_logic_1) & (max_b_dc_channel_empty_n.read() ^ 
  ap_const_logic_1));
}

void get_max_from_channel::thread_ap_ready() {
    ap_ready = ap_sync_ready.read();
}

void get_max_from_channel::thread_ap_sync_continue() {
    ap_sync_continue = (ap_sync_done.read() & ap_continue.read());
}

void get_max_from_channel::thread_ap_sync_done() {
    ap_sync_done = (p_prop_ret_max_b_dc_U0_ap_done.read() & p_prop_ret_max_g_dc_U0_ap_done.read() & p_prop_ret_max_r_dc_U0_ap_done.read());
}

void get_max_from_channel::thread_ap_sync_minMaxLoc435_U0_ap_ready() {
    ap_sync_minMaxLoc435_U0_ap_ready = (minMaxLoc435_U0_ap_ready.read() | ap_sync_reg_minMaxLoc435_U0_ap_ready.read());
}

void get_max_from_channel::thread_ap_sync_minMaxLoc436_U0_ap_ready() {
    ap_sync_minMaxLoc436_U0_ap_ready = (minMaxLoc436_U0_ap_ready.read() | ap_sync_reg_minMaxLoc436_U0_ap_ready.read());
}

void get_max_from_channel::thread_ap_sync_minMaxLoc_U0_ap_ready() {
    ap_sync_minMaxLoc_U0_ap_ready = (minMaxLoc_U0_ap_ready.read() | ap_sync_reg_minMaxLoc_U0_ap_ready.read());
}

void get_max_from_channel::thread_ap_sync_ready() {
    ap_sync_ready = (ap_sync_minMaxLoc435_U0_ap_ready.read() & ap_sync_minMaxLoc436_U0_ap_ready.read() & ap_sync_minMaxLoc_U0_ap_ready.read());
}

void get_max_from_channel::thread_b_channel_data_V_read() {
    b_channel_data_V_read = minMaxLoc_U0_p_src_data_V_read.read();
}

void get_max_from_channel::thread_g_channel_data_V_read() {
    g_channel_data_V_read = minMaxLoc436_U0_p_src_data_V_read.read();
}

void get_max_from_channel::thread_max_b_out_din() {
    max_b_out_din = p_prop_ret_max_b_dc_U0_max_b_out_din.read();
}

void get_max_from_channel::thread_max_b_out_write() {
    max_b_out_write = p_prop_ret_max_b_dc_U0_max_b_out_write.read();
}

void get_max_from_channel::thread_max_g_out_din() {
    max_g_out_din = p_prop_ret_max_g_dc_U0_max_g_out_din.read();
}

void get_max_from_channel::thread_max_g_out_write() {
    max_g_out_write = p_prop_ret_max_g_dc_U0_max_g_out_write.read();
}

void get_max_from_channel::thread_max_r_out_din() {
    max_r_out_din = p_prop_ret_max_r_dc_U0_max_r_out_din.read();
}

void get_max_from_channel::thread_max_r_out_write() {
    max_r_out_write = p_prop_ret_max_r_dc_U0_max_r_out_write.read();
}

void get_max_from_channel::thread_minMaxLoc435_U0_ap_continue() {
    minMaxLoc435_U0_ap_continue = max_r_dc_channel_full_n.read();
}

void get_max_from_channel::thread_minMaxLoc435_U0_ap_start() {
    minMaxLoc435_U0_ap_start = (ap_start.read() & (ap_sync_reg_minMaxLoc435_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void get_max_from_channel::thread_minMaxLoc435_U0_start_full_n() {
    minMaxLoc435_U0_start_full_n = ap_const_logic_1;
}

void get_max_from_channel::thread_minMaxLoc435_U0_start_write() {
    minMaxLoc435_U0_start_write = ap_const_logic_0;
}

void get_max_from_channel::thread_minMaxLoc436_U0_ap_continue() {
    minMaxLoc436_U0_ap_continue = max_g_dc_channel_full_n.read();
}

void get_max_from_channel::thread_minMaxLoc436_U0_ap_start() {
    minMaxLoc436_U0_ap_start = (ap_start.read() & (ap_sync_reg_minMaxLoc436_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void get_max_from_channel::thread_minMaxLoc436_U0_start_full_n() {
    minMaxLoc436_U0_start_full_n = ap_const_logic_1;
}

void get_max_from_channel::thread_minMaxLoc436_U0_start_write() {
    minMaxLoc436_U0_start_write = ap_const_logic_0;
}

void get_max_from_channel::thread_minMaxLoc_U0_ap_continue() {
    minMaxLoc_U0_ap_continue = max_b_dc_channel_full_n.read();
}

void get_max_from_channel::thread_minMaxLoc_U0_ap_start() {
    minMaxLoc_U0_ap_start = (ap_start.read() & (ap_sync_reg_minMaxLoc_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void get_max_from_channel::thread_minMaxLoc_U0_start_full_n() {
    minMaxLoc_U0_start_full_n = ap_const_logic_1;
}

void get_max_from_channel::thread_minMaxLoc_U0_start_write() {
    minMaxLoc_U0_start_write = ap_const_logic_0;
}

void get_max_from_channel::thread_p_prop_ret_max_b_dc_U0_ap_continue() {
    p_prop_ret_max_b_dc_U0_ap_continue = ap_sync_continue.read();
}

void get_max_from_channel::thread_p_prop_ret_max_b_dc_U0_ap_start() {
    p_prop_ret_max_b_dc_U0_ap_start = max_b_dc_channel_empty_n.read();
}

void get_max_from_channel::thread_p_prop_ret_max_b_dc_U0_start_full_n() {
    p_prop_ret_max_b_dc_U0_start_full_n = ap_const_logic_1;
}

void get_max_from_channel::thread_p_prop_ret_max_b_dc_U0_start_write() {
    p_prop_ret_max_b_dc_U0_start_write = ap_const_logic_0;
}

void get_max_from_channel::thread_p_prop_ret_max_g_dc_U0_ap_continue() {
    p_prop_ret_max_g_dc_U0_ap_continue = ap_sync_continue.read();
}

void get_max_from_channel::thread_p_prop_ret_max_g_dc_U0_ap_start() {
    p_prop_ret_max_g_dc_U0_ap_start = max_g_dc_channel_empty_n.read();
}

void get_max_from_channel::thread_p_prop_ret_max_g_dc_U0_start_full_n() {
    p_prop_ret_max_g_dc_U0_start_full_n = ap_const_logic_1;
}

void get_max_from_channel::thread_p_prop_ret_max_g_dc_U0_start_write() {
    p_prop_ret_max_g_dc_U0_start_write = ap_const_logic_0;
}

void get_max_from_channel::thread_p_prop_ret_max_r_dc_U0_ap_continue() {
    p_prop_ret_max_r_dc_U0_ap_continue = ap_sync_continue.read();
}

void get_max_from_channel::thread_p_prop_ret_max_r_dc_U0_ap_start() {
    p_prop_ret_max_r_dc_U0_ap_start = max_r_dc_channel_empty_n.read();
}

void get_max_from_channel::thread_p_prop_ret_max_r_dc_U0_start_full_n() {
    p_prop_ret_max_r_dc_U0_start_full_n = ap_const_logic_1;
}

void get_max_from_channel::thread_p_prop_ret_max_r_dc_U0_start_write() {
    p_prop_ret_max_r_dc_U0_start_write = ap_const_logic_0;
}

void get_max_from_channel::thread_r_channel_data_V_read() {
    r_channel_data_V_read = minMaxLoc435_U0_p_src_data_V_read.read();
}

}
