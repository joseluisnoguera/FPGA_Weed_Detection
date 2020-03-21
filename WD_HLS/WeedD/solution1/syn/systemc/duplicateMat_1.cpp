// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "duplicateMat_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic duplicateMat_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<16> duplicateMat_1::ap_const_lv16_0 = "0000000000000000";
const sc_lv<8> duplicateMat_1::ap_const_lv8_0 = "00000000";
const sc_logic duplicateMat_1::ap_const_logic_1 = sc_dt::Log_1;

duplicateMat_1::duplicateMat_1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    duplicateMat_Loop_Re_2_U0 = new duplicateMat_Loop_Re_2("duplicateMat_Loop_Re_2_U0");
    duplicateMat_Loop_Re_2_U0->ap_clk(ap_clk);
    duplicateMat_Loop_Re_2_U0->ap_rst(ap_rst);
    duplicateMat_Loop_Re_2_U0->ap_start(duplicateMat_Loop_Re_2_U0_ap_start);
    duplicateMat_Loop_Re_2_U0->start_full_n(start_for_xFDuplicate637_U0_full_n);
    duplicateMat_Loop_Re_2_U0->ap_done(duplicateMat_Loop_Re_2_U0_ap_done);
    duplicateMat_Loop_Re_2_U0->ap_continue(duplicateMat_Loop_Re_2_U0_ap_continue);
    duplicateMat_Loop_Re_2_U0->ap_idle(duplicateMat_Loop_Re_2_U0_ap_idle);
    duplicateMat_Loop_Re_2_U0->ap_ready(duplicateMat_Loop_Re_2_U0_ap_ready);
    duplicateMat_Loop_Re_2_U0->start_out(duplicateMat_Loop_Re_2_U0_start_out);
    duplicateMat_Loop_Re_2_U0->start_write(duplicateMat_Loop_Re_2_U0_start_write);
    duplicateMat_Loop_Re_2_U0->p_src_data_V_dout(p_src_data_V_dout);
    duplicateMat_Loop_Re_2_U0->p_src_data_V_empty_n(p_src_data_V_empty_n);
    duplicateMat_Loop_Re_2_U0->p_src_data_V_read(duplicateMat_Loop_Re_2_U0_p_src_data_V_read);
    duplicateMat_Loop_Re_2_U0->src_V_V_din(duplicateMat_Loop_Re_2_U0_src_V_V_din);
    duplicateMat_Loop_Re_2_U0->src_V_V_full_n(src_V_V_full_n);
    duplicateMat_Loop_Re_2_U0->src_V_V_write(duplicateMat_Loop_Re_2_U0_src_V_V_write);
    duplicateMat_Loop_Re_2_U0->p_src_rows_read_out_din(duplicateMat_Loop_Re_2_U0_p_src_rows_read_out_din);
    duplicateMat_Loop_Re_2_U0->p_src_rows_read_out_full_n(p_src_rows_read_c_full_n);
    duplicateMat_Loop_Re_2_U0->p_src_rows_read_out_write(duplicateMat_Loop_Re_2_U0_p_src_rows_read_out_write);
    duplicateMat_Loop_Re_2_U0->p_src_cols_read_out_din(duplicateMat_Loop_Re_2_U0_p_src_cols_read_out_din);
    duplicateMat_Loop_Re_2_U0->p_src_cols_read_out_full_n(p_src_cols_read_c_full_n);
    duplicateMat_Loop_Re_2_U0->p_src_cols_read_out_write(duplicateMat_Loop_Re_2_U0_p_src_cols_read_out_write);
    duplicateMat_Loop_Re_2_U0->p_dst2_cols_read_out_din(duplicateMat_Loop_Re_2_U0_p_dst2_cols_read_out_din);
    duplicateMat_Loop_Re_2_U0->p_dst2_cols_read_out_full_n(ap_var_for_const0);
    duplicateMat_Loop_Re_2_U0->p_dst2_cols_read_out_write(duplicateMat_Loop_Re_2_U0_p_dst2_cols_read_out_write);
    xFDuplicate637_U0 = new xFDuplicate637("xFDuplicate637_U0");
    xFDuplicate637_U0->ap_clk(ap_clk);
    xFDuplicate637_U0->ap_rst(ap_rst);
    xFDuplicate637_U0->ap_start(xFDuplicate637_U0_ap_start);
    xFDuplicate637_U0->start_full_n(start_for_duplicateMat_Loop_2_2_U0_full_n);
    xFDuplicate637_U0->ap_done(xFDuplicate637_U0_ap_done);
    xFDuplicate637_U0->ap_continue(xFDuplicate637_U0_ap_continue);
    xFDuplicate637_U0->ap_idle(xFDuplicate637_U0_ap_idle);
    xFDuplicate637_U0->ap_ready(xFDuplicate637_U0_ap_ready);
    xFDuplicate637_U0->start_out(xFDuplicate637_U0_start_out);
    xFDuplicate637_U0->start_write(xFDuplicate637_U0_start_write);
    xFDuplicate637_U0->src_V_V_dout(src_V_V_dout);
    xFDuplicate637_U0->src_V_V_empty_n(src_V_V_empty_n);
    xFDuplicate637_U0->src_V_V_read(xFDuplicate637_U0_src_V_V_read);
    xFDuplicate637_U0->dst_V_V_din(xFDuplicate637_U0_dst_V_V_din);
    xFDuplicate637_U0->dst_V_V_full_n(dst_V_V_full_n);
    xFDuplicate637_U0->dst_V_V_write(xFDuplicate637_U0_dst_V_V_write);
    xFDuplicate637_U0->dst1_V_V_din(xFDuplicate637_U0_dst1_V_V_din);
    xFDuplicate637_U0->dst1_V_V_full_n(dst1_V_V_full_n);
    xFDuplicate637_U0->dst1_V_V_write(xFDuplicate637_U0_dst1_V_V_write);
    xFDuplicate637_U0->p_src_rows_read_dout(p_src_rows_read_c_dout);
    xFDuplicate637_U0->p_src_rows_read_empty_n(p_src_rows_read_c_empty_n);
    xFDuplicate637_U0->p_src_rows_read_read(xFDuplicate637_U0_p_src_rows_read_read);
    xFDuplicate637_U0->p_src_cols_read_dout(p_src_cols_read_c_dout);
    xFDuplicate637_U0->p_src_cols_read_empty_n(p_src_cols_read_c_empty_n);
    xFDuplicate637_U0->p_src_cols_read_read(xFDuplicate637_U0_p_src_cols_read_read);
    duplicateMat_Loop_2_2_U0 = new duplicateMat_Loop_2_2("duplicateMat_Loop_2_2_U0");
    duplicateMat_Loop_2_2_U0->ap_clk(ap_clk);
    duplicateMat_Loop_2_2_U0->ap_rst(ap_rst);
    duplicateMat_Loop_2_2_U0->ap_start(duplicateMat_Loop_2_2_U0_ap_start);
    duplicateMat_Loop_2_2_U0->ap_done(duplicateMat_Loop_2_2_U0_ap_done);
    duplicateMat_Loop_2_2_U0->ap_continue(duplicateMat_Loop_2_2_U0_ap_continue);
    duplicateMat_Loop_2_2_U0->ap_idle(duplicateMat_Loop_2_2_U0_ap_idle);
    duplicateMat_Loop_2_2_U0->ap_ready(duplicateMat_Loop_2_2_U0_ap_ready);
    duplicateMat_Loop_2_2_U0->dst_V_V_dout(dst_V_V_dout);
    duplicateMat_Loop_2_2_U0->dst_V_V_empty_n(dst_V_V_empty_n);
    duplicateMat_Loop_2_2_U0->dst_V_V_read(duplicateMat_Loop_2_2_U0_dst_V_V_read);
    duplicateMat_Loop_2_2_U0->p_dst1_data_V_address0(duplicateMat_Loop_2_2_U0_p_dst1_data_V_address0);
    duplicateMat_Loop_2_2_U0->p_dst1_data_V_ce0(duplicateMat_Loop_2_2_U0_p_dst1_data_V_ce0);
    duplicateMat_Loop_2_2_U0->p_dst1_data_V_we0(duplicateMat_Loop_2_2_U0_p_dst1_data_V_we0);
    duplicateMat_Loop_2_2_U0->p_dst1_data_V_d0(duplicateMat_Loop_2_2_U0_p_dst1_data_V_d0);
    duplicateMat_Loop_2_2_U0->dst1_V_V_dout(dst1_V_V_dout);
    duplicateMat_Loop_2_2_U0->dst1_V_V_empty_n(dst1_V_V_empty_n);
    duplicateMat_Loop_2_2_U0->dst1_V_V_read(duplicateMat_Loop_2_2_U0_dst1_V_V_read);
    duplicateMat_Loop_2_2_U0->p_dst2_data_V_din(duplicateMat_Loop_2_2_U0_p_dst2_data_V_din);
    duplicateMat_Loop_2_2_U0->p_dst2_data_V_full_n(p_dst2_data_V_full_n);
    duplicateMat_Loop_2_2_U0->p_dst2_data_V_write(duplicateMat_Loop_2_2_U0_p_dst2_data_V_write);
    src_V_V_U = new fifo_w8_d2_A("src_V_V_U");
    src_V_V_U->clk(ap_clk);
    src_V_V_U->reset(ap_rst);
    src_V_V_U->if_read_ce(ap_var_for_const0);
    src_V_V_U->if_write_ce(ap_var_for_const0);
    src_V_V_U->if_din(duplicateMat_Loop_Re_2_U0_src_V_V_din);
    src_V_V_U->if_full_n(src_V_V_full_n);
    src_V_V_U->if_write(duplicateMat_Loop_Re_2_U0_src_V_V_write);
    src_V_V_U->if_dout(src_V_V_dout);
    src_V_V_U->if_empty_n(src_V_V_empty_n);
    src_V_V_U->if_read(xFDuplicate637_U0_src_V_V_read);
    p_src_rows_read_c_U = new fifo_w9_d2_A_x("p_src_rows_read_c_U");
    p_src_rows_read_c_U->clk(ap_clk);
    p_src_rows_read_c_U->reset(ap_rst);
    p_src_rows_read_c_U->if_read_ce(ap_var_for_const0);
    p_src_rows_read_c_U->if_write_ce(ap_var_for_const0);
    p_src_rows_read_c_U->if_din(duplicateMat_Loop_Re_2_U0_p_src_rows_read_out_din);
    p_src_rows_read_c_U->if_full_n(p_src_rows_read_c_full_n);
    p_src_rows_read_c_U->if_write(duplicateMat_Loop_Re_2_U0_p_src_rows_read_out_write);
    p_src_rows_read_c_U->if_dout(p_src_rows_read_c_dout);
    p_src_rows_read_c_U->if_empty_n(p_src_rows_read_c_empty_n);
    p_src_rows_read_c_U->if_read(xFDuplicate637_U0_p_src_rows_read_read);
    p_src_cols_read_c_U = new fifo_w10_d2_A_x1("p_src_cols_read_c_U");
    p_src_cols_read_c_U->clk(ap_clk);
    p_src_cols_read_c_U->reset(ap_rst);
    p_src_cols_read_c_U->if_read_ce(ap_var_for_const0);
    p_src_cols_read_c_U->if_write_ce(ap_var_for_const0);
    p_src_cols_read_c_U->if_din(duplicateMat_Loop_Re_2_U0_p_src_cols_read_out_din);
    p_src_cols_read_c_U->if_full_n(p_src_cols_read_c_full_n);
    p_src_cols_read_c_U->if_write(duplicateMat_Loop_Re_2_U0_p_src_cols_read_out_write);
    p_src_cols_read_c_U->if_dout(p_src_cols_read_c_dout);
    p_src_cols_read_c_U->if_empty_n(p_src_cols_read_c_empty_n);
    p_src_cols_read_c_U->if_read(xFDuplicate637_U0_p_src_cols_read_read);
    dst_V_V_U = new fifo_w8_d2_A("dst_V_V_U");
    dst_V_V_U->clk(ap_clk);
    dst_V_V_U->reset(ap_rst);
    dst_V_V_U->if_read_ce(ap_var_for_const0);
    dst_V_V_U->if_write_ce(ap_var_for_const0);
    dst_V_V_U->if_din(xFDuplicate637_U0_dst_V_V_din);
    dst_V_V_U->if_full_n(dst_V_V_full_n);
    dst_V_V_U->if_write(xFDuplicate637_U0_dst_V_V_write);
    dst_V_V_U->if_dout(dst_V_V_dout);
    dst_V_V_U->if_empty_n(dst_V_V_empty_n);
    dst_V_V_U->if_read(duplicateMat_Loop_2_2_U0_dst_V_V_read);
    dst1_V_V_U = new fifo_w8_d2_A("dst1_V_V_U");
    dst1_V_V_U->clk(ap_clk);
    dst1_V_V_U->reset(ap_rst);
    dst1_V_V_U->if_read_ce(ap_var_for_const0);
    dst1_V_V_U->if_write_ce(ap_var_for_const0);
    dst1_V_V_U->if_din(xFDuplicate637_U0_dst1_V_V_din);
    dst1_V_V_U->if_full_n(dst1_V_V_full_n);
    dst1_V_V_U->if_write(xFDuplicate637_U0_dst1_V_V_write);
    dst1_V_V_U->if_dout(dst1_V_V_dout);
    dst1_V_V_U->if_empty_n(dst1_V_V_empty_n);
    dst1_V_V_U->if_read(duplicateMat_Loop_2_2_U0_dst1_V_V_read);
    start_for_xFDuplizec_U = new start_for_xFDuplizec("start_for_xFDuplizec_U");
    start_for_xFDuplizec_U->clk(ap_clk);
    start_for_xFDuplizec_U->reset(ap_rst);
    start_for_xFDuplizec_U->if_read_ce(ap_var_for_const0);
    start_for_xFDuplizec_U->if_write_ce(ap_var_for_const0);
    start_for_xFDuplizec_U->if_din(start_for_xFDuplicate637_U0_din);
    start_for_xFDuplizec_U->if_full_n(start_for_xFDuplicate637_U0_full_n);
    start_for_xFDuplizec_U->if_write(duplicateMat_Loop_Re_2_U0_start_write);
    start_for_xFDuplizec_U->if_dout(start_for_xFDuplicate637_U0_dout);
    start_for_xFDuplizec_U->if_empty_n(start_for_xFDuplicate637_U0_empty_n);
    start_for_xFDuplizec_U->if_read(xFDuplicate637_U0_ap_ready);
    start_for_duplicaAem_U = new start_for_duplicaAem("start_for_duplicaAem_U");
    start_for_duplicaAem_U->clk(ap_clk);
    start_for_duplicaAem_U->reset(ap_rst);
    start_for_duplicaAem_U->if_read_ce(ap_var_for_const0);
    start_for_duplicaAem_U->if_write_ce(ap_var_for_const0);
    start_for_duplicaAem_U->if_din(start_for_duplicateMat_Loop_2_2_U0_din);
    start_for_duplicaAem_U->if_full_n(start_for_duplicateMat_Loop_2_2_U0_full_n);
    start_for_duplicaAem_U->if_write(xFDuplicate637_U0_start_write);
    start_for_duplicaAem_U->if_dout(start_for_duplicateMat_Loop_2_2_U0_dout);
    start_for_duplicaAem_U->if_empty_n(start_for_duplicateMat_Loop_2_2_U0_empty_n);
    start_for_duplicaAem_U->if_read(duplicateMat_Loop_2_2_U0_ap_ready);

    SC_METHOD(thread_ap_done);
    sensitive << ( duplicateMat_Loop_2_2_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( duplicateMat_Loop_Re_2_U0_ap_idle );
    sensitive << ( xFDuplicate637_U0_ap_idle );
    sensitive << ( duplicateMat_Loop_2_2_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( duplicateMat_Loop_Re_2_U0_ap_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( duplicateMat_Loop_2_2_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( duplicateMat_Loop_Re_2_U0_ap_ready );

    SC_METHOD(thread_duplicateMat_Loop_2_2_U0_ap_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_duplicateMat_Loop_2_2_U0_ap_start);
    sensitive << ( start_for_duplicateMat_Loop_2_2_U0_empty_n );

    SC_METHOD(thread_duplicateMat_Loop_2_2_U0_start_full_n);

    SC_METHOD(thread_duplicateMat_Loop_2_2_U0_start_write);

    SC_METHOD(thread_duplicateMat_Loop_Re_2_U0_ap_continue);

    SC_METHOD(thread_duplicateMat_Loop_Re_2_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_p_dst1_data_V_address0);
    sensitive << ( duplicateMat_Loop_2_2_U0_p_dst1_data_V_address0 );

    SC_METHOD(thread_p_dst1_data_V_address1);

    SC_METHOD(thread_p_dst1_data_V_ce0);
    sensitive << ( duplicateMat_Loop_2_2_U0_p_dst1_data_V_ce0 );

    SC_METHOD(thread_p_dst1_data_V_ce1);

    SC_METHOD(thread_p_dst1_data_V_d0);
    sensitive << ( duplicateMat_Loop_2_2_U0_p_dst1_data_V_d0 );

    SC_METHOD(thread_p_dst1_data_V_d1);

    SC_METHOD(thread_p_dst1_data_V_we0);
    sensitive << ( duplicateMat_Loop_2_2_U0_p_dst1_data_V_we0 );

    SC_METHOD(thread_p_dst1_data_V_we1);

    SC_METHOD(thread_p_dst2_data_V_din);
    sensitive << ( duplicateMat_Loop_2_2_U0_p_dst2_data_V_din );

    SC_METHOD(thread_p_dst2_data_V_write);
    sensitive << ( duplicateMat_Loop_2_2_U0_p_dst2_data_V_write );

    SC_METHOD(thread_p_src_data_V_read);
    sensitive << ( duplicateMat_Loop_Re_2_U0_p_src_data_V_read );

    SC_METHOD(thread_start_for_duplicateMat_Loop_2_2_U0_din);

    SC_METHOD(thread_start_for_xFDuplicate637_U0_din);

    SC_METHOD(thread_xFDuplicate637_U0_ap_continue);

    SC_METHOD(thread_xFDuplicate637_U0_ap_start);
    sensitive << ( start_for_xFDuplicate637_U0_empty_n );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "duplicateMat_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, p_src_data_V_dout, "(port)p_src_data_V_dout");
    sc_trace(mVcdFile, p_src_data_V_empty_n, "(port)p_src_data_V_empty_n");
    sc_trace(mVcdFile, p_src_data_V_read, "(port)p_src_data_V_read");
    sc_trace(mVcdFile, p_dst1_data_V_address0, "(port)p_dst1_data_V_address0");
    sc_trace(mVcdFile, p_dst1_data_V_ce0, "(port)p_dst1_data_V_ce0");
    sc_trace(mVcdFile, p_dst1_data_V_d0, "(port)p_dst1_data_V_d0");
    sc_trace(mVcdFile, p_dst1_data_V_q0, "(port)p_dst1_data_V_q0");
    sc_trace(mVcdFile, p_dst1_data_V_we0, "(port)p_dst1_data_V_we0");
    sc_trace(mVcdFile, p_dst1_data_V_address1, "(port)p_dst1_data_V_address1");
    sc_trace(mVcdFile, p_dst1_data_V_ce1, "(port)p_dst1_data_V_ce1");
    sc_trace(mVcdFile, p_dst1_data_V_d1, "(port)p_dst1_data_V_d1");
    sc_trace(mVcdFile, p_dst1_data_V_q1, "(port)p_dst1_data_V_q1");
    sc_trace(mVcdFile, p_dst1_data_V_we1, "(port)p_dst1_data_V_we1");
    sc_trace(mVcdFile, p_dst2_data_V_din, "(port)p_dst2_data_V_din");
    sc_trace(mVcdFile, p_dst2_data_V_full_n, "(port)p_dst2_data_V_full_n");
    sc_trace(mVcdFile, p_dst2_data_V_write, "(port)p_dst2_data_V_write");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_ap_start, "duplicateMat_Loop_Re_2_U0_ap_start");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_ap_done, "duplicateMat_Loop_Re_2_U0_ap_done");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_ap_continue, "duplicateMat_Loop_Re_2_U0_ap_continue");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_ap_idle, "duplicateMat_Loop_Re_2_U0_ap_idle");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_ap_ready, "duplicateMat_Loop_Re_2_U0_ap_ready");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_start_out, "duplicateMat_Loop_Re_2_U0_start_out");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_start_write, "duplicateMat_Loop_Re_2_U0_start_write");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_p_src_data_V_read, "duplicateMat_Loop_Re_2_U0_p_src_data_V_read");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_src_V_V_din, "duplicateMat_Loop_Re_2_U0_src_V_V_din");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_src_V_V_write, "duplicateMat_Loop_Re_2_U0_src_V_V_write");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_p_src_rows_read_out_din, "duplicateMat_Loop_Re_2_U0_p_src_rows_read_out_din");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_p_src_rows_read_out_write, "duplicateMat_Loop_Re_2_U0_p_src_rows_read_out_write");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_p_src_cols_read_out_din, "duplicateMat_Loop_Re_2_U0_p_src_cols_read_out_din");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_p_src_cols_read_out_write, "duplicateMat_Loop_Re_2_U0_p_src_cols_read_out_write");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_p_dst2_cols_read_out_din, "duplicateMat_Loop_Re_2_U0_p_dst2_cols_read_out_din");
    sc_trace(mVcdFile, duplicateMat_Loop_Re_2_U0_p_dst2_cols_read_out_write, "duplicateMat_Loop_Re_2_U0_p_dst2_cols_read_out_write");
    sc_trace(mVcdFile, xFDuplicate637_U0_ap_start, "xFDuplicate637_U0_ap_start");
    sc_trace(mVcdFile, xFDuplicate637_U0_ap_done, "xFDuplicate637_U0_ap_done");
    sc_trace(mVcdFile, xFDuplicate637_U0_ap_continue, "xFDuplicate637_U0_ap_continue");
    sc_trace(mVcdFile, xFDuplicate637_U0_ap_idle, "xFDuplicate637_U0_ap_idle");
    sc_trace(mVcdFile, xFDuplicate637_U0_ap_ready, "xFDuplicate637_U0_ap_ready");
    sc_trace(mVcdFile, xFDuplicate637_U0_start_out, "xFDuplicate637_U0_start_out");
    sc_trace(mVcdFile, xFDuplicate637_U0_start_write, "xFDuplicate637_U0_start_write");
    sc_trace(mVcdFile, xFDuplicate637_U0_src_V_V_read, "xFDuplicate637_U0_src_V_V_read");
    sc_trace(mVcdFile, xFDuplicate637_U0_dst_V_V_din, "xFDuplicate637_U0_dst_V_V_din");
    sc_trace(mVcdFile, xFDuplicate637_U0_dst_V_V_write, "xFDuplicate637_U0_dst_V_V_write");
    sc_trace(mVcdFile, xFDuplicate637_U0_dst1_V_V_din, "xFDuplicate637_U0_dst1_V_V_din");
    sc_trace(mVcdFile, xFDuplicate637_U0_dst1_V_V_write, "xFDuplicate637_U0_dst1_V_V_write");
    sc_trace(mVcdFile, xFDuplicate637_U0_p_src_rows_read_read, "xFDuplicate637_U0_p_src_rows_read_read");
    sc_trace(mVcdFile, xFDuplicate637_U0_p_src_cols_read_read, "xFDuplicate637_U0_p_src_cols_read_read");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_ap_start, "duplicateMat_Loop_2_2_U0_ap_start");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_ap_done, "duplicateMat_Loop_2_2_U0_ap_done");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_ap_continue, "duplicateMat_Loop_2_2_U0_ap_continue");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_ap_idle, "duplicateMat_Loop_2_2_U0_ap_idle");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_ap_ready, "duplicateMat_Loop_2_2_U0_ap_ready");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_dst_V_V_read, "duplicateMat_Loop_2_2_U0_dst_V_V_read");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_p_dst1_data_V_address0, "duplicateMat_Loop_2_2_U0_p_dst1_data_V_address0");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_p_dst1_data_V_ce0, "duplicateMat_Loop_2_2_U0_p_dst1_data_V_ce0");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_p_dst1_data_V_we0, "duplicateMat_Loop_2_2_U0_p_dst1_data_V_we0");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_p_dst1_data_V_d0, "duplicateMat_Loop_2_2_U0_p_dst1_data_V_d0");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_dst1_V_V_read, "duplicateMat_Loop_2_2_U0_dst1_V_V_read");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_p_dst2_data_V_din, "duplicateMat_Loop_2_2_U0_p_dst2_data_V_din");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_p_dst2_data_V_write, "duplicateMat_Loop_2_2_U0_p_dst2_data_V_write");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, src_V_V_full_n, "src_V_V_full_n");
    sc_trace(mVcdFile, src_V_V_dout, "src_V_V_dout");
    sc_trace(mVcdFile, src_V_V_empty_n, "src_V_V_empty_n");
    sc_trace(mVcdFile, p_src_rows_read_c_full_n, "p_src_rows_read_c_full_n");
    sc_trace(mVcdFile, p_src_rows_read_c_dout, "p_src_rows_read_c_dout");
    sc_trace(mVcdFile, p_src_rows_read_c_empty_n, "p_src_rows_read_c_empty_n");
    sc_trace(mVcdFile, p_src_cols_read_c_full_n, "p_src_cols_read_c_full_n");
    sc_trace(mVcdFile, p_src_cols_read_c_dout, "p_src_cols_read_c_dout");
    sc_trace(mVcdFile, p_src_cols_read_c_empty_n, "p_src_cols_read_c_empty_n");
    sc_trace(mVcdFile, dst_V_V_full_n, "dst_V_V_full_n");
    sc_trace(mVcdFile, dst_V_V_dout, "dst_V_V_dout");
    sc_trace(mVcdFile, dst_V_V_empty_n, "dst_V_V_empty_n");
    sc_trace(mVcdFile, dst1_V_V_full_n, "dst1_V_V_full_n");
    sc_trace(mVcdFile, dst1_V_V_dout, "dst1_V_V_dout");
    sc_trace(mVcdFile, dst1_V_V_empty_n, "dst1_V_V_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, start_for_xFDuplicate637_U0_din, "start_for_xFDuplicate637_U0_din");
    sc_trace(mVcdFile, start_for_xFDuplicate637_U0_full_n, "start_for_xFDuplicate637_U0_full_n");
    sc_trace(mVcdFile, start_for_xFDuplicate637_U0_dout, "start_for_xFDuplicate637_U0_dout");
    sc_trace(mVcdFile, start_for_xFDuplicate637_U0_empty_n, "start_for_xFDuplicate637_U0_empty_n");
    sc_trace(mVcdFile, start_for_duplicateMat_Loop_2_2_U0_din, "start_for_duplicateMat_Loop_2_2_U0_din");
    sc_trace(mVcdFile, start_for_duplicateMat_Loop_2_2_U0_full_n, "start_for_duplicateMat_Loop_2_2_U0_full_n");
    sc_trace(mVcdFile, start_for_duplicateMat_Loop_2_2_U0_dout, "start_for_duplicateMat_Loop_2_2_U0_dout");
    sc_trace(mVcdFile, start_for_duplicateMat_Loop_2_2_U0_empty_n, "start_for_duplicateMat_Loop_2_2_U0_empty_n");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_start_full_n, "duplicateMat_Loop_2_2_U0_start_full_n");
    sc_trace(mVcdFile, duplicateMat_Loop_2_2_U0_start_write, "duplicateMat_Loop_2_2_U0_start_write");
#endif

    }
}

duplicateMat_1::~duplicateMat_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete duplicateMat_Loop_Re_2_U0;
    delete xFDuplicate637_U0;
    delete duplicateMat_Loop_2_2_U0;
    delete src_V_V_U;
    delete p_src_rows_read_c_U;
    delete p_src_cols_read_c_U;
    delete dst_V_V_U;
    delete dst1_V_V_U;
    delete start_for_xFDuplizec_U;
    delete start_for_duplicaAem_U;
}

void duplicateMat_1::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void duplicateMat_1::thread_ap_done() {
    ap_done = duplicateMat_Loop_2_2_U0_ap_done.read();
}

void duplicateMat_1::thread_ap_idle() {
    ap_idle = (duplicateMat_Loop_Re_2_U0_ap_idle.read() & xFDuplicate637_U0_ap_idle.read() & duplicateMat_Loop_2_2_U0_ap_idle.read());
}

void duplicateMat_1::thread_ap_ready() {
    ap_ready = duplicateMat_Loop_Re_2_U0_ap_ready.read();
}

void duplicateMat_1::thread_ap_sync_continue() {
    ap_sync_continue = ap_continue.read();
}

void duplicateMat_1::thread_ap_sync_done() {
    ap_sync_done = duplicateMat_Loop_2_2_U0_ap_done.read();
}

void duplicateMat_1::thread_ap_sync_ready() {
    ap_sync_ready = duplicateMat_Loop_Re_2_U0_ap_ready.read();
}

void duplicateMat_1::thread_duplicateMat_Loop_2_2_U0_ap_continue() {
    duplicateMat_Loop_2_2_U0_ap_continue = ap_continue.read();
}

void duplicateMat_1::thread_duplicateMat_Loop_2_2_U0_ap_start() {
    duplicateMat_Loop_2_2_U0_ap_start = start_for_duplicateMat_Loop_2_2_U0_empty_n.read();
}

void duplicateMat_1::thread_duplicateMat_Loop_2_2_U0_start_full_n() {
    duplicateMat_Loop_2_2_U0_start_full_n = ap_const_logic_1;
}

void duplicateMat_1::thread_duplicateMat_Loop_2_2_U0_start_write() {
    duplicateMat_Loop_2_2_U0_start_write = ap_const_logic_0;
}

void duplicateMat_1::thread_duplicateMat_Loop_Re_2_U0_ap_continue() {
    duplicateMat_Loop_Re_2_U0_ap_continue = ap_const_logic_1;
}

void duplicateMat_1::thread_duplicateMat_Loop_Re_2_U0_ap_start() {
    duplicateMat_Loop_Re_2_U0_ap_start = ap_start.read();
}

void duplicateMat_1::thread_p_dst1_data_V_address0() {
    p_dst1_data_V_address0 = duplicateMat_Loop_2_2_U0_p_dst1_data_V_address0.read();
}

void duplicateMat_1::thread_p_dst1_data_V_address1() {
    p_dst1_data_V_address1 = ap_const_lv16_0;
}

void duplicateMat_1::thread_p_dst1_data_V_ce0() {
    p_dst1_data_V_ce0 = duplicateMat_Loop_2_2_U0_p_dst1_data_V_ce0.read();
}

void duplicateMat_1::thread_p_dst1_data_V_ce1() {
    p_dst1_data_V_ce1 = ap_const_logic_0;
}

void duplicateMat_1::thread_p_dst1_data_V_d0() {
    p_dst1_data_V_d0 = duplicateMat_Loop_2_2_U0_p_dst1_data_V_d0.read();
}

void duplicateMat_1::thread_p_dst1_data_V_d1() {
    p_dst1_data_V_d1 = ap_const_lv8_0;
}

void duplicateMat_1::thread_p_dst1_data_V_we0() {
    p_dst1_data_V_we0 = duplicateMat_Loop_2_2_U0_p_dst1_data_V_we0.read();
}

void duplicateMat_1::thread_p_dst1_data_V_we1() {
    p_dst1_data_V_we1 = ap_const_logic_0;
}

void duplicateMat_1::thread_p_dst2_data_V_din() {
    p_dst2_data_V_din = duplicateMat_Loop_2_2_U0_p_dst2_data_V_din.read();
}

void duplicateMat_1::thread_p_dst2_data_V_write() {
    p_dst2_data_V_write = duplicateMat_Loop_2_2_U0_p_dst2_data_V_write.read();
}

void duplicateMat_1::thread_p_src_data_V_read() {
    p_src_data_V_read = duplicateMat_Loop_Re_2_U0_p_src_data_V_read.read();
}

void duplicateMat_1::thread_start_for_duplicateMat_Loop_2_2_U0_din() {
    start_for_duplicateMat_Loop_2_2_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void duplicateMat_1::thread_start_for_xFDuplicate637_U0_din() {
    start_for_xFDuplicate637_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void duplicateMat_1::thread_xFDuplicate637_U0_ap_continue() {
    xFDuplicate637_U0_ap_continue = ap_const_logic_1;
}

void duplicateMat_1::thread_xFDuplicate637_U0_ap_start() {
    xFDuplicate637_U0_ap_start = start_for_xFDuplicate637_U0_empty_n.read();
}

}
