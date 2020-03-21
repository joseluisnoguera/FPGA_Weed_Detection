// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _get_crop_lines_HH_
#define _get_crop_lines_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "extr_half_1_cent.h"
#include "extr_half_2_cent.h"
#include "get_lines_lsl.h"
#include "get_line_bases.h"
#include "get_weed_mask.h"
#include "get_crop_lines_li0iy.h"
#include "get_crop_lines_ce1iI.h"
#include "get_crop_lines_li2iS.h"

namespace ap_rtl {

struct get_crop_lines : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > bottom_data_V_dout;
    sc_in< sc_logic > bottom_data_V_empty_n;
    sc_out< sc_logic > bottom_data_V_read;
    sc_in< sc_lv<8> > eroded_data_V_dout;
    sc_in< sc_logic > eroded_data_V_empty_n;
    sc_out< sc_logic > eroded_data_V_read;
    sc_out< sc_lv<2> > weed_mask_tmp_data_V_din;
    sc_in< sc_logic > weed_mask_tmp_data_V_full_n;
    sc_out< sc_logic > weed_mask_tmp_data_V_write;


    // Module declarations
    get_crop_lines(sc_module_name name);
    SC_HAS_PROCESS(get_crop_lines);

    ~get_crop_lines();

    sc_trace_file* mVcdFile;

    get_crop_lines_li0iy* line_bases_U;
    get_crop_lines_ce1iI* centroids_U;
    get_crop_lines_li2iS* lines_U;
    extr_half_1_cent* grp_extr_half_1_cent_fu_48;
    extr_half_2_cent* grp_extr_half_2_cent_fu_62;
    get_lines_lsl* grp_get_lines_lsl_fu_76;
    get_line_bases* grp_get_line_bases_fu_88;
    get_weed_mask* grp_get_weed_mask_fu_100;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<3> > line_bases_address0;
    sc_signal< sc_logic > line_bases_ce0;
    sc_signal< sc_logic > line_bases_we0;
    sc_signal< sc_lv<17> > line_bases_q0;
    sc_signal< sc_logic > line_bases_ce1;
    sc_signal< sc_logic > line_bases_we1;
    sc_signal< sc_lv<7> > centroids_address0;
    sc_signal< sc_logic > centroids_ce0;
    sc_signal< sc_logic > centroids_we0;
    sc_signal< sc_lv<48> > centroids_d0;
    sc_signal< sc_lv<48> > centroids_q0;
    sc_signal< sc_lv<3> > lines_address0;
    sc_signal< sc_logic > lines_ce0;
    sc_signal< sc_logic > lines_we0;
    sc_signal< sc_lv<57> > lines_q0;
    sc_signal< sc_lv<1> > grp_get_lines_lsl_fu_76_ap_return;
    sc_signal< sc_lv<1> > lines_founded_reg_109;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_ap_ready;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_ap_done;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_ap_start;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_ap_done;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_ap_idle;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_ap_ready;
    sc_signal< sc_lv<3> > grp_extr_half_1_cent_fu_48_line_bases_address0;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_line_bases_ce0;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_eroded_data_V_read;
    sc_signal< sc_lv<7> > grp_extr_half_1_cent_fu_48_centroids_address0;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_centroids_ce0;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_centroids_we0;
    sc_signal< sc_lv<48> > grp_extr_half_1_cent_fu_48_centroids_d0;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_ap_start;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_ap_done;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_ap_idle;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_ap_ready;
    sc_signal< sc_lv<3> > grp_extr_half_2_cent_fu_62_line_bases_active_address0;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_line_bases_active_ce0;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_eroded_data_V_read;
    sc_signal< sc_lv<7> > grp_extr_half_2_cent_fu_62_centroids_address0;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_centroids_ce0;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_centroids_we0;
    sc_signal< sc_lv<48> > grp_extr_half_2_cent_fu_62_centroids_d0;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_ap_start;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_ap_idle;
    sc_signal< sc_lv<3> > grp_get_lines_lsl_fu_76_line_bases_address0;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_line_bases_ce0;
    sc_signal< sc_lv<7> > grp_get_lines_lsl_fu_76_centroids_address0;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_centroids_ce0;
    sc_signal< sc_lv<3> > grp_get_lines_lsl_fu_76_lines_address0;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_lines_ce0;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_lines_we0;
    sc_signal< sc_lv<57> > grp_get_lines_lsl_fu_76_lines_d0;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_ap_start;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_ap_done;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_ap_idle;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_ap_ready;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_bottom_data_V_read;
    sc_signal< sc_lv<3> > grp_get_line_bases_fu_88_line_bases_address0;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_line_bases_ce0;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_line_bases_we0;
    sc_signal< sc_lv<17> > grp_get_line_bases_fu_88_line_bases_d0;
    sc_signal< sc_lv<3> > grp_get_line_bases_fu_88_line_bases_address1;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_line_bases_ce1;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_line_bases_we1;
    sc_signal< sc_lv<17> > grp_get_line_bases_fu_88_line_bases_d1;
    sc_signal< sc_logic > grp_get_weed_mask_fu_100_ap_start;
    sc_signal< sc_logic > grp_get_weed_mask_fu_100_ap_done;
    sc_signal< sc_logic > grp_get_weed_mask_fu_100_ap_idle;
    sc_signal< sc_logic > grp_get_weed_mask_fu_100_ap_ready;
    sc_signal< sc_lv<2> > grp_get_weed_mask_fu_100_weed_mask_tmp_data_V_din;
    sc_signal< sc_logic > grp_get_weed_mask_fu_100_weed_mask_tmp_data_V_write;
    sc_signal< sc_logic > grp_get_weed_mask_fu_100_lines_founded_read;
    sc_signal< sc_lv<3> > grp_get_weed_mask_fu_100_lines_address0;
    sc_signal< sc_logic > grp_get_weed_mask_fu_100_lines_ce0;
    sc_signal< sc_logic > grp_extr_half_1_cent_fu_48_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_extr_half_2_cent_fu_62_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_get_lines_lsl_fu_76_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_get_line_bases_fu_88_ap_start_reg;
    sc_signal< bool > ap_block_state1_ignore_call3;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_get_weed_mask_fu_100_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    sc_signal< bool > ap_block_state1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_block_state1_ignore_call3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bottom_data_V_read();
    void thread_centroids_address0();
    void thread_centroids_ce0();
    void thread_centroids_d0();
    void thread_centroids_we0();
    void thread_eroded_data_V_read();
    void thread_grp_extr_half_1_cent_fu_48_ap_start();
    void thread_grp_extr_half_2_cent_fu_62_ap_start();
    void thread_grp_get_line_bases_fu_88_ap_start();
    void thread_grp_get_lines_lsl_fu_76_ap_start();
    void thread_grp_get_weed_mask_fu_100_ap_start();
    void thread_grp_get_weed_mask_fu_100_lines_founded_read();
    void thread_internal_ap_ready();
    void thread_line_bases_address0();
    void thread_line_bases_ce0();
    void thread_line_bases_ce1();
    void thread_line_bases_we0();
    void thread_line_bases_we1();
    void thread_lines_address0();
    void thread_lines_ce0();
    void thread_lines_we0();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_weed_mask_tmp_data_V_din();
    void thread_weed_mask_tmp_data_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif