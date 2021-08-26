transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/clockDivider.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/rgbDecoder.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/addressGenerator.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/VGAcontroller.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/counterXY.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/sprite65.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/printChar.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/topController.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/mcuVGA.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/ROMas.sv}

vlog -sv -work work +incdir+C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters {C:/Users/Usuario/Downloads/Gerald/p_digitales-development/VGAletters/tb_VGA.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Test

add wave *
view structure
view signals
run -all
