
current_design MultTop

set_units -capacitance 1.0fF
set_units -time 1.0ps

set clk_name clock
set clk_port_name clock
set clk_period_ps 1500.0
set input_delay_ps 150.0
set output_delay_ps 150.0

create_clock -period ${clk_period_ps} -name $clk_name [get_ports ${clk_port_name}]
set_input_delay $input_delay_ps -clock $clk_name [all_inputs -no_clock]
set_output_delay $output_delay_ps -clock $clk_name [all_outputs]
set_clock_groups -asynchronous  -group ${clk_name}

# -------------------------------------------------------------
# Set global constraints
# -------------------------------------------------------------
