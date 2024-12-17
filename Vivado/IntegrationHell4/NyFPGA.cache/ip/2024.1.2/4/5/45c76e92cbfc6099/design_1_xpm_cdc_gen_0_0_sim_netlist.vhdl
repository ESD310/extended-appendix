-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Wed Nov 20 11:55:42 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xpm_cdc_gen_0_0_sim_netlist.vhdl
-- Design      : design_1_xpm_cdc_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse is
  port (
    src_clk : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    dest_pulse : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 0;
  attribute RST_USED : integer;
  attribute RST_USED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is "PULSE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse is
  signal dest_event_ff : STD_LOGIC;
  signal dest_sync_out : STD_LOGIC;
  signal src_in_ff : STD_LOGIC;
  signal src_level_ff : STD_LOGIC;
  signal src_level_nxt : STD_LOGIC;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 1;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
dest_event_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_sync_out,
      Q => dest_event_ff,
      R => '0'
    );
dest_pulse_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dest_event_ff,
      I1 => dest_sync_out,
      O => dest_pulse
    );
src_in_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_pulse,
      Q => src_in_ff,
      R => '0'
    );
src_level_ff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => src_in_ff,
      I1 => src_pulse,
      I2 => src_level_ff,
      O => src_level_nxt
    );
src_level_ff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => src_clk,
      CE => '1',
      D => src_level_nxt,
      Q => src_level_ff,
      R => '0'
    );
xpm_cdc_single_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
     port map (
      dest_clk => dest_clk,
      dest_out => dest_sync_out,
      src_clk => '0',
      src_in => src_level_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 1 downto 0 );
    src_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    src_send : in STD_LOGIC;
    dest_ack : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst_in : in STD_LOGIC;
    src_arst : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dest_out_bin : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_rcv : out STD_LOGIC;
    dest_req : out STD_LOGIC;
    dest_pulse : out STD_LOGIC;
    dest_rst_out : out STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 5;
  attribute DEST_CLK_PERIOD : integer;
  attribute DEST_CLK_PERIOD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 2500;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 4;
  attribute INIT : string;
  attribute INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute RST_USED : integer;
  attribute RST_USED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute SRC_CLK_PERIOD : integer;
  attribute SRC_CLK_PERIOD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 5000;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 4;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 : entity is 2;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4 is
  signal \<const0>\ : STD_LOGIC;
  attribute DEST_SYNC_FF of xpulse : label is 4;
  attribute INIT_SYNC_FF of xpulse : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpulse : label is "true";
  attribute REG_OUTPUT of xpulse : label is 0;
  attribute RST_USED of xpulse : label is 0;
  attribute SIM_ASSERT_CHK of xpulse : label is 1;
  attribute VERSION of xpulse : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xpulse : label is "PULSE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpulse : label is "TRUE";
begin
  dest_arst <= \<const0>\;
  dest_out(1) <= \<const0>\;
  dest_out(0) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
  dest_req <= \<const0>\;
  dest_rst_out <= \<const0>\;
  src_rcv <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpulse: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse
     port map (
      dest_clk => dest_clk,
      dest_pulse => dest_pulse,
      dest_rst => '1',
      src_clk => src_clk,
      src_pulse => src_pulse,
      src_rst => '1'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    dest_pulse : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_xpm_cdc_gen_0_0,xpm_cdc_gen_v1_0_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "xpm_cdc_gen_v1_0_4,Vivado 2024.1.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_dest_arst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_rst_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_src_rcv_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_dest_out_bin_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of inst : label is 5;
  attribute DEST_CLK_PERIOD : integer;
  attribute DEST_CLK_PERIOD of inst : label is 2500;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of inst : label is 1;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of inst : label is 4;
  attribute INIT : string;
  attribute INIT of inst : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of inst : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of inst : label is 0;
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of inst : label is 0;
  attribute RST_USED : integer;
  attribute RST_USED of inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst : label is 1;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of inst : label is 0;
  attribute SRC_CLK_PERIOD : integer;
  attribute SRC_CLK_PERIOD of inst : label is 5000;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of inst : label is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of inst : label is 4;
  attribute VERSION : integer;
  attribute VERSION of inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of inst : label is 2;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dest_clk : signal is "xilinx.com:signal:clock:1.0 dest_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dest_clk : signal is "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of src_clk : signal is "xilinx.com:signal:clock:1.0 src_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER of src_clk : signal is "XIL_INTERFACENAME src_signal_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gen_v1_0_4
     port map (
      dest_ack => '1',
      dest_arst => NLW_inst_dest_arst_UNCONNECTED,
      dest_clk => dest_clk,
      dest_out(1 downto 0) => NLW_inst_dest_out_UNCONNECTED(1 downto 0),
      dest_out_bin(1 downto 0) => NLW_inst_dest_out_bin_UNCONNECTED(1 downto 0),
      dest_pulse => dest_pulse,
      dest_req => NLW_inst_dest_req_UNCONNECTED,
      dest_rst_in => '1',
      dest_rst_out => NLW_inst_dest_rst_out_UNCONNECTED,
      src_arst => '1',
      src_clk => src_clk,
      src_in(1 downto 0) => B"01",
      src_in_bin(1 downto 0) => B"01",
      src_pulse => src_pulse,
      src_rcv => NLW_inst_src_rcv_UNCONNECTED,
      src_rst => '1',
      src_send => '1'
    );
end STRUCTURE;
