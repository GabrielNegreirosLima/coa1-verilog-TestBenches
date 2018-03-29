onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_vgacontroller/Reset
add wave -noupdate /test_vgacontroller/Clock
add wave -noupdate /test_vgacontroller/V_sync
add wave -noupdate /test_vgacontroller/H_sync
add wave -noupdate /test_vgacontroller/VGA_BLANK
add wave -noupdate /test_vgacontroller/VGA_SYNC
add wave -noupdate -radix unsigned -radixshowbase 0 /test_vgacontroller/Column_out
add wave -noupdate -radix unsigned -radixshowbase 0 /test_vgacontroller/Row_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 198
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
configure wave -timelineunits ns
update
WaveRestoreZoom {111066 ns} {2625734 ns}
