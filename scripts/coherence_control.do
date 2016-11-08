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
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/DCACHE/snpHit
add wave -noupdate -expand -group dcache0 -expand -group cif_dc0 /coherence_control_tb/DUTCACHE1/cif/ccsnoopaddr
add wave -noupdate -expand -group dcache0 -expand -subitemconfig {{/coherence_control_tb/DUTCACHE1/DCACHE/cacheTwo[0]} -expand {/coherence_control_tb/DUTCACHE1/DCACHE/cacheTwo[0].data} -expand} /coherence_control_tb/DUTCACHE1/DCACHE/cacheTwo
add wave -noupdate -expand -group dcache0 /coherence_control_tb/DUTCACHE1/DCACHE/cacheOne
add wave -noupdate -expand -group dcache0 /coherence_control_tb/DUTCACHE1/DCACHE/currState
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/iwait
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dwait
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/iREN
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dREN
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dWEN
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/iload
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dload
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/dstore
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/iaddr
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/daddr
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/ccwait
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/ccinv
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/ccwrite
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/cctrans
add wave -noupdate -group dcache1 -expand -group cif_dc1 /coherence_control_tb/DUTCACHE2/cif/ccsnoopaddr
add wave -noupdate -group dcache1 /coherence_control_tb/DUTCACHE2/DCACHE/snpHit
add wave -noupdate -group dcache1 -expand -subitemconfig {{/coherence_control_tb/DUTCACHE2/DCACHE/cacheTwo[0]} -expand {/coherence_control_tb/DUTCACHE2/DCACHE/cacheTwo[0].data} -expand} /coherence_control_tb/DUTCACHE2/DCACHE/cacheTwo
add wave -noupdate -group dcache1 /coherence_control_tb/DUTCACHE2/DCACHE/cacheOne
add wave -noupdate -group dcache1 /coherence_control_tb/DUTCACHE2/DCACHE/currState
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/rdata2
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/rdata1
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/nextState
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/nextReq
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/newRData2
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/newRData1
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/nRST
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/lastUsedIcache
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/currReq
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/CLK
add wave -noupdate -group coherence_controller /coherence_control_tb/DUTCC/currState
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/iwait
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dwait
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/iREN
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dREN
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dWEN
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/iload
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dload
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/dstore
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/iaddr
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/daddr
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ccwait
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ccinv
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ccwrite
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/cctrans
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ccsnoopaddr
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramWEN
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramREN
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramstate
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramaddr
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramstore
add wave -noupdate -group DUTMEM /coherence_control_tb/DUTMEM/ccif/ramload
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {796108 ps} 0}
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
WaveRestoreZoom {598065 ps} {1011290 ps}
