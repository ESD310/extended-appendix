// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Wed Nov 20 11:55:43 2024
// Host        : AxelsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xpm_cdc_gen_0_0/design_1_xpm_cdc_gen_0_0_sim_netlist.v
// Design      : design_1_xpm_cdc_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xpm_cdc_gen_0_0,xpm_cdc_gen_v1_0_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xpm_cdc_gen_v1_0_4,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module design_1_xpm_cdc_gen_0_0
   (src_clk,
    dest_clk,
    src_pulse,
    dest_pulse);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 src_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src_signal_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input src_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dest_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input dest_clk;
  input src_pulse;
  output dest_pulse;

  wire dest_clk;
  wire dest_pulse;
  wire src_clk;
  wire src_pulse;
  wire NLW_inst_dest_arst_UNCONNECTED;
  wire NLW_inst_dest_req_UNCONNECTED;
  wire NLW_inst_dest_rst_out_UNCONNECTED;
  wire NLW_inst_src_rcv_UNCONNECTED;
  wire [1:0]NLW_inst_dest_out_UNCONNECTED;
  wire [1:0]NLW_inst_dest_out_bin_UNCONNECTED;

  (* C_CDC_TYPE = "5" *) 
  (* DEST_CLK_PERIOD = "2500" *) 
  (* DEST_EXT_HSK = "1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* RST_USED = "0" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* SRC_CLK_PERIOD = "5000" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* SRC_SYNC_FF = "4" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "2" *) 
  design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_4 inst
       (.dest_ack(1'b1),
        .dest_arst(NLW_inst_dest_arst_UNCONNECTED),
        .dest_clk(dest_clk),
        .dest_out(NLW_inst_dest_out_UNCONNECTED[1:0]),
        .dest_out_bin(NLW_inst_dest_out_bin_UNCONNECTED[1:0]),
        .dest_pulse(dest_pulse),
        .dest_req(NLW_inst_dest_req_UNCONNECTED),
        .dest_rst_in(1'b1),
        .dest_rst_out(NLW_inst_dest_rst_out_UNCONNECTED),
        .src_arst(1'b1),
        .src_clk(src_clk),
        .src_in({1'b0,1'b1}),
        .src_in_bin({1'b0,1'b1}),
        .src_pulse(src_pulse),
        .src_rcv(NLW_inst_src_rcv_UNCONNECTED),
        .src_rst(1'b1),
        .src_send(1'b1));
endmodule

(* C_CDC_TYPE = "5" *) (* DEST_CLK_PERIOD = "2500" *) (* DEST_EXT_HSK = "1" *) 
(* DEST_SYNC_FF = "4" *) (* INIT = "1" *) (* INIT_SYNC_FF = "1" *) 
(* ORIG_REF_NAME = "xpm_cdc_gen_v1_0_4" *) (* REG_OUTPUT = "0" *) (* RST_ACTIVE_HIGH = "0" *) 
(* RST_USED = "0" *) (* SIM_ASSERT_CHK = "1" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* SRC_CLK_PERIOD = "5000" *) (* SRC_INPUT_REG = "1" *) (* SRC_SYNC_FF = "4" *) 
(* VERSION = "0" *) (* WIDTH = "2" *) 
module design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_4
   (src_clk,
    dest_clk,
    src_in_bin,
    src_in,
    src_send,
    dest_ack,
    src_pulse,
    src_rst,
    dest_rst_in,
    src_arst,
    dest_out,
    dest_out_bin,
    src_rcv,
    dest_req,
    dest_pulse,
    dest_rst_out,
    dest_arst);
  input src_clk;
  input dest_clk;
  input [1:0]src_in_bin;
  input [1:0]src_in;
  input src_send;
  input dest_ack;
  input src_pulse;
  input src_rst;
  input dest_rst_in;
  input src_arst;
  output [1:0]dest_out;
  output [1:0]dest_out_bin;
  output src_rcv;
  output dest_req;
  output dest_pulse;
  output dest_rst_out;
  output dest_arst;

  wire \<const0> ;
  wire dest_clk;
  wire dest_pulse;
  wire src_clk;
  wire src_pulse;

  assign dest_arst = \<const0> ;
  assign dest_out[1] = \<const0> ;
  assign dest_out[0] = \<const0> ;
  assign dest_out_bin[1] = \<const0> ;
  assign dest_out_bin[0] = \<const0> ;
  assign dest_req = \<const0> ;
  assign dest_rst_out = \<const0> ;
  assign src_rcv = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "0" *) 
  (* RST_USED = "0" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_xpm_cdc_gen_0_0_xpm_cdc_pulse xpulse
       (.dest_clk(dest_clk),
        .dest_pulse(dest_pulse),
        .dest_rst(1'b1),
        .src_clk(src_clk),
        .src_pulse(src_pulse),
        .src_rst(1'b1));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_pulse" *) 
(* REG_OUTPUT = "0" *) (* RST_USED = "0" *) (* SIM_ASSERT_CHK = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "PULSE" *) 
module design_1_xpm_cdc_gen_0_0_xpm_cdc_pulse
   (src_clk,
    src_pulse,
    dest_clk,
    src_rst,
    dest_rst,
    dest_pulse);
  input src_clk;
  input src_pulse;
  input dest_clk;
  input src_rst;
  input dest_rst;
  output dest_pulse;

  wire dest_clk;
  wire dest_event_ff;
  wire dest_pulse;
  wire dest_sync_out;
  wire src_clk;
  wire src_in_ff;
  wire src_level_ff;
  wire src_level_nxt;
  wire src_pulse;

  FDRE dest_event_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_sync_out),
        .Q(dest_event_ff),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_pulse_INST_0
       (.I0(dest_event_ff),
        .I1(dest_sync_out),
        .O(dest_pulse));
  FDRE src_in_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_pulse),
        .Q(src_in_ff),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    src_level_ff_i_1
       (.I0(src_in_ff),
        .I1(src_pulse),
        .I2(src_level_ff),
        .O(src_level_nxt));
  FDRE #(
    .INIT(1'b0)) 
    src_level_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_level_nxt),
        .Q(src_level_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_xpm_cdc_gen_0_0_xpm_cdc_single xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(1'b0),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_xpm_cdc_gen_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif