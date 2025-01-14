// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module get_vegetation_image_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        min_value_V_dout,
        min_value_V_empty_n,
        min_value_V_read,
        p_read,
        min_value_V_out_din,
        min_value_V_out_full_n,
        min_value_V_out_write,
        ap_return
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [27:0] min_value_V_dout;
input   min_value_V_empty_n;
output   min_value_V_read;
input  [23:0] p_read;
output  [27:0] min_value_V_out_din;
input   min_value_V_out_full_n;
output   min_value_V_out_write;
output  [23:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg min_value_V_read;
reg min_value_V_out_write;
reg[23:0] ap_return;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    min_value_V_blk_n;
reg    min_value_V_out_blk_n;
reg    ap_block_state1;
wire   [23:0] trunc_ln700_fu_46_p1;
wire   [23:0] sub_ln703_fu_50_p2;
reg   [23:0] ap_return_preg;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_return_preg = 24'd0;
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
        end else if ((~((ap_start == 1'b0) | (min_value_V_out_full_n == 1'b0) | (min_value_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 24'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (min_value_V_out_full_n == 1'b0) | (min_value_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_preg <= sub_ln703_fu_50_p2;
        end
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (min_value_V_out_full_n == 1'b0) | (min_value_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((ap_start == 1'b0) | (min_value_V_out_full_n == 1'b0) | (min_value_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (min_value_V_out_full_n == 1'b0) | (min_value_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return = sub_ln703_fu_50_p2;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        min_value_V_blk_n = min_value_V_empty_n;
    end else begin
        min_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        min_value_V_out_blk_n = min_value_V_out_full_n;
    end else begin
        min_value_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (min_value_V_out_full_n == 1'b0) | (min_value_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        min_value_V_out_write = 1'b1;
    end else begin
        min_value_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (min_value_V_out_full_n == 1'b0) | (min_value_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        min_value_V_read = 1'b1;
    end else begin
        min_value_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (min_value_V_out_full_n == 1'b0) | (min_value_V_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign min_value_V_out_din = min_value_V_dout;

assign sub_ln703_fu_50_p2 = (p_read - trunc_ln700_fu_46_p1);

assign trunc_ln700_fu_46_p1 = min_value_V_dout[23:0];

endmodule //get_vegetation_image_2
