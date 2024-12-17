--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
--Date        : Tue Dec  3 10:20:59 2024
--Host        : AxelsPC running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CS : in STD_LOGIC;
    MISO : out STD_LOGIC;
    PosUpdateFlag : out STD_LOGIC;
    SCK : in STD_LOGIC;
    TOF_ready : out STD_LOGIC;
    Vaux1_v_n : in STD_LOGIC;
    Vaux1_v_p : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_in1 : in STD_LOGIC;
    currentStateDebug : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dataValidOut : out STD_LOGIC;
    dest_pulse : out STD_LOGIC;
    reset : in STD_LOGIC;
    start : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    Vaux1_v_n : in STD_LOGIC;
    Vaux1_v_p : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    start : in STD_LOGIC;
    TOF_ready : out STD_LOGIC;
    dataValidOut : out STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    CS : in STD_LOGIC;
    SCK : in STD_LOGIC;
    MISO : out STD_LOGIC;
    dest_pulse : out STD_LOGIC;
    PosUpdateFlag : out STD_LOGIC;
    currentStateDebug : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CS => CS,
      MISO => MISO,
      PosUpdateFlag => PosUpdateFlag,
      SCK => SCK,
      TOF_ready => TOF_ready,
      Vaux1_v_n => Vaux1_v_n,
      Vaux1_v_p => Vaux1_v_p,
      address(1 downto 0) => address(1 downto 0),
      clk_in1 => clk_in1,
      currentStateDebug(3 downto 0) => currentStateDebug(3 downto 0),
      dataValidOut => dataValidOut,
      dest_pulse => dest_pulse,
      reset => reset,
      start => start
    );
end STRUCTURE;
