onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /teste_hcount/Clock
add wave -noupdate /teste_hcount/Clear
add wave -noupdate /teste_hcount/D
add wave -noupdate /teste_hcount/D_E
add wave -noupdate /teste_hcount/D_E_B
add wave -noupdate /teste_hcount/D_E_B_C
add wave -noupdate /teste_hcount/Roll_over
add wave -noupdate /teste_hcount/Q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3451 ps} 0}
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
WaveRestoreZoom {2451 ps} {3451 ps}
