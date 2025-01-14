-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ip_accel_app is
port (
    stream_in_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    stream_in_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    stream_in_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    stream_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    stream_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    stream_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    stream_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    stream_out_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    stream_out_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    stream_out_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    stream_out_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    stream_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    stream_out_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    stream_out_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    stream_in_TVALID : IN STD_LOGIC;
    stream_in_TREADY : OUT STD_LOGIC;
    stream_out_TVALID : OUT STD_LOGIC;
    stream_out_TREADY : IN STD_LOGIC );
end;


architecture behav of ip_accel_app is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ip_accel_app,hls_ip_2019_2_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=50.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=43.397000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=117,HLS_SYN_DSP=167,HLS_SYN_FF=27979,HLS_SYN_LUT=67520,HLS_VERSION=2019_2_1}";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal Block_proc643_U0_ap_start : STD_LOGIC;
    signal Block_proc643_U0_ap_done : STD_LOGIC;
    signal Block_proc643_U0_ap_continue : STD_LOGIC;
    signal Block_proc643_U0_ap_idle : STD_LOGIC;
    signal Block_proc643_U0_ap_ready : STD_LOGIC;
    signal Block_proc643_U0_img_in_cols : STD_LOGIC_VECTOR (11 downto 0);
    signal Block_proc643_U0_img_in_cols_ap_vld : STD_LOGIC;
    signal ap_channel_done_img_in_cols_channel7 : STD_LOGIC;
    signal img_in_cols_channel7_full_n : STD_LOGIC;
    signal AXIvideo2xfMat_U0_ap_start : STD_LOGIC;
    signal AXIvideo2xfMat_U0_ap_done : STD_LOGIC;
    signal AXIvideo2xfMat_U0_ap_continue : STD_LOGIC;
    signal AXIvideo2xfMat_U0_ap_idle : STD_LOGIC;
    signal AXIvideo2xfMat_U0_ap_ready : STD_LOGIC;
    signal AXIvideo2xfMat_U0_stream_in_TREADY : STD_LOGIC;
    signal AXIvideo2xfMat_U0_img_data_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal AXIvideo2xfMat_U0_img_data_V_write : STD_LOGIC;
    signal weed_detection_U0_ap_start : STD_LOGIC;
    signal weed_detection_U0_start_out : STD_LOGIC;
    signal weed_detection_U0_start_write : STD_LOGIC;
    signal weed_detection_U0_img_in_data_V_read : STD_LOGIC;
    signal weed_detection_U0_img_out_data_V_din : STD_LOGIC_VECTOR (23 downto 0);
    signal weed_detection_U0_img_out_data_V_write : STD_LOGIC;
    signal weed_detection_U0_ap_done : STD_LOGIC;
    signal weed_detection_U0_ap_ready : STD_LOGIC;
    signal weed_detection_U0_ap_idle : STD_LOGIC;
    signal weed_detection_U0_ap_continue : STD_LOGIC;
    signal xfMat2AXIvideo_U0_ap_start : STD_LOGIC;
    signal xfMat2AXIvideo_U0_ap_done : STD_LOGIC;
    signal xfMat2AXIvideo_U0_ap_continue : STD_LOGIC;
    signal xfMat2AXIvideo_U0_ap_idle : STD_LOGIC;
    signal xfMat2AXIvideo_U0_ap_ready : STD_LOGIC;
    signal xfMat2AXIvideo_U0_img_data_V_read : STD_LOGIC;
    signal xfMat2AXIvideo_U0_stream_out_TDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal xfMat2AXIvideo_U0_stream_out_TVALID : STD_LOGIC;
    signal xfMat2AXIvideo_U0_stream_out_TKEEP : STD_LOGIC_VECTOR (3 downto 0);
    signal xfMat2AXIvideo_U0_stream_out_TSTRB : STD_LOGIC_VECTOR (3 downto 0);
    signal xfMat2AXIvideo_U0_stream_out_TUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal xfMat2AXIvideo_U0_stream_out_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal xfMat2AXIvideo_U0_stream_out_TID : STD_LOGIC_VECTOR (0 downto 0);
    signal xfMat2AXIvideo_U0_stream_out_TDEST : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal img_in_cols_channel7_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal img_in_cols_channel7_empty_n : STD_LOGIC;
    signal img_in_data_V_full_n : STD_LOGIC;
    signal img_in_data_V_dout : STD_LOGIC_VECTOR (23 downto 0);
    signal img_in_data_V_empty_n : STD_LOGIC;
    signal img_out_data_V_full_n : STD_LOGIC;
    signal img_out_data_V_dout : STD_LOGIC_VECTOR (23 downto 0);
    signal img_out_data_V_empty_n : STD_LOGIC;
    signal Block_proc643_U0_start_full_n : STD_LOGIC;
    signal Block_proc643_U0_start_write : STD_LOGIC;
    signal AXIvideo2xfMat_U0_start_full_n : STD_LOGIC;
    signal AXIvideo2xfMat_U0_start_write : STD_LOGIC;
    signal start_for_xfMat2AXIvideo_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xfMat2AXIvideo_U0_full_n : STD_LOGIC;
    signal start_for_xfMat2AXIvideo_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xfMat2AXIvideo_U0_empty_n : STD_LOGIC;
    signal xfMat2AXIvideo_U0_start_full_n : STD_LOGIC;
    signal xfMat2AXIvideo_U0_start_write : STD_LOGIC;

    component Block_proc643 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_in_cols : OUT STD_LOGIC_VECTOR (11 downto 0);
        img_in_cols_ap_vld : OUT STD_LOGIC );
    end component;


    component AXIvideo2xfMat IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        stream_in_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        stream_in_TVALID : IN STD_LOGIC;
        stream_in_TREADY : OUT STD_LOGIC;
        stream_in_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
        stream_in_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
        stream_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
        img_data_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        img_data_V_full_n : IN STD_LOGIC;
        img_data_V_write : OUT STD_LOGIC );
    end component;


    component weed_detection IS
    port (
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        img_in_cols : IN STD_LOGIC_VECTOR (11 downto 0);
        img_in_data_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        img_in_data_V_empty_n : IN STD_LOGIC;
        img_in_data_V_read : OUT STD_LOGIC;
        img_out_data_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        img_out_data_V_full_n : IN STD_LOGIC;
        img_out_data_V_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        img_in_cols_ap_vld : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component xfMat2AXIvideo IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_data_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        img_data_V_empty_n : IN STD_LOGIC;
        img_data_V_read : OUT STD_LOGIC;
        stream_out_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        stream_out_TVALID : OUT STD_LOGIC;
        stream_out_TREADY : IN STD_LOGIC;
        stream_out_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
        stream_out_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
        stream_out_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        stream_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        stream_out_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
        stream_out_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component fifo_w12_d2_A_x0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (11 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (11 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w24_d1_A_x0 IS
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


    component start_for_xfMat2Abvn IS
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
    Block_proc643_U0 : component Block_proc643
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Block_proc643_U0_ap_start,
        ap_done => Block_proc643_U0_ap_done,
        ap_continue => Block_proc643_U0_ap_continue,
        ap_idle => Block_proc643_U0_ap_idle,
        ap_ready => Block_proc643_U0_ap_ready,
        img_in_cols => Block_proc643_U0_img_in_cols,
        img_in_cols_ap_vld => Block_proc643_U0_img_in_cols_ap_vld);

    AXIvideo2xfMat_U0 : component AXIvideo2xfMat
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => AXIvideo2xfMat_U0_ap_start,
        ap_done => AXIvideo2xfMat_U0_ap_done,
        ap_continue => AXIvideo2xfMat_U0_ap_continue,
        ap_idle => AXIvideo2xfMat_U0_ap_idle,
        ap_ready => AXIvideo2xfMat_U0_ap_ready,
        stream_in_TDATA => stream_in_TDATA,
        stream_in_TVALID => stream_in_TVALID,
        stream_in_TREADY => AXIvideo2xfMat_U0_stream_in_TREADY,
        stream_in_TKEEP => stream_in_TKEEP,
        stream_in_TSTRB => stream_in_TSTRB,
        stream_in_TUSER => stream_in_TUSER,
        stream_in_TLAST => stream_in_TLAST,
        stream_in_TID => stream_in_TID,
        stream_in_TDEST => stream_in_TDEST,
        img_data_V_din => AXIvideo2xfMat_U0_img_data_V_din,
        img_data_V_full_n => img_in_data_V_full_n,
        img_data_V_write => AXIvideo2xfMat_U0_img_data_V_write);

    weed_detection_U0 : component weed_detection
    port map (
        ap_start => weed_detection_U0_ap_start,
        start_full_n => start_for_xfMat2AXIvideo_U0_full_n,
        start_out => weed_detection_U0_start_out,
        start_write => weed_detection_U0_start_write,
        img_in_cols => img_in_cols_channel7_dout,
        img_in_data_V_dout => img_in_data_V_dout,
        img_in_data_V_empty_n => img_in_data_V_empty_n,
        img_in_data_V_read => weed_detection_U0_img_in_data_V_read,
        img_out_data_V_din => weed_detection_U0_img_out_data_V_din,
        img_out_data_V_full_n => img_out_data_V_full_n,
        img_out_data_V_write => weed_detection_U0_img_out_data_V_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        img_in_cols_ap_vld => ap_const_logic_0,
        ap_done => weed_detection_U0_ap_done,
        ap_ready => weed_detection_U0_ap_ready,
        ap_idle => weed_detection_U0_ap_idle,
        ap_continue => weed_detection_U0_ap_continue);

    xfMat2AXIvideo_U0 : component xfMat2AXIvideo
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => xfMat2AXIvideo_U0_ap_start,
        ap_done => xfMat2AXIvideo_U0_ap_done,
        ap_continue => xfMat2AXIvideo_U0_ap_continue,
        ap_idle => xfMat2AXIvideo_U0_ap_idle,
        ap_ready => xfMat2AXIvideo_U0_ap_ready,
        img_data_V_dout => img_out_data_V_dout,
        img_data_V_empty_n => img_out_data_V_empty_n,
        img_data_V_read => xfMat2AXIvideo_U0_img_data_V_read,
        stream_out_TDATA => xfMat2AXIvideo_U0_stream_out_TDATA,
        stream_out_TVALID => xfMat2AXIvideo_U0_stream_out_TVALID,
        stream_out_TREADY => stream_out_TREADY,
        stream_out_TKEEP => xfMat2AXIvideo_U0_stream_out_TKEEP,
        stream_out_TSTRB => xfMat2AXIvideo_U0_stream_out_TSTRB,
        stream_out_TUSER => xfMat2AXIvideo_U0_stream_out_TUSER,
        stream_out_TLAST => xfMat2AXIvideo_U0_stream_out_TLAST,
        stream_out_TID => xfMat2AXIvideo_U0_stream_out_TID,
        stream_out_TDEST => xfMat2AXIvideo_U0_stream_out_TDEST);

    img_in_cols_channel7_U : component fifo_w12_d2_A_x0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc643_U0_img_in_cols,
        if_full_n => img_in_cols_channel7_full_n,
        if_write => Block_proc643_U0_ap_done,
        if_dout => img_in_cols_channel7_dout,
        if_empty_n => img_in_cols_channel7_empty_n,
        if_read => weed_detection_U0_ap_ready);

    img_in_data_V_U : component fifo_w24_d1_A_x0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2xfMat_U0_img_data_V_din,
        if_full_n => img_in_data_V_full_n,
        if_write => AXIvideo2xfMat_U0_img_data_V_write,
        if_dout => img_in_data_V_dout,
        if_empty_n => img_in_data_V_empty_n,
        if_read => weed_detection_U0_img_in_data_V_read);

    img_out_data_V_U : component fifo_w24_d1_A_x0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => weed_detection_U0_img_out_data_V_din,
        if_full_n => img_out_data_V_full_n,
        if_write => weed_detection_U0_img_out_data_V_write,
        if_dout => img_out_data_V_dout,
        if_empty_n => img_out_data_V_empty_n,
        if_read => xfMat2AXIvideo_U0_img_data_V_read);

    start_for_xfMat2Abvn_U : component start_for_xfMat2Abvn
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_xfMat2AXIvideo_U0_din,
        if_full_n => start_for_xfMat2AXIvideo_U0_full_n,
        if_write => weed_detection_U0_start_write,
        if_dout => start_for_xfMat2AXIvideo_U0_dout,
        if_empty_n => start_for_xfMat2AXIvideo_U0_empty_n,
        if_read => xfMat2AXIvideo_U0_ap_ready);




    AXIvideo2xfMat_U0_ap_continue <= ap_const_logic_1;
    AXIvideo2xfMat_U0_ap_start <= ap_const_logic_1;
    AXIvideo2xfMat_U0_start_full_n <= ap_const_logic_1;
    AXIvideo2xfMat_U0_start_write <= ap_const_logic_0;
    Block_proc643_U0_ap_continue <= img_in_cols_channel7_full_n;
    Block_proc643_U0_ap_start <= ap_const_logic_1;
    Block_proc643_U0_start_full_n <= ap_const_logic_1;
    Block_proc643_U0_start_write <= ap_const_logic_0;
    ap_channel_done_img_in_cols_channel7 <= Block_proc643_U0_ap_done;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_continue <= ap_const_logic_0;
    start_for_xfMat2AXIvideo_U0_din <= (0=>ap_const_logic_1, others=>'-');
    stream_in_TREADY <= AXIvideo2xfMat_U0_stream_in_TREADY;
    stream_out_TDATA <= xfMat2AXIvideo_U0_stream_out_TDATA;
    stream_out_TDEST <= xfMat2AXIvideo_U0_stream_out_TDEST;
    stream_out_TID <= xfMat2AXIvideo_U0_stream_out_TID;
    stream_out_TKEEP <= xfMat2AXIvideo_U0_stream_out_TKEEP;
    stream_out_TLAST <= xfMat2AXIvideo_U0_stream_out_TLAST;
    stream_out_TSTRB <= xfMat2AXIvideo_U0_stream_out_TSTRB;
    stream_out_TUSER <= xfMat2AXIvideo_U0_stream_out_TUSER;
    stream_out_TVALID <= xfMat2AXIvideo_U0_stream_out_TVALID;
    weed_detection_U0_ap_continue <= ap_const_logic_1;
    weed_detection_U0_ap_start <= img_in_cols_channel7_empty_n;
    xfMat2AXIvideo_U0_ap_continue <= ap_const_logic_1;
    xfMat2AXIvideo_U0_ap_start <= start_for_xfMat2AXIvideo_U0_empty_n;
    xfMat2AXIvideo_U0_start_full_n <= ap_const_logic_1;
    xfMat2AXIvideo_U0_start_write <= ap_const_logic_0;
end behav;
