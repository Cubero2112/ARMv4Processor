transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/armForTest.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/decoder.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/conditionalLogic.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/conditionCheck.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/controller.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/flopenr.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/datapath.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/flopr.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/instructionMemory.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/adder.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/mux2.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/regfile.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/extend.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/ALUConFlags.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/ALUSinFlags.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/adderWithCarry.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/xorGate.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/inv.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/mux4a1.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/dataMemory.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/ROM32.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/deco_datos.sv}

vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador {C:/Users/Usuario/Desktop/JosueCodes/p_digitales-SystemVerilogCodes/Procesador/procesadorTest.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  armTest

add wave *
view structure
view signals
run -all
