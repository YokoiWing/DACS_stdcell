#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr  1 15:34:54 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.14-s109_1 (64bit) 06/29/2022 09:53 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.14-s109_1 NR220628-1629/21_14-UB (database version 18.20.582) {superthreading v2.17}
#@(#)CDS: AAE 21.14-s031 (64bit) 06/29/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.14-s031_1 () Jun 22 2022 10:32:17 ( )
#@(#)CDS: SYNTECH 21.14-s014_1 () May 29 2022 20:47:50 ( )
#@(#)CDS: CPE v21.14-s062
#@(#)CDS: IQuantus/TQuantus 21.1.1-w001 (64bit) Wed Jun 1 22:42:35 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
set defHierChar /
set init_gnd_net VSS
set init_pwr_net VDD
set init_verilog /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/genus-rundir/data/MultTop-mapped.v
set init_lef_file {/home/yukunw/asap7-ry/asap7sc7p5t_27/techlef_misc/asap7_tech_4x_201209.lef /home/yukunw/asap7-ry/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_L_4x_201211.lef /home/yukunw/asap7-ry/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_R_4x_201211.lef /home/yukunw/asap7-ry/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SL_4x_201211.lef /home/yukunw/asap7-ry/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SRAM_4x_201211.lef}
set init_mmmc_version 2
set init_mmmc_file /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/scripts/mmmc.tcl
set init_top_cell MultTop
setMultiCpuUsage -localCpu 1
init_design
checkDesign -netList -noHtml -outfile /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/check_netlist_upon_init.rpt
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix prePlace -outDir /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/prePlace_timing
report_timing -nworst 200 -unique_pins -machine_readable > ${report_dir}/timing.rpt   
floorPlan -site asap7sc7p5t -su 1 0.600000 1 1 1 1
defOut -floorplan -noStdCells /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/data/floorplan.def
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VDD -type tiehi -pin VDD -inst *
globalNetConnect VDD -type net -net VDD
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VSS -type tielo -pin VSS -inst *
globalNetConnect VSS -type net -net VSS
addStripe -nets {VSS VDD} -layer M8 -direction vertical -width 6.000000 -spacing 4.000000 -set_to_set_distance 30.000000 -start_from left -uda power_stripe_v
addStripe -nets {VSS VDD} -layer M9 -direction horizontal -width 6.000000 -spacing 4.000000 -set_to_set_distance 30.000000 -start_from bottom -uda power_stripe_h
sroute -connect { corePin } -layerChangeRange { M1 M8 } -corePinTarget { None } -allowJogging 1 -crossoverViaLayerRange { M1 M8 } -nets { VDD VSS } -allowLayerChange 1 -targetViaLayerRange { M1 M8 } -uda power_rail
verifyConnectivity -type special -noAntenna -noWeakConnect -noUnroutedNet -error 1000 -warning 50 -report /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/powerplan_connectivity.rpt
verify_PG_short -no_routing_blkg -report /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/powerplan_PG_short.rpt
reset_path_group -all
group_path -name reg2reg -from $reg -to $reg
group_path -name reg2cg -from $reg -to $ckgating
group_path -name in2reg -from $input
group_path -name reg2out -to $output
group_path -name feedthr -from $input -to $output
setPathGroupOptions reg2reg -effortLevel high
setPathGroupOptions reg2cg -effortLevel high
setPathGroupOptions in2reg -effortLevel low
setPathGroupOptions reg2out -effortLevel low
setPathGroupOptions feedthr -effortLevel low
setOptMode -ignorePathGroupsForHold {inp2reg reg2out reg2out feedthr}
setPlaceMode -reset
setPlaceMode -place_global_ignore_scan true
setDesignMode -topRoutingLayer M8
setDesignMode -bottomRoutingLayer M1
setPlaceMode -place_detail_eco_max_distance 10.0
setPlaceMode -place_detail_eco_priority_insts fixed
setPlaceMode -place_detail_activity_power_driven false
setPlaceMode -place_detail_wire_length_opt_effort high
setPlaceMode -place_detail_legalization_inst_gap 0
setPlaceMode -place_global_auto_blockage_in_channel soft
setPlaceMode -place_global_activity_power_driven false
setPlaceMode -place_global_activity_power_driven_effort high
setPlaceMode -place_global_clock_power_driven true
setPlaceMode -place_global_clock_power_driven_effort low
setPlaceMode -place_global_timing_effort high
setPlaceMode -place_global_cong_effort low
setPlaceMode -place_global_max_density -1.000
setPlaceMode -place_global_clock_gate_aware true
setPlaceMode -place_global_uniform_density true
setPlaceMode -place_global_place_io_pins true
place_opt_design
reportCongestion -overflow
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix preCTS -outDir /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/preCTS_timing
report_timing -nworst 200 -unique_pins -machine_readable > ${report_dir}/timing.rpt   
report_area -detail > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/preCTS_area.rpt
report_power -hierarchy all > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/preCTS_power.rpt
report_power -cell all > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/preCTS_power_cell.rpt
report_power -net > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/preCTS_power_net.rpt
setAnalysisMode -analysisType onChipVariation
setNanoRouteMode -quiet -drouteEndIteration 40
setNanoRouteMode -quiet -drouteFixAntenna true
setNanoRouteMode -quiet -drouteUseMultiCutViaEffort medium
setNanoRouteMode -quiet -drouteMinSlackForWireOptimization 0.1
setDelayCalMode -engine default -siAware true
setDesignMode -topRoutingLayer 6
setDesignMode -bottomRoutingLayer 2
routeDesign -globalDetail
optDesign -postRoute -setup
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix postRoute -outDir /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/postRoute_timing
report_timing -nworst 200 -unique_pins -machine_readable > ${report_dir}/timing.rpt   
report_area -detail > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/postRoute_area.rpt
report_power -hierarchy all > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/postRoute_power.rpt
report_power -cell all > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/postRoute_power_cell.rpt
report_power -net > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/postRoute_power_net.rpt
set_verify_drc_mode -reset
set_verify_drc_mode -check_only regular -limit 100000 -report /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/chipdone_drv.rpt
verify_drc
saveDesign /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/data/routing.enc
