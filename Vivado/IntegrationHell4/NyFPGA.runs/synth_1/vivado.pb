
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:012

00:00:092	
525.0902	
135.398Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
c
"Loaded Vivado IP repository '%s'.
1332*coregen2
C:/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.srcs/utils_1/imports/synth_1/design_1_wrapper.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2d
bC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.srcs/utils_1/imports/synth_1/design_1_wrapper.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
l
Command: %s
53*	vivadotcl2;
9synth_design -top design_1_wrapper -part xc7a200tsbg484-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a200tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a200tZ17-349h px� 
E
Loading part %s157*device2
xc7a200tsbg484-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a200tsbg484-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
22608Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:06 . Memory (MB): peak = 1454.371 ; gain = 448.500
h px� 
�
synthesizing module '%s'638*oasys2
design_1_wrapper2g
cC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
348@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

design_12_
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
152

design_1_i2

design_12g
cC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
548@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

design_12a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
388@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_AlgM_0_02~
|C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_AlgM_0_0_stub.vhdl2
62
AlgM_02
design_1_AlgM_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2128@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_AlgM_0_02�
|C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_AlgM_0_0_stub.vhdl2
268@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_Correlator_TOF_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_Correlator_TOF_0_0_stub.vhdl2
62
Correlator_TOF_02
design_1_Correlator_TOF_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2298@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_Correlator_TOF_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_Correlator_TOF_0_0_stub.vhdl2
208@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_PosUpdateLatch_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_PosUpdateLatch_0_0_stub.vhdl2
62
PosUpdateLatch_02
design_1_PosUpdateLatch_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2408@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_PosUpdateLatch_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_PosUpdateLatch_0_0_stub.vhdl2
168@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_SPI_subnode_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_SPI_subnode_0_0_stub.vhdl2
62
SPI_subnode_02
design_1_SPI_subnode_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2478@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_SPI_subnode_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_SPI_subnode_0_0_stub.vhdl2
208@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_Sample2TOF_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_Sample2TOF_0_0_stub.vhdl2
62
Sample2TOF_02
design_1_Sample2TOF_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2588@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_Sample2TOF_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_Sample2TOF_0_0_stub.vhdl2
148@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_Shifter_0_02�
C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_Shifter_0_0_stub.vhdl2
62
	Shifter_02
design_1_Shifter_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2638@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_Shifter_0_02�
C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_Shifter_0_0_stub.vhdl2
148@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_clk_wiz_0_02�
C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_clk_wiz_0_0_stub.vhdl2
62
	clk_wiz_02
design_1_clk_wiz_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2688@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_clk_wiz_0_02�
C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_clk_wiz_0_0_stub.vhdl2
158@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_sat_sel_0_02�
C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_sat_sel_0_0_stub.vhdl2
62
	sat_sel_02
design_1_sat_sel_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2748@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_sat_sel_0_02�
C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_sat_sel_0_0_stub.vhdl2
178@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_xadc_wiz_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_xadc_wiz_0_0_stub.vhdl2
62

xadc_wiz_02
design_1_xadc_wiz_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
2828@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_xadc_wiz_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_xadc_wiz_0_0_stub.vhdl2
288@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_xlconstant_0_02�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xlconstant_0_0/synth/design_1_xlconstant_0_0.v2
532
xlconstant_02
design_1_xlconstant_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
3018@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_xlconstant_0_02
 2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xlconstant_0_0/synth/design_1_xlconstant_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xlconstant_v1_1_9_xlconstant2
 2y
uc:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xlconstant_v1_1_9_xlconstant2
 2
02
12y
uc:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_xlconstant_0_02
 2
02
12�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xlconstant_0_0/synth/design_1_xlconstant_0_0.v2
538@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_xlconstant_1_02�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xlconstant_1_0/synth/design_1_xlconstant_1_0.v2
532
xlconstant_12
design_1_xlconstant_1_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
3058@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_xlconstant_1_02
 2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xlconstant_1_0/synth/design_1_xlconstant_1_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2.
,xlconstant_v1_1_9_xlconstant__parameterized02
 2y
uc:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
,xlconstant_v1_1_9_xlconstant__parameterized02
 2
02
12y
uc:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_xlconstant_1_02
 2
02
12�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xlconstant_1_0/synth/design_1_xlconstant_1_0.v2
538@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_xpm_cdc_gen_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_xpm_cdc_gen_0_0_stub.vhdl2
62
xpm_cdc_gen_02
design_1_xpm_cdc_gen_0_02a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
3098@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_xpm_cdc_gen_0_02�
�C:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/.Xil/Vivado-15352-AxelsPC/realtime/design_1_xpm_cdc_gen_0_0_stub.vhdl2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

design_12
02
12a
]c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/synth/design_1.vhd2
388@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
design_1_wrapper2
02
12g
cC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
348@Z8-256h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:08 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:01 ; elapsed = 00:00:08 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:01 ; elapsed = 00:00:08 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1565.9772
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_in_context.xdc2
design_1_i/xadc_wiz_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_in_context.xdc2
design_1_i/xadc_wiz_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_Shifter_0_0/design_1_Shifter_0_0/design_1_Shifter_0_0_in_context.xdc2
design_1_i/Shifter_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_Shifter_0_0/design_1_Shifter_0_0/design_1_Shifter_0_0_in_context.xdc2
design_1_i/Shifter_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc2
design_1_i/clk_wiz_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc2
design_1_i/clk_wiz_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xpm_cdc_gen_0_0/design_1_xpm_cdc_gen_0_0/design_1_xpm_cdc_gen_0_0_in_context.xdc2
design_1_i/xpm_cdc_gen_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_xpm_cdc_gen_0_0/design_1_xpm_cdc_gen_0_0/design_1_xpm_cdc_gen_0_0_in_context.xdc2
design_1_i/xpm_cdc_gen_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_Correlator_TOF_0_0/design_1_Correlator_TOF_0_0/design_1_Correlator_TOF_0_0_in_context.xdc2
design_1_i/Correlator_TOF_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_Correlator_TOF_0_0/design_1_Correlator_TOF_0_0/design_1_Correlator_TOF_0_0_in_context.xdc2
design_1_i/Correlator_TOF_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_AlgM_0_0/design_1_AlgM_0_0/design_1_AlgM_0_0_in_context.xdc2
design_1_i/AlgM_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_AlgM_0_0/design_1_AlgM_0_0/design_1_AlgM_0_0_in_context.xdc2
design_1_i/AlgM_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_sat_sel_0_0/design_1_sat_sel_0_0/design_1_sat_sel_0_0_in_context.xdc2
design_1_i/sat_sel_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_sat_sel_0_0/design_1_sat_sel_0_0/design_1_sat_sel_0_0_in_context.xdc2
design_1_i/sat_sel_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_SPI_subnode_0_0/design_1_SPI_subnode_0_0/design_1_SPI_subnode_0_0_in_context.xdc2
design_1_i/SPI_subnode_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_SPI_subnode_0_0/design_1_SPI_subnode_0_0/design_1_SPI_subnode_0_0_in_context.xdc2
design_1_i/SPI_subnode_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_Sample2TOF_0_0/design_1_Sample2TOF_0_0/design_1_Sample2TOF_0_0_in_context.xdc2
design_1_i/Sample2TOF_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_Sample2TOF_0_0/design_1_Sample2TOF_0_0/design_1_Sample2TOF_0_0_in_context.xdc2
design_1_i/Sample2TOF_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_PosUpdateLatch_0_0/design_1_PosUpdateLatch_0_0/design_1_PosUpdateLatch_0_0_in_context.xdc2
design_1_i/PosUpdateLatch_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.gen/sources_1/bd/design_1/ip/design_1_PosUpdateLatch_0_0/design_1_PosUpdateLatch_0_0/design_1_PosUpdateLatch_0_0_in_context.xdc2
design_1_i/PosUpdateLatch_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2R
NC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.srcs/constrs_1/new/Constr.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2R
NC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.srcs/constrs_1/new/Constr.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2P
NC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.srcs/constrs_1/new/Constr.xdc2$
".Xil/design_1_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2P
LC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2P
LC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1565.9772
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

1565.9772
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:18 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a200tsbg484-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:18 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:03 ; elapsed = 00:00:18 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:18 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
s
%s
*synth2[
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:03 ; elapsed = 00:00:20 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:04 ; elapsed = 00:00:28 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:28 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:04 ; elapsed = 00:00:28 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:05 ; elapsed = 00:00:34 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:05 ; elapsed = 00:00:34 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:05 ; elapsed = 00:00:34 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:05 ; elapsed = 00:00:34 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:34 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:05 ; elapsed = 00:00:34 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
K
%s
*synth23
1+------+----------------------------+----------+
h p
x
� 
K
%s
*synth23
1|      |BlackBox name               |Instances |
h p
x
� 
K
%s
*synth23
1+------+----------------------------+----------+
h p
x
� 
K
%s
*synth23
1|1     |design_1_AlgM_0_0           |         1|
h p
x
� 
K
%s
*synth23
1|2     |design_1_Correlator_TOF_0_0 |         1|
h p
x
� 
K
%s
*synth23
1|3     |design_1_PosUpdateLatch_0_0 |         1|
h p
x
� 
K
%s
*synth23
1|4     |design_1_SPI_subnode_0_0    |         1|
h p
x
� 
K
%s
*synth23
1|5     |design_1_Sample2TOF_0_0     |         1|
h p
x
� 
K
%s
*synth23
1|6     |design_1_Shifter_0_0        |         1|
h p
x
� 
K
%s
*synth23
1|7     |design_1_clk_wiz_0_0        |         1|
h p
x
� 
K
%s
*synth23
1|8     |design_1_sat_sel_0_0        |         1|
h p
x
� 
K
%s
*synth23
1|9     |design_1_xadc_wiz_0_0       |         1|
h p
x
� 
K
%s
*synth23
1|10    |design_1_xpm_cdc_gen_0_0    |         1|
h p
x
� 
K
%s
*synth23
1+------+----------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
L
%s*synth24
2+------+---------------------------------+------+
h px� 
L
%s*synth24
2|      |Cell                             |Count |
h px� 
L
%s*synth24
2+------+---------------------------------+------+
h px� 
L
%s*synth24
2|1     |design_1_AlgM_0_0_bbox           |     1|
h px� 
L
%s*synth24
2|2     |design_1_Correlator_TOF_0_0_bbox |     1|
h px� 
L
%s*synth24
2|3     |design_1_PosUpdateLatch_0_0_bbox |     1|
h px� 
L
%s*synth24
2|4     |design_1_SPI_subnode_0_0_bbox    |     1|
h px� 
L
%s*synth24
2|5     |design_1_Sample2TOF_0_0_bbox     |     1|
h px� 
L
%s*synth24
2|6     |design_1_Shifter_0_0_bbox        |     1|
h px� 
L
%s*synth24
2|7     |design_1_clk_wiz_0_0_bbox        |     1|
h px� 
L
%s*synth24
2|8     |design_1_sat_sel_0_0_bbox        |     1|
h px� 
L
%s*synth24
2|9     |design_1_xadc_wiz_0_0_bbox       |     1|
h px� 
L
%s*synth24
2|10    |design_1_xpm_cdc_gen_0_0_bbox    |     1|
h px� 
L
%s*synth24
2|11    |IBUF                             |     8|
h px� 
L
%s*synth24
2|12    |OBUF                             |     9|
h px� 
L
%s*synth24
2+------+---------------------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:05 ; elapsed = 00:00:34 . Memory (MB): peak = 1565.977 ; gain = 560.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:03 ; elapsed = 00:00:31 . Memory (MB): peak = 1565.977 ; gain = 560.105
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:05 ; elapsed = 00:00:34 . Memory (MB): peak = 1565.977 ; gain = 560.105
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1565.9772
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1565.9772
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

7c6ed6daZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582
12
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:062

00:00:422

1565.9772

1014.977Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1565.9772
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2T
RC:/Users/axelo/OneDrive/Skrivebord/NyFPGA/NyFPGA.runs/synth_1/design_1_wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2k
ireport_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Dec  3 10:23:55 2024Z17-206h px� 


End Record