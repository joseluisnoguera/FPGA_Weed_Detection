-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity merge is
port (
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    p_src1_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src1_data_V_empty_n : IN STD_LOGIC;
    p_src1_data_V_read : OUT STD_LOGIC;
    p_src2_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src2_data_V_empty_n : IN STD_LOGIC;
    p_src2_data_V_read : OUT STD_LOGIC;
    p_dst_data_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    p_dst_data_V_full_n : IN STD_LOGIC;
    p_dst_data_V_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of merge is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal merge_Block_crit_e_U0_ap_start : STD_LOGIC;
    signal merge_Block_crit_e_U0_ap_done : STD_LOGIC;
    signal merge_Block_crit_e_U0_ap_continue : STD_LOGIC;
    signal merge_Block_crit_e_U0_ap_idle : STD_LOGIC;
    signal merge_Block_crit_e_U0_ap_ready : STD_LOGIC;
    signal merge_Block_crit_e_U0_p_src1_cols_load7_out_out_din : STD_LOGIC_VECTOR (9 downto 0);
    signal merge_Block_crit_e_U0_p_src1_cols_load7_out_out_write : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_ap_start : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_ap_done : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_ap_continue : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_ap_idle : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_ap_ready : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_start_out : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_start_write : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_read : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_p_src1_data_V_read : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_p_in1_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal merge_Loop_Read_Mat_U0_p_in1_V_V_write : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_p_src2_data_V_read : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_p_in2_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal merge_Loop_Read_Mat_U0_p_in2_V_V_write : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_p_in3_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal merge_Loop_Read_Mat_U0_p_in3_V_V_write : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_din : STD_LOGIC_VECTOR (9 downto 0);
    signal merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_write : STD_LOGIC;
    signal xfChannelCombine_U0_ap_start : STD_LOGIC;
    signal xfChannelCombine_U0_ap_done : STD_LOGIC;
    signal xfChannelCombine_U0_ap_continue : STD_LOGIC;
    signal xfChannelCombine_U0_ap_idle : STD_LOGIC;
    signal xfChannelCombine_U0_ap_ready : STD_LOGIC;
    signal xfChannelCombine_U0_start_out : STD_LOGIC;
    signal xfChannelCombine_U0_start_write : STD_LOGIC;
    signal xfChannelCombine_U0_p_in1_V_V_read : STD_LOGIC;
    signal xfChannelCombine_U0_p_in2_V_V_read : STD_LOGIC;
    signal xfChannelCombine_U0_p_in3_V_V_read : STD_LOGIC;
    signal xfChannelCombine_U0_p_out_V_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal xfChannelCombine_U0_p_out_V_V_write : STD_LOGIC;
    signal xfChannelCombine_U0_p_src1_cols_load7_loc_read : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_ap_start : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_ap_done : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_ap_continue : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_ap_idle : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_ap_ready : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_p_out_V_V_read : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_p_dst_data_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal merge_Loop_Write_Mat_U0_p_dst_data_V_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal p_src1_cols_load7_loc_1_full_n : STD_LOGIC;
    signal p_src1_cols_load7_loc_1_dout : STD_LOGIC_VECTOR (9 downto 0);
    signal p_src1_cols_load7_loc_1_empty_n : STD_LOGIC;
    signal p_in1_V_V_full_n : STD_LOGIC;
    signal p_in1_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_in1_V_V_empty_n : STD_LOGIC;
    signal p_in2_V_V_full_n : STD_LOGIC;
    signal p_in2_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_in2_V_V_empty_n : STD_LOGIC;
    signal p_in3_V_V_full_n : STD_LOGIC;
    signal p_in3_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_in3_V_V_empty_n : STD_LOGIC;
    signal p_src1_cols_load7_loc_full_n : STD_LOGIC;
    signal p_src1_cols_load7_loc_dout : STD_LOGIC_VECTOR (9 downto 0);
    signal p_src1_cols_load7_loc_empty_n : STD_LOGIC;
    signal p_out_V_V_full_n : STD_LOGIC;
    signal p_out_V_V_dout : STD_LOGIC_VECTOR (23 downto 0);
    signal p_out_V_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_merge_Block_crit_e_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_merge_Block_crit_e_U0_ap_ready : STD_LOGIC;
    signal merge_Block_crit_e_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_merge_Loop_Read_Mat_U0_ap_ready : STD_LOGIC;
    signal merge_Loop_Read_Mat_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal merge_Block_crit_e_U0_start_full_n : STD_LOGIC;
    signal merge_Block_crit_e_U0_start_write : STD_LOGIC;
    signal start_for_xfChannelCombine_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xfChannelCombine_U0_full_n : STD_LOGIC;
    signal start_for_xfChannelCombine_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xfChannelCombine_U0_empty_n : STD_LOGIC;
    signal start_for_merge_Loop_Write_Mat_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_merge_Loop_Write_Mat_U0_full_n : STD_LOGIC;
    signal start_for_merge_Loop_Write_Mat_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_merge_Loop_Write_Mat_U0_empty_n : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_start_full_n : STD_LOGIC;
    signal merge_Loop_Write_Mat_U0_start_write : STD_LOGIC;

    component merge_Block_crit_e IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_src1_cols_load7_out_out_din : OUT STD_LOGIC_VECTOR (9 downto 0);
        p_src1_cols_load7_out_out_full_n : IN STD_LOGIC;
        p_src1_cols_load7_out_out_write : OUT STD_LOGIC );
    end component;


    component merge_Loop_Read_Mat_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_src1_cols_load7_loc_dout : IN STD_LOGIC_VECTOR (9 downto 0);
        p_src1_cols_load7_loc_empty_n : IN STD_LOGIC;
        p_src1_cols_load7_loc_read : OUT STD_LOGIC;
        p_src1_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src1_data_V_empty_n : IN STD_LOGIC;
        p_src1_data_V_read : OUT STD_LOGIC;
        p_in1_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_in1_V_V_full_n : IN STD_LOGIC;
        p_in1_V_V_write : OUT STD_LOGIC;
        p_src2_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src2_data_V_empty_n : IN STD_LOGIC;
        p_src2_data_V_read : OUT STD_LOGIC;
        p_in2_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_in2_V_V_full_n : IN STD_LOGIC;
        p_in2_V_V_write : OUT STD_LOGIC;
        p_in3_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_in3_V_V_full_n : IN STD_LOGIC;
        p_in3_V_V_write : OUT STD_LOGIC;
        p_src1_cols_load7_loc_out_din : OUT STD_LOGIC_VECTOR (9 downto 0);
        p_src1_cols_load7_loc_out_full_n : IN STD_LOGIC;
        p_src1_cols_load7_loc_out_write : OUT STD_LOGIC );
    end component;


    component xfChannelCombine IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_in1_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_in1_V_V_empty_n : IN STD_LOGIC;
        p_in1_V_V_read : OUT STD_LOGIC;
        p_in2_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_in2_V_V_empty_n : IN STD_LOGIC;
        p_in2_V_V_read : OUT STD_LOGIC;
        p_in3_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_in3_V_V_empty_n : IN STD_LOGIC;
        p_in3_V_V_read : OUT STD_LOGIC;
        p_out_V_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        p_out_V_V_full_n : IN STD_LOGIC;
        p_out_V_V_write : OUT STD_LOGIC;
        p_src1_cols_load7_loc_dout : IN STD_LOGIC_VECTOR (9 downto 0);
        p_src1_cols_load7_loc_empty_n : IN STD_LOGIC;
        p_src1_cols_load7_loc_read : OUT STD_LOGIC );
    end component;


    component merge_Loop_Write_Mat IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_out_V_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        p_out_V_V_empty_n : IN STD_LOGIC;
        p_out_V_V_read : OUT STD_LOGIC;
        p_dst_data_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        p_dst_data_V_full_n : IN STD_LOGIC;
        p_dst_data_V_write : OUT STD_LOGIC );
    end component;


    component fifo_w10_d2_A_x3 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (9 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (9 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d2_A_x2 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w24_d2_A_x3 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (23 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (23 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_xfChann8jQ IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_merge_L9j0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    merge_Block_crit_e_U0 : component merge_Block_crit_e
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => merge_Block_crit_e_U0_ap_start,
        ap_done => merge_Block_crit_e_U0_ap_done,
        ap_continue => merge_Block_crit_e_U0_ap_continue,
        ap_idle => merge_Block_crit_e_U0_ap_idle,
        ap_ready => merge_Block_crit_e_U0_ap_ready,
        p_src1_cols_load7_out_out_din => merge_Block_crit_e_U0_p_src1_cols_load7_out_out_din,
        p_src1_cols_load7_out_out_full_n => p_src1_cols_load7_loc_1_full_n,
        p_src1_cols_load7_out_out_write => merge_Block_crit_e_U0_p_src1_cols_load7_out_out_write);

    merge_Loop_Read_Mat_U0 : component merge_Loop_Read_Mat_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => merge_Loop_Read_Mat_U0_ap_start,
        start_full_n => start_for_xfChannelCombine_U0_full_n,
        ap_done => merge_Loop_Read_Mat_U0_ap_done,
        ap_continue => merge_Loop_Read_Mat_U0_ap_continue,
        ap_idle => merge_Loop_Read_Mat_U0_ap_idle,
        ap_ready => merge_Loop_Read_Mat_U0_ap_ready,
        start_out => merge_Loop_Read_Mat_U0_start_out,
        start_write => merge_Loop_Read_Mat_U0_start_write,
        p_src1_cols_load7_loc_dout => p_src1_cols_load7_loc_1_dout,
        p_src1_cols_load7_loc_empty_n => p_src1_cols_load7_loc_1_empty_n,
        p_src1_cols_load7_loc_read => merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_read,
        p_src1_data_V_dout => p_src1_data_V_dout,
        p_src1_data_V_empty_n => p_src1_data_V_empty_n,
        p_src1_data_V_read => merge_Loop_Read_Mat_U0_p_src1_data_V_read,
        p_in1_V_V_din => merge_Loop_Read_Mat_U0_p_in1_V_V_din,
        p_in1_V_V_full_n => p_in1_V_V_full_n,
        p_in1_V_V_write => merge_Loop_Read_Mat_U0_p_in1_V_V_write,
        p_src2_data_V_dout => p_src2_data_V_dout,
        p_src2_data_V_empty_n => p_src2_data_V_empty_n,
        p_src2_data_V_read => merge_Loop_Read_Mat_U0_p_src2_data_V_read,
        p_in2_V_V_din => merge_Loop_Read_Mat_U0_p_in2_V_V_din,
        p_in2_V_V_full_n => p_in2_V_V_full_n,
        p_in2_V_V_write => merge_Loop_Read_Mat_U0_p_in2_V_V_write,
        p_in3_V_V_din => merge_Loop_Read_Mat_U0_p_in3_V_V_din,
        p_in3_V_V_full_n => p_in3_V_V_full_n,
        p_in3_V_V_write => merge_Loop_Read_Mat_U0_p_in3_V_V_write,
        p_src1_cols_load7_loc_out_din => merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_din,
        p_src1_cols_load7_loc_out_full_n => p_src1_cols_load7_loc_full_n,
        p_src1_cols_load7_loc_out_write => merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_write);

    xfChannelCombine_U0 : component xfChannelCombine
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => xfChannelCombine_U0_ap_start,
        start_full_n => start_for_merge_Loop_Write_Mat_U0_full_n,
        ap_done => xfChannelCombine_U0_ap_done,
        ap_continue => xfChannelCombine_U0_ap_continue,
        ap_idle => xfChannelCombine_U0_ap_idle,
        ap_ready => xfChannelCombine_U0_ap_ready,
        start_out => xfChannelCombine_U0_start_out,
        start_write => xfChannelCombine_U0_start_write,
        p_in1_V_V_dout => p_in1_V_V_dout,
        p_in1_V_V_empty_n => p_in1_V_V_empty_n,
        p_in1_V_V_read => xfChannelCombine_U0_p_in1_V_V_read,
        p_in2_V_V_dout => p_in2_V_V_dout,
        p_in2_V_V_empty_n => p_in2_V_V_empty_n,
        p_in2_V_V_read => xfChannelCombine_U0_p_in2_V_V_read,
        p_in3_V_V_dout => p_in3_V_V_dout,
        p_in3_V_V_empty_n => p_in3_V_V_empty_n,
        p_in3_V_V_read => xfChannelCombine_U0_p_in3_V_V_read,
        p_out_V_V_din => xfChannelCombine_U0_p_out_V_V_din,
        p_out_V_V_full_n => p_out_V_V_full_n,
        p_out_V_V_write => xfChannelCombine_U0_p_out_V_V_write,
        p_src1_cols_load7_loc_dout => p_src1_cols_load7_loc_dout,
        p_src1_cols_load7_loc_empty_n => p_src1_cols_load7_loc_empty_n,
        p_src1_cols_load7_loc_read => xfChannelCombine_U0_p_src1_cols_load7_loc_read);

    merge_Loop_Write_Mat_U0 : component merge_Loop_Write_Mat
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => merge_Loop_Write_Mat_U0_ap_start,
        ap_done => merge_Loop_Write_Mat_U0_ap_done,
        ap_continue => merge_Loop_Write_Mat_U0_ap_continue,
        ap_idle => merge_Loop_Write_Mat_U0_ap_idle,
        ap_ready => merge_Loop_Write_Mat_U0_ap_ready,
        p_out_V_V_dout => p_out_V_V_dout,
        p_out_V_V_empty_n => p_out_V_V_empty_n,
        p_out_V_V_read => merge_Loop_Write_Mat_U0_p_out_V_V_read,
        p_dst_data_V_din => merge_Loop_Write_Mat_U0_p_dst_data_V_din,
        p_dst_data_V_full_n => p_dst_data_V_full_n,
        p_dst_data_V_write => merge_Loop_Write_Mat_U0_p_dst_data_V_write);

    p_src1_cols_load7_loc_1_U : component fifo_w10_d2_A_x3
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => merge_Block_crit_e_U0_p_src1_cols_load7_out_out_din,
        if_full_n => p_src1_cols_load7_loc_1_full_n,
        if_write => merge_Block_crit_e_U0_p_src1_cols_load7_out_out_write,
        if_dout => p_src1_cols_load7_loc_1_dout,
        if_empty_n => p_src1_cols_load7_loc_1_empty_n,
        if_read => merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_read);

    p_in1_V_V_U : component fifo_w8_d2_A_x2
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => merge_Loop_Read_Mat_U0_p_in1_V_V_din,
        if_full_n => p_in1_V_V_full_n,
        if_write => merge_Loop_Read_Mat_U0_p_in1_V_V_write,
        if_dout => p_in1_V_V_dout,
        if_empty_n => p_in1_V_V_empty_n,
        if_read => xfChannelCombine_U0_p_in1_V_V_read);

    p_in2_V_V_U : component fifo_w8_d2_A_x2
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => merge_Loop_Read_Mat_U0_p_in2_V_V_din,
        if_full_n => p_in2_V_V_full_n,
        if_write => merge_Loop_Read_Mat_U0_p_in2_V_V_write,
        if_dout => p_in2_V_V_dout,
        if_empty_n => p_in2_V_V_empty_n,
        if_read => xfChannelCombine_U0_p_in2_V_V_read);

    p_in3_V_V_U : component fifo_w8_d2_A_x2
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => merge_Loop_Read_Mat_U0_p_in3_V_V_din,
        if_full_n => p_in3_V_V_full_n,
        if_write => merge_Loop_Read_Mat_U0_p_in3_V_V_write,
        if_dout => p_in3_V_V_dout,
        if_empty_n => p_in3_V_V_empty_n,
        if_read => xfChannelCombine_U0_p_in3_V_V_read);

    p_src1_cols_load7_loc_U : component fifo_w10_d2_A_x3
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_din,
        if_full_n => p_src1_cols_load7_loc_full_n,
        if_write => merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_write,
        if_dout => p_src1_cols_load7_loc_dout,
        if_empty_n => p_src1_cols_load7_loc_empty_n,
        if_read => xfChannelCombine_U0_p_src1_cols_load7_loc_read);

    p_out_V_V_U : component fifo_w24_d2_A_x3
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xfChannelCombine_U0_p_out_V_V_din,
        if_full_n => p_out_V_V_full_n,
        if_write => xfChannelCombine_U0_p_out_V_V_write,
        if_dout => p_out_V_V_dout,
        if_empty_n => p_out_V_V_empty_n,
        if_read => merge_Loop_Write_Mat_U0_p_out_V_V_read);

    start_for_xfChann8jQ_U : component start_for_xfChann8jQ
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_xfChannelCombine_U0_din,
        if_full_n => start_for_xfChannelCombine_U0_full_n,
        if_write => merge_Loop_Read_Mat_U0_start_write,
        if_dout => start_for_xfChannelCombine_U0_dout,
        if_empty_n => start_for_xfChannelCombine_U0_empty_n,
        if_read => xfChannelCombine_U0_ap_ready);

    start_for_merge_L9j0_U : component start_for_merge_L9j0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_merge_Loop_Write_Mat_U0_din,
        if_full_n => start_for_merge_Loop_Write_Mat_U0_full_n,
        if_write => xfChannelCombine_U0_start_write,
        if_dout => start_for_merge_Loop_Write_Mat_U0_dout,
        if_empty_n => start_for_merge_Loop_Write_Mat_U0_empty_n,
        if_read => merge_Loop_Write_Mat_U0_ap_ready);





    ap_sync_reg_merge_Block_crit_e_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_merge_Block_crit_e_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_merge_Block_crit_e_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_merge_Block_crit_e_U0_ap_ready <= ap_sync_merge_Block_crit_e_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready <= ap_sync_merge_Loop_Read_Mat_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    merge_Block_crit_e_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((merge_Block_crit_e_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                merge_Block_crit_e_U0_ap_ready_count <= std_logic_vector(unsigned(merge_Block_crit_e_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (merge_Block_crit_e_U0_ap_ready = ap_const_logic_1))) then 
                merge_Block_crit_e_U0_ap_ready_count <= std_logic_vector(unsigned(merge_Block_crit_e_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    merge_Loop_Read_Mat_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((merge_Loop_Read_Mat_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                merge_Loop_Read_Mat_U0_ap_ready_count <= std_logic_vector(unsigned(merge_Loop_Read_Mat_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (merge_Loop_Read_Mat_U0_ap_ready = ap_const_logic_1))) then 
                merge_Loop_Read_Mat_U0_ap_ready_count <= std_logic_vector(unsigned(merge_Loop_Read_Mat_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;
    ap_done <= merge_Loop_Write_Mat_U0_ap_done;
    ap_idle <= (xfChannelCombine_U0_ap_idle and merge_Loop_Write_Mat_U0_ap_idle and merge_Loop_Read_Mat_U0_ap_idle and merge_Block_crit_e_U0_ap_idle);
    ap_ready <= internal_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= merge_Loop_Write_Mat_U0_ap_done;
    ap_sync_merge_Block_crit_e_U0_ap_ready <= (merge_Block_crit_e_U0_ap_ready or ap_sync_reg_merge_Block_crit_e_U0_ap_ready);
    ap_sync_merge_Loop_Read_Mat_U0_ap_ready <= (merge_Loop_Read_Mat_U0_ap_ready or ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready);
    ap_sync_ready <= (ap_sync_merge_Loop_Read_Mat_U0_ap_ready and ap_sync_merge_Block_crit_e_U0_ap_ready);
    internal_ap_ready <= ap_sync_ready;
    merge_Block_crit_e_U0_ap_continue <= ap_const_logic_1;
    merge_Block_crit_e_U0_ap_start <= (real_start and (ap_sync_reg_merge_Block_crit_e_U0_ap_ready xor ap_const_logic_1));
    merge_Block_crit_e_U0_start_full_n <= ap_const_logic_1;
    merge_Block_crit_e_U0_start_write <= ap_const_logic_0;
    merge_Loop_Read_Mat_U0_ap_continue <= ap_const_logic_1;
    merge_Loop_Read_Mat_U0_ap_start <= (real_start and (ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready xor ap_const_logic_1));
    merge_Loop_Write_Mat_U0_ap_continue <= ap_continue;
    merge_Loop_Write_Mat_U0_ap_start <= start_for_merge_Loop_Write_Mat_U0_empty_n;
    merge_Loop_Write_Mat_U0_start_full_n <= ap_const_logic_1;
    merge_Loop_Write_Mat_U0_start_write <= ap_const_logic_0;
    p_dst_data_V_din <= merge_Loop_Write_Mat_U0_p_dst_data_V_din;
    p_dst_data_V_write <= merge_Loop_Write_Mat_U0_p_dst_data_V_write;
    p_src1_data_V_read <= merge_Loop_Read_Mat_U0_p_src1_data_V_read;
    p_src2_data_V_read <= merge_Loop_Read_Mat_U0_p_src2_data_V_read;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_for_merge_Loop_Write_Mat_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_xfChannelCombine_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    xfChannelCombine_U0_ap_continue <= ap_const_logic_1;
    xfChannelCombine_U0_ap_start <= start_for_xfChannelCombine_U0_empty_n;
end behav;
