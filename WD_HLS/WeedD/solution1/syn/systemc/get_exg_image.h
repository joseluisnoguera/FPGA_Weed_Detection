// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _get_exg_image_HH_
#define _get_exg_image_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ip_accel_app_sdivpcA.h"
#include "ip_accel_app_sdivqcK.h"

namespace ap_rtl {

struct get_exg_image : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > r_channel_data_V_dout;
    sc_in< sc_logic > r_channel_data_V_empty_n;
    sc_out< sc_logic > r_channel_data_V_read;
    sc_in< sc_lv<8> > g_channel_data_V_dout;
    sc_in< sc_logic > g_channel_data_V_empty_n;
    sc_out< sc_logic > g_channel_data_V_read;
    sc_in< sc_lv<8> > b_channel_data_V_dout;
    sc_in< sc_logic > b_channel_data_V_empty_n;
    sc_out< sc_logic > b_channel_data_V_read;
    sc_in< sc_lv<32> > max_r_dout;
    sc_in< sc_logic > max_r_empty_n;
    sc_out< sc_logic > max_r_read;
    sc_in< sc_lv<32> > max_g_dout;
    sc_in< sc_logic > max_g_empty_n;
    sc_out< sc_logic > max_g_read;
    sc_in< sc_lv<32> > max_b_dout;
    sc_in< sc_logic > max_b_empty_n;
    sc_out< sc_logic > max_b_read;
    sc_out< sc_lv<32> > veg_img_data_V_din;
    sc_in< sc_logic > veg_img_data_V_full_n;
    sc_out< sc_logic > veg_img_data_V_write;
    sc_out< sc_lv<28> > min_value_V_out_din;
    sc_in< sc_logic > min_value_V_out_full_n;
    sc_out< sc_logic > min_value_V_out_write;
    sc_out< sc_lv<29> > max_value_V_out_din;
    sc_in< sc_logic > max_value_V_out_full_n;
    sc_out< sc_logic > max_value_V_out_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    get_exg_image(sc_module_name name);
    SC_HAS_PROCESS(get_exg_image);

    ~get_exg_image();

    sc_trace_file* mVcdFile;

    ip_accel_app_sdivpcA<1,13,9,32,9>* ip_accel_app_sdivpcA_U182;
    ip_accel_app_sdivpcA<1,13,9,32,9>* ip_accel_app_sdivpcA_U183;
    ip_accel_app_sdivpcA<1,13,9,32,9>* ip_accel_app_sdivpcA_U184;
    ip_accel_app_sdivqcK<1,29,25,19,25>* ip_accel_app_sdivqcK_U185;
    ip_accel_app_sdivqcK<1,29,25,19,25>* ip_accel_app_sdivqcK_U186;
    ip_accel_app_sdivqcK<1,29,25,19,25>* ip_accel_app_sdivqcK_U187;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<43> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > r_channel_data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln40_fu_278_p2;
    sc_signal< sc_logic > g_channel_data_V_blk_n;
    sc_signal< sc_logic > b_channel_data_V_blk_n;
    sc_signal< sc_logic > max_r_blk_n;
    sc_signal< sc_logic > max_g_blk_n;
    sc_signal< sc_logic > max_b_blk_n;
    sc_signal< sc_logic > veg_img_data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_logic > min_value_V_out_blk_n;
    sc_signal< sc_logic > max_value_V_out_blk_n;
    sc_signal< sc_lv<32> > max_r_read_reg_1077;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > max_g_read_reg_1082;
    sc_signal< sc_lv<32> > max_b_read_reg_1087;
    sc_signal< sc_lv<16> > i_fu_284_p2;
    sc_signal< sc_lv<16> > i_reg_1095;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<8> > tmp_V_7_reg_1100;
    sc_signal< sc_lv<8> > tmp_V_reg_1110;
    sc_signal< sc_lv<8> > tmp_V_8_reg_1120;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<25> > sext_ln1148_fu_390_p1;
    sc_signal< sc_lv<1> > icmp_ln935_fu_474_p2;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1152;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<1> > p_Result_9_fu_480_p3;
    sc_signal< sc_lv<1> > p_Result_9_reg_1157;
    sc_signal< sc_lv<26> > tmp_V_10_fu_494_p3;
    sc_signal< sc_lv<26> > tmp_V_10_reg_1162;
    sc_signal< sc_lv<29> > select_ln50_fu_512_p3;
    sc_signal< sc_lv<29> > select_ln50_reg_1168;
    sc_signal< sc_lv<56> > select_ln50_1_fu_520_p3;
    sc_signal< sc_lv<56> > select_ln50_1_reg_1173;
    sc_signal< sc_lv<28> > select_ln51_fu_538_p3;
    sc_signal< sc_lv<28> > select_ln51_reg_1178;
    sc_signal< sc_lv<56> > select_ln51_1_fu_546_p3;
    sc_signal< sc_lv<56> > select_ln51_1_reg_1183;
    sc_signal< sc_lv<28> > min_value_V_dc_0_reg_217;
    sc_signal< sc_lv<29> > max_value_V_dc_0_reg_230;
    sc_signal< sc_lv<56> > min_value_V_load_i_reg_243;
    sc_signal< sc_lv<56> > max_value_V_load_i_reg_255;
    sc_signal< sc_lv<16> > i_0_i_reg_267;
    sc_signal< sc_lv<9> > grp_fu_294_p0;
    sc_signal< sc_lv<9> > grp_fu_303_p0;
    sc_signal< sc_lv<9> > grp_fu_312_p0;
    sc_signal< sc_lv<9> > grp_fu_294_p2;
    sc_signal< sc_lv<9> > grp_fu_303_p2;
    sc_signal< sc_lv<9> > ret_V_fu_317_p1;
    sc_signal< sc_lv<9> > ret_V_14_fu_321_p1;
    sc_signal< sc_lv<10> > rhs_V_fu_329_p1;
    sc_signal< sc_lv<10> > lhs_V_fu_325_p1;
    sc_signal< sc_lv<9> > grp_fu_312_p2;
    sc_signal< sc_lv<10> > ret_V_15_fu_333_p2;
    sc_signal< sc_lv<9> > ret_V_17_fu_339_p1;
    sc_signal< sc_lv<11> > rhs_V_5_fu_347_p1;
    sc_signal< sc_lv<11> > lhs_V_4_fu_343_p1;
    sc_signal< sc_lv<11> > ret_V_19_fu_351_p2;
    sc_signal< sc_lv<1> > icmp_ln1498_fu_365_p2;
    sc_signal< sc_lv<19> > denominator_V_fu_357_p3;
    sc_signal< sc_lv<24> > shl_ln_fu_379_p3;
    sc_signal< sc_lv<19> > denominator_V_1_fu_371_p3;
    sc_signal< sc_lv<25> > grp_fu_394_p0;
    sc_signal< sc_lv<19> > grp_fu_394_p1;
    sc_signal< sc_lv<24> > shl_ln1148_1_fu_400_p3;
    sc_signal< sc_lv<25> > grp_fu_411_p0;
    sc_signal< sc_lv<19> > grp_fu_411_p1;
    sc_signal< sc_lv<24> > shl_ln1148_2_fu_417_p3;
    sc_signal< sc_lv<25> > grp_fu_428_p0;
    sc_signal< sc_lv<19> > grp_fu_428_p1;
    sc_signal< sc_lv<25> > grp_fu_394_p2;
    sc_signal< sc_lv<26> > shl_ln7_fu_434_p3;
    sc_signal< sc_lv<25> > grp_fu_411_p2;
    sc_signal< sc_lv<27> > sext_ln703_fu_442_p1;
    sc_signal< sc_lv<27> > sext_ln703_6_fu_446_p1;
    sc_signal< sc_lv<25> > grp_fu_428_p2;
    sc_signal< sc_lv<27> > sub_ln703_fu_450_p2;
    sc_signal< sc_lv<27> > sext_ln703_7_fu_456_p1;
    sc_signal< sc_lv<27> > tmp_V_9_fu_460_p2;
    sc_signal< sc_lv<26> > trunc_ln703_fu_470_p1;
    sc_signal< sc_lv<26> > sub_ln939_fu_488_p2;
    sc_signal< sc_lv<56> > sext_ln703_8_fu_466_p1;
    sc_signal< sc_lv<1> > icmp_ln1495_fu_502_p2;
    sc_signal< sc_lv<29> > sext_ln203_fu_508_p1;
    sc_signal< sc_lv<1> > icmp_ln1494_fu_528_p2;
    sc_signal< sc_lv<28> > sext_ln203_1_fu_534_p1;
    sc_signal< sc_lv<56> > zext_ln938_1_fu_557_p1;
    sc_signal< sc_lv<56> > p_Result_s_fu_560_p4;
    sc_signal< sc_lv<64> > p_Result_10_fu_570_p3;
    sc_signal< sc_lv<64> > tmp_i_fu_578_p3;
    sc_signal< sc_lv<32> > l_fu_586_p1;
    sc_signal< sc_lv<32> > sub_ln944_fu_590_p2;
    sc_signal< sc_lv<32> > lsb_index_fu_596_p2;
    sc_signal< sc_lv<31> > tmp_fu_602_p4;
    sc_signal< sc_lv<6> > trunc_ln947_fu_618_p1;
    sc_signal< sc_lv<6> > sub_ln947_fu_622_p2;
    sc_signal< sc_lv<56> > zext_ln947_fu_628_p1;
    sc_signal< sc_lv<56> > lshr_ln947_fu_632_p2;
    sc_signal< sc_lv<56> > p_Result_6_fu_638_p2;
    sc_signal< sc_lv<1> > icmp_ln947_fu_612_p2;
    sc_signal< sc_lv<1> > icmp_ln947_1_fu_644_p2;
    sc_signal< sc_lv<1> > tmp_45_fu_656_p3;
    sc_signal< sc_lv<1> > p_Result_3_fu_670_p3;
    sc_signal< sc_lv<1> > xor_ln949_fu_664_p2;
    sc_signal< sc_lv<1> > and_ln949_fu_678_p2;
    sc_signal< sc_lv<1> > a_fu_650_p2;
    sc_signal< sc_lv<1> > or_ln949_fu_684_p2;
    sc_signal< sc_lv<32> > zext_ln938_fu_554_p1;
    sc_signal< sc_lv<32> > add_ln954_fu_704_p2;
    sc_signal< sc_lv<32> > sub_ln954_fu_716_p2;
    sc_signal< sc_lv<56> > zext_ln954_fu_722_p1;
    sc_signal< sc_lv<56> > shl_ln954_fu_726_p2;
    sc_signal< sc_lv<1> > icmp_ln954_fu_698_p2;
    sc_signal< sc_lv<32> > lshr_ln954_fu_710_p2;
    sc_signal< sc_lv<32> > trunc_ln954_fu_732_p1;
    sc_signal< sc_lv<32> > or_ln_i_fu_690_p3;
    sc_signal< sc_lv<32> > m_fu_736_p3;
    sc_signal< sc_lv<32> > m_1_fu_744_p2;
    sc_signal< sc_lv<31> > m_4_fu_750_p4;
    sc_signal< sc_lv<1> > tmp_46_fu_764_p3;
    sc_signal< sc_lv<8> > trunc_ln943_fu_780_p1;
    sc_signal< sc_lv<8> > sub_ln964_fu_784_p2;
    sc_signal< sc_lv<8> > select_ln964_fu_772_p3;
    sc_signal< sc_lv<8> > add_ln964_fu_790_p2;
    sc_signal< sc_lv<32> > m_5_fu_760_p1;
    sc_signal< sc_lv<9> > tmp_64_i_fu_796_p3;
    sc_signal< sc_lv<32> > p_Result_11_fu_803_p5;
    sc_signal< sc_lv<32> > reg_V_fu_815_p3;
    sc_signal< sc_lv<8> > p_Result_i_fu_834_p4;
    sc_signal< sc_lv<23> > trunc_ln270_fu_848_p1;
    sc_signal< sc_lv<31> > trunc_ln262_fu_822_p1;
    sc_signal< sc_lv<9> > exp_V_fu_844_p1;
    sc_signal< sc_lv<9> > sh_amt_fu_866_p2;
    sc_signal< sc_lv<24> > tmp_65_i_fu_852_p3;
    sc_signal< sc_lv<9> > sh_amt_1_fu_898_p2;
    sc_signal< sc_lv<3> > tmp_48_fu_908_p4;
    sc_signal< sc_lv<24> > sext_ln281_fu_872_p1;
    sc_signal< sc_lv<1> > tmp_49_fu_930_p3;
    sc_signal< sc_lv<32> > zext_ln283_fu_882_p1;
    sc_signal< sc_lv<32> > zext_ln294_fu_904_p1;
    sc_signal< sc_lv<1> > icmp_ln278_fu_860_p2;
    sc_signal< sc_lv<1> > icmp_ln282_fu_876_p2;
    sc_signal< sc_lv<1> > xor_ln278_fu_952_p2;
    sc_signal< sc_lv<1> > and_ln282_fu_958_p2;
    sc_signal< sc_lv<1> > or_ln282_fu_972_p2;
    sc_signal< sc_lv<1> > icmp_ln284_fu_886_p2;
    sc_signal< sc_lv<1> > xor_ln282_fu_978_p2;
    sc_signal< sc_lv<1> > and_ln284_fu_984_p2;
    sc_signal< sc_lv<1> > icmp_ln285_fu_892_p2;
    sc_signal< sc_lv<1> > and_ln285_fu_990_p2;
    sc_signal< sc_lv<24> > lshr_ln286_fu_924_p2;
    sc_signal< sc_lv<24> > select_ln282_fu_964_p3;
    sc_signal< sc_lv<24> > select_ln285_fu_996_p3;
    sc_signal< sc_lv<1> > or_ln284_fu_1008_p2;
    sc_signal< sc_lv<1> > icmp_ln295_fu_918_p2;
    sc_signal< sc_lv<1> > xor_ln284_fu_1014_p2;
    sc_signal< sc_lv<1> > and_ln295_fu_1020_p2;
    sc_signal< sc_lv<32> > shl_ln297_fu_946_p2;
    sc_signal< sc_lv<32> > zext_ln285_fu_1004_p1;
    sc_signal< sc_lv<32> > select_ln295_fu_1026_p3;
    sc_signal< sc_lv<1> > xor_ln285_fu_1042_p2;
    sc_signal< sc_lv<1> > and_ln285_1_fu_1048_p2;
    sc_signal< sc_lv<32> > select_ln288_fu_938_p3;
    sc_signal< sc_lv<32> > select_ln278_fu_1034_p3;
    sc_signal< sc_lv<32> > select_ln285_1_fu_1054_p3;
    sc_signal< sc_lv<1> > p_Result_12_fu_826_p3;
    sc_signal< sc_lv<32> > sub_ln461_fu_1062_p2;
    sc_signal< sc_logic > grp_fu_294_ap_start;
    sc_signal< sc_logic > grp_fu_294_ap_done;
    sc_signal< sc_logic > grp_fu_294_ce;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > grp_fu_303_ap_start;
    sc_signal< sc_logic > grp_fu_303_ap_done;
    sc_signal< sc_logic > grp_fu_303_ce;
    sc_signal< sc_logic > grp_fu_312_ap_start;
    sc_signal< sc_logic > grp_fu_312_ap_done;
    sc_signal< sc_logic > grp_fu_312_ce;
    sc_signal< sc_logic > grp_fu_394_ap_start;
    sc_signal< sc_logic > grp_fu_394_ap_done;
    sc_signal< sc_logic > grp_fu_411_ap_start;
    sc_signal< sc_logic > grp_fu_411_ap_done;
    sc_signal< sc_logic > grp_fu_428_ap_start;
    sc_signal< sc_logic > grp_fu_428_ap_done;
    sc_signal< sc_lv<43> > ap_NS_fsm;
    sc_signal< sc_lv<32> > grp_fu_294_p00;
    sc_signal< sc_lv<32> > grp_fu_303_p00;
    sc_signal< sc_lv<32> > grp_fu_312_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<43> ap_ST_fsm_state1;
    static const sc_lv<43> ap_ST_fsm_state2;
    static const sc_lv<43> ap_ST_fsm_state3;
    static const sc_lv<43> ap_ST_fsm_state4;
    static const sc_lv<43> ap_ST_fsm_state5;
    static const sc_lv<43> ap_ST_fsm_state6;
    static const sc_lv<43> ap_ST_fsm_state7;
    static const sc_lv<43> ap_ST_fsm_state8;
    static const sc_lv<43> ap_ST_fsm_state9;
    static const sc_lv<43> ap_ST_fsm_state10;
    static const sc_lv<43> ap_ST_fsm_state11;
    static const sc_lv<43> ap_ST_fsm_state12;
    static const sc_lv<43> ap_ST_fsm_state13;
    static const sc_lv<43> ap_ST_fsm_state14;
    static const sc_lv<43> ap_ST_fsm_state15;
    static const sc_lv<43> ap_ST_fsm_state16;
    static const sc_lv<43> ap_ST_fsm_state17;
    static const sc_lv<43> ap_ST_fsm_state18;
    static const sc_lv<43> ap_ST_fsm_state19;
    static const sc_lv<43> ap_ST_fsm_state20;
    static const sc_lv<43> ap_ST_fsm_state21;
    static const sc_lv<43> ap_ST_fsm_state22;
    static const sc_lv<43> ap_ST_fsm_state23;
    static const sc_lv<43> ap_ST_fsm_state24;
    static const sc_lv<43> ap_ST_fsm_state25;
    static const sc_lv<43> ap_ST_fsm_state26;
    static const sc_lv<43> ap_ST_fsm_state27;
    static const sc_lv<43> ap_ST_fsm_state28;
    static const sc_lv<43> ap_ST_fsm_state29;
    static const sc_lv<43> ap_ST_fsm_state30;
    static const sc_lv<43> ap_ST_fsm_state31;
    static const sc_lv<43> ap_ST_fsm_state32;
    static const sc_lv<43> ap_ST_fsm_state33;
    static const sc_lv<43> ap_ST_fsm_state34;
    static const sc_lv<43> ap_ST_fsm_state35;
    static const sc_lv<43> ap_ST_fsm_state36;
    static const sc_lv<43> ap_ST_fsm_state37;
    static const sc_lv<43> ap_ST_fsm_state38;
    static const sc_lv<43> ap_ST_fsm_state39;
    static const sc_lv<43> ap_ST_fsm_state40;
    static const sc_lv<43> ap_ST_fsm_state41;
    static const sc_lv<43> ap_ST_fsm_state42;
    static const sc_lv<43> ap_ST_fsm_state43;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<28> ap_const_lv28_7FF800;
    static const sc_lv<29> ap_const_lv29_0;
    static const sc_lv<56> ap_const_lv56_7FF800;
    static const sc_lv<56> ap_const_lv56_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<16> ap_const_lv16_E100;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<19> ap_const_lv19_100;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<26> ap_const_lv26_0;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_FFFFFFE8;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<6> ap_const_lv6_11;
    static const sc_lv<56> ap_const_lv56_FFFFFFFFFFFFFF;
    static const sc_lv<32> ap_const_lv32_FFFFFFE7;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_7E;
    static const sc_lv<8> ap_const_lv8_30;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<9> ap_const_lv9_96;
    static const sc_lv<8> ap_const_lv8_96;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_19;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_a_fu_650_p2();
    void thread_add_ln954_fu_704_p2();
    void thread_add_ln964_fu_790_p2();
    void thread_and_ln282_fu_958_p2();
    void thread_and_ln284_fu_984_p2();
    void thread_and_ln285_1_fu_1048_p2();
    void thread_and_ln285_fu_990_p2();
    void thread_and_ln295_fu_1020_p2();
    void thread_and_ln949_fu_678_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_b_channel_data_V_blk_n();
    void thread_b_channel_data_V_read();
    void thread_denominator_V_1_fu_371_p3();
    void thread_denominator_V_fu_357_p3();
    void thread_exp_V_fu_844_p1();
    void thread_g_channel_data_V_blk_n();
    void thread_g_channel_data_V_read();
    void thread_grp_fu_294_ap_start();
    void thread_grp_fu_294_ce();
    void thread_grp_fu_294_p0();
    void thread_grp_fu_294_p00();
    void thread_grp_fu_303_ap_start();
    void thread_grp_fu_303_ce();
    void thread_grp_fu_303_p0();
    void thread_grp_fu_303_p00();
    void thread_grp_fu_312_ap_start();
    void thread_grp_fu_312_ce();
    void thread_grp_fu_312_p0();
    void thread_grp_fu_312_p00();
    void thread_grp_fu_394_ap_start();
    void thread_grp_fu_394_p0();
    void thread_grp_fu_394_p1();
    void thread_grp_fu_411_ap_start();
    void thread_grp_fu_411_p0();
    void thread_grp_fu_411_p1();
    void thread_grp_fu_428_ap_start();
    void thread_grp_fu_428_p0();
    void thread_grp_fu_428_p1();
    void thread_i_fu_284_p2();
    void thread_icmp_ln1494_fu_528_p2();
    void thread_icmp_ln1495_fu_502_p2();
    void thread_icmp_ln1498_fu_365_p2();
    void thread_icmp_ln278_fu_860_p2();
    void thread_icmp_ln282_fu_876_p2();
    void thread_icmp_ln284_fu_886_p2();
    void thread_icmp_ln285_fu_892_p2();
    void thread_icmp_ln295_fu_918_p2();
    void thread_icmp_ln40_fu_278_p2();
    void thread_icmp_ln935_fu_474_p2();
    void thread_icmp_ln947_1_fu_644_p2();
    void thread_icmp_ln947_fu_612_p2();
    void thread_icmp_ln954_fu_698_p2();
    void thread_l_fu_586_p1();
    void thread_lhs_V_4_fu_343_p1();
    void thread_lhs_V_fu_325_p1();
    void thread_lsb_index_fu_596_p2();
    void thread_lshr_ln286_fu_924_p2();
    void thread_lshr_ln947_fu_632_p2();
    void thread_lshr_ln954_fu_710_p2();
    void thread_m_1_fu_744_p2();
    void thread_m_4_fu_750_p4();
    void thread_m_5_fu_760_p1();
    void thread_m_fu_736_p3();
    void thread_max_b_blk_n();
    void thread_max_b_read();
    void thread_max_g_blk_n();
    void thread_max_g_read();
    void thread_max_r_blk_n();
    void thread_max_r_read();
    void thread_max_value_V_out_blk_n();
    void thread_max_value_V_out_din();
    void thread_max_value_V_out_write();
    void thread_min_value_V_out_blk_n();
    void thread_min_value_V_out_din();
    void thread_min_value_V_out_write();
    void thread_or_ln282_fu_972_p2();
    void thread_or_ln284_fu_1008_p2();
    void thread_or_ln949_fu_684_p2();
    void thread_or_ln_i_fu_690_p3();
    void thread_p_Result_10_fu_570_p3();
    void thread_p_Result_11_fu_803_p5();
    void thread_p_Result_12_fu_826_p3();
    void thread_p_Result_3_fu_670_p3();
    void thread_p_Result_6_fu_638_p2();
    void thread_p_Result_9_fu_480_p3();
    void thread_p_Result_i_fu_834_p4();
    void thread_p_Result_s_fu_560_p4();
    void thread_r_channel_data_V_blk_n();
    void thread_r_channel_data_V_read();
    void thread_reg_V_fu_815_p3();
    void thread_ret_V_14_fu_321_p1();
    void thread_ret_V_15_fu_333_p2();
    void thread_ret_V_17_fu_339_p1();
    void thread_ret_V_19_fu_351_p2();
    void thread_ret_V_fu_317_p1();
    void thread_rhs_V_5_fu_347_p1();
    void thread_rhs_V_fu_329_p1();
    void thread_select_ln278_fu_1034_p3();
    void thread_select_ln282_fu_964_p3();
    void thread_select_ln285_1_fu_1054_p3();
    void thread_select_ln285_fu_996_p3();
    void thread_select_ln288_fu_938_p3();
    void thread_select_ln295_fu_1026_p3();
    void thread_select_ln50_1_fu_520_p3();
    void thread_select_ln50_fu_512_p3();
    void thread_select_ln51_1_fu_546_p3();
    void thread_select_ln51_fu_538_p3();
    void thread_select_ln964_fu_772_p3();
    void thread_sext_ln1148_fu_390_p1();
    void thread_sext_ln203_1_fu_534_p1();
    void thread_sext_ln203_fu_508_p1();
    void thread_sext_ln281_fu_872_p1();
    void thread_sext_ln703_6_fu_446_p1();
    void thread_sext_ln703_7_fu_456_p1();
    void thread_sext_ln703_8_fu_466_p1();
    void thread_sext_ln703_fu_442_p1();
    void thread_sh_amt_1_fu_898_p2();
    void thread_sh_amt_fu_866_p2();
    void thread_shl_ln1148_1_fu_400_p3();
    void thread_shl_ln1148_2_fu_417_p3();
    void thread_shl_ln297_fu_946_p2();
    void thread_shl_ln7_fu_434_p3();
    void thread_shl_ln954_fu_726_p2();
    void thread_shl_ln_fu_379_p3();
    void thread_sub_ln461_fu_1062_p2();
    void thread_sub_ln703_fu_450_p2();
    void thread_sub_ln939_fu_488_p2();
    void thread_sub_ln944_fu_590_p2();
    void thread_sub_ln947_fu_622_p2();
    void thread_sub_ln954_fu_716_p2();
    void thread_sub_ln964_fu_784_p2();
    void thread_tmp_45_fu_656_p3();
    void thread_tmp_46_fu_764_p3();
    void thread_tmp_48_fu_908_p4();
    void thread_tmp_49_fu_930_p3();
    void thread_tmp_64_i_fu_796_p3();
    void thread_tmp_65_i_fu_852_p3();
    void thread_tmp_V_10_fu_494_p3();
    void thread_tmp_V_9_fu_460_p2();
    void thread_tmp_fu_602_p4();
    void thread_tmp_i_fu_578_p3();
    void thread_trunc_ln262_fu_822_p1();
    void thread_trunc_ln270_fu_848_p1();
    void thread_trunc_ln703_fu_470_p1();
    void thread_trunc_ln943_fu_780_p1();
    void thread_trunc_ln947_fu_618_p1();
    void thread_trunc_ln954_fu_732_p1();
    void thread_veg_img_data_V_blk_n();
    void thread_veg_img_data_V_din();
    void thread_veg_img_data_V_write();
    void thread_xor_ln278_fu_952_p2();
    void thread_xor_ln282_fu_978_p2();
    void thread_xor_ln284_fu_1014_p2();
    void thread_xor_ln285_fu_1042_p2();
    void thread_xor_ln949_fu_664_p2();
    void thread_zext_ln283_fu_882_p1();
    void thread_zext_ln285_fu_1004_p1();
    void thread_zext_ln294_fu_904_p1();
    void thread_zext_ln938_1_fu_557_p1();
    void thread_zext_ln938_fu_554_p1();
    void thread_zext_ln947_fu_628_p1();
    void thread_zext_ln954_fu_722_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif