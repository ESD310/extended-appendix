// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Thu Nov 21 10:28:14 2024
// Host        : AxelsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_PosUpdateLatch_0_0/design_1_PosUpdateLatch_0_0_sim_netlist.v
// Design      : design_1_PosUpdateLatch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PosUpdateLatch_0_0,PosUpdateLatch,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PosUpdateLatch,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module design_1_PosUpdateLatch_0_0
   (clk_12M,
    CS,
    DataValidOut,
    posUpdateFlag);
  input clk_12M;
  input CS;
  input DataValidOut;
  output posUpdateFlag;

  wire CS;
  wire DataValidOut;
  wire clk_12M;
  wire posUpdateFlag;

  design_1_PosUpdateLatch_0_0_PosUpdateLatch U0
       (.CS(CS),
        .DataValidOut(DataValidOut),
        .clk_12M(clk_12M),
        .posUpdateFlag(posUpdateFlag));
endmodule

(* ORIG_REF_NAME = "PosUpdateLatch" *) 
module design_1_PosUpdateLatch_0_0_PosUpdateLatch
   (posUpdateFlag,
    DataValidOut,
    CS,
    clk_12M);
  output posUpdateFlag;
  input DataValidOut;
  input CS;
  input clk_12M;

  wire CS;
  wire DataValidOut;
  wire clk_12M;
  wire lastCS;
  wire lastDataValidOut;
  wire posUpdateFlag;
  wire posUpdateFlag_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    lastCS_reg
       (.C(clk_12M),
        .CE(1'b1),
        .D(CS),
        .Q(lastCS),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lastDataValidOut_reg
       (.C(clk_12M),
        .CE(1'b1),
        .D(DataValidOut),
        .Q(lastDataValidOut),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAE00AEAE)) 
    posUpdateFlag_i_1
       (.I0(posUpdateFlag),
        .I1(DataValidOut),
        .I2(lastDataValidOut),
        .I3(CS),
        .I4(lastCS),
        .O(posUpdateFlag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    posUpdateFlag_reg
       (.C(clk_12M),
        .CE(1'b1),
        .D(posUpdateFlag_i_1_n_0),
        .Q(posUpdateFlag),
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
