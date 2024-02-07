transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/Bin7SegDecoder.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/ClkDividerN.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/CntBCDUp4.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/ControlUnit.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/DebounceUnit.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/PulseGeneratorN.vhd}
vcom -93 -work work {C:/Users/pedro/OneDrive - Universidade de Aveiro/Universidade/1ano/2semestre/LSD/P/P8/Parte1/RegN.vhd}

