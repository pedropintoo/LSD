transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P7/Parte3/ALU16.vhd}

vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P7/Parte3/ALU16_Tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  ALU16_Tb

add wave *
view structure
view signals
run -all
