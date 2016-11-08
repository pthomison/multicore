/*
  Patrick Thomison & Emily Fredette
*/

// mapped needs this
`include "cache_control_if.vh"
`include "cpu_types_pkg.vh"

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module coherence_control_tb;

  parameter PERIOD = 10;

  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  caches_if cache0();
  caches_if cache1();
  caches_if cache2();
  caches_if cache3();

  cache_control_if #(.CPUS(2)) ccif (cache0, cache1);
  cache_control_if #(.CPUS(1)) mcif (cache2, cache3);

  datapath_cache_if dcif0();
  datapath_cache_if dcif1();

  cpu_ram_if ramif();

  //assigns
  assign ramif.ramREN = mcif.ramREN;
  assign ramif.ramWEN = mcif.ramWEN;
  assign ramif.ramstore = mcif.ramstore;
  assign ramif.ramaddr = mcif.ramaddr;

  assign mcif.ramstate = ramif.ramstate;
  assign mcif.ramload = ramif.ramload;


  // test program
  test PROG (CLK, nRST);

  // DUT
`ifndef MAPPED
  caches            DUTCACHE1(CLK, nRST, dcif0, cache0);
  caches            DUTCACHE2(CLK, nRST, dcif1, cache1);
  coherence_control DUTCC(CLK, nRST, ccif, cache2);
  memory_control    DUTMEM(CLK, nRST, mcif);
  ram               DUTRAM(CLK, nRST, ramif);
`else
`endif

endmodule

program test(
  input logic CLK,
  output logic nRST
);

import cpu_types_pkg::*;

int testcase;
logic issue;


parameter PERIOD = 10;
initial begin

// DC
dcif0.imemREN  = 0;
dcif0.imemaddr = 0;
dcif0.datomic  = 0;
dcif1.imemREN  = 0;
dcif1.imemaddr = 0;
dcif1.datomic  = 0;

// testcase 0 - reset
// ----------------------------------------- //
  testcase = 0;

  //Intial Conditions
  dcif0.halt      = 0;
  dcif0.dmemREN   = 0;
  dcif0.dmemWEN   = 0;
  dcif0.dmemstore = 0;
  dcif0.dmemaddr  = 0;
  dcif1.halt      = 0;
  dcif1.dmemREN   = 0;
  dcif1.dmemWEN   = 0;
  dcif1.dmemstore = 0;
  dcif1.dmemaddr  = 0;


  // Reseting
  #(PERIOD*2);
  nRST = 0;
  #(PERIOD);
  nRST = 1;
  #(PERIOD);

// testcase 1 - read MISS 0
// ----------------------------------------- //
  testcase = 1;

  //Intial Conditions
  dcif0.dmemREN   = 1;
  dcif0.dmemaddr  = 32'h00000100;

  #(PERIOD*20);
  dcif0.dmemREN   = 0;
  dcif0.dmemaddr  = 32'h00000000;
  #(PERIOD*10);



// testcase 2 - read MISS 1
// ----------------------------------------- //
  testcase = 2;

  //Intial Conditions
  dcif1.dmemREN   = 1;
  dcif1.dmemaddr  = 32'h0000A000;

  #(PERIOD*20);
  dcif1.dmemREN   = 0;
  dcif1.dmemaddr  = 32'h00000000;
  #(PERIOD*10);


// testcase 3 - read MISS 1
// ----------------------------------------- //
  testcase = 3;

  //Intial Conditions
  dcif1.dmemREN   = 1;
  dcif1.dmemaddr  = 32'h0000B000;
  //dcif0.dmemstore  = 32'h0000ABCD;
  
  //#(PERIOD*1);
  //dcif0.dmemWEN   = 0;
  #(PERIOD*15);
  dcif1.dmemREN   = 0;
  dcif1.dmemaddr  = 32'h00000000;
  //dcif0.dmemstore  = 32'h00000000;
  #(PERIOD*10);




// testcase 4 - write MISS 0
// ----------------------------------------- //
  testcase = 4;

  //Intial Conditions
  dcif0.dmemWEN   = 1;
  dcif0.dmemaddr  = 32'h0000B000;
  dcif0.dmemstore  = 32'h0000ABCD;
  
  //#(PERIOD*1);
  //dcif0.dmemWEN   = 0;
  #(PERIOD*25);
  dcif0.dmemWEN   = 0;
  dcif0.dmemaddr  = 32'h00000000;
  dcif0.dmemstore  = 32'h00000000;
  #(PERIOD*10);





end
endprogram