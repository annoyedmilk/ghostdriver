# Delete existing work library if it exists
if {[file exists rtl_work]} {
    vdel -lib rtl_work -all
}

# Create a new work library
vlib rtl_work
vmap work rtl_work

# Compile design files
vcom -reportprogress 300 -work work ../../blue_car_graphic.vhd
vcom -reportprogress 300 -work work ../../red_car_graphic.vhd
vcom -reportprogress 300 -work work ../../street_image_graphic.vhd
vcom -reportprogress 300 -work work ../../black_car_graphic.vhd
vcom -reportprogress 300 -work work ../../brown_car_graphic.vhd
vcom -reportprogress 300 -work work ../../hvsync_generator.vhd
vcom -reportprogress 300 -work work ../../debouncer.vhd
vcom -reportprogress 300 -work work ../../car_control.vhd
vcom -reportprogress 300 -work work ../../car_obstacle.vhd
vcom -reportprogress 300 -work work ../../rendering_logic.vhd
vcom -reportprogress 300 -work work ../../scrolling_logic.vhd
vcom -reportprogress 300 -work work ../../led_control.vhd
vcom -reportprogress 300 -work work ../../seven_segment_display.vhd
vcom -reportprogress 300 -work work ../../pll.vhd
vcom -reportprogress 300 -work work ../../racegame_top.vhd

# Compile the test bench
vcom -reportprogress 300 -work work racegame_top.vht

# Exit compilation mode
quit -sim

# Start simulation
vsim -t 1ns -gui -msgmode both -displaymsgmode both work.racegame_top_vhd_tst

# Load waveform configuration
do wave.do

# Run simulation for 1000 microseconds
run 5000ms
