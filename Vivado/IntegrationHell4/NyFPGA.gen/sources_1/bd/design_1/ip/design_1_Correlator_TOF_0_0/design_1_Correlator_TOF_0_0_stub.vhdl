-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Wed Nov 27 13:08:11 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_Correlator_TOF_0_0/design_1_Correlator_TOF_0_0_stub.vhdl
-- Design      : design_1_Correlator_TOF_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Correlator_TOF_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    Sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_ready : in STD_LOGIC;
    samples_to_run : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TOF_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TOF_ready : out STD_LOGIC;
    currentStateDebug : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_Correlator_TOF_0_0;

architecture stub of design_1_Correlator_TOF_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,start,Sample[11:0],sample_ready,samples_to_run[15:0],TOF_out[15:0],TOF_ready,currentStateDebug[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Correlator_TOF,Vivado 2024.1.2";
begin
end;
