onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /coherence_control_tb/CLK
add wave -noupdate /coherence_control_tb/nRST
add wave -noupdate /coherence_control_tb/PROG/testcase
add wave -noupdate -expand -group DCACHE0 /coherence_control_tb/DUTCACHE1/DCACHE/successVal
add wave -noupdate -expand -group DCACHE0 -expand /coherence_control_tb/DUTCACHE1/DCACHE/linkRegister
add wave -noupdate -expand -group DCACHE0 /coherence_control_tb/DUTCACHE1/DCACHE/cacheOne
add wave -noupdate -expand -group DCACHE0 /coherence_control_tb/DUTCACHE1/DCACHE/cacheTwo
add wave -noupdate -expand -group DCACHE0 /coherence_control_tb/DUTCACHE1/DCACHE/nextLinkRegister
add wave -noupdate -expand -group DCACHE0 /coherence_control_tb/DUTCACHE1/DCACHE/currState
add wave -noupdate -expand -group DCACHE1 /coherence_control_tb/DUTCACHE2/DCACHE/successVal
add wave -noupdate -expand -group DCACHE1 -expand /coherence_control_tb/DUTCACHE2/DCACHE/linkRegister
add wave -noupdate -expand -group DCACHE1 -expand -subitemconfig {{/coherence_control_tb/DUTCACHE2/DCACHE/cacheOne[0]} -expand {/coherence_control_tb/DUTCACHE2/DCACHE/cacheOne[0].data} -expand} /coherence_control_tb/DUTCACHE2/DCACHE/cacheOne
add wave -noupdate -expand -group DCACHE1 /coherence_control_tb/DUTCACHE2/DCACHE/cacheTwo
add wave -noupdate -expand -group DCACHE1 /coherence_control_tb/DUTCACHE2/DCACHE/nextLinkRegister
add wave -noupdate -expand -group DCACHE1 /coherence_control_tb/DUTCACHE2/DCACHE/currState
add wave -noupdate -group Coherence_Control /coherence_control_tb/DUTMEM/COHCON/currState
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/halt
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/ihit
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/imemREN
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/imemload
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/imemaddr
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dhit
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/datomic
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemREN
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemWEN
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/flushed
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemload
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemstore
add wave -noupdate -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemaddr
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/halt
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/ihit
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/imemREN
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/imemload
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/imemaddr
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dhit
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/datomic
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemREN
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemWEN
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/flushed
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemload
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemstore
add wave -noupdate -expand -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemaddr
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/iwait
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/dwait
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/iREN
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/dREN
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/dWEN
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/iload
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/dload
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/dstore
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/iaddr
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/daddr
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/ccwait
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/ccinv
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/ccwrite
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/cctrans
add wave -noupdate -group cif0 /coherence_control_tb/DUTCACHE1/cif/ccsnoopaddr
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/iwait
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/dwait
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/iREN
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/dREN
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/dWEN
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/iload
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/dload
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/dstore
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/iaddr
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/daddr
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/ccwait
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/ccinv
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/ccwrite
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/cctrans
add wave -noupdate -expand -group cif1 /coherence_control_tb/DUTCACHE2/cif/ccsnoopaddr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {262187 ps} 0}
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
WaveRestoreZoom {0 ps} {855750 ps}
