-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Tue Dec  3 10:22:35 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_sat_sel_0_0/design_1_sat_sel_0_0_sim_netlist.vhdl
-- Design      : design_1_sat_sel_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sat_sel_0_0_Sat_LUT_m is
  port (
    sat_pos_z_LUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    sat_pos_x_LUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    sat_pos_y_LUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sat_sel_0_0_Sat_LUT_m : entity is "Sat_LUT_m";
end design_1_sat_sel_0_0_Sat_LUT_m;

architecture STRUCTURE of design_1_sat_sel_0_0_Sat_LUT_m is
  signal p_0_in0 : STD_LOGIC;
  signal \positions[0][y]\ : STD_LOGIC_VECTOR ( 16 to 16 );
  signal \positions[0][z]\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \sat_pos_x_LUT[15]_i_1_n_0\ : STD_LOGIC;
  signal \sat_pos_x_LUT[17]_i_1_n_0\ : STD_LOGIC;
  signal \sat_pos_x_LUT[21]_i_1_n_0\ : STD_LOGIC;
  signal \sat_pos_x_LUT[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sat_pos_x_LUT[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sat_pos_x_LUT[17]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sat_pos_x_LUT[21]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sat_pos_x_LUT[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sat_pos_y_LUT[16]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sat_pos_z_LUT[12]_i_1\ : label is "soft_lutpair2";
begin
\sat_pos_x_LUT[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => address(1),
      O => p_0_in0
    );
\sat_pos_x_LUT[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address(1),
      I1 => address(0),
      O => \sat_pos_x_LUT[15]_i_1_n_0\
    );
\sat_pos_x_LUT[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => address(1),
      I1 => address(0),
      O => \sat_pos_x_LUT[17]_i_1_n_0\
    );
\sat_pos_x_LUT[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      O => \sat_pos_x_LUT[21]_i_1_n_0\
    );
\sat_pos_x_LUT[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => address(0),
      O => \sat_pos_x_LUT[9]_i_1_n_0\
    );
\sat_pos_x_LUT_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in0,
      Q => sat_pos_x_LUT(1),
      R => '0'
    );
\sat_pos_x_LUT_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sat_pos_x_LUT[15]_i_1_n_0\,
      Q => sat_pos_x_LUT(2),
      R => '0'
    );
\sat_pos_x_LUT_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sat_pos_x_LUT[17]_i_1_n_0\,
      Q => sat_pos_x_LUT(3),
      R => '0'
    );
\sat_pos_x_LUT_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sat_pos_x_LUT[21]_i_1_n_0\,
      Q => sat_pos_x_LUT(4),
      R => '0'
    );
\sat_pos_x_LUT_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sat_pos_x_LUT[9]_i_1_n_0\,
      Q => sat_pos_x_LUT(0),
      R => '0'
    );
\sat_pos_y_LUT[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => address(1),
      I1 => address(0),
      O => \positions[0][y]\(16)
    );
\sat_pos_y_LUT_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \positions[0][y]\(16),
      Q => sat_pos_y_LUT(0),
      R => '0'
    );
\sat_pos_z_LUT[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      O => \positions[0][z]\(12)
    );
\sat_pos_z_LUT_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \positions[0][z]\(12),
      Q => sat_pos_z_LUT(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sat_sel_0_0_sat_sel is
  port (
    sat_pos_z : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sat_sel_0_0_sat_sel : entity is "sat_sel";
end design_1_sat_sel_0_0_sat_sel;

architecture STRUCTURE of design_1_sat_sel_0_0_sat_sel is
  signal sat_pos_x_LUT : STD_LOGIC_VECTOR ( 21 downto 9 );
  signal sat_pos_y_LUT : STD_LOGIC_VECTOR ( 16 to 16 );
  signal sat_pos_z_LUT : STD_LOGIC_VECTOR ( 12 to 12 );
begin
sat_LUT_instance: entity work.design_1_sat_sel_0_0_Sat_LUT_m
     port map (
      address(1 downto 0) => address(1 downto 0),
      clk => clk,
      sat_pos_x_LUT(4) => sat_pos_x_LUT(21),
      sat_pos_x_LUT(3) => sat_pos_x_LUT(17),
      sat_pos_x_LUT(2 downto 1) => sat_pos_x_LUT(15 downto 14),
      sat_pos_x_LUT(0) => sat_pos_x_LUT(9),
      sat_pos_y_LUT(0) => sat_pos_y_LUT(16),
      sat_pos_z_LUT(0) => sat_pos_z_LUT(12)
    );
\sat_pos_x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sat_pos_x_LUT(14),
      Q => sat_pos_z(0),
      R => '0'
    );
\sat_pos_x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sat_pos_x_LUT(15),
      Q => sat_pos_z(1),
      R => '0'
    );
\sat_pos_x_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sat_pos_x_LUT(17),
      Q => sat_pos_z(4),
      R => '0'
    );
\sat_pos_x_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sat_pos_x_LUT(21),
      Q => sat_pos_z(3),
      R => '0'
    );
\sat_pos_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sat_pos_x_LUT(9),
      Q => sat_pos_z(2),
      R => '0'
    );
\sat_pos_y_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sat_pos_y_LUT(16),
      Q => sat_pos_z(6),
      R => '0'
    );
\sat_pos_z_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sat_pos_z_LUT(12),
      Q => sat_pos_z(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sat_sel_0_0 is
  port (
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sat_pos_x : out STD_LOGIC_VECTOR ( 21 downto 0 );
    sat_pos_y : out STD_LOGIC_VECTOR ( 21 downto 0 );
    sat_pos_z : out STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sat_sel_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sat_sel_0_0 : entity is "design_1_sat_sel_0_0,sat_sel,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_sat_sel_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_sat_sel_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_sat_sel_0_0 : entity is "sat_sel,Vivado 2024.1.2";
end design_1_sat_sel_0_0;

architecture STRUCTURE of design_1_sat_sel_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^sat_pos_x\ : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \^sat_pos_y\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \^sat_pos_z\ : STD_LOGIC_VECTOR ( 17 downto 8 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  sat_pos_x(21) <= \^sat_pos_z\(9);
  sat_pos_x(20) <= \^sat_pos_z\(9);
  sat_pos_x(19) <= \^sat_pos_z\(9);
  sat_pos_x(18) <= \^sat_pos_z\(9);
  sat_pos_x(17) <= \^sat_pos_z\(11);
  sat_pos_x(16) <= \^sat_pos_z\(9);
  sat_pos_x(15) <= \^sat_pos_y\(17);
  sat_pos_x(14) <= \^sat_pos_x\(11);
  sat_pos_x(13) <= \^sat_pos_z\(9);
  sat_pos_x(12) <= \^sat_pos_z\(11);
  sat_pos_x(11) <= \^sat_pos_x\(11);
  sat_pos_x(10) <= \<const0>\;
  sat_pos_x(9) <= \^sat_pos_z\(8);
  sat_pos_x(8) <= \^sat_pos_x\(11);
  sat_pos_x(7) <= \^sat_pos_x\(11);
  sat_pos_x(6) <= \^sat_pos_y\(17);
  sat_pos_x(5) <= \^sat_pos_y\(17);
  sat_pos_x(4) <= \^sat_pos_y\(17);
  sat_pos_x(3) <= \^sat_pos_y\(17);
  sat_pos_x(2) <= \^sat_pos_z\(11);
  sat_pos_x(1) <= \<const0>\;
  sat_pos_x(0) <= \<const0>\;
  sat_pos_y(21) <= \^sat_pos_x\(11);
  sat_pos_y(20) <= \^sat_pos_x\(11);
  sat_pos_y(19) <= \^sat_pos_x\(11);
  sat_pos_y(18) <= \^sat_pos_x\(11);
  sat_pos_y(17) <= \^sat_pos_y\(17);
  sat_pos_y(16) <= \^sat_pos_z\(17);
  sat_pos_y(15) <= \^sat_pos_y\(17);
  sat_pos_y(14) <= \<const0>\;
  sat_pos_y(13) <= \<const0>\;
  sat_pos_y(12) <= \^sat_pos_y\(17);
  sat_pos_y(11) <= \^sat_pos_x\(11);
  sat_pos_y(10) <= \^sat_pos_x\(11);
  sat_pos_y(9) <= \^sat_pos_z\(17);
  sat_pos_y(8) <= \<const0>\;
  sat_pos_y(7) <= \^sat_pos_x\(11);
  sat_pos_y(6) <= \^sat_pos_x\(11);
  sat_pos_y(5) <= \^sat_pos_x\(11);
  sat_pos_y(4) <= \^sat_pos_y\(17);
  sat_pos_y(3) <= \<const0>\;
  sat_pos_y(2) <= \<const0>\;
  sat_pos_y(1) <= \<const0>\;
  sat_pos_y(0) <= \<const0>\;
  sat_pos_z(21) <= \<const0>\;
  sat_pos_z(20) <= \<const0>\;
  sat_pos_z(19) <= \<const0>\;
  sat_pos_z(18) <= \<const0>\;
  sat_pos_z(17) <= \^sat_pos_z\(17);
  sat_pos_z(16) <= \^sat_pos_z\(17);
  sat_pos_z(15) <= \<const0>\;
  sat_pos_z(14) <= \^sat_pos_z\(17);
  sat_pos_z(13) <= \^sat_pos_z\(17);
  sat_pos_z(12 downto 11) <= \^sat_pos_z\(12 downto 11);
  sat_pos_z(10) <= \^sat_pos_z\(11);
  sat_pos_z(9 downto 8) <= \^sat_pos_z\(9 downto 8);
  sat_pos_z(7) <= \^sat_pos_z\(11);
  sat_pos_z(6) <= \^sat_pos_y\(17);
  sat_pos_z(5) <= \^sat_pos_z\(11);
  sat_pos_z(4) <= \^sat_pos_z\(11);
  sat_pos_z(3) <= \^sat_pos_x\(11);
  sat_pos_z(2) <= \^sat_pos_z\(11);
  sat_pos_z(1) <= \<const0>\;
  sat_pos_z(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_sat_sel_0_0_sat_sel
     port map (
      address(1 downto 0) => address(1 downto 0),
      clk => clk,
      sat_pos_z(6) => \^sat_pos_z\(17),
      sat_pos_z(5 downto 4) => \^sat_pos_z\(12 downto 11),
      sat_pos_z(3 downto 2) => \^sat_pos_z\(9 downto 8),
      sat_pos_z(1) => \^sat_pos_y\(17),
      sat_pos_z(0) => \^sat_pos_x\(11)
    );
end STRUCTURE;
