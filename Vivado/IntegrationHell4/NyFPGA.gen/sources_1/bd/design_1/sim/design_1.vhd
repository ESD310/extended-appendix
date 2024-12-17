--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
--Date        : Tue Dec  3 10:20:59 2024
--Host        : AxelsPC running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xadc_wiz_0_0 is
  port (
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    dwe_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dclk_in : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp1 : in STD_LOGIC;
    vauxn1 : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component design_1_xadc_wiz_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_Shifter_0_0 is
  port (
    d_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1_Shifter_0_0;
  component design_1_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_100 : out STD_LOGIC;
    clk_12 : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_xpm_cdc_gen_0_0 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    dest_pulse : out STD_LOGIC
  );
  end component design_1_xpm_cdc_gen_0_0;
  component design_1_Correlator_TOF_0_0 is
  port (
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    Sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_ready : in STD_LOGIC;
    samples_to_run : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TOF_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TOF_ready : out STD_LOGIC;
    currentStateDebug : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_Correlator_TOF_0_0;
  component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconstant_1_0;
  component design_1_AlgM_0_0 is
  port (
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
  end component design_1_AlgM_0_0;
  component design_1_sat_sel_0_0 is
  port (
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sat_pos_x : out STD_LOGIC_VECTOR ( 21 downto 0 );
    sat_pos_y : out STD_LOGIC_VECTOR ( 21 downto 0 );
    sat_pos_z : out STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  end component design_1_sat_sel_0_0;
  component design_1_SPI_subnode_0_0 is
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
  end component design_1_SPI_subnode_0_0;
  component design_1_Sample2TOF_0_0 is
  port (
    SampleCount : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TOF_out : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component design_1_Sample2TOF_0_0;
  component design_1_PosUpdateLatch_0_0 is
  port (
    clk_12M : in STD_LOGIC;
    CS : in STD_LOGIC;
    DataValidOut : in STD_LOGIC;
    posUpdateFlag : out STD_LOGIC
  );
  end component design_1_PosUpdateLatch_0_0;
  signal AlgM_0_dataValidOut : STD_LOGIC;
  signal AlgM_0_newPos_x : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal AlgM_0_newPos_y : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal AlgM_0_newPos_z : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal CS_1 : STD_LOGIC;
  signal Correlator_TOF_0_TOF_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Correlator_TOF_0_TOF_ready : STD_LOGIC;
  signal Correlator_TOF_0_currentStateDebug : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PosUpdateLatch_0_posUpdateFlag : STD_LOGIC;
  signal SCK_1 : STD_LOGIC;
  signal SPI_subnode_0_MISO : STD_LOGIC;
  signal Sample2TOF_0_TOF_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal Shifter_0_d_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Vaux1_1_V_N : STD_LOGIC;
  signal Vaux1_1_V_P : STD_LOGIC;
  signal address_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk_in1_1 : STD_LOGIC;
  signal clk_wiz_0_clk_100 : STD_LOGIC;
  signal clk_wiz_0_clk_12 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal sat_sel_0_sat_pos_x : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal sat_sel_0_sat_pos_y : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal sat_sel_0_sat_pos_z : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal start_1 : STD_LOGIC;
  signal xadc_wiz_0_do_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_drdy_out : STD_LOGIC;
  signal xadc_wiz_0_eoc_out : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xpm_cdc_gen_0_dest_pulse : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Vaux1_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux1 V_N";
  attribute X_INTERFACE_INFO of Vaux1_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux1 V_P";
  attribute X_INTERFACE_INFO of clk_in1 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in1 : signal is "XIL_INTERFACENAME CLK.CLK_IN1, CLK_DOMAIN design_1_clk_in1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  CS_1 <= CS;
  MISO <= SPI_subnode_0_MISO;
  PosUpdateFlag <= PosUpdateLatch_0_posUpdateFlag;
  SCK_1 <= SCK;
  TOF_ready <= Correlator_TOF_0_TOF_ready;
  Vaux1_1_V_N <= Vaux1_v_n;
  Vaux1_1_V_P <= Vaux1_v_p;
  address_1(1 downto 0) <= address(1 downto 0);
  clk_in1_1 <= clk_in1;
  currentStateDebug(3 downto 0) <= Correlator_TOF_0_currentStateDebug(3 downto 0);
  dataValidOut <= AlgM_0_dataValidOut;
  dest_pulse <= xpm_cdc_gen_0_dest_pulse;
  reset_1 <= reset;
  start_1 <= start;
AlgM_0: component design_1_AlgM_0_0
     port map (
      ToF(12 downto 0) => Sample2TOF_0_TOF_out(12 downto 0),
      ToFDataReady => Correlator_TOF_0_TOF_ready,
      clk_alg => clk_wiz_0_clk_12,
      dataValidOut => AlgM_0_dataValidOut,
      lastPos_x(21 downto 0) => AlgM_0_newPos_x(21 downto 0),
      lastPos_y(21 downto 0) => AlgM_0_newPos_y(21 downto 0),
      lastPos_z(21 downto 0) => AlgM_0_newPos_z(21 downto 0),
      newPos_x(21 downto 0) => AlgM_0_newPos_x(21 downto 0),
      newPos_y(21 downto 0) => AlgM_0_newPos_y(21 downto 0),
      newPos_z(21 downto 0) => AlgM_0_newPos_z(21 downto 0),
      reset => reset_1,
      satPos_x(21 downto 0) => sat_sel_0_sat_pos_x(21 downto 0),
      satPos_y(21 downto 0) => sat_sel_0_sat_pos_y(21 downto 0),
      satPos_z(21 downto 0) => sat_sel_0_sat_pos_z(21 downto 0)
    );
Correlator_TOF_0: component design_1_Correlator_TOF_0_0
     port map (
      Sample(11 downto 0) => Shifter_0_d_out(11 downto 0),
      TOF_out(15 downto 0) => Correlator_TOF_0_TOF_out(15 downto 0),
      TOF_ready => Correlator_TOF_0_TOF_ready,
      clk => clk_wiz_0_clk_12,
      currentStateDebug(3 downto 0) => Correlator_TOF_0_currentStateDebug(3 downto 0),
      sample_ready => xpm_cdc_gen_0_dest_pulse,
      samples_to_run(15 downto 0) => xlconstant_1_dout(15 downto 0),
      start => start_1
    );
PosUpdateLatch_0: component design_1_PosUpdateLatch_0_0
     port map (
      CS => CS_1,
      DataValidOut => AlgM_0_dataValidOut,
      clk_12M => clk_wiz_0_clk_12,
      posUpdateFlag => PosUpdateLatch_0_posUpdateFlag
    );
SPI_subnode_0: component design_1_SPI_subnode_0_0
     port map (
      CLK => clk_wiz_0_clk_100,
      CS => CS_1,
      MISO => SPI_subnode_0_MISO,
      SCK => SCK_1,
      ToF(12 downto 0) => Sample2TOF_0_TOF_out(12 downto 0),
      X_pos(21 downto 0) => AlgM_0_newPos_x(21 downto 0),
      Y_pos(21 downto 0) => AlgM_0_newPos_y(21 downto 0),
      Z_pos(21 downto 0) => AlgM_0_newPos_z(21 downto 0)
    );
Sample2TOF_0: component design_1_Sample2TOF_0_0
     port map (
      SampleCount(15 downto 0) => Correlator_TOF_0_TOF_out(15 downto 0),
      TOF_out(12 downto 0) => Sample2TOF_0_TOF_out(12 downto 0)
    );
Shifter_0: component design_1_Shifter_0_0
     port map (
      d_in(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      d_out(11 downto 0) => Shifter_0_d_out(11 downto 0)
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_100 => clk_wiz_0_clk_100,
      clk_12 => clk_wiz_0_clk_12,
      clk_in1 => clk_in1_1
    );
sat_sel_0: component design_1_sat_sel_0_0
     port map (
      address(1 downto 0) => address_1(1 downto 0),
      clk => clk_wiz_0_clk_12,
      sat_pos_x(21 downto 0) => sat_sel_0_sat_pos_x(21 downto 0),
      sat_pos_y(21 downto 0) => sat_sel_0_sat_pos_y(21 downto 0),
      sat_pos_z(21 downto 0) => sat_sel_0_sat_pos_z(21 downto 0)
    );
xadc_wiz_0: component design_1_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      daddr_in(6 downto 0) => xlconstant_0_dout(6 downto 0),
      dclk_in => clk_wiz_0_clk_100,
      den_in => xadc_wiz_0_eoc_out,
      di_in(15 downto 0) => B"0000000000000000",
      do_out(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      drdy_out => xadc_wiz_0_drdy_out,
      dwe_in => '0',
      eoc_out => xadc_wiz_0_eoc_out,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      vauxn1 => Vaux1_1_V_N,
      vauxp1 => Vaux1_1_V_P,
      vn_in => '0',
      vp_in => '0'
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(6 downto 0) => xlconstant_0_dout(6 downto 0)
    );
xlconstant_1: component design_1_xlconstant_1_0
     port map (
      dout(15 downto 0) => xlconstant_1_dout(15 downto 0)
    );
xpm_cdc_gen_0: component design_1_xpm_cdc_gen_0_0
     port map (
      dest_clk => clk_wiz_0_clk_12,
      dest_pulse => xpm_cdc_gen_0_dest_pulse,
      src_clk => clk_wiz_0_clk_100,
      src_pulse => xadc_wiz_0_drdy_out
    );
end STRUCTURE;
