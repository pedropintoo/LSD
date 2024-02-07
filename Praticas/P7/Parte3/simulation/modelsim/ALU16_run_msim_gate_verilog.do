transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ALU16_6_1200mv_85c_slow.vo}

vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P7/Parte3/ALU16_Tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  ALU16_Tb

add wave *
view structure
view signals
run -all
