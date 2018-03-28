onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_Vcount/Clear
add wave -noupdate /test_Vcount/Clock
add wave -noupdate /test_Vcount/R
add wave -noupdate /test_Vcount/R_S
add wave -noupdate /test_Vcount/R_S_P
add wave -noupdate /test_Vcount/R_S_P_Q
add wave -noupdate -radix unsigned /test_Vcount/Q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1040 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {956 ps} {1062 ps}
