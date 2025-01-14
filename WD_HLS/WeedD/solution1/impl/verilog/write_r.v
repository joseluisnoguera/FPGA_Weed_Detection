// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module write_r (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        val_V,
        Mat_9_720_1280_1_data_V_addr_din,
        Mat_9_720_1280_1_data_V_addr_full_n,
        Mat_9_720_1280_1_data_V_addr_write,
        Mat_9_720_1280_1_data_V_addr_blk_n,
        ap_ce
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] val_V;
output  [23:0] Mat_9_720_1280_1_data_V_addr_din;
input   Mat_9_720_1280_1_data_V_addr_full_n;
output   Mat_9_720_1280_1_data_V_addr_write;
output   Mat_9_720_1280_1_data_V_addr_blk_n;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg Mat_9_720_1280_1_data_V_addr_write;
reg Mat_9_720_1280_1_data_V_addr_blk_n;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        Mat_9_720_1280_1_data_V_addr_blk_n = Mat_9_720_1280_1_data_V_addr_full_n;
    end else begin
        Mat_9_720_1280_1_data_V_addr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b0 == Mat_9_720_1280_1_data_V_addr_full_n)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        Mat_9_720_1280_1_data_V_addr_write = 1'b1;
    end else begin
        Mat_9_720_1280_1_data_V_addr_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (1'b0 == Mat_9_720_1280_1_data_V_addr_full_n)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((~((ap_start == 1'b0) | (1'b0 == Mat_9_720_1280_1_data_V_addr_full_n)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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

assign Mat_9_720_1280_1_data_V_addr_din = val_V;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (1'b0 == Mat_9_720_1280_1_data_V_addr_full_n));
end

endmodule //write_r
