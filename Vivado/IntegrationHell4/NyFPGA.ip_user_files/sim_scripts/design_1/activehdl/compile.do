transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/xpm_cdc_gen_v1_0_4

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap xpm_cdc_gen_v1_0_4 activehdl/xpm_cdc_gen_v1_0_4

vlog -work xpm  -sv2k12 "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xpm_cdc_gen_v1_0_4 \
"C:/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xpm_cdc_gen_v1_0_4 \
"../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xpm_cdc_gen_v1_0_4 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_Shifter_0_0/sim/design_1_Shifter_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xpm_cdc_gen_v1_0_4 \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xpm_cdc_gen_v1_0_4  -v2k5 "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xpm_cdc_gen_v1_0_4 \
"../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/745f/hdl/xpm_cdc_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xpm_cdc_gen_v1_0_4 \
"../../../bd/design_1/ip/design_1_xpm_cdc_gen_0_0/sim/design_1_xpm_cdc_gen_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_Correlator_TOF_0_0/sim/design_1_Correlator_TOF_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NyFPGA.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xpm_cdc_gen_v1_0_4 \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_AlgM_0_0/sim/design_1_AlgM_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sat_sel_0_0/sim/design_1_sat_sel_0_0.vhd" \
"../../../bd/design_1/ip/design_1_SPI_subnode_0_0/sim/design_1_SPI_subnode_0_0.vhd" \
"../../../bd/design_1/ip/design_1_Sample2TOF_0_0/sim/design_1_Sample2TOF_0_0.vhd" \
"../../../bd/design_1/ip/design_1_PosUpdateLatch_0_0/sim/design_1_PosUpdateLatch_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

