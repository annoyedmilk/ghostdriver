transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Andon_Projekt/Documents/Schule/FPGA/racegame/db {C:/Users/Andon_Projekt/Documents/Schule/FPGA/racegame/db/pll_altpll.v}
vcom -2008 -work work {C:/Users/Andon_Projekt/Documents/Schule/FPGA/racegame/debouncer.vhd}
vcom -2008 -work work {C:/Users/Andon_Projekt/Documents/Schule/FPGA/racegame/hvsync_generator.vhd}
vcom -2008 -work work {C:/Users/Andon_Projekt/Documents/Schule/FPGA/racegame/pll.vhd}
vcom -2008 -work work {C:/Users/Andon_Projekt/Documents/Schule/FPGA/racegame/car_control.vhd}
vcom -2008 -work work {C:/Users/Andon_Projekt/Documents/Schule/FPGA/racegame/track_obstacle.vhd}
vcom -2008 -work work {C:/Users/Andon_Projekt/Documents/Schule/FPGA/racegame/racegame_top.vhd}

