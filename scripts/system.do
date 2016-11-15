onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramREN
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramWEN
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramaddr
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramstore
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramload
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramstate
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/memREN
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/memWEN
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/memaddr
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/memstore
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ramstore
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ramstate
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ramload
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ramaddr
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ramWEN
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ramREN
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/iwait
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/iload
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/iaddr
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/iREN
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/dwait
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/dstore
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/dload
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/daddr
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/dWEN
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/dREN
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ccwrite
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ccwait
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/cctrans
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ccsnoopaddr
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/ccinv
add wave -noupdate -group MCIF /system_tb/DUT/CPU/CC/mcif/CPUS
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramstore
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramstate
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramload
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramWEN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramREN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/iwait
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/iload
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/iaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/iREN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dwait
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dstore
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dload
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/daddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dWEN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dREN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ccwrite
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ccwait
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/cctrans
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ccsnoopaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ccinv
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/CPUS
add wave -noupdate -group DP0 -radix hexadecimal /system_tb/DUT/CPU/DP0/ifid_plif/instruction_in
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/ifid_plif/instruction_out
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/idex_plif/instruction_out
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/exm_plif/instruction_out
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/mwb_plif/instruction_out
add wave -noupdate -group DP0 -group PC0 /system_tb/DUT/CPU/DP0/PC/pcif/pcout
add wave -noupdate -group DP0 -group PC0 /system_tb/DUT/CPU/DP0/PC/CLK
add wave -noupdate -group DP0 -group PC0 /system_tb/DUT/CPU/DP0/PC/nRST
add wave -noupdate -group DP0 -group PC0 /system_tb/DUT/CPU/DP0/PC/PCplus4
add wave -noupdate -group DP0 -group PC0 /system_tb/DUT/CPU/DP0/PC/pcnext
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/RF/register
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/CLK
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/dpif/halt
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/nRST
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/temphalt
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/ifid_temp_flush_enable
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/pcif_enable_temp
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/outport_temp
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/wdat_temp
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/idex_temp_flush_enable
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/dwen_temp
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/rwen_temp
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/inst_temp
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/wsel_temp
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/stall
add wave -noupdate -group DP0 /system_tb/DUT/CPU/DP0/temp_rdat2
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/PC_INIT
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/RF/register
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/CLK
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/dpif/halt
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/nRST
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/temphalt
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/ifid_temp_flush_enable
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/pcif_enable_temp
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/outport_temp
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/wdat_temp
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/idex_temp_flush_enable
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/dwen_temp
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/rwen_temp
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/inst_temp
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/wsel_temp
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/temp_rdat2
add wave -noupdate -group DP1 /system_tb/DUT/CPU/DP1/stall
add wave -noupdate -group CM0 /system_tb/DUT/CPU/DP0/dpif/halt
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/halt
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/ihit
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/imemREN
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/imemload
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/imemaddr
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/dhit
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/datomic
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/dmemREN
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/dmemWEN
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/flushed
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/dmemload
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/dmemstore
add wave -noupdate -group CM0 -group dcif0 /system_tb/DUT/CPU/dcif0/dmemaddr
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/iwait
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/dwait
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/iREN
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/dREN
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/dWEN
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/iload
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/dload
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/dstore
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/iaddr
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/daddr
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/ccwait
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/ccinv
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/ccwrite
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/cctrans
add wave -noupdate -group CM0 -group cif0 /system_tb/DUT/CPU/cif0/ccsnoopaddr
add wave -noupdate -group CM0 -group Icache /system_tb/DUT/CPU/CM0/ICACHE/CLK
add wave -noupdate -group CM0 -group Icache /system_tb/DUT/CPU/CM0/ICACHE/nRST
add wave -noupdate -group CM0 -group Icache /system_tb/DUT/CPU/CM0/ICACHE/reqAddr
add wave -noupdate -group CM0 -group Icache /system_tb/DUT/CPU/CM0/ICACHE/cdata
add wave -noupdate -group CM0 -group Icache /system_tb/DUT/CPU/CM0/ICACHE/prehit
add wave -noupdate -group CM0 -group Icache /system_tb/DUT/CPU/CM0/ICACHE/update
add wave -noupdate -group CM0 -group Icache /system_tb/DUT/CPU/CM0/ICACHE/currState
add wave -noupdate -group CM0 -group Icache /system_tb/DUT/CPU/CM0/ICACHE/nextState
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/CLK
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/nRST
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/cacheOne
add wave -noupdate -group CM0 -expand -group Dcache -radix decimal /system_tb/DUT/CPU/CM0/DCACHE/cacheTwo
add wave -noupdate -group CM0 -expand -group Dcache -radix decimal -childformat {{/system_tb/DUT/CPU/CM0/DCACHE/reqAddr.tag -radix decimal} {/system_tb/DUT/CPU/CM0/DCACHE/reqAddr.idx -radix decimal} {/system_tb/DUT/CPU/CM0/DCACHE/reqAddr.blkoff -radix decimal} {/system_tb/DUT/CPU/CM0/DCACHE/reqAddr.bytoff -radix decimal}} -subitemconfig {/system_tb/DUT/CPU/CM0/DCACHE/reqAddr.tag {-height 17 -radix decimal} /system_tb/DUT/CPU/CM0/DCACHE/reqAddr.idx {-height 17 -radix decimal} /system_tb/DUT/CPU/CM0/DCACHE/reqAddr.blkoff {-height 17 -radix decimal} /system_tb/DUT/CPU/CM0/DCACHE/reqAddr.bytoff {-height 17 -radix decimal}} /system_tb/DUT/CPU/CM0/DCACHE/reqAddr
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/snpAddr
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/mload
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/mstore
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/updateRead
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/updateWrite
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/updateRecentUsed
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/updateClean
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/snpHit
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/snpHitOne
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/snpHitTwo
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/snpCache
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/loadAddrA
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/loadAddrB
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/avaliableCache
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/destinationDirty
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/prehitOne
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/prehitTwo
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/prehit
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/validOne
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/validTwo
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/wordDestRead
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/wordDestWrite
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/flushCacheSelect
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/flushIdxSelect
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/hitCache
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/flushWord
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/cdataOne
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/cdataTwo
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/cdata
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/hitcount
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/thitcount
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/misscount
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/tmisscount
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/dirtyData
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/dirtyAddr
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/currState
add wave -noupdate -group CM0 -expand -group Dcache /system_tb/DUT/CPU/CM0/DCACHE/nextState
add wave -noupdate -group CM0 /system_tb/DUT/CPU/CM0/CLK
add wave -noupdate -group CM0 /system_tb/DUT/CPU/CM0/nRST
add wave -noupdate -group CM0 /system_tb/DUT/CPU/CM0/instr
add wave -noupdate -group CM0 /system_tb/DUT/CPU/CM0/daddr
add wave -noupdate -group CM1 /system_tb/DUT/CPU/DP1/dpif/halt
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/imemload
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/imemaddr
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/imemREN
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/ihit
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/halt
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/flushed
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/dmemstore
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/dmemload
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/dmemaddr
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/dmemWEN
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/dmemREN
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/dhit
add wave -noupdate -group CM1 -group dcif1 /system_tb/DUT/CPU/CM1/dcif/datomic
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/iwait
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/iload
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/iaddr
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/iREN
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/dwait
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/dstore
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/dload
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/daddr
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/dWEN
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/dREN
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/ccwrite
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/ccwait
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/cctrans
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/ccsnoopaddr
add wave -noupdate -group CM1 -group cif1 /system_tb/DUT/CPU/CM1/cif/ccinv
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/cacheTwo
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/cacheOne
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/CLK
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/nRST
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/reqAddr
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/snpAddr
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/mload
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/mstore
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/updateRead
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/updateWrite
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/updateRecentUsed
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/updateClean
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/snpHit
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/snpHitOne
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/snpHitTwo
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/snpCache
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/loadAddrA
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/loadAddrB
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/avaliableCache
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/destinationDirty
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/prehitOne
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/prehitTwo
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/prehit
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/validOne
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/validTwo
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/wordDestRead
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/wordDestWrite
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/flushCacheSelect
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/flushIdxSelect
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/hitCache
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/flushWord
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/cdataOne
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/cdataTwo
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/cdata
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/hitcount
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/thitcount
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/misscount
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/tmisscount
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/dirtyData
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/dirtyAddr
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/currState
add wave -noupdate -group CM1 -expand -group Dcache /system_tb/DUT/CPU/CM1/DCACHE/nextState
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/update
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/reqAddr
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/prehit
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/nextState
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/nRST
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/currState
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/cdata
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/cache
add wave -noupdate -group CM1 -group Icache /system_tb/DUT/CPU/CM1/ICACHE/CLK
add wave -noupdate -group CM1 /system_tb/DUT/CPU/CM1/CLK
add wave -noupdate -group CM1 /system_tb/DUT/CPU/CM1/nRST
add wave -noupdate -group CM1 /system_tb/DUT/CPU/CM1/instr
add wave -noupdate -group CM1 /system_tb/DUT/CPU/CM1/daddr
add wave -noupdate -expand -group System_States /system_tb/DUT/CPU/CM0/DCACHE/currState
add wave -noupdate -expand -group System_States /system_tb/DUT/CPU/CM1/DCACHE/currState
add wave -noupdate -expand -group System_States /system_tb/DUT/CPU/CC/COHCON/currState
add wave -noupdate -group Coherence /system_tb/DUT/CPU/CC/COHCON/CLK
add wave -noupdate -group Coherence /system_tb/DUT/CPU/CC/COHCON/nRST
add wave -noupdate -group Coherence /system_tb/DUT/CPU/CC/COHCON/currState
add wave -noupdate -group Coherence /system_tb/DUT/CPU/CC/COHCON/nextState
add wave -noupdate -group Coherence /system_tb/DUT/CPU/CC/COHCON/currReq
add wave -noupdate -group Coherence /system_tb/DUT/CPU/CC/COHCON/nextReq
add wave -noupdate -group Coherence /system_tb/DUT/CPU/CC/COHCON/lastUsedIcache
add wave -noupdate -group Coherence /system_tb/DUT/CPU/CC/COHCON/NextCache
add wave -noupdate -expand -group DC1stuff /system_tb/DUT/CPU/CM1/DCACHE/successVal
add wave -noupdate -expand -group DC1stuff -expand /system_tb/DUT/CPU/CM1/DCACHE/linkRegister
add wave -noupdate -expand -group DC1stuff /system_tb/DUT/CPU/CM1/DCACHE/nextLinkRegister
add wave -noupdate -expand -group DC1stuff /system_tb/DUT/CPU/CM1/dcif/datomic
add wave -noupdate -expand -group DC1stuff /system_tb/DUT/CPU/CM1/dcif/dhit
add wave -noupdate -expand -group DC1stuff /system_tb/DUT/CPU/CM1/dcif/dmemWEN
add wave -noupdate -expand -group DC1stuff /system_tb/DUT/CPU/CM1/dcif/dmemREN
add wave -noupdate -expand -group DC1stuff /system_tb/DUT/CPU/CM1/dcif/dmemaddr
add wave -noupdate -expand -group DC0stuff /system_tb/DUT/CPU/CM0/DCACHE/successVal
add wave -noupdate -expand -group DC0stuff -expand /system_tb/DUT/CPU/CM0/DCACHE/linkRegister
add wave -noupdate -expand -group DC0stuff /system_tb/DUT/CPU/CM0/DCACHE/nextLinkRegister
add wave -noupdate -expand -group DC0stuff /system_tb/DUT/CPU/CM0/dcif/datomic
add wave -noupdate -expand -group DC0stuff /system_tb/DUT/CPU/CM0/dcif/dhit
add wave -noupdate -expand -group DC0stuff /system_tb/DUT/CPU/CM0/dcif/dmemWEN
add wave -noupdate -expand -group DC0stuff /system_tb/DUT/CPU/CM0/dcif/dmemREN
add wave -noupdate -expand -group DC0stuff /system_tb/DUT/CPU/CM0/dcif/dmemaddr
add wave -noupdate -expand -group DC0stuff /system_tb/DUT/CPU/CM0/DCACHE/mload
add wave -noupdate -expand /system_tb/DUT/CPU/DP0/RF/register
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {811429 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 404
configure wave -valuecolwidth 113
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
WaveRestoreZoom {0 ps} {2568408 ps}
