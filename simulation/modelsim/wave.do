onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /racegame_top_vhd_tst/btn_left
add wave -noupdate /racegame_top_vhd_tst/btn_right
add wave -noupdate /racegame_top_vhd_tst/hsync
add wave -noupdate /racegame_top_vhd_tst/vsync
add wave -noupdate -radix hexadecimal /racegame_top_vhd_tst/rgb_b
add wave -noupdate -radix hexadecimal /racegame_top_vhd_tst/rgb_g
add wave -noupdate -radix hexadecimal /racegame_top_vhd_tst/rgb_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {602297700 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 115
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {0 ns} {1468955595 ns}
