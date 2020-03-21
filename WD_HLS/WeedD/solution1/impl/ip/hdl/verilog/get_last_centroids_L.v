// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module get_last_centroids_L (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        size,
        seg_index_start,
        selected_line,
        centroids_address0,
        centroids_ce0,
        centroids_q0,
        last_c_2_address0,
        last_c_2_ce0,
        last_c_2_we0,
        last_c_2_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [3:0] size;
input  [3:0] seg_index_start;
input  [2:0] selected_line;
output  [6:0] centroids_address0;
output   centroids_ce0;
input  [47:0] centroids_q0;
output  [1:0] last_c_2_address0;
output   last_c_2_ce0;
output   last_c_2_we0;
output  [47:0] last_c_2_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg centroids_ce0;
reg last_c_2_ce0;
reg last_c_2_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] i_0_i_i_i_reg_95;
wire   [4:0] zext_ln168_fu_115_p1;
reg   [4:0] zext_ln168_reg_208;
reg    ap_block_state1;
wire   [4:0] seg_index_end_fu_119_p2;
reg   [4:0] seg_index_end_reg_213;
wire   [9:0] zext_ln172_cast_cast_fu_125_p1;
reg   [9:0] zext_ln172_cast_cast_reg_218;
wire   [0:0] icmp_ln169_fu_129_p2;
reg   [0:0] icmp_ln169_reg_223;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] i_fu_135_p2;
reg   [2:0] i_reg_227;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln171_fu_150_p2;
reg   [0:0] icmp_ln171_reg_232;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [2:0] ap_phi_mux_i_0_i_i_i_phi_fu_99_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_2_fu_198_p1;
wire   [63:0] zext_ln172_3_fu_203_p1;
wire   [2:0] empty_fu_107_p1;
wire   [4:0] size_cast_i_fu_111_p1;
wire   [4:0] zext_ln169_fu_141_p1;
wire   [4:0] p_i_fu_145_p2;
wire   [7:0] shl_ln_i_fu_155_p3;
wire   [5:0] shl_ln172_1_i_fu_167_p3;
wire   [8:0] zext_ln172_fu_163_p1;
wire   [8:0] zext_ln172_1_fu_175_p1;
wire   [8:0] sub_ln172_fu_179_p2;
wire  signed [9:0] sext_ln172_fu_185_p1;
wire   [9:0] add_ln172_fu_189_p2;
wire  signed [31:0] sext_ln172_1_fu_194_p1;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln169_reg_223 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_i_i_i_reg_95 <= i_reg_227;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_i_i_reg_95 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_227 <= i_fu_135_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln169_reg_223 <= icmp_ln169_fu_129_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln169_fu_129_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln171_reg_232 <= icmp_ln171_fu_150_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        seg_index_end_reg_213 <= seg_index_end_fu_119_p2;
        zext_ln168_reg_208[3 : 0] <= zext_ln168_fu_115_p1[3 : 0];
        zext_ln172_cast_cast_reg_218[2 : 0] <= zext_ln172_cast_cast_fu_125_p1[2 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln169_fu_129_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln169_reg_223 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_0_i_i_i_phi_fu_99_p4 = i_reg_227;
    end else begin
        ap_phi_mux_i_0_i_i_i_phi_fu_99_p4 = i_0_i_i_i_reg_95;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        centroids_ce0 = 1'b1;
    end else begin
        centroids_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_c_2_ce0 = 1'b1;
    end else begin
        last_c_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln171_reg_232 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_c_2_we0 = 1'b1;
    end else begin
        last_c_2_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln169_fu_129_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln169_fu_129_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln172_fu_189_p2 = ($signed(zext_ln172_cast_cast_reg_218) + $signed(sext_ln172_fu_185_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign centroids_address0 = zext_ln172_2_fu_198_p1;

assign empty_fu_107_p1 = size[2:0];

assign i_fu_135_p2 = (ap_phi_mux_i_0_i_i_i_phi_fu_99_p4 + 3'd1);

assign icmp_ln169_fu_129_p2 = ((ap_phi_mux_i_0_i_i_i_phi_fu_99_p4 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln171_fu_150_p2 = ((p_i_fu_145_p2 < seg_index_end_reg_213) ? 1'b1 : 1'b0);

assign last_c_2_address0 = zext_ln172_3_fu_203_p1;

assign last_c_2_d0 = centroids_q0;

assign p_i_fu_145_p2 = (zext_ln168_reg_208 + zext_ln169_fu_141_p1);

assign seg_index_end_fu_119_p2 = (zext_ln168_fu_115_p1 + size_cast_i_fu_111_p1);

assign sext_ln172_1_fu_194_p1 = $signed(add_ln172_fu_189_p2);

assign sext_ln172_fu_185_p1 = $signed(sub_ln172_fu_179_p2);

assign shl_ln172_1_i_fu_167_p3 = {{p_i_fu_145_p2}, {1'd0}};

assign shl_ln_i_fu_155_p3 = {{p_i_fu_145_p2}, {3'd0}};

assign size_cast_i_fu_111_p1 = empty_fu_107_p1;

assign sub_ln172_fu_179_p2 = (zext_ln172_fu_163_p1 - zext_ln172_1_fu_175_p1);

assign zext_ln168_fu_115_p1 = seg_index_start;

assign zext_ln169_fu_141_p1 = ap_phi_mux_i_0_i_i_i_phi_fu_99_p4;

assign zext_ln172_1_fu_175_p1 = shl_ln172_1_i_fu_167_p3;

assign zext_ln172_2_fu_198_p1 = $unsigned(sext_ln172_1_fu_194_p1);

assign zext_ln172_3_fu_203_p1 = i_0_i_i_i_reg_95;

assign zext_ln172_cast_cast_fu_125_p1 = selected_line;

assign zext_ln172_fu_163_p1 = shl_ln_i_fu_155_p3;

always @ (posedge ap_clk) begin
    zext_ln168_reg_208[4] <= 1'b0;
    zext_ln172_cast_cast_reg_218[9:3] <= 7'b0000000;
end

endmodule //get_last_centroids_L