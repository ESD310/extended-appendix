-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Tue Dec  3 10:22:53 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_AlgM_0_0/design_1_AlgM_0_0_stub.vhdl
-- Design      : design_1_AlgM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_AlgM_0_0 is
  Port ( 
    reset : in STD_LOGIC;
    clk_alg : in STD_LOGIC;
    ToFDataReady : in STD_LOGIC;
    dataValidOut : out STD_LOGIC;
    ToF : in STD_LOGIC_VECTOR ( 12 downto 0 );
    satPos_x : in STD_LOGIC_VECTOR ( 21 downto 0 );
    satPos_y : in STD_LOGIC_VECTOR ( 21 downto 0 );
    satPos_z : in STD_LOGIC_VECTOR ( 21 downto 0 );
    lastPos_x : in STD_LOGIC_VECTOR ( 21 downto 0 );
    lastPos_y : in STD_LOGIC_VECTOR ( 21 downto 0 );
    lastPos_z : in STD_LOGIC_VECTOR ( 21 downto 0 );
    newPos_x : out STD_LOGIC_VECTOR ( 21 downto 0 );
    newPos_y : out STD_LOGIC_VECTOR ( 21 downto 0 );
    newPos_z : out STD_LOGIC_VECTOR ( 21 downto 0 )
  );

end design_1_AlgM_0_0;

architecture stub of design_1_AlgM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,clk_alg,ToFDataReady,dataValidOut,ToF[12:0],satPos_x[21:0],satPos_y[21:0],satPos_z[21:0],lastPos_x[21:0],lastPos_y[21:0],lastPos_z[21:0],newPos_x[21:0],newPos_y[21:0],newPos_z[21:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AlgM,Vivado 2024.1.2";
begin
end;
