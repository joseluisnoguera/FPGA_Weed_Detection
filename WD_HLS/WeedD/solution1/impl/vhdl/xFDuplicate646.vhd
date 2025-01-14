-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity xFDuplicate646 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    src_V_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
    src_V_V_empty_n : IN STD_LOGIC;
    src_V_V_read : OUT STD_LOGIC;
    dst_V_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    dst_V_V_full_n : IN STD_LOGIC;
    dst_V_V_write : OUT STD_LOGIC;
    dst1_V_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    dst1_V_V_full_n : IN STD_LOGIC;
    dst1_V_V_write : OUT STD_LOGIC;
    p_src_cols_load10_loc_dout : IN STD_LOGIC_VECTOR (9 downto 0);
    p_src_cols_load10_loc_empty_n : IN STD_LOGIC;
    p_src_cols_load10_loc_read : OUT STD_LOGIC );
end;


architecture behav of xFDuplicate646 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv8_B4 : STD_LOGIC_VECTOR (7 downto 0) := "10110100";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal src_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln57_reg_151 : STD_LOGIC_VECTOR (0 downto 0);
    signal dst_V_V_blk_n : STD_LOGIC;
    signal dst1_V_V_blk_n : STD_LOGIC;
    signal p_src_cols_load10_loc_blk_n : STD_LOGIC;
    signal t_V_reg_99 : STD_LOGIC_VECTOR (13 downto 0);
    signal empty_fu_110_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal empty_reg_137 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal icmp_ln887_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal row_V_fu_120_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal row_V_reg_146 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln57_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln887_fu_131_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal t_V_8_reg_88 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




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
                elsif (((icmp_ln887_fu_114_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((icmp_ln887_fu_114_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((icmp_ln887_fu_114_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    t_V_8_reg_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                t_V_8_reg_88 <= row_V_reg_146;
            elsif ((not(((ap_start = ap_const_logic_0) or (p_src_cols_load10_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_8_reg_88 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    t_V_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln57_fu_126_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                t_V_reg_99 <= add_ln887_fu_131_p2;
            elsif (((icmp_ln887_fu_114_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                t_V_reg_99 <= ap_const_lv14_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (p_src_cols_load10_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                empty_reg_137 <= empty_fu_110_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln57_reg_151 <= icmp_ln57_fu_126_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                row_V_reg_146 <= row_V_fu_120_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, p_src_cols_load10_loc_empty_n, icmp_ln887_fu_114_p2, ap_CS_fsm_state2, icmp_ln57_fu_126_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (p_src_cols_load10_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln887_fu_114_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln57_fu_126_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln57_fu_126_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln887_fu_131_p2 <= std_logic_vector(unsigned(t_V_reg_99) + unsigned(ap_const_lv14_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(src_V_V_empty_n, dst_V_V_full_n, dst1_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln57_reg_151)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln57_reg_151 = ap_const_lv1_0) and (dst1_V_V_full_n = ap_const_logic_0)) or ((icmp_ln57_reg_151 = ap_const_lv1_0) and (dst_V_V_full_n = ap_const_logic_0)) or ((icmp_ln57_reg_151 = ap_const_lv1_0) and (src_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(src_V_V_empty_n, dst_V_V_full_n, dst1_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln57_reg_151)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln57_reg_151 = ap_const_lv1_0) and (dst1_V_V_full_n = ap_const_logic_0)) or ((icmp_ln57_reg_151 = ap_const_lv1_0) and (dst_V_V_full_n = ap_const_logic_0)) or ((icmp_ln57_reg_151 = ap_const_lv1_0) and (src_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(src_V_V_empty_n, dst_V_V_full_n, dst1_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln57_reg_151)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln57_reg_151 = ap_const_lv1_0) and (dst1_V_V_full_n = ap_const_logic_0)) or ((icmp_ln57_reg_151 = ap_const_lv1_0) and (dst_V_V_full_n = ap_const_logic_0)) or ((icmp_ln57_reg_151 = ap_const_lv1_0) and (src_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, p_src_cols_load10_loc_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (p_src_cols_load10_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(src_V_V_empty_n, dst_V_V_full_n, dst1_V_V_full_n, icmp_ln57_reg_151)
    begin
                ap_block_state4_pp0_stage0_iter1 <= (((icmp_ln57_reg_151 = ap_const_lv1_0) and (dst1_V_V_full_n = ap_const_logic_0)) or ((icmp_ln57_reg_151 = ap_const_lv1_0) and (dst_V_V_full_n = ap_const_logic_0)) or ((icmp_ln57_reg_151 = ap_const_lv1_0) and (src_V_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln57_fu_126_p2)
    begin
        if ((icmp_ln57_fu_126_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, icmp_ln887_fu_114_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln887_fu_114_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln887_fu_114_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln887_fu_114_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    dst1_V_V_blk_n_assign_proc : process(dst1_V_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln57_reg_151)
    begin
        if (((icmp_ln57_reg_151 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst1_V_V_blk_n <= dst1_V_V_full_n;
        else 
            dst1_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst1_V_V_din <= src_V_V_dout;

    dst1_V_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln57_reg_151, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln57_reg_151 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst1_V_V_write <= ap_const_logic_1;
        else 
            dst1_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    dst_V_V_blk_n_assign_proc : process(dst_V_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln57_reg_151)
    begin
        if (((icmp_ln57_reg_151 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst_V_V_blk_n <= dst_V_V_full_n;
        else 
            dst_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_V_V_din <= src_V_V_dout;

    dst_V_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln57_reg_151, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln57_reg_151 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst_V_V_write <= ap_const_logic_1;
        else 
            dst_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

        empty_fu_110_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_src_cols_load10_loc_dout),14));

    icmp_ln57_fu_126_p2 <= "1" when (t_V_reg_99 = empty_reg_137) else "0";
    icmp_ln887_fu_114_p2 <= "1" when (unsigned(t_V_8_reg_88) < unsigned(ap_const_lv8_B4)) else "0";

    p_src_cols_load10_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_src_cols_load10_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_cols_load10_loc_blk_n <= p_src_cols_load10_loc_empty_n;
        else 
            p_src_cols_load10_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_src_cols_load10_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_src_cols_load10_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (p_src_cols_load10_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_cols_load10_loc_read <= ap_const_logic_1;
        else 
            p_src_cols_load10_loc_read <= ap_const_logic_0;
        end if; 
    end process;

    row_V_fu_120_p2 <= std_logic_vector(unsigned(t_V_8_reg_88) + unsigned(ap_const_lv8_1));

    src_V_V_blk_n_assign_proc : process(src_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln57_reg_151)
    begin
        if (((icmp_ln57_reg_151 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_V_V_blk_n <= src_V_V_empty_n;
        else 
            src_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln57_reg_151, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln57_reg_151 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_V_V_read <= ap_const_logic_1;
        else 
            src_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;
