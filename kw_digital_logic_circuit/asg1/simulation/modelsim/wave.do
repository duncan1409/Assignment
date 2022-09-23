onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mx2/tb_a
add wave -noupdate /tb_mx2/tb_b
add wave -noupdate /tb_mx2/tb_s
add wave -noupdate /tb_mx2/tb_y0
add wave -noupdate /tb_mx2/tb_y1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {39413 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {50258 ps}
