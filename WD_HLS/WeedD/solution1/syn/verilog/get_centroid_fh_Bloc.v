// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module get_centroid_fh_Bloc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        v_offset_dout,
        v_offset_empty_n,
        v_offset_read,
        h_offset_dout,
        h_offset_empty_n,
        h_offset_read,
        c,
        c_ap_vld,
        p_read3,
        p_read4
);

parameter    ap_ST_fsm_state1 = 36'd1;
parameter    ap_ST_fsm_state2 = 36'd2;
parameter    ap_ST_fsm_state3 = 36'd4;
parameter    ap_ST_fsm_state4 = 36'd8;
parameter    ap_ST_fsm_state5 = 36'd16;
parameter    ap_ST_fsm_state6 = 36'd32;
parameter    ap_ST_fsm_state7 = 36'd64;
parameter    ap_ST_fsm_state8 = 36'd128;
parameter    ap_ST_fsm_state9 = 36'd256;
parameter    ap_ST_fsm_state10 = 36'd512;
parameter    ap_ST_fsm_state11 = 36'd1024;
parameter    ap_ST_fsm_state12 = 36'd2048;
parameter    ap_ST_fsm_state13 = 36'd4096;
parameter    ap_ST_fsm_state14 = 36'd8192;
parameter    ap_ST_fsm_state15 = 36'd16384;
parameter    ap_ST_fsm_state16 = 36'd32768;
parameter    ap_ST_fsm_state17 = 36'd65536;
parameter    ap_ST_fsm_state18 = 36'd131072;
parameter    ap_ST_fsm_state19 = 36'd262144;
parameter    ap_ST_fsm_state20 = 36'd524288;
parameter    ap_ST_fsm_state21 = 36'd1048576;
parameter    ap_ST_fsm_state22 = 36'd2097152;
parameter    ap_ST_fsm_state23 = 36'd4194304;
parameter    ap_ST_fsm_state24 = 36'd8388608;
parameter    ap_ST_fsm_state25 = 36'd16777216;
parameter    ap_ST_fsm_state26 = 36'd33554432;
parameter    ap_ST_fsm_state27 = 36'd67108864;
parameter    ap_ST_fsm_state28 = 36'd134217728;
parameter    ap_ST_fsm_state29 = 36'd268435456;
parameter    ap_ST_fsm_state30 = 36'd536870912;
parameter    ap_ST_fsm_state31 = 36'd1073741824;
parameter    ap_ST_fsm_state32 = 36'd2147483648;
parameter    ap_ST_fsm_state33 = 36'd4294967296;
parameter    ap_ST_fsm_state34 = 36'd8589934592;
parameter    ap_ST_fsm_state35 = 36'd17179869184;
parameter    ap_ST_fsm_state36 = 36'd34359738368;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read;
input  [31:0] p_read1;
input  [15:0] p_read2;
input  [7:0] v_offset_dout;
input   v_offset_empty_n;
output   v_offset_read;
input  [15:0] h_offset_dout;
input   h_offset_empty_n;
output   h_offset_read;
output  [47:0] c;
output   c_ap_vld;
input  [31:0] p_read3;
input  [31:0] p_read4;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg v_offset_read;
reg h_offset_read;
reg[47:0] c;
reg c_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [35:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v_offset_blk_n;
reg    h_offset_blk_n;
reg    ap_block_state1;
reg   [7:0] v_offset_read_reg_186;
reg   [15:0] h_offset_read_reg_191;
wire   [0:0] icmp_ln156_fu_109_p2;
reg   [0:0] icmp_ln156_reg_196;
wire   [31:0] grp_fu_121_p2;
reg   [31:0] ap_phi_mux_empty_phi_fu_94_p4;
reg   [31:0] empty_reg_91;
wire    ap_CS_fsm_state36;
wire   [15:0] trunc_ln157_fu_128_p1;
reg   [15:0] ap_phi_mux_empty_169_phi_fu_103_p4;
reg   [15:0] empty_169_reg_100;
wire   [47:0] tmp_i_i_fu_151_p3;
reg   [47:0] c_preg;
wire   [15:0] grp_fu_115_p2;
wire   [15:0] zext_ln160_fu_133_p1;
wire   [31:0] zext_ln161_fu_142_p1;
wire   [31:0] add_ln161_fu_145_p2;
wire   [15:0] add_ln160_fu_136_p2;
reg    grp_fu_115_ap_start;
wire    grp_fu_115_ap_done;
wire    grp_fu_115_ce;
reg    grp_fu_121_ap_start;
wire    grp_fu_121_ap_done;
wire    grp_fu_121_ce;
reg   [35:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 36'd1;
#0 c_preg = 48'd0;
end

ip_accel_app_udivHfu #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 16 ))
ip_accel_app_udivHfu_U362(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_115_ap_start),
    .done(grp_fu_115_ap_done),
    .din0(p_read3),
    .din1(p_read),
    .ce(grp_fu_115_ce),
    .dout(grp_fu_115_p2)
);

ip_accel_app_udivIfE #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ip_accel_app_udivIfE_U363(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_121_ap_start),
    .done(grp_fu_121_ap_done),
    .din0(p_read4),
    .din1(p_read),
    .ce(grp_fu_121_ce),
    .dout(grp_fu_121_p2)
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
        end else if ((1'b1 == ap_CS_fsm_state36)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        c_preg <= 48'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            c_preg <= tmp_i_i_fu_151_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln156_fu_109_p2 == 1'd1))) begin
        empty_169_reg_100 <= p_read2;
    end else if (((1'b1 == ap_CS_fsm_state36) & (icmp_ln156_reg_196 == 1'd0))) begin
        empty_169_reg_100 <= trunc_ln157_fu_128_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln156_fu_109_p2 == 1'd1))) begin
        empty_reg_91 <= p_read1;
    end else if (((1'b1 == ap_CS_fsm_state36) & (icmp_ln156_reg_196 == 1'd0))) begin
        empty_reg_91 <= grp_fu_121_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        h_offset_read_reg_191 <= h_offset_dout;
        icmp_ln156_reg_196 <= icmp_ln156_fu_109_p2;
        v_offset_read_reg_186 <= v_offset_dout;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
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
    if (((1'b1 == ap_CS_fsm_state36) & (icmp_ln156_reg_196 == 1'd0))) begin
        ap_phi_mux_empty_169_phi_fu_103_p4 = trunc_ln157_fu_128_p1;
    end else begin
        ap_phi_mux_empty_169_phi_fu_103_p4 = empty_169_reg_100;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) & (icmp_ln156_reg_196 == 1'd0))) begin
        ap_phi_mux_empty_phi_fu_94_p4 = grp_fu_121_p2;
    end else begin
        ap_phi_mux_empty_phi_fu_94_p4 = empty_reg_91;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        c = tmp_i_i_fu_151_p3;
    end else begin
        c = c_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        c_ap_vld = 1'b1;
    end else begin
        c_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln156_fu_109_p2 == 1'd0))) begin
        grp_fu_115_ap_start = 1'b1;
    end else begin
        grp_fu_115_ap_start = 1'b0;
    end
end

assign grp_fu_115_ce = 1'b1;

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln156_fu_109_p2 == 1'd0))) begin
        grp_fu_121_ap_start = 1'b1;
    end else begin
        grp_fu_121_ap_start = 1'b0;
    end
end

assign grp_fu_121_ce = 1'b1;

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        h_offset_blk_n = h_offset_empty_n;
    end else begin
        h_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        h_offset_read = 1'b1;
    end else begin
        h_offset_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        v_offset_blk_n = v_offset_empty_n;
    end else begin
        v_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        v_offset_read = 1'b1;
    end else begin
        v_offset_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln156_fu_109_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else if ((~((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln156_fu_109_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln160_fu_136_p2 = (ap_phi_mux_empty_169_phi_fu_103_p4 + zext_ln160_fu_133_p1);

assign add_ln161_fu_145_p2 = (ap_phi_mux_empty_phi_fu_94_p4 + zext_ln161_fu_142_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (h_offset_empty_n == 1'b0) | (v_offset_empty_n == 1'b0) | (ap_start == 1'b0));
end

assign icmp_ln156_fu_109_p2 = ((p_read == 32'd0) ? 1'b1 : 1'b0);

assign tmp_i_i_fu_151_p3 = {{add_ln161_fu_145_p2}, {add_ln160_fu_136_p2}};

assign trunc_ln157_fu_128_p1 = grp_fu_115_p2[15:0];

assign zext_ln160_fu_133_p1 = v_offset_read_reg_186;

assign zext_ln161_fu_142_p1 = h_offset_read_reg_191;

endmodule //get_centroid_fh_Bloc