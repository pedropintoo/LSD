transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P7/Parte1/Dec2_4En.vhd}

