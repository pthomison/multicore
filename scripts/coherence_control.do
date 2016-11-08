onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /coherence_control_tb/CLK
add wave -noupdate /coherence_control_tb/PROG/testcase
add wave -noupdate /coherence_control_tb/nRST
add wave -noupdate -group input_dp0 /coherence_control_tb/dcif0/halt
add wave -noupdate -group input_dp0 /coherence_control_tb/dcif0/dhit
add wave -noupdate -group input_dp0 /coherence_control_tb/dcif0/dmemREN
add wave -noupdate -group input_dp0 /coherence_control_tb/dcif0/dmemWEN
add wave -noupdate -group input_dp0 /coherence_control_tb/dcif0/dmemload
add wave -noupdate -group input_dp0 /coherence_control_tb/dcif0/dmemstore
add wave -noupdate -group input_dp0 /coherence_control_tb/dcif0/dmemaddr
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/halt
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dhit
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemREN
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemWEN
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemload
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemstore
add wave -noupdate -group input_dp1 /coherence_control_tb/dcif1/dmemaddr
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/halt
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/ihit
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/imemREN
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/imemload
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/imemaddr
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dhit
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/datomic
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemREN
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemWEN
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/flushed
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemload
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemstore
add wave -noupdate -expand -group dcache0 -group dcif0 /coherence_control_tb/DUTCACHE1/dcif/dmemaddr
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dwait
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dREN
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dWEN
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dload
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/dstore
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/daddr
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccwait
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccinv
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccwrite
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/cctrans
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/DCACHE/snpHit
add wave -noupdate -expand -group dcache0 -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccsnoopaddr
add wave -noupdate -expand -group dcache0 /coherence_control_tb/DUTCACHE1/DCACHE/cacheTwo
add wave -noupdate -expand -group dcache0 /coherence_control_tb/DUTCACHE1/DCACHE/cacheOne
add wave -noupdate -expand -group dcache0 /coherence_control_tb/DUTCACHE1/DCACHE/currState
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE1/DCACHE/snpHit
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE1/DCACHE/snpHitOne
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE1/DCACHE/snpHitTwo
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE1/DCACHE/snpCache
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE1/cif/ccsnoopaddr
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/halt
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/ihit
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/imemREN
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/imemload
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/imemaddr
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dhit
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/datomic
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemREN
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemWEN
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/flushed
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemload
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemstore
add wave -noupdate -expand -group dcache1 -group dcif1 /coherence_control_tb/DUTCACHE2/dcif/dmemaddr
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
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE2/DCACHE/cacheTwo
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE2/DCACHE/cacheOne
add wave -noupdate -expand -group dcache1 /coherence_control_tb/DUTCACHE2/DCACHE/currState
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/iwait
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/dwait
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/iREN
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/dREN
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/dWEN
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/iload
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/dload
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/dstore
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/iaddr
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/daddr
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/ccwait
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/ccinv
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/ccwrite
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/cctrans
add wave -noupdate -expand -group coherence_controller -group mcif /coherence_control_tb/DUTCC/mcif/ccsnoopaddr
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/newRData1
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/newRData2
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/nextState
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/nextReq
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/newRData2
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/newRData1
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/nRST
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/lastUsedIcache
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/currReq
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/CLK
add wave -noupdate -expand -group coherence_controller /coherence_control_tb/DUTCC/currState
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/iwait
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dwait
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/iREN
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dREN
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dWEN
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/iload
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dload
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dstore
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/iaddr
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/daddr
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ccwait
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ccinv
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ccwrite
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/cctrans
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ccsnoopaddr
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramWEN
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramREN
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramstate
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramaddr
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramstore
add wave -noupdate -expand -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramload
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/ramREN
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/ramWEN
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/ramaddr
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/ramstore
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/ramload
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/ramstate
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/memREN
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/memWEN
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/memaddr
add wave -noupdate -group RAM /coherence_control_tb/DUTRAM/ramif/memstore
add wave -noupdate /coherence_control_tb/PROG/testcase
add wave -noupdate -expand -group system_state /coherence_control_tb/DUTCACHE1/DCACHE/currState
add wave -noupdate -expand -group system_state /coherence_control_tb/DUTCACHE2/DCACHE/currState
add wave -noupdate -expand -group system_state /coherence_control_tb/DUTCC/currState
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1500801 ps} 0}
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
WaveRestoreZoom {0 ps} {1811250 ps}
