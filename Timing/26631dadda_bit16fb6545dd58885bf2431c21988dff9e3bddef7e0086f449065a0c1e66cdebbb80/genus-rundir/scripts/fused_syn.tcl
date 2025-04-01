
# -------------------------------------------------------------
# Global synthesis settings
# -------------------------------------------------------------
set_db hdl_error_on_blackbox true
set_db max_cpus_per_server 1

# -------------------------------------------------------------
# Read library files
# -------------------------------------------------------------
read_mmmc /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/genus-rundir/scripts/mmmc.tcl
read_physical -lef { /home/yukunw/asap7-ry/asap7sc7p5t_27/techlef_misc/asap7_tech_4x_201209.lef /home/yukunw/asap7-ry/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_L_4x_201211.lef /home/yukunw/asap7-ry/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_R_4x_201211.lef /home/yukunw/asap7-ry/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SL_4x_201211.lef /home/yukunw/asap7-ry/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SRAM_4x_201211.lef }

# -------------------------------------------------------------
# Read verilog design files
# -------------------------------------------------------------
read_hdl -sv { /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/mult.v }
elaborate MultTop
init_design -top MultTop
check_design -unresolved

# -------------------------------------------------------------
# Set retime modules
# -------------------------------------------------------------

# -------------------------------------------------------------
# Set dont use cells
# -------------------------------------------------------------

if { [get_db lib_cells */ICGx*DC*] ne "" } {
    set_dont_use [get_db lib_cells */ICGx*DC*]
} else {
    puts "WARNING: cell */ICGx*DC* was not found for set_dont_use"
}

if { [get_db lib_cells */AND4x1*] ne "" } {
    set_dont_use [get_db lib_cells */AND4x1*]
} else {
    puts "WARNING: cell */AND4x1* was not found for set_dont_use"
}

if { [get_db lib_cells */SDFLx2*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx2*]
} else {
    puts "WARNING: cell */SDFLx2* was not found for set_dont_use"
}

if { [get_db lib_cells */AO21x1*] ne "" } {
    set_dont_use [get_db lib_cells */AO21x1*]
} else {
    puts "WARNING: cell */AO21x1* was not found for set_dont_use"
}

if { [get_db lib_cells */XOR2x2*] ne "" } {
    set_dont_use [get_db lib_cells */XOR2x2*]
} else {
    puts "WARNING: cell */XOR2x2* was not found for set_dont_use"
}

if { [get_db lib_cells */OAI31xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI31xp33*]
} else {
    puts "WARNING: cell */OAI31xp33* was not found for set_dont_use"
}

if { [get_db lib_cells */OAI221xp5*] ne "" } {
    set_dont_use [get_db lib_cells */OAI221xp5*]
} else {
    puts "WARNING: cell */OAI221xp5* was not found for set_dont_use"
}

if { [get_db lib_cells */SDFLx3*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx3*]
} else {
    puts "WARNING: cell */SDFLx3* was not found for set_dont_use"
}

if { [get_db lib_cells */SDFLx1*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx1*]
} else {
    puts "WARNING: cell */SDFLx1* was not found for set_dont_use"
}

if { [get_db lib_cells */AOI211xp5*] ne "" } {
    set_dont_use [get_db lib_cells */AOI211xp5*]
} else {
    puts "WARNING: cell */AOI211xp5* was not found for set_dont_use"
}

if { [get_db lib_cells */OAI322xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI322xp33*]
} else {
    puts "WARNING: cell */OAI322xp33* was not found for set_dont_use"
}

if { [get_db lib_cells */OR2x6*] ne "" } {
    set_dont_use [get_db lib_cells */OR2x6*]
} else {
    puts "WARNING: cell */OR2x6* was not found for set_dont_use"
}

if { [get_db lib_cells */A2O1A1O1Ixp25*] ne "" } {
    set_dont_use [get_db lib_cells */A2O1A1O1Ixp25*]
} else {
    puts "WARNING: cell */A2O1A1O1Ixp25* was not found for set_dont_use"
}

if { [get_db lib_cells */XNOR2x1*] ne "" } {
    set_dont_use [get_db lib_cells */XNOR2x1*]
} else {
    puts "WARNING: cell */XNOR2x1* was not found for set_dont_use"
}

if { [get_db lib_cells */OAI32xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI32xp33*]
} else {
    puts "WARNING: cell */OAI32xp33* was not found for set_dont_use"
}

if { [get_db lib_cells */FAx1*] ne "" } {
    set_dont_use [get_db lib_cells */FAx1*]
} else {
    puts "WARNING: cell */FAx1* was not found for set_dont_use"
}

if { [get_db lib_cells */OAI21x1*] ne "" } {
    set_dont_use [get_db lib_cells */OAI21x1*]
} else {
    puts "WARNING: cell */OAI21x1* was not found for set_dont_use"
}

if { [get_db lib_cells */OAI31xp67*] ne "" } {
    set_dont_use [get_db lib_cells */OAI31xp67*]
} else {
    puts "WARNING: cell */OAI31xp67* was not found for set_dont_use"
}

if { [get_db lib_cells */OAI33xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI33xp33*]
} else {
    puts "WARNING: cell */OAI33xp33* was not found for set_dont_use"
}

if { [get_db lib_cells */AO21x2*] ne "" } {
    set_dont_use [get_db lib_cells */AO21x2*]
} else {
    puts "WARNING: cell */AO21x2* was not found for set_dont_use"
}

if { [get_db lib_cells */AOI32xp33*] ne "" } {
    set_dont_use [get_db lib_cells */AOI32xp33*]
} else {
    puts "WARNING: cell */AOI32xp33* was not found for set_dont_use"
}

# -------------------------------------------------------------
# Synthesize the design to target library
# -------------------------------------------------------------
set_db syn_generic_effort medium
syn_generic 

set_db syn_map_effort high
syn_map 

set_db syn_opt_effort high
syn_opt 

# -------------------------------------------------------------
# Write out data
# -------------------------------------------------------------
write_hdl -mapped > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/genus-rundir/data/MultTop-mapped.v
write_sdf > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/genus-rundir/data/MultTop.sdf
write_sdc -view setup_view > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/genus-rundir/data/constraint_setup.sdc
write_sdc -view hold_view > /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/genus-rundir/data/constraint_hold.sdc

# -------------------------------------------------------------
# Generate reports
# -------------------------------------------------------------
set report_dir /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/genus-rundir/reports

report_timing > ${report_dir}/timing.rpt
report_power -by_hierarchy -levels all > ${report_dir}/power.rpt
report_area > ${report_dir}/area.rpt
report_design_rules > ${report_dir}/drc.rpt
report_qor > ${report_dir}/qor.rpt


# -------------------------------------------------------------
# Report path group timing
# -------------------------------------------------------------
report_timing -from [ all_inputs ] -to [ all_outputs ] -nworst 1 > ${report_dir}/timing_in_to_out.rpt
# report_timing -from [ all_inputs ] -to [ all_registers ] -nworst 1 > ${report_dir}/timing_in_to_reg.rpt
# report_timing -from [ all_registers ] -to [ all_outputs ] -nworst 1 > ${report_dir}/timing_reg_to_out.rpt
exit 0
