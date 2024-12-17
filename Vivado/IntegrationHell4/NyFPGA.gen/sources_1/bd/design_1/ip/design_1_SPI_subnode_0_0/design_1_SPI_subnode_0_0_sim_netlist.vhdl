-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Thu Nov 28 10:28:19 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_SPI_subnode_0_0/design_1_SPI_subnode_0_0_sim_netlist.vhdl
-- Design      : design_1_SPI_subnode_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_subnode_0_0_SPI_subnode is
  port (
    MISO : out STD_LOGIC;
    CS : in STD_LOGIC;
    CLK : in STD_LOGIC;
    SCK : in STD_LOGIC;
    ToF : in STD_LOGIC_VECTOR ( 12 downto 0 );
    Y_pos : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Z_pos : in STD_LOGIC_VECTOR ( 21 downto 0 );
    X_pos : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_subnode_0_0_SPI_subnode : entity is "SPI_subnode";
end design_1_SPI_subnode_0_0_SPI_subnode;

architecture STRUCTURE of design_1_SPI_subnode_0_0_SPI_subnode is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal bit_count : STD_LOGIC;
  signal \bit_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \byte_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \byte_count_reg_n_0_[1]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_state__3\ : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal miso_reg_i_1_n_0 : STD_LOGIC;
  signal miso_reg_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sck_falling : STD_LOGIC;
  signal sck_falling_i_1_n_0 : STD_LOGIC;
  signal \sck_sync[0]_i_1_n_0\ : STD_LOGIC;
  signal \sck_sync[1]_i_1_n_0\ : STD_LOGIC;
  signal \sck_sync_reg_n_0_[1]\ : STD_LOGIC;
  signal shift_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal shift_out_0 : STD_LOGIC;
  signal \shift_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_out_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "idle:000,shift:010,next_vector:011,load_vector:001,done:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "idle:000,shift:010,next_vector:011,load_vector:001,done:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "idle:000,shift:010,next_vector:011,load_vector:001,done:100";
  attribute SOFT_HLUTNM of MISO_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bit_count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_count[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \byte_count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \byte_count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of miso_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sck_falling_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sck_sync[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_out[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_out[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_out[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_out[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_out[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_out[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_out[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_out[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_out[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_out[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_out[19]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_out[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_out[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_out[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_out[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_out[23]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_out[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_out[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_out[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_out[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_out[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_out[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_out[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_out[9]_i_1\ : label is "soft_lutpair12";
begin
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F70F00F0F00F0F"
    )
        port map (
      I0 => \byte_count_reg_n_0_[1]\,
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => current_state(2),
      I3 => \current_state__3\,
      I4 => current_state(0),
      I5 => current_state(1),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => sck_falling,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => \bit_count_reg_n_0_[0]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[4]\,
      I5 => \bit_count_reg_n_0_[3]\,
      O => \current_state__3\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F0F0F0"
    )
        port map (
      I0 => \byte_count_reg_n_0_[0]\,
      I1 => \byte_count_reg_n_0_[1]\,
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => CS,
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => CS,
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => CS,
      D => \FSM_sequential_current_state[2]_i_1_n_0\,
      Q => current_state(2)
    );
MISO_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => CS,
      I1 => miso_reg_reg_n_0,
      O => MISO
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      O => \bit_count[0]_i_1_n_0\
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      I1 => \bit_count_reg_n_0_[1]\,
      O => \bit_count[1]_i_1_n_0\
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => \bit_count_reg_n_0_[2]\,
      O => \bit_count[2]_i_1_n_0\
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF4000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[4]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[3]\,
      O => \bit_count[3]_i_1_n_0\
    );
\bit_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => sck_falling,
      O => bit_count
    );
\bit_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA2AAA"
    )
        port map (
      I0 => \bit_count_reg_n_0_[4]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[3]\,
      O => \bit_count[4]_i_2_n_0\
    );
\bit_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => bit_count,
      CLR => CS,
      D => \bit_count[0]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[0]\
    );
\bit_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => bit_count,
      CLR => CS,
      D => \bit_count[1]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[1]\
    );
\bit_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => bit_count,
      CLR => CS,
      D => \bit_count[2]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[2]\
    );
\bit_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => bit_count,
      CLR => CS,
      D => \bit_count[3]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[3]\
    );
\bit_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => bit_count,
      CLR => CS,
      D => \bit_count[4]_i_2_n_0\,
      Q => \bit_count_reg_n_0_[4]\
    );
\byte_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \byte_count_reg_n_0_[0]\,
      O => \byte_count[0]_i_1_n_0\
    );
\byte_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \byte_count_reg_n_0_[0]\,
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => \byte_count_reg_n_0_[1]\,
      O => \byte_count[1]_i_1_n_0\
    );
\byte_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => CS,
      D => \byte_count[0]_i_1_n_0\,
      Q => \byte_count_reg_n_0_[0]\
    );
\byte_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => CS,
      D => \byte_count[1]_i_1_n_0\,
      Q => \byte_count_reg_n_0_[1]\
    );
miso_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => p_0_in,
      I1 => bit_count,
      I2 => CS,
      I3 => miso_reg_reg_n_0,
      O => miso_reg_i_1_n_0
    );
miso_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => miso_reg_i_1_n_0,
      Q => miso_reg_reg_n_0,
      R => '0'
    );
sck_falling_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => \sck_sync_reg_n_0_[1]\,
      I2 => CS,
      O => sck_falling_i_1_n_0
    );
sck_falling_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sck_falling_i_1_n_0,
      Q => sck_falling,
      R => '0'
    );
\sck_sync[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => SCK,
      I1 => CS,
      I2 => p_0_in1_in(1),
      O => \sck_sync[0]_i_1_n_0\
    );
\sck_sync[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => CS,
      I2 => \sck_sync_reg_n_0_[1]\,
      O => \sck_sync[1]_i_1_n_0\
    );
\sck_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sck_sync[0]_i_1_n_0\,
      Q => p_0_in1_in(1),
      R => '0'
    );
\sck_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sck_sync[1]_i_1_n_0\,
      Q => \sck_sync_reg_n_0_[1]\,
      R => '0'
    );
\shift_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in4(0),
      I1 => current_state(1),
      O => shift_out(0)
    );
\shift_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(0),
      I1 => Y_pos(0),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(0),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(0),
      O => in4(0)
    );
\shift_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(10),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[9]\,
      O => shift_out(10)
    );
\shift_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(10),
      I1 => Y_pos(10),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(10),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(10),
      O => in4(10)
    );
\shift_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(11),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[10]\,
      O => shift_out(11)
    );
\shift_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(11),
      I1 => Y_pos(11),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(11),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(11),
      O => in4(11)
    );
\shift_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(12),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[11]\,
      O => shift_out(12)
    );
\shift_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(12),
      I1 => Y_pos(12),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(12),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(12),
      O => in4(12)
    );
\shift_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(13),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[12]\,
      O => shift_out(13)
    );
\shift_out[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(13),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(13),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(13),
      O => in4(13)
    );
\shift_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(14),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[13]\,
      O => shift_out(14)
    );
\shift_out[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(14),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(14),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(14),
      O => in4(14)
    );
\shift_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(15),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[14]\,
      O => shift_out(15)
    );
\shift_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(15),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(15),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(15),
      O => in4(15)
    );
\shift_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(16),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[15]\,
      O => shift_out(16)
    );
\shift_out[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(16),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(16),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(16),
      O => in4(16)
    );
\shift_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(17),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[16]\,
      O => shift_out(17)
    );
\shift_out[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(17),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(17),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(17),
      O => in4(17)
    );
\shift_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(18),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[17]\,
      O => shift_out(18)
    );
\shift_out[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(18),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(18),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(18),
      O => in4(18)
    );
\shift_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(19),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[18]\,
      O => shift_out(19)
    );
\shift_out[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(19),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(19),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(19),
      O => in4(19)
    );
\shift_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(1),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[0]\,
      O => shift_out(1)
    );
\shift_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(1),
      I1 => Y_pos(1),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(1),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(1),
      O => in4(1)
    );
\shift_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(20),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[19]\,
      O => shift_out(20)
    );
\shift_out[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(20),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(20),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(20),
      O => in4(20)
    );
\shift_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(21),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[20]\,
      O => shift_out(21)
    );
\shift_out[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Y_pos(21),
      I1 => \byte_count_reg_n_0_[0]\,
      I2 => Z_pos(21),
      I3 => \byte_count_reg_n_0_[1]\,
      I4 => X_pos(21),
      O => in4(21)
    );
\shift_out[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(1),
      I1 => \shift_out_reg_n_0_[21]\,
      O => shift_out(22)
    );
\shift_out[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0540"
    )
        port map (
      I0 => current_state(2),
      I1 => sck_falling,
      I2 => current_state(1),
      I3 => current_state(0),
      O => shift_out_0
    );
\shift_out[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(1),
      I1 => \shift_out_reg_n_0_[22]\,
      O => shift_out(23)
    );
\shift_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(2),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[1]\,
      O => shift_out(2)
    );
\shift_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(2),
      I1 => Y_pos(2),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(2),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(2),
      O => in4(2)
    );
\shift_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(3),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[2]\,
      O => shift_out(3)
    );
\shift_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(3),
      I1 => Y_pos(3),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(3),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(3),
      O => in4(3)
    );
\shift_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(4),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[3]\,
      O => shift_out(4)
    );
\shift_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(4),
      I1 => Y_pos(4),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(4),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(4),
      O => in4(4)
    );
\shift_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(5),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[4]\,
      O => shift_out(5)
    );
\shift_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(5),
      I1 => Y_pos(5),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(5),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(5),
      O => in4(5)
    );
\shift_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(6),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[5]\,
      O => shift_out(6)
    );
\shift_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(6),
      I1 => Y_pos(6),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(6),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(6),
      O => in4(6)
    );
\shift_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(7),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[6]\,
      O => shift_out(7)
    );
\shift_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(7),
      I1 => Y_pos(7),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(7),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(7),
      O => in4(7)
    );
\shift_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(8),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[7]\,
      O => shift_out(8)
    );
\shift_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(8),
      I1 => Y_pos(8),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(8),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(8),
      O => in4(8)
    );
\shift_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in4(9),
      I1 => current_state(1),
      I2 => \shift_out_reg_n_0_[8]\,
      O => shift_out(9)
    );
\shift_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ToF(9),
      I1 => Y_pos(9),
      I2 => \byte_count_reg_n_0_[0]\,
      I3 => Z_pos(9),
      I4 => \byte_count_reg_n_0_[1]\,
      I5 => X_pos(9),
      O => in4(9)
    );
\shift_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(0),
      Q => \shift_out_reg_n_0_[0]\
    );
\shift_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(10),
      Q => \shift_out_reg_n_0_[10]\
    );
\shift_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(11),
      Q => \shift_out_reg_n_0_[11]\
    );
\shift_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(12),
      Q => \shift_out_reg_n_0_[12]\
    );
\shift_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(13),
      Q => \shift_out_reg_n_0_[13]\
    );
\shift_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(14),
      Q => \shift_out_reg_n_0_[14]\
    );
\shift_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(15),
      Q => \shift_out_reg_n_0_[15]\
    );
\shift_out_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(16),
      Q => \shift_out_reg_n_0_[16]\
    );
\shift_out_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(17),
      Q => \shift_out_reg_n_0_[17]\
    );
\shift_out_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(18),
      Q => \shift_out_reg_n_0_[18]\
    );
\shift_out_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(19),
      Q => \shift_out_reg_n_0_[19]\
    );
\shift_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(1),
      Q => \shift_out_reg_n_0_[1]\
    );
\shift_out_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(20),
      Q => \shift_out_reg_n_0_[20]\
    );
\shift_out_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(21),
      Q => \shift_out_reg_n_0_[21]\
    );
\shift_out_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(22),
      Q => \shift_out_reg_n_0_[22]\
    );
\shift_out_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(23),
      Q => p_0_in
    );
\shift_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(2),
      Q => \shift_out_reg_n_0_[2]\
    );
\shift_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(3),
      Q => \shift_out_reg_n_0_[3]\
    );
\shift_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(4),
      Q => \shift_out_reg_n_0_[4]\
    );
\shift_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(5),
      Q => \shift_out_reg_n_0_[5]\
    );
\shift_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(6),
      Q => \shift_out_reg_n_0_[6]\
    );
\shift_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(7),
      Q => \shift_out_reg_n_0_[7]\
    );
\shift_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(8),
      Q => \shift_out_reg_n_0_[8]\
    );
\shift_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_out_0,
      CLR => CS,
      D => shift_out(9),
      Q => \shift_out_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_subnode_0_0 is
  port (
    CS : in STD_LOGIC;
    MISO : out STD_LOGIC;
    SCK : in STD_LOGIC;
    CLK : in STD_LOGIC;
    X_pos : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Y_pos : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Z_pos : in STD_LOGIC_VECTOR ( 21 downto 0 );
    ToF : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SPI_subnode_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SPI_subnode_0_0 : entity is "design_1_SPI_subnode_0_0,SPI_subnode,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_SPI_subnode_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_SPI_subnode_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_SPI_subnode_0_0 : entity is "SPI_subnode,Vivado 2024.1.2";
end design_1_SPI_subnode_0_0;

architecture STRUCTURE of design_1_SPI_subnode_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
U0: entity work.design_1_SPI_subnode_0_0_SPI_subnode
     port map (
      CLK => CLK,
      CS => CS,
      MISO => MISO,
      SCK => SCK,
      ToF(12 downto 0) => ToF(12 downto 0),
      X_pos(21 downto 0) => X_pos(21 downto 0),
      Y_pos(21 downto 0) => Y_pos(21 downto 0),
      Z_pos(21 downto 0) => Z_pos(21 downto 0)
    );
end STRUCTURE;
