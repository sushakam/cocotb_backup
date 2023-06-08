#https://vhdlwhiz.com/the-modelsim-commands-you-need-to-know/
#clear
#/home/hakam/intelFPGA_lite/19.1/modelsim_ase/bin/vdel work                 #Make a new work dir
#/home/hakam/intelFPGA/19.1/modelsim_ase/bin/vlib work                       #Make a new work dir
#/home/hakam/intelFPGA/19.1/modelsim_ase/bin/vlog dut.sv           #Compile tb
#/home/hakam/intelFPGA_lite/19.1/modelsim_ase/bin/vlog uvm-1.1b/examples/simple/hello_world/hello_world.sv            #Compile tb
#/home/hakam/intelFPGA_lite/19.1/modelsim_ase/bin/vsim -L altera_mf_ver -c dut -do "run -all; exit"   #Run sim
#/home/hakam/intelFPGA_lite/19.1/modelsim_ase/bin/vsim -c ALU_tb -do "run -all"    #Run sim
#UVM/uvm-1.1b/examples/simple/hello_world/hello_world.sv



#### COCOTB STUFF ####


clear
rm sim_build -r
rm vsim.wlf
make sim=MODELSIM GUI=0

# Remember, to view waves, run:
$vsim -view vsim.wlf  #-log -r * #, then add all the signals...
