vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/xpm_cdc_gen_v1_0_4

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap xpm_cdc_gen_v1_0_4 modelsim_lib/msim/xpm_cdc_gen_v1_0_4

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" \
"C:/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_Shifter_0_0/sim/design_1_Shifter_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xpm_cdc_gen_v1_0_4  -incr -mfcu  "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/745f/hdl/xpm_cdc_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ip/design_1_xpm_cdc_gen_0_0/sim/design_1_xpm_cdc_gen_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_Correlator_TOF_0_0/sim/design_1_Correlator_TOF_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_AlgM_0_0/sim/design_1_AlgM_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sat_sel_0_0/sim/design_1_sat_sel_0_0.vhd" \
"../../../bd/design_1/ip/design_1_SPI_subnode_0_0/sim/design_1_SPI_subnode_0_0.vhd" \
"../../../bd/design_1/ip/design_1_Sample2TOF_0_0/sim/design_1_Sample2TOF_0_0.vhd" \
"../../../bd/design_1/ip/design_1_PosUpdateLatch_0_0/sim/design_1_PosUpdateLatch_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

