// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module duplicateMat_Loop_2_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        dst_V_V_dout,
        dst_V_V_empty_n,
        dst_V_V_read,
        p_dst1_data_V_address0,
        p_dst1_data_V_ce0,
        p_dst1_data_V_we0,
        p_dst1_data_V_d0,
        dst1_V_V_dout,
        dst1_V_V_empty_n,
        dst1_V_V_read,
        p_dst2_data_V_din,
        p_dst2_data_V_full_n,
        p_dst2_data_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] dst_V_V_dout;
input   dst_V_V_empty_n;
output   dst_V_V_read;
output  [15:0] p_dst1_data_V_address0;
output   p_dst1_data_V_ce0;
output   p_dst1_data_V_we0;
output  [7:0] p_dst1_data_V_d0;
input  [7:0] dst1_V_V_dout;
input   dst1_V_V_empty_n;
output   dst1_V_V_read;
output  [7:0] p_dst2_data_V_din;
input   p_dst2_data_V_full_n;
output   p_dst2_data_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg dst_V_V_read;
reg p_dst1_data_V_ce0;
reg p_dst1_data_V_we0;
reg dst1_V_V_read;
reg p_dst2_data_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    dst_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln109_reg_205;
reg    dst1_V_V_blk_n;
wire    call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_blk_n;
reg    p_dst2_data_V_blk_n;
reg   [8:0] j2_0_i_reg_101;
wire   [0:0] icmp_ln106_fu_120_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] i_fu_126_p2;
reg   [7:0] i_reg_190;
wire   [15:0] shl_ln_fu_132_p3;
reg   [15:0] shl_ln_reg_195;
wire   [14:0] zext_ln109_fu_148_p1;
reg   [14:0] zext_ln109_reg_200;
wire   [0:0] icmp_ln109_fu_156_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [8:0] j_fu_162_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [15:0] add_ln114_1_fu_177_p2;
reg   [15:0] add_ln114_1_reg_214;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
wire    call_ln115_write798_fu_112_ap_start;
wire    call_ln115_write798_fu_112_ap_done;
wire    call_ln115_write798_fu_112_ap_idle;
wire    call_ln115_write798_fu_112_ap_ready;
wire   [7:0] call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_din;
wire    call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_write;
reg    call_ln115_write798_fu_112_ap_ce;
wire    ap_block_state3_pp0_stage0_iter0_ignore_call10;
reg    ap_block_state4_pp0_stage0_iter1_ignore_call10;
reg    ap_block_pp0_stage0_11001_ignoreCallOp37;
reg   [7:0] i1_0_i_reg_90;
reg    ap_block_state1;
wire    ap_CS_fsm_state5;
reg    call_ln115_write798_fu_112_ap_start_reg;
wire   [63:0] zext_ln651_fu_182_p1;
wire   [13:0] shl_ln114_1_fu_140_p3;
wire   [14:0] zext_ln109_cast_fu_152_p1;
wire   [14:0] add_ln114_fu_168_p2;
wire   [15:0] zext_ln114_fu_173_p1;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 call_ln115_write798_fu_112_ap_start_reg = 1'b0;
end

write798 call_ln115_write798_fu_112(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(call_ln115_write798_fu_112_ap_start),
    .ap_done(call_ln115_write798_fu_112_ap_done),
    .ap_idle(call_ln115_write798_fu_112_ap_idle),
    .ap_ready(call_ln115_write798_fu_112_ap_ready),
    .val_V(dst1_V_V_dout),
    .Mat_0_180_320_1_data_V_addr_din(call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_din),
    .Mat_0_180_320_1_data_V_addr_full_n(p_dst2_data_V_full_n),
    .Mat_0_180_320_1_data_V_addr_write(call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_write),
    .Mat_0_180_320_1_data_V_addr_blk_n(call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_blk_n),
    .ap_ce(call_ln115_write798_fu_112_ap_ce)
);

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
        end else if (((icmp_ln106_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln106_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln106_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        call_ln115_write798_fu_112_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            call_ln115_write798_fu_112_ap_start_reg <= 1'b1;
        end else if ((call_ln115_write798_fu_112_ap_ready == 1'b1)) begin
            call_ln115_write798_fu_112_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i1_0_i_reg_90 <= i_reg_190;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i1_0_i_reg_90 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j2_0_i_reg_101 <= j_fu_162_p2;
    end else if (((icmp_ln106_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j2_0_i_reg_101 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln114_1_reg_214 <= add_ln114_1_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_190 <= i_fu_126_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln109_reg_205 <= icmp_ln109_fu_156_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln106_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        shl_ln_reg_195[15 : 8] <= shl_ln_fu_132_p3[15 : 8];
        zext_ln109_reg_200[13 : 6] <= zext_ln109_fu_148_p1[13 : 6];
    end
end

always @ (*) begin
    if ((icmp_ln109_fu_156_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln106_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln106_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp37))) begin
        call_ln115_write798_fu_112_ap_ce = 1'b1;
    end else begin
        call_ln115_write798_fu_112_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln109_reg_205 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dst1_V_V_blk_n = dst1_V_V_empty_n;
    end else begin
        dst1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_reg_205 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dst1_V_V_read = 1'b1;
    end else begin
        dst1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln109_reg_205 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dst_V_V_blk_n = dst_V_V_empty_n;
    end else begin
        dst_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_reg_205 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dst_V_V_read = 1'b1;
    end else begin
        dst_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst1_data_V_ce0 = 1'b1;
    end else begin
        p_dst1_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_reg_205 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst1_data_V_we0 = 1'b1;
    end else begin
        p_dst1_data_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln109_reg_205 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst2_data_V_blk_n = call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_blk_n;
    end else begin
        p_dst2_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln109_reg_205 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst2_data_V_write = call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_write;
    end else begin
        p_dst2_data_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln106_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln109_fu_156_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln109_fu_156_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln114_1_fu_177_p2 = (zext_ln114_fu_173_p1 + shl_ln_reg_195);

assign add_ln114_fu_168_p2 = (zext_ln109_reg_200 + zext_ln109_cast_fu_152_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln109_reg_205 == 1'd0) & (call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_blk_n == 1'b0)) | ((icmp_ln109_reg_205 == 1'd0) & (dst1_V_V_empty_n == 1'b0)) | ((icmp_ln109_reg_205 == 1'd0) & (dst_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp37 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln109_reg_205 == 1'd0) & (dst1_V_V_empty_n == 1'b0)) | ((icmp_ln109_reg_205 == 1'd0) & (dst_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln109_reg_205 == 1'd0) & (call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_blk_n == 1'b0)) | ((icmp_ln109_reg_205 == 1'd0) & (dst1_V_V_empty_n == 1'b0)) | ((icmp_ln109_reg_205 == 1'd0) & (dst_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0_ignore_call10 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((icmp_ln109_reg_205 == 1'd0) & (call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_blk_n == 1'b0)) | ((icmp_ln109_reg_205 == 1'd0) & (dst1_V_V_empty_n == 1'b0)) | ((icmp_ln109_reg_205 == 1'd0) & (dst_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1_ignore_call10 = (((icmp_ln109_reg_205 == 1'd0) & (dst1_V_V_empty_n == 1'b0)) | ((icmp_ln109_reg_205 == 1'd0) & (dst_V_V_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign call_ln115_write798_fu_112_ap_start = call_ln115_write798_fu_112_ap_start_reg;

assign i_fu_126_p2 = (i1_0_i_reg_90 + 8'd1);

assign icmp_ln106_fu_120_p2 = ((i1_0_i_reg_90 == 8'd180) ? 1'b1 : 1'b0);

assign icmp_ln109_fu_156_p2 = ((j2_0_i_reg_101 == 9'd320) ? 1'b1 : 1'b0);

assign j_fu_162_p2 = (j2_0_i_reg_101 + 9'd1);

assign p_dst1_data_V_address0 = zext_ln651_fu_182_p1;

assign p_dst1_data_V_d0 = dst_V_V_dout;

assign p_dst2_data_V_din = call_ln115_write798_fu_112_Mat_0_180_320_1_data_V_addr_din;

assign shl_ln114_1_fu_140_p3 = {{i1_0_i_reg_90}, {6'd0}};

assign shl_ln_fu_132_p3 = {{i1_0_i_reg_90}, {8'd0}};

assign zext_ln109_cast_fu_152_p1 = j2_0_i_reg_101;

assign zext_ln109_fu_148_p1 = shl_ln114_1_fu_140_p3;

assign zext_ln114_fu_173_p1 = add_ln114_fu_168_p2;

assign zext_ln651_fu_182_p1 = add_ln114_1_reg_214;

always @ (posedge ap_clk) begin
    shl_ln_reg_195[7:0] <= 8'b00000000;
    zext_ln109_reg_200[5:0] <= 6'b000000;
    zext_ln109_reg_200[14] <= 1'b0;
end

endmodule //duplicateMat_Loop_2_2
