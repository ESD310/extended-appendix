// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Thu Nov 21 10:28:14 2024
// Host        : AxelsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_PosUpdateLatch_0_0/design_1_PosUpdateLatch_0_0_stub.v
// Design      : design_1_PosUpdateLatch_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PosUpdateLatch,Vivado 2024.1.2" *)
module design_1_PosUpdateLatch_0_0(clk_12M, CS, DataValidOut, posUpdateFlag)
/* synthesis syn_black_box black_box_pad_pin="CS,DataValidOut,posUpdateFlag" */
/* synthesis syn_force_seq_prim="clk_12M" */;
  input clk_12M /* synthesis syn_isclock = 1 */;
  input CS;
  input DataValidOut;
  output posUpdateFlag;
endmodule