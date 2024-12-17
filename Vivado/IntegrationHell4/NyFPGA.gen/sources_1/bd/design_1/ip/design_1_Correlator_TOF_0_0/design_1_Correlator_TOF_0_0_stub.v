// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Wed Nov 27 13:08:11 2024
// Host        : AxelsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_Correlator_TOF_0_0/design_1_Correlator_TOF_0_0_stub.v
// Design      : design_1_Correlator_TOF_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Correlator_TOF,Vivado 2024.1.2" *)
module design_1_Correlator_TOF_0_0(clk, start, Sample, sample_ready, samples_to_run, 
  TOF_out, TOF_ready, currentStateDebug)
/* synthesis syn_black_box black_box_pad_pin="start,Sample[11:0],sample_ready,samples_to_run[15:0],TOF_out[15:0],TOF_ready,currentStateDebug[3:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input start;
  input [11:0]Sample;
  input sample_ready;
  input [15:0]samples_to_run;
  output [15:0]TOF_out;
  output TOF_ready;
  output [3:0]currentStateDebug;
endmodule
