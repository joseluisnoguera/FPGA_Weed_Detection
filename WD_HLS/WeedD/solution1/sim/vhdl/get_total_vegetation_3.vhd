-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity get_total_vegetation_3 is
port (
    agg_result_V : OUT STD_LOGIC_VECTOR (23 downto 0);
    img_in_data_V_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    img_in_data_V_ce0 : OUT STD_LOGIC;
    img_in_data_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_in_data_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    img_in_data_V_we0 : OUT STD_LOGIC;
    img_in_data_V_address1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    img_in_data_V_ce1 : OUT STD_LOGIC;
    img_in_data_V_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_in_data_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    img_in_data_V_we1 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    agg_result_V_ap_vld : OUT STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    img_in_data_V_i_address0 : IN STD_LOGIC_VECTOR (15 downto 0);
    img_in_data_V_i_ce0 : IN STD_LOGIC;
    img_in_data_V_i_q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_in_data_V_t_address0 : IN STD_LOGIC_VECTOR (15 downto 0);
    img_in_data_V_t_ce0 : IN STD_LOGIC;
    img_in_data_V_t_q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of get_total_vegetation_3 is 
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal get_total_vegetation_U0_ap_start : STD_LOGIC;
    signal get_total_vegetation_U0_ap_done : STD_LOGIC;
    signal get_total_vegetation_U0_ap_continue : STD_LOGIC;
    signal get_total_vegetation_U0_ap_idle : STD_LOGIC;
    signal get_total_vegetation_U0_ap_ready : STD_LOGIC;
    signal get_total_vegetation_U0_img_in_data_V_address0 : STD_LOGIC_VECTOR (15 downto 0);
    signal get_total_vegetation_U0_img_in_data_V_ce0 : STD_LOGIC;
    signal get_total_vegetation_U0_ap_return : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_channel_done_p_Val2_loc_channel : STD_LOGIC;
    signal p_Val2_loc_channel_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_p_Val2_loc_channel : STD_LOGIC := '0';
    signal ap_sync_channel_write_p_Val2_loc_channel : STD_LOGIC;
    signal ap_channel_done_img_in_data_V : STD_LOGIC;
    signal get_total_vegetation_U0_img_in_data_V_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_img_in_data_V : STD_LOGIC := '0';
    signal ap_sync_channel_write_img_in_data_V : STD_LOGIC;
    signal get_total_vegetation_1_U0_ap_start : STD_LOGIC;
    signal get_total_vegetation_1_U0_ap_done : STD_LOGIC;
    signal get_total_vegetation_1_U0_ap_continue : STD_LOGIC;
    signal get_total_vegetation_1_U0_ap_idle : STD_LOGIC;
    signal get_total_vegetation_1_U0_ap_ready : STD_LOGIC;
    signal get_total_vegetation_1_U0_img_in_data_V_address0 : STD_LOGIC_VECTOR (15 downto 0);
    signal get_total_vegetation_1_U0_img_in_data_V_ce0 : STD_LOGIC;
    signal get_total_vegetation_1_U0_ap_return : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_channel_done_p_Val2_19_loc_chan : STD_LOGIC;
    signal p_Val2_19_loc_chan_full_n : STD_LOGIC;
    signal get_total_vegetation_2_U0_ap_start : STD_LOGIC;
    signal get_total_vegetation_2_U0_ap_done : STD_LOGIC;
    signal get_total_vegetation_2_U0_ap_continue : STD_LOGIC;
    signal get_total_vegetation_2_U0_ap_idle : STD_LOGIC;
    signal get_total_vegetation_2_U0_ap_ready : STD_LOGIC;
    signal get_total_vegetation_2_U0_agg_result_V : STD_LOGIC_VECTOR (23 downto 0);
    signal get_total_vegetation_2_U0_agg_result_V_ap_vld : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal img_in_data_V_i_full_n : STD_LOGIC;
    signal img_in_data_V_t_empty_n : STD_LOGIC;
    signal img_in_data_V_i_address0_x : STD_LOGIC_VECTOR (15 downto 0);
    signal img_in_data_V_i_ce0_x : STD_LOGIC;
    signal img_in_data_V_i_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal img_in_data_V_i_q0_x : STD_LOGIC_VECTOR (7 downto 0);
    signal img_in_data_V_i_we0 : STD_LOGIC;
    signal img_in_data_V_t_address0_x : STD_LOGIC_VECTOR (15 downto 0);
    signal img_in_data_V_t_ce0_x : STD_LOGIC;
    signal img_in_data_V_t_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal img_in_data_V_t_q0_x : STD_LOGIC_VECTOR (7 downto 0);
    signal img_in_data_V_t_we0 : STD_LOGIC;
    signal p_Val2_loc_channel_dout : STD_LOGIC_VECTOR (23 downto 0);
    signal p_Val2_loc_channel_empty_n : STD_LOGIC;
    signal p_Val2_19_loc_chan_dout : STD_LOGIC_VECTOR (23 downto 0);
    signal p_Val2_19_loc_chan_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal get_total_vegetation_U0_start_full_n : STD_LOGIC;
    signal get_total_vegetation_U0_start_write : STD_LOGIC;
    signal get_total_vegetation_1_U0_start_full_n : STD_LOGIC;
    signal get_total_vegetation_1_U0_start_write : STD_LOGIC;
    signal get_total_vegetation_2_U0_start_full_n : STD_LOGIC;
    signal get_total_vegetation_2_U0_start_write : STD_LOGIC;

    component get_total_vegetation IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_in_data_V_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        img_in_data_V_ce0 : OUT STD_LOGIC;
        img_in_data_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component get_total_vegetation_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_in_data_V_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        img_in_data_V_ce0 : OUT STD_LOGIC;
        img_in_data_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component get_total_vegetation_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (23 downto 0);
        p_read1 : IN STD_LOGIC_VECTOR (23 downto 0);
        agg_result_V : OUT STD_LOGIC_VECTOR (23 downto 0);
        agg_result_V_ap_vld : OUT STD_LOGIC );
    end component;


    component get_total_vegetatBew IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        i_address0 : IN STD_LOGIC_VECTOR (15 downto 0);
        i_ce0 : IN STD_LOGIC;
        i_q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        t_address0 : IN STD_LOGIC_VECTOR (15 downto 0);
        t_ce0 : IN STD_LOGIC;
        t_q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        i_ce : IN STD_LOGIC;
        t_ce : IN STD_LOGIC;
        i_full_n : OUT STD_LOGIC;
        i_write : IN STD_LOGIC;
        t_empty_n : OUT STD_LOGIC;
        t_read : IN STD_LOGIC );
    end component;


    component fifo_w24_d2_A_x2 IS
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



begin
    get_total_vegetation_U0 : component get_total_vegetation
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => get_total_vegetation_U0_ap_start,
        ap_done => get_total_vegetation_U0_ap_done,
        ap_continue => get_total_vegetation_U0_ap_continue,
        ap_idle => get_total_vegetation_U0_ap_idle,
        ap_ready => get_total_vegetation_U0_ap_ready,
        img_in_data_V_address0 => get_total_vegetation_U0_img_in_data_V_address0,
        img_in_data_V_ce0 => get_total_vegetation_U0_img_in_data_V_ce0,
        img_in_data_V_q0 => img_in_data_V_i_q0_x,
        ap_return => get_total_vegetation_U0_ap_return);

    get_total_vegetation_1_U0 : component get_total_vegetation_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => get_total_vegetation_1_U0_ap_start,
        ap_done => get_total_vegetation_1_U0_ap_done,
        ap_continue => get_total_vegetation_1_U0_ap_continue,
        ap_idle => get_total_vegetation_1_U0_ap_idle,
        ap_ready => get_total_vegetation_1_U0_ap_ready,
        img_in_data_V_address0 => get_total_vegetation_1_U0_img_in_data_V_address0,
        img_in_data_V_ce0 => get_total_vegetation_1_U0_img_in_data_V_ce0,
        img_in_data_V_q0 => img_in_data_V_t_q0_x,
        ap_return => get_total_vegetation_1_U0_ap_return);

    get_total_vegetation_2_U0 : component get_total_vegetation_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => get_total_vegetation_2_U0_ap_start,
        ap_done => get_total_vegetation_2_U0_ap_done,
        ap_continue => get_total_vegetation_2_U0_ap_continue,
        ap_idle => get_total_vegetation_2_U0_ap_idle,
        ap_ready => get_total_vegetation_2_U0_ap_ready,
        p_read => p_Val2_loc_channel_dout,
        p_read1 => p_Val2_19_loc_chan_dout,
        agg_result_V => get_total_vegetation_2_U0_agg_result_V,
        agg_result_V_ap_vld => get_total_vegetation_2_U0_agg_result_V_ap_vld);

    img_in_data_V_U : component get_total_vegetatBew
    generic map (
        DataWidth => 8,
        AddressRange => 57600,
        AddressWidth => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        i_address0 => img_in_data_V_i_address0,
        i_ce0 => img_in_data_V_i_ce0,
        i_q0 => img_in_data_V_i_q0,
        t_address0 => img_in_data_V_t_address0,
        t_ce0 => img_in_data_V_t_ce0,
        t_q0 => img_in_data_V_t_q0,
        i_ce => ap_const_logic_1,
        t_ce => ap_const_logic_1,
        i_full_n => img_in_data_V_i_full_n,
        i_write => get_total_vegetation_U0_ap_done,
        t_empty_n => img_in_data_V_t_empty_n,
        t_read => get_total_vegetation_1_U0_ap_ready);

    p_Val2_loc_channel_U : component fifo_w24_d2_A_x2
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => get_total_vegetation_U0_ap_return,
        if_full_n => p_Val2_loc_channel_full_n,
        if_write => ap_channel_done_p_Val2_loc_channel,
        if_dout => p_Val2_loc_channel_dout,
        if_empty_n => p_Val2_loc_channel_empty_n,
        if_read => get_total_vegetation_2_U0_ap_ready);

    p_Val2_19_loc_chan_U : component fifo_w24_d2_A_x2
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => get_total_vegetation_1_U0_ap_return,
        if_full_n => p_Val2_19_loc_chan_full_n,
        if_write => get_total_vegetation_1_U0_ap_done,
        if_dout => p_Val2_19_loc_chan_dout,
        if_empty_n => p_Val2_19_loc_chan_empty_n,
        if_read => get_total_vegetation_2_U0_ap_ready);





    ap_sync_reg_channel_write_img_in_data_V_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_img_in_data_V <= ap_const_logic_0;
            else
                if (((get_total_vegetation_U0_ap_done and get_total_vegetation_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_img_in_data_V <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_img_in_data_V <= ap_sync_channel_write_img_in_data_V;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_p_Val2_loc_channel_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_p_Val2_loc_channel <= ap_const_logic_0;
            else
                if (((get_total_vegetation_U0_ap_done and get_total_vegetation_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_p_Val2_loc_channel <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_p_Val2_loc_channel <= ap_sync_channel_write_p_Val2_loc_channel;
                end if; 
            end if;
        end if;
    end process;

    agg_result_V <= get_total_vegetation_2_U0_agg_result_V;
    agg_result_V_ap_vld <= get_total_vegetation_2_U0_agg_result_V_ap_vld;
    ap_channel_done_img_in_data_V <= (get_total_vegetation_U0_ap_done and (ap_sync_reg_channel_write_img_in_data_V xor ap_const_logic_1));
    ap_channel_done_p_Val2_19_loc_chan <= get_total_vegetation_1_U0_ap_done;
    ap_channel_done_p_Val2_loc_channel <= (get_total_vegetation_U0_ap_done and (ap_sync_reg_channel_write_p_Val2_loc_channel xor ap_const_logic_1));
    ap_done <= get_total_vegetation_2_U0_ap_done;
    ap_idle <= (get_total_vegetation_U0_ap_idle and get_total_vegetation_2_U0_ap_idle and get_total_vegetation_1_U0_ap_idle and (img_in_data_V_t_empty_n xor ap_const_logic_1) and (p_Val2_19_loc_chan_empty_n xor ap_const_logic_1) and (p_Val2_loc_channel_empty_n xor ap_const_logic_1));
    ap_ready <= get_total_vegetation_2_U0_ap_done;
    ap_sync_channel_write_img_in_data_V <= ((get_total_vegetation_U0_img_in_data_V_full_n and ap_channel_done_img_in_data_V) or ap_sync_reg_channel_write_img_in_data_V);
    ap_sync_channel_write_p_Val2_loc_channel <= ((p_Val2_loc_channel_full_n and ap_channel_done_p_Val2_loc_channel) or ap_sync_reg_channel_write_p_Val2_loc_channel);
    ap_sync_continue <= ap_continue;
    ap_sync_done <= get_total_vegetation_2_U0_ap_done;
    ap_sync_ready <= ap_sync_done;
    get_total_vegetation_1_U0_ap_continue <= p_Val2_19_loc_chan_full_n;
    get_total_vegetation_1_U0_ap_start <= img_in_data_V_t_empty_n;
    get_total_vegetation_1_U0_start_full_n <= ap_const_logic_1;
    get_total_vegetation_1_U0_start_write <= ap_const_logic_0;
    get_total_vegetation_2_U0_ap_continue <= ap_continue;
    get_total_vegetation_2_U0_ap_start <= (p_Val2_loc_channel_empty_n and p_Val2_19_loc_chan_empty_n);
    get_total_vegetation_2_U0_start_full_n <= ap_const_logic_1;
    get_total_vegetation_2_U0_start_write <= ap_const_logic_0;
    get_total_vegetation_U0_ap_continue <= (ap_sync_channel_write_p_Val2_loc_channel and ap_sync_channel_write_img_in_data_V);
    get_total_vegetation_U0_ap_start <= ap_const_logic_1;
    get_total_vegetation_U0_img_in_data_V_full_n <= img_in_data_V_i_full_n;
    get_total_vegetation_U0_start_full_n <= ap_const_logic_1;
    get_total_vegetation_U0_start_write <= ap_const_logic_0;
    img_in_data_V_address0 <= ap_const_lv16_0;
    img_in_data_V_address1 <= ap_const_lv16_0;
    img_in_data_V_ce0 <= ap_const_logic_0;
    img_in_data_V_ce1 <= ap_const_logic_0;
    img_in_data_V_d0 <= ap_const_lv8_0;
    img_in_data_V_d1 <= ap_const_lv8_0;
    img_in_data_V_i_address0_x <= get_total_vegetation_U0_img_in_data_V_address0;
    img_in_data_V_i_ce0_x <= get_total_vegetation_U0_img_in_data_V_ce0;
    img_in_data_V_i_d0 <= ap_const_lv8_0;
    img_in_data_V_i_q0_x <= ap_const_lv8_0;
    img_in_data_V_i_we0 <= ap_const_logic_0;
    img_in_data_V_t_address0_x <= get_total_vegetation_1_U0_img_in_data_V_address0;
    img_in_data_V_t_ce0_x <= get_total_vegetation_1_U0_img_in_data_V_ce0;
    img_in_data_V_t_d0 <= ap_const_lv8_0;
    img_in_data_V_t_q0_x <= ap_const_lv8_0;
    img_in_data_V_t_we0 <= ap_const_logic_0;
    img_in_data_V_we0 <= ap_const_logic_0;
    img_in_data_V_we1 <= ap_const_logic_0;
end behav;
