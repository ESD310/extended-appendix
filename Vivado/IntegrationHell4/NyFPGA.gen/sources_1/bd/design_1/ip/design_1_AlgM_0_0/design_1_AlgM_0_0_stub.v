// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Tue Dec  3 10:22:53 2024
// Host        : AxelsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_AlgM_0_0/design_1_AlgM_0_0_stub.v
// Design      : design_1_AlgM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AlgM,Vivado 2024.1.2" *)
module design_1_AlgM_0_0(reset, clk_alg, ToFDataReady, dataValidOut, ToF, 
  satPos_x, satPos_y, satPos_z, lastPos_x, lastPos_y, lastPos_z, newPos_x, newPos_y, newPos_z)
/* synthesis syn_black_box black_box_pad_pin="reset,ToFDataReady,dataValidOut,ToF[12:0],satPos_x[21:0],satPos_y[21:0],satPos_z[21:0],lastPos_x[21:0],lastPos_y[21:0],lastPos_z[21:0],newPos_x[21:0],newPos_y[21:0],newPos_z[21:0]" */
/* synthesis syn_force_seq_prim="clk_alg" */;
  input reset;
  input clk_alg /* synthesis syn_isclock = 1 */;
  input ToFDataReady;
  output dataValidOut;
  input [12:0]ToF;
  input [21:0]satPos_x;
  input [21:0]satPos_y;
  input [21:0]satPos_z;
  input [21:0]lastPos_x;
  input [21:0]lastPos_y;
  input [21:0]lastPos_z;
  output [21:0]newPos_x;
  output [21:0]newPos_y;
  output [21:0]newPos_z;
endmodule
