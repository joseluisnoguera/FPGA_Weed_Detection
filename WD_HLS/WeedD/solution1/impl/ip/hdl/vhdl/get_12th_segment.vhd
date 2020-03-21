-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity get_12th_segment is
port (
    eroded_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    eroded_data_V_empty_n : IN STD_LOGIC;
    eroded_data_V_read : OUT STD_LOGIC;
    bottom_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    bottom_data_V_full_n : IN STD_LOGIC;
    bottom_data_V_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of get_12th_segment is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';

    signal get_12th_segment_Loo_U0_ap_start : STD_LOGIC;
    signal get_12th_segment_Loo_U0_ap_done : STD_LOGIC;
    signal get_12th_segment_Loo_U0_ap_continue : STD_LOGIC;
    signal get_12th_segment_Loo_U0_ap_idle : STD_LOGIC;
    signal get_12th_segment_Loo_U0_ap_ready : STD_LOGIC;
    signal get_12th_segment_Loo_U0_eroded_data_V_read : STD_LOGIC;
    signal get_12th_segment_Loo_U0_bottom_data_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal get_12th_segment_Loo_U0_bottom_data_V_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal get_12th_segment_Loo_U0_start_full_n : STD_LOGIC;
    signal get_12th_segment_Loo_U0_start_write : STD_LOGIC;

    component get_12th_segment_Loo IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        eroded_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        eroded_data_V_empty_n : IN STD_LOGIC;
        eroded_data_V_read : OUT STD_LOGIC;
        bottom_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        bottom_data_V_full_n : IN STD_LOGIC;
        bottom_data_V_write : OUT STD_LOGIC );
    end component;



begin
    get_12th_segment_Loo_U0 : component get_12th_segment_Loo
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => get_12th_segment_Loo_U0_ap_start,
        ap_done => get_12th_segment_Loo_U0_ap_done,
        ap_continue => get_12th_segment_Loo_U0_ap_continue,
        ap_idle => get_12th_segment_Loo_U0_ap_idle,
        ap_ready => get_12th_segment_Loo_U0_ap_ready,
        eroded_data_V_dout => eroded_data_V_dout,
        eroded_data_V_empty_n => eroded_data_V_empty_n,
        eroded_data_V_read => get_12th_segment_Loo_U0_eroded_data_V_read,
        bottom_data_V_din => get_12th_segment_Loo_U0_bottom_data_V_din,
        bottom_data_V_full_n => bottom_data_V_full_n,
        bottom_data_V_write => get_12th_segment_Loo_U0_bottom_data_V_write);




    ap_done <= get_12th_segment_Loo_U0_ap_done;
    ap_idle <= get_12th_segment_Loo_U0_ap_idle;
    ap_ready <= get_12th_segment_Loo_U0_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= get_12th_segment_Loo_U0_ap_done;
    ap_sync_ready <= get_12th_segment_Loo_U0_ap_ready;
    bottom_data_V_din <= get_12th_segment_Loo_U0_bottom_data_V_din;
    bottom_data_V_write <= get_12th_segment_Loo_U0_bottom_data_V_write;
    eroded_data_V_read <= get_12th_segment_Loo_U0_eroded_data_V_read;
    get_12th_segment_Loo_U0_ap_continue <= ap_continue;
    get_12th_segment_Loo_U0_ap_start <= ap_start;
    get_12th_segment_Loo_U0_start_full_n <= ap_const_logic_1;
    get_12th_segment_Loo_U0_start_write <= ap_const_logic_0;
end behav;