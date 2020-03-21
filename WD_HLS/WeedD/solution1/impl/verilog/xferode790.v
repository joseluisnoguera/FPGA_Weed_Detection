// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xferode790 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_src_data_V_dout,
        p_src_data_V_empty_n,
        p_src_data_V_read,
        p_dst_data_V_din,
        p_dst_data_V_full_n,
        p_dst_data_V_write
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_pp0_stage0 = 8'd4;
parameter    ap_ST_fsm_state5 = 8'd8;
parameter    ap_ST_fsm_state6 = 8'd16;
parameter    ap_ST_fsm_state7 = 8'd32;
parameter    ap_ST_fsm_pp1_stage0 = 8'd64;
parameter    ap_ST_fsm_state12 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] p_src_data_V_dout;
input   p_src_data_V_empty_n;
output   p_src_data_V_read;
output  [7:0] p_dst_data_V_din;
input   p_dst_data_V_full_n;
output   p_dst_data_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_V_read;
reg p_dst_data_V_write;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_data_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln272_reg_693;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] icmp_ln887_3_reg_738;
reg   [0:0] icmp_ln887_4_reg_747;
reg   [0:0] icmp_ln887_2_reg_719;
reg    p_dst_data_V_blk_n;
reg    ap_enable_reg_pp1_iter3;
reg   [0:0] icmp_ln891_reg_769;
reg   [8:0] index_assign_reg_248;
reg   [8:0] t_V_1_0_reg_259;
reg   [7:0] src_buf_1_1_0_reg_327;
reg   [7:0] src_buf_0_1_0_reg_339;
reg   [7:0] src_buf_2_1_0_reg_351;
reg   [8:0] t_V_2_reg_363;
reg   [8:0] t_V_2_reg_363_pp1_iter1_reg;
wire    ap_block_state8_pp1_stage0_iter0;
reg    ap_predicate_op109_read_state9;
reg    ap_block_state9_pp1_stage0_iter1;
wire    ap_block_state10_pp1_stage0_iter2;
reg    ap_block_state11_pp1_stage0_iter3;
reg    ap_block_pp1_stage0_11001;
reg   [12:0] row_ind_2_V_load_reg_669;
wire    ap_CS_fsm_state2;
reg   [12:0] row_ind_2_V_5_load_reg_674;
reg   [12:0] row_ind_2_V_6_load_reg_679;
wire   [0:0] icmp_ln259_fu_399_p2;
wire   [1:0] init_row_ind_fu_405_p2;
wire   [0:0] icmp_ln272_fu_430_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [8:0] add_ln278_fu_436_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [8:0] add_ln700_fu_447_p2;
wire   [8:0] i_col_V_fu_459_p2;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln887_1_fu_470_p2;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln887_2_fu_476_p2;
wire   [1:0] trunc_ln321_fu_482_p1;
reg   [1:0] trunc_ln321_reg_723;
wire   [1:0] trunc_ln321_3_fu_486_p1;
reg   [1:0] trunc_ln321_3_reg_728;
wire   [1:0] trunc_ln321_4_fu_490_p1;
reg   [1:0] trunc_ln321_4_reg_733;
wire   [0:0] icmp_ln887_3_fu_494_p2;
reg   [0:0] icmp_ln887_3_reg_738_pp1_iter1_reg;
reg   [0:0] icmp_ln887_3_reg_738_pp1_iter2_reg;
wire   [8:0] col_V_fu_500_p2;
reg   [8:0] col_V_reg_742;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] icmp_ln887_4_fu_506_p2;
reg   [0:0] icmp_ln887_4_reg_747_pp1_iter1_reg;
reg   [0:0] icmp_ln887_4_reg_747_pp1_iter2_reg;
wire   [0:0] icmp_ln891_fu_529_p2;
wire   [7:0] src_buf_temp_copy_ex_xfExtractPixels_1_fu_375_ap_return;
wire   [7:0] src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380_ap_return;
wire   [7:0] src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385_ap_return;
wire   [7:0] row_V_fu_645_p2;
wire    ap_CS_fsm_state12;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state8;
reg    ap_enable_reg_pp1_iter2;
wire   [8:0] buf_0_V_address0;
reg    buf_0_V_ce0;
wire   [0:0] buf_0_V_q0;
reg   [8:0] buf_0_V_address1;
reg    buf_0_V_ce1;
reg    buf_0_V_we1;
reg   [0:0] buf_0_V_d1;
wire   [8:0] buf_1_V_address0;
reg    buf_1_V_ce0;
wire   [0:0] buf_1_V_q0;
reg   [8:0] buf_1_V_address1;
reg    buf_1_V_ce1;
reg    buf_1_V_we1;
reg   [0:0] buf_1_V_d1;
wire   [8:0] buf_2_V_address0;
reg    buf_2_V_ce0;
wire   [0:0] buf_2_V_q0;
reg   [8:0] buf_2_V_address1;
reg    buf_2_V_ce1;
reg    buf_2_V_we1;
reg   [0:0] buf_2_V_d1;
wire    src_buf_temp_copy_ex_xfExtractPixels_1_fu_375_ap_ready;
wire   [7:0] src_buf_temp_copy_ex_xfExtractPixels_1_fu_375_val1_V_read;
wire    src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380_ap_ready;
wire   [7:0] src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380_val1_V_read;
wire    src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385_ap_ready;
wire   [7:0] src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385_val1_V_read;
wire   [1:0] ap_phi_mux_val_assign_phi_fu_241_p4;
reg   [1:0] val_assign_reg_237;
reg   [8:0] t_V_reg_271;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln887_fu_453_p2;
reg   [12:0] row_ind_1_V_1_reg_282;
reg   [12:0] zero_ind_V_reg_303;
reg   [12:0] row_ind_0_V_reg_292;
reg   [7:0] t_V_1_reg_315;
reg   [8:0] ap_phi_mux_t_V_2_phi_fu_367_p4;
wire   [63:0] zext_ln544_fu_442_p1;
wire   [63:0] zext_ln544_1_fu_465_p1;
wire   [63:0] zext_ln544_2_fu_512_p1;
wire   [8:0] buf_0_V_addr_4_gep_fu_193_p3;
wire   [8:0] buf_1_V_addr_4_gep_fu_199_p3;
wire   [8:0] buf_2_V_addr_gep_fu_205_p3;
wire   [63:0] zext_ln544_3_fu_522_p1;
reg   [12:0] row_ind_2_V_fu_90;
wire   [12:0] row_ind_0_V_4_fu_411_p1;
reg   [12:0] row_ind_2_V_5_fu_94;
reg   [12:0] row_ind_2_V_6_fu_98;
reg    ap_block_pp1_stage0_01001;
wire   [7:0] select_ln321_fu_535_p3;
wire   [7:0] select_ln321_1_fu_543_p3;
wire   [7:0] select_ln321_2_fu_551_p3;
wire   [7:0] buf_cop_0_V_fu_559_p5;
wire   [7:0] tmp_8_fu_570_p5;
wire   [7:0] tmp_9_fu_597_p5;
wire   [0:0] icmp_ln887_5_fu_616_p2;
wire   [7:0] select_ln62_fu_622_p3;
wire   [0:0] icmp_ln887_6_fu_630_p2;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_condition_596;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
end

xferode790_buf_0_V #(
    .DataWidth( 1 ),
    .AddressRange( 320 ),
    .AddressWidth( 9 ))
buf_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_0_V_address0),
    .ce0(buf_0_V_ce0),
    .q0(buf_0_V_q0),
    .address1(buf_0_V_address1),
    .ce1(buf_0_V_ce1),
    .we1(buf_0_V_we1),
    .d1(buf_0_V_d1)
);

xferode790_buf_0_V #(
    .DataWidth( 1 ),
    .AddressRange( 320 ),
    .AddressWidth( 9 ))
buf_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_1_V_address0),
    .ce0(buf_1_V_ce0),
    .q0(buf_1_V_q0),
    .address1(buf_1_V_address1),
    .ce1(buf_1_V_ce1),
    .we1(buf_1_V_we1),
    .d1(buf_1_V_d1)
);

xferode790_buf_0_V #(
    .DataWidth( 1 ),
    .AddressRange( 320 ),
    .AddressWidth( 9 ))
buf_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_2_V_address0),
    .ce0(buf_2_V_ce0),
    .q0(buf_2_V_q0),
    .address1(buf_2_V_address1),
    .ce1(buf_2_V_ce1),
    .we1(buf_2_V_we1),
    .d1(buf_2_V_d1)
);

xfExtractPixels_1 src_buf_temp_copy_ex_xfExtractPixels_1_fu_375(
    .ap_ready(src_buf_temp_copy_ex_xfExtractPixels_1_fu_375_ap_ready),
    .val1_V_read(src_buf_temp_copy_ex_xfExtractPixels_1_fu_375_val1_V_read),
    .ap_return(src_buf_temp_copy_ex_xfExtractPixels_1_fu_375_ap_return)
);

xfExtractPixels_1 src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380(
    .ap_ready(src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380_ap_ready),
    .val1_V_read(src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380_val1_V_read),
    .ap_return(src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380_ap_return)
);

xfExtractPixels_1 src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385(
    .ap_ready(src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385_ap_ready),
    .val1_V_read(src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385_val1_V_read),
    .ap_return(src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385_ap_return)
);

ip_accel_app_mux_yd2 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
ip_accel_app_mux_yd2_U252(
    .din0(select_ln321_fu_535_p3),
    .din1(select_ln321_1_fu_543_p3),
    .din2(select_ln321_2_fu_551_p3),
    .din3(trunc_ln321_3_reg_728),
    .dout(buf_cop_0_V_fu_559_p5)
);

ip_accel_app_mux_yd2 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
ip_accel_app_mux_yd2_U253(
    .din0(select_ln321_fu_535_p3),
    .din1(select_ln321_1_fu_543_p3),
    .din2(select_ln321_2_fu_551_p3),
    .din3(trunc_ln321_4_reg_733),
    .dout(tmp_8_fu_570_p5)
);

ip_accel_app_mux_yd2 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
ip_accel_app_mux_yd2_U254(
    .din0(select_ln321_fu_535_p3),
    .din1(select_ln321_1_fu_543_p3),
    .din2(select_ln321_2_fu_551_p3),
    .din3(trunc_ln321_reg_723),
    .dout(tmp_9_fu_597_p5)
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln259_fu_399_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln259_fu_399_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state8))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((icmp_ln887_1_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state8)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state8);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter3 <= ap_enable_reg_pp1_iter2;
        end else if (((icmp_ln887_1_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_enable_reg_pp1_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln259_fu_399_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        index_assign_reg_248 <= 9'd0;
    end else if (((icmp_ln272_fu_430_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        index_assign_reg_248 <= add_ln278_fu_436_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        row_ind_0_V_reg_292 <= row_ind_1_V_1_reg_282;
    end else if (((icmp_ln887_fu_453_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        row_ind_0_V_reg_292 <= row_ind_2_V_5_load_reg_674;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        row_ind_1_V_1_reg_282 <= zero_ind_V_reg_303;
    end else if (((icmp_ln887_fu_453_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        row_ind_1_V_1_reg_282 <= row_ind_2_V_6_load_reg_679;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln887_3_reg_738_pp1_iter2_reg == 1'd1) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        src_buf_0_1_0_reg_339 <= src_buf_temp_copy_ex_xfExtractPixels_1_fu_375_ap_return;
    end else if (((icmp_ln887_1_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        src_buf_0_1_0_reg_339 <= 8'd255;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln887_3_reg_738_pp1_iter2_reg == 1'd1) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        src_buf_1_1_0_reg_327 <= src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380_ap_return;
    end else if (((icmp_ln887_1_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        src_buf_1_1_0_reg_327 <= 8'd255;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln887_3_reg_738_pp1_iter2_reg == 1'd1) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        src_buf_2_1_0_reg_351 <= src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385_ap_return;
    end else if (((icmp_ln887_1_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        src_buf_2_1_0_reg_351 <= 8'd255;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln259_fu_399_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_1_0_reg_259 <= 9'd0;
    end else if (((icmp_ln272_reg_693 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_1_0_reg_259 <= add_ln700_fu_447_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        t_V_1_reg_315 <= row_V_fu_645_p2;
    end else if (((icmp_ln887_fu_453_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        t_V_1_reg_315 <= 8'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln887_3_reg_738 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        t_V_2_reg_363 <= col_V_reg_742;
    end else if (((icmp_ln887_1_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        t_V_2_reg_363 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln887_fu_453_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        t_V_reg_271 <= i_col_V_fu_459_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        t_V_reg_271 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln259_fu_399_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        val_assign_reg_237 <= init_row_ind_fu_405_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        val_assign_reg_237 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        zero_ind_V_reg_303 <= row_ind_0_V_reg_292;
    end else if (((icmp_ln887_fu_453_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        zero_ind_V_reg_303 <= row_ind_2_V_load_reg_669;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        col_V_reg_742 <= col_V_fu_500_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln272_reg_693 <= icmp_ln272_fu_430_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln887_1_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        icmp_ln887_2_reg_719 <= icmp_ln887_2_fu_476_p2;
        trunc_ln321_3_reg_728 <= trunc_ln321_3_fu_486_p1;
        trunc_ln321_4_reg_733 <= trunc_ln321_4_fu_490_p1;
        trunc_ln321_reg_723 <= trunc_ln321_fu_482_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln887_3_reg_738 <= icmp_ln887_3_fu_494_p2;
        icmp_ln887_3_reg_738_pp1_iter1_reg <= icmp_ln887_3_reg_738;
        icmp_ln887_4_reg_747_pp1_iter1_reg <= icmp_ln887_4_reg_747;
        t_V_2_reg_363_pp1_iter1_reg <= t_V_2_reg_363;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp1_stage0_11001)) begin
        icmp_ln887_3_reg_738_pp1_iter2_reg <= icmp_ln887_3_reg_738_pp1_iter1_reg;
        icmp_ln887_4_reg_747_pp1_iter2_reg <= icmp_ln887_4_reg_747_pp1_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln887_3_fu_494_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln887_4_reg_747 <= icmp_ln887_4_fu_506_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln887_3_reg_738_pp1_iter1_reg == 1'd1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln891_reg_769 <= icmp_ln891_fu_529_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln259_fu_399_p2 == 1'd0) & (ap_phi_mux_val_assign_phi_fu_241_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        row_ind_2_V_5_fu_94[1 : 0] <= row_ind_0_V_4_fu_411_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        row_ind_2_V_5_load_reg_674[1 : 0] <= row_ind_2_V_5_fu_94[1 : 0];
        row_ind_2_V_6_load_reg_679[1 : 0] <= row_ind_2_V_6_fu_98[1 : 0];
        row_ind_2_V_load_reg_669[1 : 0] <= row_ind_2_V_fu_90[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((~(ap_phi_mux_val_assign_phi_fu_241_p4 == 2'd1) & ~(ap_phi_mux_val_assign_phi_fu_241_p4 == 2'd0) & (icmp_ln259_fu_399_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        row_ind_2_V_6_fu_98[1 : 0] <= row_ind_0_V_4_fu_411_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln259_fu_399_p2 == 1'd0) & (ap_phi_mux_val_assign_phi_fu_241_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        row_ind_2_V_fu_90[1 : 0] <= row_ind_0_V_4_fu_411_p1[1 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln272_fu_430_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln887_3_fu_494_p2 == 1'd0)) begin
        ap_condition_pp1_exit_iter0_state8 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state8 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln887_1_fu_470_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((ap_enable_reg_pp1_iter3 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_t_V_2_phi_fu_367_p4 = col_V_reg_742;
    end else begin
        ap_phi_mux_t_V_2_phi_fu_367_p4 = t_V_2_reg_363;
    end
end

always @ (*) begin
    if (((icmp_ln887_1_fu_470_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd0))) begin
        buf_0_V_address1 = buf_0_V_addr_4_gep_fu_193_p3;
    end else if (((icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd0))) begin
        buf_0_V_address1 = zext_ln544_2_fu_512_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_0_V_address1 = zext_ln544_1_fu_465_p1;
    end else begin
        buf_0_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        buf_0_V_ce0 = 1'b1;
    end else begin
        buf_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd0) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
        buf_0_V_ce1 = 1'b1;
    end else begin
        buf_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd0))) begin
        buf_0_V_d1 = p_src_data_V_dout;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd0)))) begin
        buf_0_V_d1 = 1'd1;
    end else begin
        buf_0_V_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln887_fu_453_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buf_0_V_we1 = 1'b1;
    end else begin
        buf_0_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd1))) begin
        buf_1_V_address1 = buf_1_V_addr_4_gep_fu_199_p3;
    end else if (((icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd1))) begin
        buf_1_V_address1 = zext_ln544_2_fu_512_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_V_address1 = zext_ln544_fu_442_p1;
    end else begin
        buf_1_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        buf_1_V_ce0 = 1'b1;
    end else begin
        buf_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        buf_1_V_ce1 = 1'b1;
    end else begin
        buf_1_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd1))) begin
        buf_1_V_d1 = 1'd1;
    end else if ((((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_1_V_d1 = p_src_data_V_dout;
    end else begin
        buf_1_V_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (trunc_ln321_reg_723 == 2'd1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln272_reg_693 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        buf_1_V_we1 = 1'b1;
    end else begin
        buf_1_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_596)) begin
        if ((icmp_ln887_2_reg_719 == 1'd1)) begin
            buf_2_V_address1 = buf_2_V_addr_gep_fu_205_p3;
        end else if ((icmp_ln887_2_reg_719 == 1'd0)) begin
            buf_2_V_address1 = zext_ln544_2_fu_512_p1;
        end else begin
            buf_2_V_address1 = 'bx;
        end
    end else begin
        buf_2_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        buf_2_V_ce0 = 1'b1;
    end else begin
        buf_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((~(trunc_ln321_reg_723 == 2'd0) & ~(trunc_ln321_reg_723 == 2'd1) & (icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)) | (~(trunc_ln321_reg_723 == 2'd0) & ~(trunc_ln321_reg_723 == 2'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
        buf_2_V_ce1 = 1'b1;
    end else begin
        buf_2_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_596)) begin
        if ((icmp_ln887_2_reg_719 == 1'd1)) begin
            buf_2_V_d1 = p_src_data_V_dout;
        end else if ((icmp_ln887_2_reg_719 == 1'd0)) begin
            buf_2_V_d1 = 1'd1;
        end else begin
            buf_2_V_d1 = 'bx;
        end
    end else begin
        buf_2_V_d1 = 'bx;
    end
end

always @ (*) begin
    if (((~(trunc_ln321_reg_723 == 2'd0) & ~(trunc_ln321_reg_723 == 2'd1) & (icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)) | (~(trunc_ln321_reg_723 == 2'd0) & ~(trunc_ln321_reg_723 == 2'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (icmp_ln887_2_reg_719 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
        buf_2_V_we1 = 1'b1;
    end else begin
        buf_2_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (icmp_ln891_reg_769 == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1))) begin
        p_dst_data_V_blk_n = p_dst_data_V_full_n;
    end else begin
        p_dst_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln891_reg_769 == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        p_dst_data_V_write = 1'b1;
    end else begin
        p_dst_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((icmp_ln272_reg_693 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        p_src_data_V_blk_n = p_src_data_V_empty_n;
    end else begin
        p_src_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op109_read_state9 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln272_reg_693 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        p_src_data_V_read = 1'b1;
    end else begin
        p_src_data_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln259_fu_399_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln272_fu_430_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln272_fu_430_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln887_fu_453_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln887_1_fu_470_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln887_3_fu_494_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1)) & ~((ap_enable_reg_pp1_iter2 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter3 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter2 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter3 == 1'b1)) | ((ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln887_3_fu_494_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln278_fu_436_p2 = (index_assign_reg_248 + 9'd1);

assign add_ln700_fu_447_p2 = (t_V_1_0_reg_259 + 9'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln272_reg_693 == 1'd0) & (p_src_data_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln272_reg_693 == 1'd0) & (p_src_data_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = (((icmp_ln891_reg_769 == 1'd0) & (p_dst_data_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter3 == 1'b1)) | ((p_src_data_V_empty_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op109_read_state9 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = (((icmp_ln891_reg_769 == 1'd0) & (p_dst_data_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter3 == 1'b1)) | ((p_src_data_V_empty_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op109_read_state9 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = (((icmp_ln891_reg_769 == 1'd0) & (p_dst_data_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter3 == 1'b1)) | ((p_src_data_V_empty_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op109_read_state9 == 1'b1)));
end

assign ap_block_state10_pp1_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp1_stage0_iter3 = ((icmp_ln891_reg_769 == 1'd0) & (p_dst_data_V_full_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln272_reg_693 == 1'd0) & (p_src_data_V_empty_n == 1'b0));
end

assign ap_block_state8_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp1_stage0_iter1 = ((p_src_data_V_empty_n == 1'b0) & (ap_predicate_op109_read_state9 == 1'b1));
end

always @ (*) begin
    ap_condition_596 = (~(trunc_ln321_reg_723 == 2'd0) & ~(trunc_ln321_reg_723 == 2'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_mux_val_assign_phi_fu_241_p4 = val_assign_reg_237;

always @ (*) begin
    ap_predicate_op109_read_state9 = ((icmp_ln887_2_reg_719 == 1'd1) & (icmp_ln887_4_reg_747 == 1'd1) & (icmp_ln887_3_reg_738 == 1'd1));
end

assign buf_0_V_addr_4_gep_fu_193_p3 = zext_ln544_2_fu_512_p1;

assign buf_0_V_address0 = zext_ln544_3_fu_522_p1;

assign buf_1_V_addr_4_gep_fu_199_p3 = zext_ln544_2_fu_512_p1;

assign buf_1_V_address0 = zext_ln544_3_fu_522_p1;

assign buf_2_V_addr_gep_fu_205_p3 = zext_ln544_2_fu_512_p1;

assign buf_2_V_address0 = zext_ln544_3_fu_522_p1;

assign col_V_fu_500_p2 = (ap_phi_mux_t_V_2_phi_fu_367_p4 + 9'd1);

assign i_col_V_fu_459_p2 = (t_V_reg_271 + 9'd1);

assign icmp_ln259_fu_399_p2 = ((val_assign_reg_237 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln272_fu_430_p2 = ((index_assign_reg_248 == 9'd320) ? 1'b1 : 1'b0);

assign icmp_ln887_1_fu_470_p2 = ((t_V_1_reg_315 < 8'd181) ? 1'b1 : 1'b0);

assign icmp_ln887_2_fu_476_p2 = ((t_V_1_reg_315 < 8'd180) ? 1'b1 : 1'b0);

assign icmp_ln887_3_fu_494_p2 = ((ap_phi_mux_t_V_2_phi_fu_367_p4 < 9'd321) ? 1'b1 : 1'b0);

assign icmp_ln887_4_fu_506_p2 = ((ap_phi_mux_t_V_2_phi_fu_367_p4 < 9'd320) ? 1'b1 : 1'b0);

assign icmp_ln887_5_fu_616_p2 = ((src_buf_1_1_0_reg_327 < src_buf_0_1_0_reg_339) ? 1'b1 : 1'b0);

assign icmp_ln887_6_fu_630_p2 = ((src_buf_2_1_0_reg_351 < select_ln62_fu_622_p3) ? 1'b1 : 1'b0);

assign icmp_ln887_fu_453_p2 = ((t_V_reg_271 < 9'd320) ? 1'b1 : 1'b0);

assign icmp_ln891_fu_529_p2 = ((t_V_2_reg_363_pp1_iter1_reg == 9'd0) ? 1'b1 : 1'b0);

assign init_row_ind_fu_405_p2 = (val_assign_reg_237 + 2'd1);

assign p_dst_data_V_din = ((icmp_ln887_6_fu_630_p2[0:0] === 1'b1) ? src_buf_2_1_0_reg_351 : select_ln62_fu_622_p3);

assign row_V_fu_645_p2 = (t_V_1_reg_315 + 8'd1);

assign row_ind_0_V_4_fu_411_p1 = val_assign_reg_237;

assign select_ln321_1_fu_543_p3 = ((buf_1_V_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign select_ln321_2_fu_551_p3 = ((buf_2_V_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign select_ln321_fu_535_p3 = ((buf_0_V_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign select_ln62_fu_622_p3 = ((icmp_ln887_5_fu_616_p2[0:0] === 1'b1) ? src_buf_1_1_0_reg_327 : src_buf_0_1_0_reg_339);

assign src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380_val1_V_read = ((icmp_ln887_4_reg_747_pp1_iter2_reg[0:0] === 1'b1) ? tmp_8_fu_570_p5 : 8'd255);

assign src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385_val1_V_read = ((icmp_ln887_4_reg_747_pp1_iter2_reg[0:0] === 1'b1) ? tmp_9_fu_597_p5 : 8'd255);

assign src_buf_temp_copy_ex_xfExtractPixels_1_fu_375_val1_V_read = ((icmp_ln887_4_reg_747_pp1_iter2_reg[0:0] === 1'b1) ? buf_cop_0_V_fu_559_p5 : 8'd255);

assign trunc_ln321_3_fu_486_p1 = zero_ind_V_reg_303[1:0];

assign trunc_ln321_4_fu_490_p1 = row_ind_0_V_reg_292[1:0];

assign trunc_ln321_fu_482_p1 = row_ind_1_V_1_reg_282[1:0];

assign zext_ln544_1_fu_465_p1 = t_V_reg_271;

assign zext_ln544_2_fu_512_p1 = t_V_2_reg_363;

assign zext_ln544_3_fu_522_p1 = t_V_2_reg_363_pp1_iter1_reg;

assign zext_ln544_fu_442_p1 = t_V_1_0_reg_259;

always @ (posedge ap_clk) begin
    row_ind_2_V_load_reg_669[12:2] <= 11'b00000000000;
    row_ind_2_V_5_load_reg_674[12:2] <= 11'b00000000000;
    row_ind_2_V_6_load_reg_679[12:2] <= 11'b00000000000;
    row_ind_2_V_fu_90[12:2] <= 11'b00000000000;
    row_ind_2_V_5_fu_94[12:2] <= 11'b00000000000;
    row_ind_2_V_6_fu_98[12:2] <= 11'b00000000000;
end

endmodule //xferode790