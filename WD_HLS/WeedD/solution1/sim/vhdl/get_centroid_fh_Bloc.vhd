-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity get_centroid_fh_Bloc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (15 downto 0);
    v_offset_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    v_offset_empty_n : IN STD_LOGIC;
    v_offset_read : OUT STD_LOGIC;
    h_offset_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    h_offset_empty_n : IN STD_LOGIC;
    h_offset_read : OUT STD_LOGIC;
    c : OUT STD_LOGIC_VECTOR (47 downto 0);
    c_ap_vld : OUT STD_LOGIC;
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of get_centroid_fh_Bloc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (35 downto 0) := "000000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (35 downto 0) := "000000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (35 downto 0) := "000000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (35 downto 0) := "000000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (35 downto 0) := "000000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (35 downto 0) := "000000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (35 downto 0) := "000001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (35 downto 0) := "000010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (35 downto 0) := "000100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (35 downto 0) := "001000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (35 downto 0) := "010000000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (35 downto 0) := "100000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv48_0 : STD_LOGIC_VECTOR (47 downto 0) := "000000000000000000000000000000000000000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal v_offset_blk_n : STD_LOGIC;
    signal h_offset_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal v_offset_read_reg_186 : STD_LOGIC_VECTOR (7 downto 0);
    signal h_offset_read_reg_191 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln156_fu_109_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln156_reg_196 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_121_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_empty_phi_fu_94_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_reg_91 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state36 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state36 : signal is "none";
    signal trunc_ln157_fu_128_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_phi_mux_empty_169_phi_fu_103_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal empty_169_reg_100 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_i_i_fu_151_p3 : STD_LOGIC_VECTOR (47 downto 0);
    signal c_preg : STD_LOGIC_VECTOR (47 downto 0) := "000000000000000000000000000000000000000000000000";
    signal grp_fu_115_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln160_fu_133_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln161_fu_142_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln161_fu_145_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln160_fu_136_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_115_ap_start : STD_LOGIC;
    signal grp_fu_115_ap_done : STD_LOGIC;
    signal grp_fu_115_ce : STD_LOGIC;
    signal grp_fu_121_ap_start : STD_LOGIC;
    signal grp_fu_121_ap_done : STD_LOGIC;
    signal grp_fu_121_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (35 downto 0);

    component ip_accel_app_udivHfu IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component ip_accel_app_udivIfE IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    ip_accel_app_udivHfu_U362 : component ip_accel_app_udivHfu
    generic map (
        ID => 1,
        NUM_STAGE => 36,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_115_ap_start,
        done => grp_fu_115_ap_done,
        din0 => p_read3,
        din1 => p_read,
        ce => grp_fu_115_ce,
        dout => grp_fu_115_p2);

    ip_accel_app_udivIfE_U363 : component ip_accel_app_udivIfE
    generic map (
        ID => 1,
        NUM_STAGE => 36,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_121_ap_start,
        done => grp_fu_121_ap_done,
        din0 => p_read4,
        din1 => p_read,
        ce => grp_fu_121_ce,
        dout => grp_fu_121_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state36)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    c_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                c_preg <= ap_const_lv48_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state36)) then 
                    c_preg <= tmp_i_i_fu_151_p3;
                end if; 
            end if;
        end if;
    end process;


    empty_169_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (icmp_ln156_fu_109_p2 = ap_const_lv1_1))) then 
                empty_169_reg_100 <= p_read2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state36) and (icmp_ln156_reg_196 = ap_const_lv1_0))) then 
                empty_169_reg_100 <= trunc_ln157_fu_128_p1;
            end if; 
        end if;
    end process;

    empty_reg_91_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (icmp_ln156_fu_109_p2 = ap_const_lv1_1))) then 
                empty_reg_91 <= p_read1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state36) and (icmp_ln156_reg_196 = ap_const_lv1_0))) then 
                empty_reg_91 <= grp_fu_121_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                h_offset_read_reg_191 <= h_offset_dout;
                icmp_ln156_reg_196 <= icmp_ln156_fu_109_p2;
                v_offset_read_reg_186 <= v_offset_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, v_offset_empty_n, h_offset_empty_n, icmp_ln156_fu_109_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (icmp_ln156_fu_109_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state36;
                elsif ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (icmp_ln156_fu_109_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 => 
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 => 
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 => 
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 => 
                ap_NS_fsm <= ap_ST_fsm_state32;
            when ap_ST_fsm_state32 => 
                ap_NS_fsm <= ap_ST_fsm_state33;
            when ap_ST_fsm_state33 => 
                ap_NS_fsm <= ap_ST_fsm_state34;
            when ap_ST_fsm_state34 => 
                ap_NS_fsm <= ap_ST_fsm_state35;
            when ap_ST_fsm_state35 => 
                ap_NS_fsm <= ap_ST_fsm_state36;
            when ap_ST_fsm_state36 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    add_ln160_fu_136_p2 <= std_logic_vector(unsigned(ap_phi_mux_empty_169_phi_fu_103_p4) + unsigned(zext_ln160_fu_133_p1));
    add_ln161_fu_145_p2 <= std_logic_vector(unsigned(ap_phi_mux_empty_phi_fu_94_p4) + unsigned(zext_ln161_fu_142_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state36 <= ap_CS_fsm(35);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, v_offset_empty_n, h_offset_empty_n)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state36)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state36)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_empty_169_phi_fu_103_p4_assign_proc : process(icmp_ln156_reg_196, ap_CS_fsm_state36, trunc_ln157_fu_128_p1, empty_169_reg_100)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state36) and (icmp_ln156_reg_196 = ap_const_lv1_0))) then 
            ap_phi_mux_empty_169_phi_fu_103_p4 <= trunc_ln157_fu_128_p1;
        else 
            ap_phi_mux_empty_169_phi_fu_103_p4 <= empty_169_reg_100;
        end if; 
    end process;


    ap_phi_mux_empty_phi_fu_94_p4_assign_proc : process(icmp_ln156_reg_196, grp_fu_121_p2, empty_reg_91, ap_CS_fsm_state36)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state36) and (icmp_ln156_reg_196 = ap_const_lv1_0))) then 
            ap_phi_mux_empty_phi_fu_94_p4 <= grp_fu_121_p2;
        else 
            ap_phi_mux_empty_phi_fu_94_p4 <= empty_reg_91;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state36)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state36)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    c_assign_proc : process(ap_CS_fsm_state36, tmp_i_i_fu_151_p3, c_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state36)) then 
            c <= tmp_i_i_fu_151_p3;
        else 
            c <= c_preg;
        end if; 
    end process;


    c_ap_vld_assign_proc : process(ap_CS_fsm_state36)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state36)) then 
            c_ap_vld <= ap_const_logic_1;
        else 
            c_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_115_ap_start_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, v_offset_empty_n, h_offset_empty_n, icmp_ln156_fu_109_p2)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (icmp_ln156_fu_109_p2 = ap_const_lv1_0))) then 
            grp_fu_115_ap_start <= ap_const_logic_1;
        else 
            grp_fu_115_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_115_ce <= ap_const_logic_1;

    grp_fu_121_ap_start_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, v_offset_empty_n, h_offset_empty_n, icmp_ln156_fu_109_p2)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (icmp_ln156_fu_109_p2 = ap_const_lv1_0))) then 
            grp_fu_121_ap_start <= ap_const_logic_1;
        else 
            grp_fu_121_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_121_ce <= ap_const_logic_1;

    h_offset_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, h_offset_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            h_offset_blk_n <= h_offset_empty_n;
        else 
            h_offset_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    h_offset_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, v_offset_empty_n, h_offset_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            h_offset_read <= ap_const_logic_1;
        else 
            h_offset_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln156_fu_109_p2 <= "1" when (p_read = ap_const_lv32_0) else "0";
    tmp_i_i_fu_151_p3 <= (add_ln161_fu_145_p2 & add_ln160_fu_136_p2);
    trunc_ln157_fu_128_p1 <= grp_fu_115_p2(16 - 1 downto 0);

    v_offset_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, v_offset_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            v_offset_blk_n <= v_offset_empty_n;
        else 
            v_offset_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    v_offset_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, v_offset_empty_n, h_offset_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (h_offset_empty_n = ap_const_logic_0) or (v_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            v_offset_read <= ap_const_logic_1;
        else 
            v_offset_read <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln160_fu_133_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(v_offset_read_reg_186),16));
    zext_ln161_fu_142_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_offset_read_reg_191),32));
end behav;