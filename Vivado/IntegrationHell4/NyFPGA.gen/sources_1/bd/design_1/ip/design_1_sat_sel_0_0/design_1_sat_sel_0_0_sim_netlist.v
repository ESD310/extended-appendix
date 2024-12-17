// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Tue Dec  3 10:22:35 2024
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
  output [21:0]sat_pos_x;
  output [21:0]sat_pos_y;
  output [21:0]sat_pos_z;

  wire \<const0> ;
  wire [1:0]address;
  wire clk;
  wire [11:11]\^sat_pos_x ;
  wire [17:17]\^sat_pos_y ;
  wire [17:8]\^sat_pos_z ;

  assign sat_pos_x[21] = \^sat_pos_z [9];
  assign sat_pos_x[20] = \^sat_pos_z [9];
  assign sat_pos_x[19] = \^sat_pos_z [9];
  assign sat_pos_x[18] = \^sat_pos_z [9];
  assign sat_pos_x[17] = \^sat_pos_z [11];
  assign sat_pos_x[16] = \^sat_pos_z [9];
  assign sat_pos_x[15] = \^sat_pos_y [17];
  assign sat_pos_x[14] = \^sat_pos_x [11];
  assign sat_pos_x[13] = \^sat_pos_z [9];
  assign sat_pos_x[12] = \^sat_pos_z [11];
  assign sat_pos_x[11] = \^sat_pos_x [11];
  assign sat_pos_x[10] = \<const0> ;
  assign sat_pos_x[9] = \^sat_pos_z [8];
  assign sat_pos_x[8] = \^sat_pos_x [11];
  assign sat_pos_x[7] = \^sat_pos_x [11];
  assign sat_pos_x[6] = \^sat_pos_y [17];
  assign sat_pos_x[5] = \^sat_pos_y [17];
  assign sat_pos_x[4] = \^sat_pos_y [17];
  assign sat_pos_x[3] = \^sat_pos_y [17];
  assign sat_pos_x[2] = \^sat_pos_z [11];
  assign sat_pos_x[1] = \<const0> ;
  assign sat_pos_x[0] = \<const0> ;
  assign sat_pos_y[21] = \^sat_pos_x [11];
  assign sat_pos_y[20] = \^sat_pos_x [11];
  assign sat_pos_y[19] = \^sat_pos_x [11];
  assign sat_pos_y[18] = \^sat_pos_x [11];
  assign sat_pos_y[17] = \^sat_pos_y [17];
  assign sat_pos_y[16] = \^sat_pos_z [17];
  assign sat_pos_y[15] = \^sat_pos_y [17];
  assign sat_pos_y[14] = \<const0> ;
  assign sat_pos_y[13] = \<const0> ;
  assign sat_pos_y[12] = \^sat_pos_y [17];
  assign sat_pos_y[11] = \^sat_pos_x [11];
  assign sat_pos_y[10] = \^sat_pos_x [11];
  assign sat_pos_y[9] = \^sat_pos_z [17];
  assign sat_pos_y[8] = \<const0> ;
  assign sat_pos_y[7] = \^sat_pos_x [11];
  assign sat_pos_y[6] = \^sat_pos_x [11];
  assign sat_pos_y[5] = \^sat_pos_x [11];
  assign sat_pos_y[4] = \^sat_pos_y [17];
  assign sat_pos_y[3] = \<const0> ;
  assign sat_pos_y[2] = \<const0> ;
  assign sat_pos_y[1] = \<const0> ;
  assign sat_pos_y[0] = \<const0> ;
  assign sat_pos_z[21] = \<const0> ;
  assign sat_pos_z[20] = \<const0> ;
  assign sat_pos_z[19] = \<const0> ;
  assign sat_pos_z[18] = \<const0> ;
  assign sat_pos_z[17] = \^sat_pos_z [17];
  assign sat_pos_z[16] = \^sat_pos_z [17];
  assign sat_pos_z[15] = \<const0> ;
  assign sat_pos_z[14] = \^sat_pos_z [17];
  assign sat_pos_z[13] = \^sat_pos_z [17];
  assign sat_pos_z[12:11] = \^sat_pos_z [12:11];
  assign sat_pos_z[10] = \^sat_pos_z [11];
  assign sat_pos_z[9:8] = \^sat_pos_z [9:8];
  assign sat_pos_z[7] = \^sat_pos_z [11];
  assign sat_pos_z[6] = \^sat_pos_y [17];
  assign sat_pos_z[5] = \^sat_pos_z [11];
  assign sat_pos_z[4] = \^sat_pos_z [11];
  assign sat_pos_z[3] = \^sat_pos_x [11];
  assign sat_pos_z[2] = \^sat_pos_z [11];
  assign sat_pos_z[1] = \<const0> ;
  assign sat_pos_z[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_sat_sel_0_0_sat_sel U0
       (.address(address),
        .clk(clk),
        .sat_pos_z({\^sat_pos_z [17],\^sat_pos_z [12:11],\^sat_pos_z [9:8],\^sat_pos_y ,\^sat_pos_x }));
endmodule

(* ORIG_REF_NAME = "Sat_LUT_m" *) 
module design_1_sat_sel_0_0_Sat_LUT_m
   (sat_pos_z_LUT,
    sat_pos_x_LUT,
    sat_pos_y_LUT,
    clk,
    address);
  output [0:0]sat_pos_z_LUT;
  output [4:0]sat_pos_x_LUT;
  output [0:0]sat_pos_y_LUT;
  input clk;
  input [1:0]address;

  wire [1:0]address;
  wire clk;
  wire p_0_in0;
  wire [16:16]\positions[0][y] ;
  wire [12:12]\positions[0][z] ;
  wire [4:0]sat_pos_x_LUT;
  wire \sat_pos_x_LUT[15]_i_1_n_0 ;
  wire \sat_pos_x_LUT[17]_i_1_n_0 ;
  wire \sat_pos_x_LUT[21]_i_1_n_0 ;
  wire \sat_pos_x_LUT[9]_i_1_n_0 ;
  wire [0:0]sat_pos_y_LUT;
  wire [0:0]sat_pos_z_LUT;

  LUT1 #(
    .INIT(2'h1)) 
    \sat_pos_x_LUT[14]_i_1 
       (.I0(address[1]),
        .O(p_0_in0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sat_pos_x_LUT[15]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .O(\sat_pos_x_LUT[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sat_pos_x_LUT[17]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .O(\sat_pos_x_LUT[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sat_pos_x_LUT[21]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .O(\sat_pos_x_LUT[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sat_pos_x_LUT[9]_i_1 
       (.I0(address[0]),
        .O(\sat_pos_x_LUT[9]_i_1_n_0 ));
  FDRE \sat_pos_x_LUT_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in0),
        .Q(sat_pos_x_LUT[1]),
        .R(1'b0));
  FDRE \sat_pos_x_LUT_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\sat_pos_x_LUT[15]_i_1_n_0 ),
        .Q(sat_pos_x_LUT[2]),
        .R(1'b0));
  FDRE \sat_pos_x_LUT_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\sat_pos_x_LUT[17]_i_1_n_0 ),
        .Q(sat_pos_x_LUT[3]),
        .R(1'b0));
  FDRE \sat_pos_x_LUT_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\sat_pos_x_LUT[21]_i_1_n_0 ),
        .Q(sat_pos_x_LUT[4]),
        .R(1'b0));
  FDRE \sat_pos_x_LUT_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\sat_pos_x_LUT[9]_i_1_n_0 ),
        .Q(sat_pos_x_LUT[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sat_pos_y_LUT[16]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .O(\positions[0][y] ));
  FDRE \sat_pos_y_LUT_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\positions[0][y] ),
        .Q(sat_pos_y_LUT),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_pos_z_LUT[12]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .O(\positions[0][z] ));
  FDRE \sat_pos_z_LUT_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\positions[0][z] ),
        .Q(sat_pos_z_LUT),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sat_sel" *) 
module design_1_sat_sel_0_0_sat_sel
   (sat_pos_z,
    clk,
    address);
  output [6:0]sat_pos_z;
  input clk;
  input [1:0]address;

  wire [1:0]address;
  wire clk;
  wire [21:9]sat_pos_x_LUT;
  wire [16:16]sat_pos_y_LUT;
  wire [6:0]sat_pos_z;
  wire [12:12]sat_pos_z_LUT;

  design_1_sat_sel_0_0_Sat_LUT_m sat_LUT_instance
       (.address(address),
        .clk(clk),
        .sat_pos_x_LUT({sat_pos_x_LUT[21],sat_pos_x_LUT[17],sat_pos_x_LUT[15:14],sat_pos_x_LUT[9]}),
        .sat_pos_y_LUT(sat_pos_y_LUT),
        .sat_pos_z_LUT(sat_pos_z_LUT));
  FDRE \sat_pos_x_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_x_LUT[14]),
        .Q(sat_pos_z[0]),
        .R(1'b0));
  FDRE \sat_pos_x_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_x_LUT[15]),
        .Q(sat_pos_z[1]),
        .R(1'b0));
  FDRE \sat_pos_x_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_x_LUT[17]),
        .Q(sat_pos_z[4]),
        .R(1'b0));
  FDRE \sat_pos_x_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_x_LUT[21]),
        .Q(sat_pos_z[3]),
        .R(1'b0));
  FDRE \sat_pos_x_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_x_LUT[9]),
        .Q(sat_pos_z[2]),
        .R(1'b0));
  FDRE \sat_pos_y_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_y_LUT),
        .Q(sat_pos_z[6]),
        .R(1'b0));
  FDRE \sat_pos_z_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(sat_pos_z_LUT),
        .Q(sat_pos_z[5]),
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
