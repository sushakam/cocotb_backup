# Autogenerated file
onerror {
	quit -f -code 1
}
vmap -c
if [file exists sim_build/work] {vdel -lib sim_build/work -all}
vlib sim_build/work
vmap work sim_build/work
vlog -work work +define+COCOTB_SIM -sv -timescale 1ns/1ps -mfcu +acc  /home/hakam/Desktop/cocotb_test/my_design.sv
vsim -quiet -L /home/hakam/intelFPGA/19.1/modelsim_ase/altera/verilog/altera_mf  -pli /home/hakam/.pyenv/versions/3.11.3/lib/python3.11/site-packages/cocotb/libs/libcocotbvpi_modelsim.so   sim_build/work.my_design
log -recursive /*
onbreak resume
run -all
quit
