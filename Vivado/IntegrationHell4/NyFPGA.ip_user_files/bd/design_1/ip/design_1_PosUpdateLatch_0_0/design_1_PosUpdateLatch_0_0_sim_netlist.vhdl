-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Thu Nov 21 10:28:15 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_PosUpdateLatch_0_0/design_1_PosUpdateLatch_0_0_sim_netlist.vhdl
-- Design      : design_1_PosUpdateLatch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PosUpdateLatch_0_0_PosUpdateLatch is
  port (
    posUpdateFlag : out STD_LOGIC;
    DataValidOut : in STD_LOGIC;
    CS : in STD_LOGIC;
    clk_12M : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PosUpdateLatch_0_0_PosUpdateLatch : entity is "PosUpdateLatch";
end design_1_PosUpdateLatch_0_0_PosUpdateLatch;

architecture STRUCTURE of design_1_PosUpdateLatch_0_0_PosUpdateLatch is
  signal lastCS : STD_LOGIC;
  signal lastDataValidOut : STD_LOGIC;
  signal \^posupdateflag\ : STD_LOGIC;
  signal posUpdateFlag_i_1_n_0 : STD_LOGIC;
begin
  posUpdateFlag <= \^posupdateflag\;
lastCS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12M,
      CE => '1',
      D => CS,
      Q => lastCS,
      R => '0'
    );
lastDataValidOut_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12M,
      CE => '1',
      D => DataValidOut,
      Q => lastDataValidOut,
      R => '0'
    );
posUpdateFlag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE00AEAE"
    )
        port map (
      I0 => \^posupdateflag\,
      I1 => DataValidOut,
      I2 => lastDataValidOut,
      I3 => CS,
      I4 => lastCS,
      O => posUpdateFlag_i_1_n_0
    );
posUpdateFlag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12M,
      CE => '1',
      D => posUpdateFlag_i_1_n_0,
      Q => \^posupdateflag\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PosUpdateLatch_0_0 is
  port (
    clk_12M : in STD_LOGIC;
    CS : in STD_LOGIC;
    DataValidOut : in STD_LOGIC;
    posUpdateFlag : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_PosUpdateLatch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_PosUpdateLatch_0_0 : entity is "design_1_PosUpdateLatch_0_0,PosUpdateLatch,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_PosUpdateLatch_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_PosUpdateLatch_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_PosUpdateLatch_0_0 : entity is "PosUpdateLatch,Vivado 2024.1.2";
end design_1_PosUpdateLatch_0_0;

architecture STRUCTURE of design_1_PosUpdateLatch_0_0 is
begin
U0: entity work.design_1_PosUpdateLatch_0_0_PosUpdateLatch
     port map (
      CS => CS,
      DataValidOut => DataValidOut,
      clk_12M => clk_12M,
      posUpdateFlag => posUpdateFlag
    );
end STRUCTURE;
