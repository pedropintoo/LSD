transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/DebounceUnit.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P3/Parte4/Bin7SegDecoder.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/ClkDividerN.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte2/DrinksFSM.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte2/DrinksMachine.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte2/HoldAbrir.vhd}

