onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /coherence_control_tb/CLK
add wave -noupdate /coherence_control_tb/PROG/testcase
add wave -noupdate /coherence_control_tb/nRST
add wave -noupdate -expand -group input_dp0 /coherence_control_tb/dcif0/halt
add wave -noupdate -expand -group input_dp0 /coherence_control_tb/dcif0/dhit
add wave -noupdate -expand -group input_dp0 /coherence_control_tb/dcif0/dmemREN
add wave -noupdate -expand -group input_dp0 /coherence_control_tb/dcif0/dmemWEN
add wave -noupdate -expand -group input_dp0 /coherence_control_tb/dcif0/dmemload
add wave -noupdate -expand -group input_dp0 /coherence_control_tb/dcif0/dmemstore
add wave -noupdate -expand -group input_dp0 /coherence_control_tb/dcif0/dmemaddr
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/halt
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dhit
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemREN
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemWEN
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemload
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemstore
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemaddr
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dwait
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dREN
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dWEN
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dload
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dstore
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/daddr
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccwait
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccinv
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccwrite
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/cctrans
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccsnoopaddr
add wave -noupdate -expand -group dcache0 /coherence_control_tb/DUTCACHE1/DCACHE/currState
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/iwait
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dwait
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/iREN
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dREN
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dWEN
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/iload
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dload
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dstore
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/iaddr
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/daddr
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/ccwait
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/ccinv
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/ccwrite
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/cctrans
add wave -noupdate -expand -group dcache1 -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/ccsnoopaddr
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE2/DCACHE/currState
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/currState
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {55000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {262500 ps}
