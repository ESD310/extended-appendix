// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Mon Nov 25 10:24:17 2024
// Host        : AxelsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_sat_sel_0_0/design_1_sat_sel_0_0_sim_netlist.v
// Design      : design_1_sat_sel_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sat_sel_0_0,sat_sel,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sat_sel,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module design_1_sat_sel_0_0
   (clk,
    address,
    sat_pos_x,
    sat_pos_y,
    sat_pos_z);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input [1:0]address;
  output [20:0]sat_pos_x;
  output [20:0]sat_pos_y;
  output [20:0]sat_pos_z;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]address;
  wire clk;
  wire [15:13]\^sat_pos_x ;
  wire [18:18]\^sat_pos_y ;

  assign sat_pos_x[20] = \<const0> ;
  assign sat_pos_x[19] = \<const0> ;
  assign sat_pos_x[18] = \^sat_pos_x [13];
  assign sat_pos_x[17] = \<const0> ;
  assign sat_pos_x[16] = \^sat_pos_x [15];
  assign sat_pos_x[15] = \^sat_pos_x [15];
  assign sat_pos_x[14] = \^sat_pos_y [18];
  assign sat_pos_x[13] = \^sat_pos_x [13];
  assign sat_pos_x[12] = \^sat_pos_x [15];
  assign sat_pos_x[11] = \<const0> ;
  assign sat_pos_x[10] = \^sat_pos_x [15];
  assign sat_pos_x[9] = \<const0> ;
  assign sat_pos_x[8] = \<const0> ;
  assign sat_pos_x[7] = \^sat_pos_x [13];
  assign sat_pos_x[6] = \^sat_pos_x [15];
  assign sat_pos_x[5] = \^sat_pos_x [13];
  assign sat_pos_x[4] = \^sat_pos_x [15];
  assign sat_pos_x[3] = \^sat_pos_y [18];
  assign sat_pos_x[2] = \^sat_pos_y [18];
  assign sat_pos_x[1] = \<const0> ;
  assign sat_pos_x[0] = \<const0> ;
  assign sat_pos_y[20] = \<const0> ;
  assign sat_pos_y[19] = \<const0> ;
  assign sat_pos_y[18] = \^sat_pos_y [18];
  assign sat_pos_y[17] = \^sat_pos_y [18];
  assign sat_pos_y[16] = \<const0> ;
  assign sat_pos_y[15] = \^sat_pos_y [18];
  assign sat_pos_y[14] = \<const0> ;
  assign sat_pos_y[13] = \<const0> ;
  assign sat_pos_y[12] = \^sat_pos_y [18];
  assign sat_pos_y[11] = \<const0> ;
  assign sat_pos_y[10] = \<const0> ;
  assign sat_pos_y[9] = \^sat_pos_y [18];
  assign sat_pos_y[8] = \<const0> ;
  assign sat_pos_y[7] = \<const0> ;
  assign sat_pos_y[6] = \<const0> ;
  assign sat_pos_y[5] = \<const0> ;
  assign sat_pos_y[4] = \<const0> ;
  assign sat_pos_y[3] = \^sat_pos_y [18];
  assign sat_pos_y[2] = \<const0> ;
  assign sat_pos_y[1] = \<const0> ;
  assign sat_pos_y[0] = \<const0> ;
  assign sat_pos_z[20] = \<const0> ;
  assign sat_pos_z[19] = \<const0> ;
  assign sat_pos_z[18] = \<const0> ;
  assign sat_pos_z[17] = \<const1> ;
  assign sat_pos_z[16] = \<const0> ;
  assign sat_pos_z[15] = \<const1> ;
  assign sat_pos_z[14] = \<const0> ;
  assign sat_pos_z[13] = \<const0> ;
  assign sat_pos_z[12] = \<const0> ;
  assign sat_pos_z[11] = \<const0> ;
  assign sat_pos_z[10] = \<const1> ;
  assign sat_pos_z[9] = \<const0> ;
  assign sat_pos_z[8] = \<const0> ;
  assign sat_pos_z[7] = \<const1> ;
  assign sat_pos_z[6] = \<const0> ;
  assign sat_pos_z[5] = \<const0> ;
  assign sat_pos_z[4] = \<const0> ;
  assign sat_pos_z[3] = \<const1> ;
  assign sat_pos_z[2] = \<const0> ;
  assign sat_pos_z[1] = \<const0> ;
  assign sat_pos_z[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_sat_sel_0_0_sat_sel U0
       (.address(address),
        .clk(clk),
        .sat_pos_x({\^sat_pos_x [13],\^sat_pos_x [15],\^sat_pos_y }));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Sat_LUT_m" *) 
module design_1_sat_sel_0_0_Sat_LUT_m
   (sat_pos_x_LUT,
    clk,
    address);
  output [2:0]sat_pos_x_LUT;
  input clk;
  input [1:0]address;

  wire [1:0]address;
  wire clk;
  wire [18:14]\positions[0][x] ;
  wire [2:0]sat_pos_x_LUT;

  LUT2 #(
    .INIT(4'h2)) 
    \sat_pos_x_LUT[14]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .O(\positions[0][x] [14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_pos_x_LUT[16]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .O(\positions[0][x] [16]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sat_pos_x_LUT[18]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .O(\positions[0][x] [18]));
  FDRE \sat_pos_x_LUT_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\positions[0][x] [14]),
        .Q(sat_pos_x_LUT[0]),
        .R(1'b0));
  FDRE \sat_pos_x_LUT_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\positions[0][x] [16]),
        .Q(sat_pos_x_LUT[1]),
        .R(1'b0));
  FDRE \sat_pos_x_LUT_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\positions[0][x] [18]),
        .Q(sat_pos_x_LUT[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sat_sel" *) 
module design_1_sat_sel_0_0_sat_sel
   (sat_pos_x,
    clk,
    address);
  output [2:0]sat_pos_x;
  input clk;
  input [1:0]address;

  wire [1:0]address;
  wire clk;
  wire [2:0]sat_pos_x;
  wire [18:14]sat_pos_x_LUT;

  design_1_sat_sel_0_0_Sat_LUT_m sat_LUT_instance
       (.address(address),
        .clk(clk),
        .sat_pos_x_LUT({sat_pos_x_LUT[18],sat_pos_x_LUT[16],sat_pos_x_LUT[14]}));
  FDRE \sat_pos_x_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_x_LUT[14]),
        .Q(sat_pos_x[0]),
        .R(1'b0));
  FDRE \sat_pos_x_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_x_LUT[16]),
        .Q(sat_pos_x[1]),
        .R(1'b0));
  FDRE \sat_pos_x_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_x_LUT[18]),
        .Q(sat_pos_x[2]),
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
