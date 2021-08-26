transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/ALU {C:/Users/Usuario/Desktop/ALU/adder.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/ALU {C:/Users/Usuario/Desktop/ALU/inv.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/ALU {C:/Users/Usuario/Desktop/ALU/xorGate.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/ALU {C:/Users/Usuario/Desktop/ALU/topALU.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/ALU {C:/Users/Usuario/Desktop/ALU/mux4a1Operacion.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/ALU {C:/Users/Usuario/Desktop/ALU/subtract.sv}

vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/ALU {C:/Users/Usuario/Desktop/ALU/ALUTest.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  AluTest

add wave *
view structure
view signals
run -all
