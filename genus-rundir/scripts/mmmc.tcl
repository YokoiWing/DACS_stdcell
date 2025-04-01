
# -------------------------------------------------------------
# Set the SDC FILE
# -------------------------------------------------------------
create_constraint_mode -name common -sdc_files /home/yukunw/dacs-lab3/experiment/dacs2024/lab3/results/26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/genus-rundir/scripts/constraint.sdc

# -------------------------------------------------------------
# Set the lib
# -------------------------------------------------------------
create_library_set -name setup_set -timing [list /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SRAM_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SRAM_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SRAM_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SEQ_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SEQ_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SEQ_SRAM_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SRAM_TT_nldm_201020.lib.gz]
create_library_set -name hold_set -timing [list /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_AO_SRAM_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_INVBUF_SRAM_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_OA_SRAM_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SEQ_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SEQ_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SEQ_SRAM_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_LVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SLVT_TT_nldm_201020.lib.gz /home/yukunw/asap7-ry/asap7sc7p5t_27/LIB/NLDM/asap7sc7p5t_SIMPLE_SRAM_TT_nldm_201020.lib.gz]

# -------------------------------------------------------------
# Create timing condition
# -------------------------------------------------------------
create_timing_condition -name setup_cond -library_sets [list setup_set]
create_timing_condition -name hold_cond -library_sets [list hold_set]

# -------------------------------------------------------------
# Create RC corner
# -------------------------------------------------------------
create_rc_corner -name rc_corner -qrc_tech [list /home/yukunw/asap7-ry/asap7sc7p5t_27/qrc/qrcTechFile_typ03_scaled4xV06]

# -------------------------------------------------------------
# Create the delay corner
# -------------------------------------------------------------
create_delay_corner -name setup_delay -timing_condition setup_cond -rc_corner rc_corner
create_delay_corner -name hold_delay -timing_condition hold_cond -rc_corner rc_corner

# -------------------------------------------------------------
# Create the analysis view
# -------------------------------------------------------------
create_analysis_view -name setup_view -delay_corner setup_delay -constraint_mode common
create_analysis_view -name hold_view -delay_corner hold_delay -constraint_mode common

# -------------------------------------------------------------
# Set the analysis view for setup & hold
# -------------------------------------------------------------
set_analysis_view -setup { setup_view } -hold { hold_view }
