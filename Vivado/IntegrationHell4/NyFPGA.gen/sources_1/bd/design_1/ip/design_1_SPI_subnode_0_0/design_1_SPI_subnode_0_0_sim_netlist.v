// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Thu Nov 28 10:28:19 2024
// Host        : AxelsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_SPI_subnode_0_0/design_1_SPI_subnode_0_0_sim_netlist.v
// Design      : design_1_SPI_subnode_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SPI_subnode_0_0,SPI_subnode,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SPI_subnode,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module design_1_SPI_subnode_0_0
   (CS,
    MISO,
    SCK,
    CLK,
    X_pos,
    Y_pos,
    Z_pos,
    ToF);
  input CS;
  output MISO;
  input SCK;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  input [21:0]X_pos;
  input [21:0]Y_pos;
  input [21:0]Z_pos;
  input [12:0]ToF;

  wire CLK;
  wire CS;
  wire MISO;
  wire SCK;
  wire [12:0]ToF;
  wire [21:0]X_pos;
  wire [21:0]Y_pos;
  wire [21:0]Z_pos;

  design_1_SPI_subnode_0_0_SPI_subnode U0
       (.CLK(CLK),
        .CS(CS),
        .MISO(MISO),
        .SCK(SCK),
        .ToF(ToF),
        .X_pos(X_pos),
        .Y_pos(Y_pos),
        .Z_pos(Z_pos));
endmodule

(* ORIG_REF_NAME = "SPI_subnode" *) 
module design_1_SPI_subnode_0_0_SPI_subnode
   (MISO,
    CS,
    CLK,
    SCK,
    ToF,
    Y_pos,
    Z_pos,
    X_pos);
  output MISO;
  input CS;
  input CLK;
  input SCK;
  input [12:0]ToF;
  input [21:0]Y_pos;
  input [21:0]Z_pos;
  input [21:0]X_pos;

  wire CLK;
  wire CS;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire MISO;
  wire SCK;
  wire [12:0]ToF;
  wire [21:0]X_pos;
  wire [21:0]Y_pos;
  wire [21:0]Z_pos;
  wire bit_count;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[3]_i_1_n_0 ;
  wire \bit_count[4]_i_2_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire \bit_count_reg_n_0_[3] ;
  wire \bit_count_reg_n_0_[4] ;
  wire \byte_count[0]_i_1_n_0 ;
  wire \byte_count[1]_i_1_n_0 ;
  wire \byte_count_reg_n_0_[0] ;
  wire \byte_count_reg_n_0_[1] ;
  wire [2:0]current_state;
  wire current_state__3;
  wire [21:0]in4;
  wire miso_reg_i_1_n_0;
  wire miso_reg_reg_n_0;
  wire p_0_in;
  wire [1:1]p_0_in1_in;
  wire sck_falling;
  wire sck_falling_i_1_n_0;
  wire \sck_sync[0]_i_1_n_0 ;
  wire \sck_sync[1]_i_1_n_0 ;
  wire \sck_sync_reg_n_0_[1] ;
  wire [23:0]shift_out;
  wire shift_out_0;
  wire \shift_out_reg_n_0_[0] ;
  wire \shift_out_reg_n_0_[10] ;
  wire \shift_out_reg_n_0_[11] ;
  wire \shift_out_reg_n_0_[12] ;
  wire \shift_out_reg_n_0_[13] ;
  wire \shift_out_reg_n_0_[14] ;
  wire \shift_out_reg_n_0_[15] ;
  wire \shift_out_reg_n_0_[16] ;
  wire \shift_out_reg_n_0_[17] ;
  wire \shift_out_reg_n_0_[18] ;
  wire \shift_out_reg_n_0_[19] ;
  wire \shift_out_reg_n_0_[1] ;
  wire \shift_out_reg_n_0_[20] ;
  wire \shift_out_reg_n_0_[21] ;
  wire \shift_out_reg_n_0_[22] ;
  wire \shift_out_reg_n_0_[2] ;
  wire \shift_out_reg_n_0_[3] ;
  wire \shift_out_reg_n_0_[4] ;
  wire \shift_out_reg_n_0_[5] ;
  wire \shift_out_reg_n_0_[6] ;
  wire \shift_out_reg_n_0_[7] ;
  wire \shift_out_reg_n_0_[8] ;
  wire \shift_out_reg_n_0_[9] ;

  LUT6 #(
    .INIT(64'hF7F70F00F0F00F0F)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\byte_count_reg_n_0_[1] ),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(current_state[2]),
        .I3(current_state__3),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(sck_falling),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[4] ),
        .I5(\bit_count_reg_n_0_[3] ),
        .O(current_state__3));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8F0F0F0)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\byte_count_reg_n_0_[0] ),
        .I1(\byte_count_reg_n_0_[1] ),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,shift:010,next_vector:011,load_vector:001,done:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "idle:000,shift:010,next_vector:011,load_vector:001,done:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "idle:000,shift:010,next_vector:011,load_vector:001,done:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .Q(current_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    MISO_INST_0
       (.I0(CS),
        .I1(miso_reg_reg_n_0),
        .O(MISO));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \bit_count[3]_i_1 
       (.I0(\bit_count_reg_n_0_[4] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .O(\bit_count[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \bit_count[4]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(sck_falling),
        .O(bit_count));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA2AAA)) 
    \bit_count[4]_i_2 
       (.I0(\bit_count_reg_n_0_[4] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .O(\bit_count[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(CLK),
        .CE(bit_count),
        .CLR(CS),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(CLK),
        .CE(bit_count),
        .CLR(CS),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(CLK),
        .CE(bit_count),
        .CLR(CS),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(CLK),
        .CE(bit_count),
        .CLR(CS),
        .D(\bit_count[3]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[4] 
       (.C(CLK),
        .CE(bit_count),
        .CLR(CS),
        .D(\bit_count[4]_i_2_n_0 ),
        .Q(\bit_count_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \byte_count[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\byte_count_reg_n_0_[0] ),
        .O(\byte_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \byte_count[1]_i_1 
       (.I0(\byte_count_reg_n_0_[0] ),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\byte_count_reg_n_0_[1] ),
        .O(\byte_count[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\byte_count[0]_i_1_n_0 ),
        .Q(\byte_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\byte_count[1]_i_1_n_0 ),
        .Q(\byte_count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    miso_reg_i_1
       (.I0(p_0_in),
        .I1(bit_count),
        .I2(CS),
        .I3(miso_reg_reg_n_0),
        .O(miso_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    miso_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(miso_reg_i_1_n_0),
        .Q(miso_reg_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sck_falling_i_1
       (.I0(p_0_in1_in),
        .I1(\sck_sync_reg_n_0_[1] ),
        .I2(CS),
        .O(sck_falling_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sck_falling_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sck_falling_i_1_n_0),
        .Q(sck_falling),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE2)) 
    \sck_sync[0]_i_1 
       (.I0(SCK),
        .I1(CS),
        .I2(p_0_in1_in),
        .O(\sck_sync[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sck_sync[1]_i_1 
       (.I0(p_0_in1_in),
        .I1(CS),
        .I2(\sck_sync_reg_n_0_[1] ),
        .O(\sck_sync[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sck_sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sck_sync[0]_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sck_sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sck_sync[1]_i_1_n_0 ),
        .Q(\sck_sync_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_out[0]_i_1 
       (.I0(in4[0]),
        .I1(current_state[1]),
        .O(shift_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[0]_i_2 
       (.I0(ToF[0]),
        .I1(Y_pos[0]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[0]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[0]),
        .O(in4[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[10]_i_1 
       (.I0(in4[10]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[9] ),
        .O(shift_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[10]_i_2 
       (.I0(ToF[10]),
        .I1(Y_pos[10]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[10]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[10]),
        .O(in4[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[11]_i_1 
       (.I0(in4[11]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[10] ),
        .O(shift_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[11]_i_2 
       (.I0(ToF[11]),
        .I1(Y_pos[11]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[11]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[11]),
        .O(in4[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[12]_i_1 
       (.I0(in4[12]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[11] ),
        .O(shift_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[12]_i_2 
       (.I0(ToF[12]),
        .I1(Y_pos[12]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[12]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[12]),
        .O(in4[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[13]_i_1 
       (.I0(in4[13]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[12] ),
        .O(shift_out[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[13]_i_2 
       (.I0(Y_pos[13]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[13]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[13]),
        .O(in4[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[14]_i_1 
       (.I0(in4[14]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[13] ),
        .O(shift_out[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[14]_i_2 
       (.I0(Y_pos[14]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[14]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[14]),
        .O(in4[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[15]_i_1 
       (.I0(in4[15]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[14] ),
        .O(shift_out[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[15]_i_2 
       (.I0(Y_pos[15]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[15]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[15]),
        .O(in4[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[16]_i_1 
       (.I0(in4[16]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[15] ),
        .O(shift_out[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[16]_i_2 
       (.I0(Y_pos[16]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[16]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[16]),
        .O(in4[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[17]_i_1 
       (.I0(in4[17]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[16] ),
        .O(shift_out[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[17]_i_2 
       (.I0(Y_pos[17]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[17]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[17]),
        .O(in4[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[18]_i_1 
       (.I0(in4[18]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[17] ),
        .O(shift_out[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[18]_i_2 
       (.I0(Y_pos[18]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[18]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[18]),
        .O(in4[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[19]_i_1 
       (.I0(in4[19]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[18] ),
        .O(shift_out[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[19]_i_2 
       (.I0(Y_pos[19]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[19]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[19]),
        .O(in4[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[1]_i_1 
       (.I0(in4[1]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[0] ),
        .O(shift_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[1]_i_2 
       (.I0(ToF[1]),
        .I1(Y_pos[1]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[1]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[1]),
        .O(in4[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[20]_i_1 
       (.I0(in4[20]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[19] ),
        .O(shift_out[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[20]_i_2 
       (.I0(Y_pos[20]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[20]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[20]),
        .O(in4[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[21]_i_1 
       (.I0(in4[21]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[20] ),
        .O(shift_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shift_out[21]_i_2 
       (.I0(Y_pos[21]),
        .I1(\byte_count_reg_n_0_[0] ),
        .I2(Z_pos[21]),
        .I3(\byte_count_reg_n_0_[1] ),
        .I4(X_pos[21]),
        .O(in4[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_out[22]_i_1 
       (.I0(current_state[1]),
        .I1(\shift_out_reg_n_0_[21] ),
        .O(shift_out[22]));
  LUT4 #(
    .INIT(16'h0540)) 
    \shift_out[23]_i_1 
       (.I0(current_state[2]),
        .I1(sck_falling),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(shift_out_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_out[23]_i_2 
       (.I0(current_state[1]),
        .I1(\shift_out_reg_n_0_[22] ),
        .O(shift_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[2]_i_1 
       (.I0(in4[2]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[1] ),
        .O(shift_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[2]_i_2 
       (.I0(ToF[2]),
        .I1(Y_pos[2]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[2]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[2]),
        .O(in4[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[3]_i_1 
       (.I0(in4[3]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[2] ),
        .O(shift_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[3]_i_2 
       (.I0(ToF[3]),
        .I1(Y_pos[3]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[3]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[3]),
        .O(in4[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[4]_i_1 
       (.I0(in4[4]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[3] ),
        .O(shift_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[4]_i_2 
       (.I0(ToF[4]),
        .I1(Y_pos[4]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[4]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[4]),
        .O(in4[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[5]_i_1 
       (.I0(in4[5]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[4] ),
        .O(shift_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[5]_i_2 
       (.I0(ToF[5]),
        .I1(Y_pos[5]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[5]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[5]),
        .O(in4[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[6]_i_1 
       (.I0(in4[6]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[5] ),
        .O(shift_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[6]_i_2 
       (.I0(ToF[6]),
        .I1(Y_pos[6]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[6]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[6]),
        .O(in4[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[7]_i_1 
       (.I0(in4[7]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[6] ),
        .O(shift_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[7]_i_2 
       (.I0(ToF[7]),
        .I1(Y_pos[7]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[7]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[7]),
        .O(in4[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[8]_i_1 
       (.I0(in4[8]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[7] ),
        .O(shift_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[8]_i_2 
       (.I0(ToF[8]),
        .I1(Y_pos[8]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[8]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[8]),
        .O(in4[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \shift_out[9]_i_1 
       (.I0(in4[9]),
        .I1(current_state[1]),
        .I2(\shift_out_reg_n_0_[8] ),
        .O(shift_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_out[9]_i_2 
       (.I0(ToF[9]),
        .I1(Y_pos[9]),
        .I2(\byte_count_reg_n_0_[0] ),
        .I3(Z_pos[9]),
        .I4(\byte_count_reg_n_0_[1] ),
        .I5(X_pos[9]),
        .O(in4[9]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[0] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[0]),
        .Q(\shift_out_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[10] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[10]),
        .Q(\shift_out_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[11] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[11]),
        .Q(\shift_out_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[12] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[12]),
        .Q(\shift_out_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[13] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[13]),
        .Q(\shift_out_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[14] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[14]),
        .Q(\shift_out_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[15] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[15]),
        .Q(\shift_out_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[16] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[16]),
        .Q(\shift_out_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[17] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[17]),
        .Q(\shift_out_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[18] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[18]),
        .Q(\shift_out_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[19] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[19]),
        .Q(\shift_out_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[1] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[1]),
        .Q(\shift_out_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[20] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[20]),
        .Q(\shift_out_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[21] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[21]),
        .Q(\shift_out_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[22] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[22]),
        .Q(\shift_out_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[23] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[23]),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[2] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[2]),
        .Q(\shift_out_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[3] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[3]),
        .Q(\shift_out_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[4] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[4]),
        .Q(\shift_out_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[5] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[5]),
        .Q(\shift_out_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[6] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[6]),
        .Q(\shift_out_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[7] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[7]),
        .Q(\shift_out_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[8] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[8]),
        .Q(\shift_out_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_out_reg[9] 
       (.C(CLK),
        .CE(shift_out_0),
        .CLR(CS),
        .D(shift_out[9]),
        .Q(\shift_out_reg_n_0_[9] ));
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
