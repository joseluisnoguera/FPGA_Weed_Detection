-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity duplicateMat is
port (
    p_src_data_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
    p_src_data_V_empty_n : IN STD_LOGIC;
    p_src_data_V_read : OUT STD_LOGIC;
    p_dst1_data_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    p_dst1_data_V_full_n : IN STD_LOGIC;
    p_dst1_data_V_write : OUT STD_LOGIC;
    p_dst2_data_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    p_dst2_data_V_full_n : IN STD_LOGIC;
    p_dst2_data_V_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of duplicateMat is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal duplicateMat_Block_1_U0_ap_start : STD_LOGIC;
    signal duplicateMat_Block_1_U0_ap_done : STD_LOGIC;
    signal duplicateMat_Block_1_U0_ap_continue : STD_LOGIC;
    signal duplicateMat_Block_1_U0_ap_idle : STD_LOGIC;
    signal duplicateMat_Block_1_U0_ap_ready : STD_LOGIC;
    signal duplicateMat_Block_1_U0_p_src_cols_load10_out_out_din : STD_LOGIC_VECTOR (9 downto 0);
    signal duplicateMat_Block_1_U0_p_src_cols_load10_out_out_write : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_ap_start : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_ap_done : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_ap_continue : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_ap_idle : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_ap_ready : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_start_out : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_start_write : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_read : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_p_src_data_V_read : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_src_V_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal duplicateMat_Loop_Re_1_U0_src_V_V_write : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_out_din : STD_LOGIC_VECTOR (9 downto 0);
    signal duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_out_write : STD_LOGIC;
    signal xFDuplicate_U0_ap_start : STD_LOGIC;
    signal xFDuplicate_U0_ap_done : STD_LOGIC;
    signal xFDuplicate_U0_ap_continue : STD_LOGIC;
    signal xFDuplicate_U0_ap_idle : STD_LOGIC;
    signal xFDuplicate_U0_ap_ready : STD_LOGIC;
    signal xFDuplicate_U0_start_out : STD_LOGIC;
    signal xFDuplicate_U0_start_write : STD_LOGIC;
    signal xFDuplicate_U0_p_src_mat_V_V_read : STD_LOGIC;
    signal xFDuplicate_U0_p_dst1_mat_V_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal xFDuplicate_U0_p_dst1_mat_V_V_write : STD_LOGIC;
    signal xFDuplicate_U0_p_dst2_mat_V_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal xFDuplicate_U0_p_dst2_mat_V_V_write : STD_LOGIC;
    signal xFDuplicate_U0_p_src_cols_load10_loc_read : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_ap_start : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_ap_done : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_ap_continue : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_ap_idle : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_ap_ready : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_dst_V_V_read : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_p_dst1_data_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal duplicateMat_Loop_2_1_U0_p_dst1_data_V_write : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_dst1_V_V_read : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_p_dst2_data_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal duplicateMat_Loop_2_1_U0_p_dst2_data_V_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal p_src_cols_load10_loc_2_full_n : STD_LOGIC;
    signal p_src_cols_load10_loc_2_dout : STD_LOGIC_VECTOR (9 downto 0);
    signal p_src_cols_load10_loc_2_empty_n : STD_LOGIC;
    signal src_V_V_full_n : STD_LOGIC;
    signal src_V_V_dout : STD_LOGIC_VECTOR (23 downto 0);
    signal src_V_V_empty_n : STD_LOGIC;
    signal p_src_cols_load10_loc_full_n : STD_LOGIC;
    signal p_src_cols_load10_loc_dout : STD_LOGIC_VECTOR (9 downto 0);
    signal p_src_cols_load10_loc_empty_n : STD_LOGIC;
    signal dst_V_V_full_n : STD_LOGIC;
    signal dst_V_V_dout : STD_LOGIC_VECTOR (23 downto 0);
    signal dst_V_V_empty_n : STD_LOGIC;
    signal dst1_V_V_full_n : STD_LOGIC;
    signal dst1_V_V_dout : STD_LOGIC_VECTOR (23 downto 0);
    signal dst1_V_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_duplicateMat_Block_1_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_duplicateMat_Block_1_U0_ap_ready : STD_LOGIC;
    signal duplicateMat_Block_1_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_duplicateMat_Loop_Re_1_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_duplicateMat_Loop_Re_1_U0_ap_ready : STD_LOGIC;
    signal duplicateMat_Loop_Re_1_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal duplicateMat_Block_1_U0_start_full_n : STD_LOGIC;
    signal duplicateMat_Block_1_U0_start_write : STD_LOGIC;
    signal start_for_xFDuplicate_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFDuplicate_U0_full_n : STD_LOGIC;
    signal start_for_xFDuplicate_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFDuplicate_U0_empty_n : STD_LOGIC;
    signal start_for_duplicateMat_Loop_2_1_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_duplicateMat_Loop_2_1_U0_full_n : STD_LOGIC;
    signal start_for_duplicateMat_Loop_2_1_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_duplicateMat_Loop_2_1_U0_empty_n : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_start_full_n : STD_LOGIC;
    signal duplicateMat_Loop_2_1_U0_start_write : STD_LOGIC;

    component duplicateMat_Block_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_src_cols_load10_out_out_din : OUT STD_LOGIC_VECTOR (9 downto 0);
        p_src_cols_load10_out_out_full_n : IN STD_LOGIC;
        p_src_cols_load10_out_out_write : OUT STD_LOGIC );
    end component;


    component duplicateMat_Loop_Re_1 IS
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
        p_src_cols_load10_loc_dout : IN STD_LOGIC_VECTOR (9 downto 0);
        p_src_cols_load10_loc_empty_n : IN STD_LOGIC;
        p_src_cols_load10_loc_read : OUT STD_LOGIC;
        p_src_data_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        p_src_data_V_empty_n : IN STD_LOGIC;
        p_src_data_V_read : OUT STD_LOGIC;
        src_V_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        src_V_V_full_n : IN STD_LOGIC;
        src_V_V_write : OUT STD_LOGIC;
        p_src_cols_load10_loc_out_din : OUT STD_LOGIC_VECTOR (9 downto 0);
        p_src_cols_load10_loc_out_full_n : IN STD_LOGIC;
        p_src_cols_load10_loc_out_write : OUT STD_LOGIC );
    end component;


    component xFDuplicate IS
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
        p_src_mat_V_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        p_src_mat_V_V_empty_n : IN STD_LOGIC;
        p_src_mat_V_V_read : OUT STD_LOGIC;
        p_dst1_mat_V_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        p_dst1_mat_V_V_full_n : IN STD_LOGIC;
        p_dst1_mat_V_V_write : OUT STD_LOGIC;
        p_dst2_mat_V_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        p_dst2_mat_V_V_full_n : IN STD_LOGIC;
        p_dst2_mat_V_V_write : OUT STD_LOGIC;
        p_src_cols_load10_loc_dout : IN STD_LOGIC_VECTOR (9 downto 0);
        p_src_cols_load10_loc_empty_n : IN STD_LOGIC;
        p_src_cols_load10_loc_read : OUT STD_LOGIC );
    end component;


    component duplicateMat_Loop_2_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        dst_V_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        dst_V_V_empty_n : IN STD_LOGIC;
        dst_V_V_read : OUT STD_LOGIC;
        p_dst1_data_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        p_dst1_data_V_full_n : IN STD_LOGIC;
        p_dst1_data_V_write : OUT STD_LOGIC;
        dst1_V_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        dst1_V_V_empty_n : IN STD_LOGIC;
        dst1_V_V_read : OUT STD_LOGIC;
        p_dst2_data_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        p_dst2_data_V_full_n : IN STD_LOGIC;
        p_dst2_data_V_write : OUT STD_LOGIC );
    end component;


    component fifo_w10_d2_A_x IS
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


    component fifo_w24_d2_A_x0 IS
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


    component start_for_xFDuplincg IS
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


    component start_for_duplicaocq IS
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
    duplicateMat_Block_1_U0 : component duplicateMat_Block_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => duplicateMat_Block_1_U0_ap_start,
        ap_done => duplicateMat_Block_1_U0_ap_done,
        ap_continue => duplicateMat_Block_1_U0_ap_continue,
        ap_idle => duplicateMat_Block_1_U0_ap_idle,
        ap_ready => duplicateMat_Block_1_U0_ap_ready,
        p_src_cols_load10_out_out_din => duplicateMat_Block_1_U0_p_src_cols_load10_out_out_din,
        p_src_cols_load10_out_out_full_n => p_src_cols_load10_loc_2_full_n,
        p_src_cols_load10_out_out_write => duplicateMat_Block_1_U0_p_src_cols_load10_out_out_write);

    duplicateMat_Loop_Re_1_U0 : component duplicateMat_Loop_Re_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => duplicateMat_Loop_Re_1_U0_ap_start,
        start_full_n => start_for_xFDuplicate_U0_full_n,
        ap_done => duplicateMat_Loop_Re_1_U0_ap_done,
        ap_continue => duplicateMat_Loop_Re_1_U0_ap_continue,
        ap_idle => duplicateMat_Loop_Re_1_U0_ap_idle,
        ap_ready => duplicateMat_Loop_Re_1_U0_ap_ready,
        start_out => duplicateMat_Loop_Re_1_U0_start_out,
        start_write => duplicateMat_Loop_Re_1_U0_start_write,
        p_src_cols_load10_loc_dout => p_src_cols_load10_loc_2_dout,
        p_src_cols_load10_loc_empty_n => p_src_cols_load10_loc_2_empty_n,
        p_src_cols_load10_loc_read => duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_read,
        p_src_data_V_dout => p_src_data_V_dout,
        p_src_data_V_empty_n => p_src_data_V_empty_n,
        p_src_data_V_read => duplicateMat_Loop_Re_1_U0_p_src_data_V_read,
        src_V_V_din => duplicateMat_Loop_Re_1_U0_src_V_V_din,
        src_V_V_full_n => src_V_V_full_n,
        src_V_V_write => duplicateMat_Loop_Re_1_U0_src_V_V_write,
        p_src_cols_load10_loc_out_din => duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_out_din,
        p_src_cols_load10_loc_out_full_n => p_src_cols_load10_loc_full_n,
        p_src_cols_load10_loc_out_write => duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_out_write);

    xFDuplicate_U0 : component xFDuplicate
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => xFDuplicate_U0_ap_start,
        start_full_n => start_for_duplicateMat_Loop_2_1_U0_full_n,
        ap_done => xFDuplicate_U0_ap_done,
        ap_continue => xFDuplicate_U0_ap_continue,
        ap_idle => xFDuplicate_U0_ap_idle,
        ap_ready => xFDuplicate_U0_ap_ready,
        start_out => xFDuplicate_U0_start_out,
        start_write => xFDuplicate_U0_start_write,
        p_src_mat_V_V_dout => src_V_V_dout,
        p_src_mat_V_V_empty_n => src_V_V_empty_n,
        p_src_mat_V_V_read => xFDuplicate_U0_p_src_mat_V_V_read,
        p_dst1_mat_V_V_din => xFDuplicate_U0_p_dst1_mat_V_V_din,
        p_dst1_mat_V_V_full_n => dst_V_V_full_n,
        p_dst1_mat_V_V_write => xFDuplicate_U0_p_dst1_mat_V_V_write,
        p_dst2_mat_V_V_din => xFDuplicate_U0_p_dst2_mat_V_V_din,
        p_dst2_mat_V_V_full_n => dst1_V_V_full_n,
        p_dst2_mat_V_V_write => xFDuplicate_U0_p_dst2_mat_V_V_write,
        p_src_cols_load10_loc_dout => p_src_cols_load10_loc_dout,
        p_src_cols_load10_loc_empty_n => p_src_cols_load10_loc_empty_n,
        p_src_cols_load10_loc_read => xFDuplicate_U0_p_src_cols_load10_loc_read);

    duplicateMat_Loop_2_1_U0 : component duplicateMat_Loop_2_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => duplicateMat_Loop_2_1_U0_ap_start,
        ap_done => duplicateMat_Loop_2_1_U0_ap_done,
        ap_continue => duplicateMat_Loop_2_1_U0_ap_continue,
        ap_idle => duplicateMat_Loop_2_1_U0_ap_idle,
        ap_ready => duplicateMat_Loop_2_1_U0_ap_ready,
        dst_V_V_dout => dst_V_V_dout,
        dst_V_V_empty_n => dst_V_V_empty_n,
        dst_V_V_read => duplicateMat_Loop_2_1_U0_dst_V_V_read,
        p_dst1_data_V_din => duplicateMat_Loop_2_1_U0_p_dst1_data_V_din,
        p_dst1_data_V_full_n => p_dst1_data_V_full_n,
        p_dst1_data_V_write => duplicateMat_Loop_2_1_U0_p_dst1_data_V_write,
        dst1_V_V_dout => dst1_V_V_dout,
        dst1_V_V_empty_n => dst1_V_V_empty_n,
        dst1_V_V_read => duplicateMat_Loop_2_1_U0_dst1_V_V_read,
        p_dst2_data_V_din => duplicateMat_Loop_2_1_U0_p_dst2_data_V_din,
        p_dst2_data_V_full_n => p_dst2_data_V_full_n,
        p_dst2_data_V_write => duplicateMat_Loop_2_1_U0_p_dst2_data_V_write);

    p_src_cols_load10_loc_2_U : component fifo_w10_d2_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => duplicateMat_Block_1_U0_p_src_cols_load10_out_out_din,
        if_full_n => p_src_cols_load10_loc_2_full_n,
        if_write => duplicateMat_Block_1_U0_p_src_cols_load10_out_out_write,
        if_dout => p_src_cols_load10_loc_2_dout,
        if_empty_n => p_src_cols_load10_loc_2_empty_n,
        if_read => duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_read);

    src_V_V_U : component fifo_w24_d2_A_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => duplicateMat_Loop_Re_1_U0_src_V_V_din,
        if_full_n => src_V_V_full_n,
        if_write => duplicateMat_Loop_Re_1_U0_src_V_V_write,
        if_dout => src_V_V_dout,
        if_empty_n => src_V_V_empty_n,
        if_read => xFDuplicate_U0_p_src_mat_V_V_read);

    p_src_cols_load10_loc_U : component fifo_w10_d2_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_out_din,
        if_full_n => p_src_cols_load10_loc_full_n,
        if_write => duplicateMat_Loop_Re_1_U0_p_src_cols_load10_loc_out_write,
        if_dout => p_src_cols_load10_loc_dout,
        if_empty_n => p_src_cols_load10_loc_empty_n,
        if_read => xFDuplicate_U0_p_src_cols_load10_loc_read);

    dst_V_V_U : component fifo_w24_d2_A_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFDuplicate_U0_p_dst1_mat_V_V_din,
        if_full_n => dst_V_V_full_n,
        if_write => xFDuplicate_U0_p_dst1_mat_V_V_write,
        if_dout => dst_V_V_dout,
        if_empty_n => dst_V_V_empty_n,
        if_read => duplicateMat_Loop_2_1_U0_dst_V_V_read);

    dst1_V_V_U : component fifo_w24_d2_A_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFDuplicate_U0_p_dst2_mat_V_V_din,
        if_full_n => dst1_V_V_full_n,
        if_write => xFDuplicate_U0_p_dst2_mat_V_V_write,
        if_dout => dst1_V_V_dout,
        if_empty_n => dst1_V_V_empty_n,
        if_read => duplicateMat_Loop_2_1_U0_dst1_V_V_read);

    start_for_xFDuplincg_U : component start_for_xFDuplincg
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_xFDuplicate_U0_din,
        if_full_n => start_for_xFDuplicate_U0_full_n,
        if_write => duplicateMat_Loop_Re_1_U0_start_write,
        if_dout => start_for_xFDuplicate_U0_dout,
        if_empty_n => start_for_xFDuplicate_U0_empty_n,
        if_read => xFDuplicate_U0_ap_ready);

    start_for_duplicaocq_U : component start_for_duplicaocq
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_duplicateMat_Loop_2_1_U0_din,
        if_full_n => start_for_duplicateMat_Loop_2_1_U0_full_n,
        if_write => xFDuplicate_U0_start_write,
        if_dout => start_for_duplicateMat_Loop_2_1_U0_dout,
        if_empty_n => start_for_duplicateMat_Loop_2_1_U0_empty_n,
        if_read => duplicateMat_Loop_2_1_U0_ap_ready);





    ap_sync_reg_duplicateMat_Block_1_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_duplicateMat_Block_1_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_duplicateMat_Block_1_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_duplicateMat_Block_1_U0_ap_ready <= ap_sync_duplicateMat_Block_1_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_duplicateMat_Loop_Re_1_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_duplicateMat_Loop_Re_1_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_duplicateMat_Loop_Re_1_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_duplicateMat_Loop_Re_1_U0_ap_ready <= ap_sync_duplicateMat_Loop_Re_1_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    duplicateMat_Block_1_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((duplicateMat_Block_1_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                duplicateMat_Block_1_U0_ap_ready_count <= std_logic_vector(unsigned(duplicateMat_Block_1_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (duplicateMat_Block_1_U0_ap_ready = ap_const_logic_1))) then 
                duplicateMat_Block_1_U0_ap_ready_count <= std_logic_vector(unsigned(duplicateMat_Block_1_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    duplicateMat_Loop_Re_1_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((duplicateMat_Loop_Re_1_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                duplicateMat_Loop_Re_1_U0_ap_ready_count <= std_logic_vector(unsigned(duplicateMat_Loop_Re_1_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (duplicateMat_Loop_Re_1_U0_ap_ready = ap_const_logic_1))) then 
                duplicateMat_Loop_Re_1_U0_ap_ready_count <= std_logic_vector(unsigned(duplicateMat_Loop_Re_1_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;
    ap_done <= duplicateMat_Loop_2_1_U0_ap_done;
    ap_idle <= (xFDuplicate_U0_ap_idle and duplicateMat_Loop_Re_1_U0_ap_idle and duplicateMat_Loop_2_1_U0_ap_idle and duplicateMat_Block_1_U0_ap_idle);
    ap_ready <= ap_sync_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= duplicateMat_Loop_2_1_U0_ap_done;
    ap_sync_duplicateMat_Block_1_U0_ap_ready <= (duplicateMat_Block_1_U0_ap_ready or ap_sync_reg_duplicateMat_Block_1_U0_ap_ready);
    ap_sync_duplicateMat_Loop_Re_1_U0_ap_ready <= (duplicateMat_Loop_Re_1_U0_ap_ready or ap_sync_reg_duplicateMat_Loop_Re_1_U0_ap_ready);
    ap_sync_ready <= (ap_sync_duplicateMat_Loop_Re_1_U0_ap_ready and ap_sync_duplicateMat_Block_1_U0_ap_ready);
    duplicateMat_Block_1_U0_ap_continue <= ap_const_logic_1;
    duplicateMat_Block_1_U0_ap_start <= ((ap_sync_reg_duplicateMat_Block_1_U0_ap_ready xor ap_const_logic_1) and ap_start);
    duplicateMat_Block_1_U0_start_full_n <= ap_const_logic_1;
    duplicateMat_Block_1_U0_start_write <= ap_const_logic_0;
    duplicateMat_Loop_2_1_U0_ap_continue <= ap_continue;
    duplicateMat_Loop_2_1_U0_ap_start <= start_for_duplicateMat_Loop_2_1_U0_empty_n;
    duplicateMat_Loop_2_1_U0_start_full_n <= ap_const_logic_1;
    duplicateMat_Loop_2_1_U0_start_write <= ap_const_logic_0;
    duplicateMat_Loop_Re_1_U0_ap_continue <= ap_const_logic_1;
    duplicateMat_Loop_Re_1_U0_ap_start <= ((ap_sync_reg_duplicateMat_Loop_Re_1_U0_ap_ready xor ap_const_logic_1) and ap_start);
    p_dst1_data_V_din <= duplicateMat_Loop_2_1_U0_p_dst1_data_V_din;
    p_dst1_data_V_write <= duplicateMat_Loop_2_1_U0_p_dst1_data_V_write;
    p_dst2_data_V_din <= duplicateMat_Loop_2_1_U0_p_dst2_data_V_din;
    p_dst2_data_V_write <= duplicateMat_Loop_2_1_U0_p_dst2_data_V_write;
    p_src_data_V_read <= duplicateMat_Loop_Re_1_U0_p_src_data_V_read;
    start_for_duplicateMat_Loop_2_1_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_xFDuplicate_U0_din <= (0=>ap_const_logic_1, others=>'-');
    xFDuplicate_U0_ap_continue <= ap_const_logic_1;
    xFDuplicate_U0_ap_start <= start_for_xFDuplicate_U0_empty_n;
end behav;
