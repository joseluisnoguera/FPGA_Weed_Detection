// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module convert_fp_to_8b771 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        min_value_V_c17_dout,
        min_value_V_c17_empty_n,
        min_value_V_c17_read,
        sub_ln703_cast_loc_c,
        veg_temp_data_V_dout,
        veg_temp_data_V_empty_n,
        veg_temp_data_V_read,
        img_out_data_V_din,
        img_out_data_V_full_n,
        img_out_data_V_write
);

parameter    ap_ST_fsm_state1 = 24'd1;
parameter    ap_ST_fsm_state2 = 24'd2;
parameter    ap_ST_fsm_state3 = 24'd4;
parameter    ap_ST_fsm_state4 = 24'd8;
parameter    ap_ST_fsm_state5 = 24'd16;
parameter    ap_ST_fsm_state6 = 24'd32;
parameter    ap_ST_fsm_state7 = 24'd64;
parameter    ap_ST_fsm_state8 = 24'd128;
parameter    ap_ST_fsm_state9 = 24'd256;
parameter    ap_ST_fsm_state10 = 24'd512;
parameter    ap_ST_fsm_state11 = 24'd1024;
parameter    ap_ST_fsm_state12 = 24'd2048;
parameter    ap_ST_fsm_state13 = 24'd4096;
parameter    ap_ST_fsm_state14 = 24'd8192;
parameter    ap_ST_fsm_state15 = 24'd16384;
parameter    ap_ST_fsm_state16 = 24'd32768;
parameter    ap_ST_fsm_state17 = 24'd65536;
parameter    ap_ST_fsm_state18 = 24'd131072;
parameter    ap_ST_fsm_state19 = 24'd262144;
parameter    ap_ST_fsm_state20 = 24'd524288;
parameter    ap_ST_fsm_state21 = 24'd1048576;
parameter    ap_ST_fsm_state22 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage0 = 24'd4194304;
parameter    ap_ST_fsm_state25 = 24'd8388608;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [27:0] min_value_V_c17_dout;
input   min_value_V_c17_empty_n;
output   min_value_V_c17_read;
input  [23:0] sub_ln703_cast_loc_c;
input  [31:0] veg_temp_data_V_dout;
input   veg_temp_data_V_empty_n;
output   veg_temp_data_V_read;
output  [7:0] img_out_data_V_din;
input   img_out_data_V_full_n;
output   img_out_data_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg min_value_V_c17_read;
reg veg_temp_data_V_read;
reg img_out_data_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    min_value_V_c17_blk_n;
wire    ap_CS_fsm_state22;
reg    veg_temp_data_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln59_reg_232;
reg    img_out_data_V_blk_n;
reg   [15:0] i_0_i_i_i_reg_97;
reg    ap_block_state1;
wire  signed [64:0] sext_ln59_fu_120_p1;
reg  signed [64:0] sext_ln59_reg_222;
wire  signed [41:0] sext_ln703_fu_124_p1;
reg  signed [41:0] sext_ln703_reg_227;
wire   [0:0] icmp_ln59_fu_128_p2;
wire    ap_block_state23_pp0_stage0_iter0;
reg    ap_block_state24_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [15:0] i_fu_134_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state23;
reg    ap_block_pp0_stage0_01001;
wire   [17:0] grp_fu_108_p0;
wire   [23:0] grp_fu_108_p2;
wire   [23:0] scalar_V_fu_114_p2;
wire   [39:0] p_Val2_61_fu_140_p3;
wire   [41:0] zext_ln703_fu_148_p1;
wire   [41:0] ret_V_fu_152_p2;
wire  signed [41:0] r_V_fu_161_p0;
wire  signed [23:0] r_V_fu_161_p1;
wire   [64:0] r_V_fu_161_p2;
wire   [15:0] trunc_ln851_fu_174_p1;
wire   [7:0] trunc_ln29_i_fu_184_p4;
wire   [0:0] icmp_ln851_fu_178_p2;
wire   [7:0] add_ln851_fu_194_p2;
wire   [0:0] p_Result_s_fu_166_p3;
wire   [7:0] select_ln851_fu_200_p3;
reg    grp_fu_108_ap_start;
wire    grp_fu_108_ap_done;
reg    grp_fu_108_ce;
wire    ap_CS_fsm_state25;
reg   [23:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

ip_accel_app_sdivrcU #(
    .ID( 1 ),
    .NUM_STAGE( 22 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
ip_accel_app_sdivrcU_U203(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_108_ap_start),
    .done(grp_fu_108_ap_done),
    .din0(grp_fu_108_p0),
    .din1(sub_ln703_cast_loc_c),
    .ce(grp_fu_108_ce),
    .dout(grp_fu_108_p2)
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
        end else if ((1'b1 == ap_CS_fsm_state25)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state23) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((min_value_V_c17_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state23) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state23);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((min_value_V_c17_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln59_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_i_i_i_reg_97 <= i_fu_134_p2;
    end else if (((min_value_V_c17_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        i_0_i_i_i_reg_97 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln59_reg_232 <= icmp_ln59_fu_128_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((min_value_V_c17_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        sext_ln59_reg_222[64 : 8] <= sext_ln59_fu_120_p1[64 : 8];
        sext_ln703_reg_227 <= sext_ln703_fu_124_p1;
    end
end

always @ (*) begin
    if ((icmp_ln59_fu_128_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state23 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state23 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
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
    if ((1'b1 == ap_CS_fsm_state25)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_108_ap_start = 1'b1;
    end else begin
        grp_fu_108_ap_start = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_108_ce = 1'b0;
    end else begin
        grp_fu_108_ce = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln59_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        img_out_data_V_blk_n = img_out_data_V_full_n;
    end else begin
        img_out_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln59_reg_232 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        img_out_data_V_write = 1'b1;
    end else begin
        img_out_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        min_value_V_c17_blk_n = min_value_V_c17_empty_n;
    end else begin
        min_value_V_c17_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((min_value_V_c17_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        min_value_V_c17_read = 1'b1;
    end else begin
        min_value_V_c17_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln59_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        veg_temp_data_V_blk_n = veg_temp_data_V_empty_n;
    end else begin
        veg_temp_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln59_reg_232 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        veg_temp_data_V_read = 1'b1;
    end else begin
        veg_temp_data_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((min_value_V_c17_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln59_fu_128_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln59_fu_128_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln851_fu_194_p2 = (8'd1 + trunc_ln29_i_fu_184_p4);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd23];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln59_reg_232 == 1'd0) & (img_out_data_V_full_n == 1'b0)) | ((icmp_ln59_reg_232 == 1'd0) & (veg_temp_data_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln59_reg_232 == 1'd0) & (img_out_data_V_full_n == 1'b0)) | ((icmp_ln59_reg_232 == 1'd0) & (veg_temp_data_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln59_reg_232 == 1'd0) & (img_out_data_V_full_n == 1'b0)) | ((icmp_ln59_reg_232 == 1'd0) & (veg_temp_data_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign ap_block_state23_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state24_pp0_stage0_iter1 = (((icmp_ln59_reg_232 == 1'd0) & (img_out_data_V_full_n == 1'b0)) | ((icmp_ln59_reg_232 == 1'd0) & (veg_temp_data_V_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_fu_108_p0 = 24'd65280;

assign i_fu_134_p2 = (i_0_i_i_i_reg_97 + 16'd1);

assign icmp_ln59_fu_128_p2 = ((i_0_i_i_i_reg_97 == 16'd57600) ? 1'b1 : 1'b0);

assign icmp_ln851_fu_178_p2 = ((trunc_ln851_fu_174_p1 == 16'd0) ? 1'b1 : 1'b0);

assign img_out_data_V_din = ((p_Result_s_fu_166_p3[0:0] === 1'b1) ? select_ln851_fu_200_p3 : trunc_ln29_i_fu_184_p4);

assign p_Result_s_fu_166_p3 = r_V_fu_161_p2[32'd64];

assign p_Val2_61_fu_140_p3 = {{veg_temp_data_V_dout}, {8'd0}};

assign r_V_fu_161_p0 = ret_V_fu_152_p2;

assign r_V_fu_161_p1 = sext_ln59_reg_222;

assign r_V_fu_161_p2 = ($signed(r_V_fu_161_p0) * $signed(r_V_fu_161_p1));

assign ret_V_fu_152_p2 = ($signed(zext_ln703_fu_148_p1) - $signed(sext_ln703_reg_227));

assign scalar_V_fu_114_p2 = grp_fu_108_p2 << 24'd8;

assign select_ln851_fu_200_p3 = ((icmp_ln851_fu_178_p2[0:0] === 1'b1) ? trunc_ln29_i_fu_184_p4 : add_ln851_fu_194_p2);

assign sext_ln59_fu_120_p1 = $signed(scalar_V_fu_114_p2);

assign sext_ln703_fu_124_p1 = $signed(min_value_V_c17_dout);

assign trunc_ln29_i_fu_184_p4 = {{r_V_fu_161_p2[23:16]}};

assign trunc_ln851_fu_174_p1 = r_V_fu_161_p2[15:0];

assign zext_ln703_fu_148_p1 = p_Val2_61_fu_140_p3;

always @ (posedge ap_clk) begin
    sext_ln59_reg_222[7:0] <= 8'b00000000;
end

endmodule //convert_fp_to_8b771