-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity scaleCompute is
port (
    ap_ready : OUT STD_LOGIC;
    currindex : IN STD_LOGIC_VECTOR (31 downto 0);
    inscale_V : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (41 downto 0) );
end;


architecture behav of scaleCompute is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv22_0 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000000";
    constant ap_const_lv42_200000 : STD_LOGIC_VECTOR (41 downto 0) := "000000000000000000001000000000000000000000";
    constant ap_const_lv71_7FFFFC000000000000 : STD_LOGIC_VECTOR (70 downto 0) := "11111111111111111111100000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv32_46 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000110";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal trunc_ln728_fu_32_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_Val2_s_fu_36_p3 : STD_LOGIC_VECTOR (41 downto 0);
    signal ret_V_fu_44_p2 : STD_LOGIC_VECTOR (41 downto 0);
    signal mul_ln1193_fu_58_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln1193_fu_58_p1 : STD_LOGIC_VECTOR (41 downto 0);
    signal mul_ln1193_fu_58_p2 : STD_LOGIC_VECTOR (70 downto 0);
    signal ret_V_8_fu_64_p2 : STD_LOGIC_VECTOR (70 downto 0);
    signal mul_ln1193_fu_58_p00 : STD_LOGIC_VECTOR (70 downto 0);


begin



    ap_ready <= ap_const_logic_1;
    ap_return <= ret_V_8_fu_64_p2(70 downto 29);
    mul_ln1193_fu_58_p0 <= mul_ln1193_fu_58_p00(32 - 1 downto 0);
    mul_ln1193_fu_58_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inscale_V),71));
    mul_ln1193_fu_58_p1 <= ret_V_fu_44_p2;
    mul_ln1193_fu_58_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &mul_ln1193_fu_58_p0) * signed(mul_ln1193_fu_58_p1))), 71));
    p_Val2_s_fu_36_p3 <= (trunc_ln728_fu_32_p1 & ap_const_lv22_0);
    ret_V_8_fu_64_p2 <= std_logic_vector(signed(ap_const_lv71_7FFFFC000000000000) + signed(mul_ln1193_fu_58_p2));
    ret_V_fu_44_p2 <= (p_Val2_s_fu_36_p3 or ap_const_lv42_200000);
    trunc_ln728_fu_32_p1 <= currindex(20 - 1 downto 0);
end behav;
