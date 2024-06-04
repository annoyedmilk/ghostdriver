#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 13.1.0 Build 162 10/23/2013 SJ Web Edition
#
#************************************************************

# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.



# Clock constraints

create_clock -name "clk_50" -period 20.000ns [get_ports {clk_50}] -waveform {0.000 10.000}
set CLK {\PLL:pll1|altpll_component|auto_generated|pll1|clk[0]}


# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

# tsu/th constraints

set_input_delay -clock $CLK -max 0.000ns [get_ports {btn_left btn_right reset}] 
set_input_delay -clock $CLK -min 0.000ns [get_ports {btn_left btn_right reset}] 


# tco constraints

set_output_delay -clock $CLK -max 0.000ns [get_ports {hsync led_left led_right leds[0] leds[1] leds[2] leds[3] leds[4] leds[5] leds[6] leds[7] rgb_b[0] rgb_b[1] rgb_b[2] rgb_b[3] rgb_g[0] rgb_g[1] rgb_g[2] rgb_g[3] rgb_r[0] rgb_r[1] rgb_r[2] rgb_r[3] Segment0[0] Segment0[1] Segment0[2] Segment0[3] Segment0[4] Segment0[5] Segment0[6] Segment1[0] Segment1[1] Segment1[2] Segment1[3] Segment1[4] Segment1[5] Segment1[6] Segment2[0] Segment2[1] Segment2[2] Segment2[3] Segment2[4] Segment2[5] Segment2[6] Segment3[0] Segment3[1] Segment3[2] Segment3[3] Segment3[4] Segment3[5] Segment3[6] vsync}] 
set_output_delay -clock $CLK -min 0.000ns [get_ports {hsync led_left led_right leds[0] leds[1] leds[2] leds[3] leds[4] leds[5] leds[6] leds[7] rgb_b[0] rgb_b[1] rgb_b[2] rgb_b[3] rgb_g[0] rgb_g[1] rgb_g[2] rgb_g[3] rgb_r[0] rgb_r[1] rgb_r[2] rgb_r[3] Segment0[0] Segment0[1] Segment0[2] Segment0[3] Segment0[4] Segment0[5] Segment0[6] Segment1[0] Segment1[1] Segment1[2] Segment1[3] Segment1[4] Segment1[5] Segment1[6] Segment2[0] Segment2[1] Segment2[2] Segment2[3] Segment2[4] Segment2[5] Segment2[6] Segment3[0] Segment3[1] Segment3[2] Segment3[3] Segment3[4] Segment3[5] Segment3[6] vsync}] 


# tpd constraints

