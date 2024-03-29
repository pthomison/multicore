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

  cache_control_if #(.CPUS(2)) ccif (cache0, cache1);

  datapath_cache_if dcif0();
  datapath_cache_if dcif1();

  cpu_ram_if ramif();

  //assigns
  assign ramif.ramREN = ccif.ramREN;
  assign ramif.ramWEN = ccif.ramWEN;
  assign ramif.ramstore = ccif.ramstore;
  assign ramif.ramaddr = ccif.ramaddr;

  assign ccif.ramstate = ramif.ramstate;
  assign ccif.ramload = ramif.ramload;


  // test program
  test PROG (CLK, nRST);

  // DUT
`ifndef MAPPED
  caches            DUTCACHE1(CLK, nRST, dcif0, cache0);
  caches            DUTCACHE2(CLK, nRST, dcif1, cache1);
  memory_control    DUTMEM(CLK, nRST, ccif);
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
dcif1.imemREN  = 0;
dcif1.imemaddr = 0;

// testcase 0 - reset
// ----------------------------------------- //
  testcase = 0;

  //Intial Conditions
  dcif0.halt      = 0;
  dcif0.dmemREN   = 0;
  dcif0.dmemWEN   = 0;
  dcif0.dmemstore = 0;
  dcif0.dmemaddr  = 0;
  dcif0.datomic   = 0;
  dcif1.halt      = 0;
  dcif1.dmemREN   = 0;
  dcif1.dmemWEN   = 0;
  dcif1.dmemstore = 0;
  dcif1.dmemaddr  = 0;
  dcif1.datomic   = 0;


  // Reseting
  #(PERIOD*2);
  nRST = 0;
  #(PERIOD);
  nRST = 1;
  #(PERIOD);

// testcase 1
// ----------------------------------------- //
  testcase = 1;

  //Intial Conditions
  dcif0.dmemREN   = 1;
  dcif0.dmemaddr  = 32'h00000100;
  dcif0.datomic   = 1;

  @(posedge dcif0.dhit);
  #(PERIOD);

  dcif0.datomic   = 0;
  dcif0.dmemREN   = 0;
  dcif0.dmemaddr  = 32'h00000000;

  #(10 * PERIOD);



// // testcase 2
// // ----------------------------------------- //
  testcase = 2;

  //Intial Conditions
  dcif1.dmemREN   = 1;
  dcif1.dmemaddr  = 32'h00000100;
  dcif1.datomic   = 1;

  @(posedge dcif1.dhit);
  #(PERIOD);

  dcif1.dmemREN   = 0;
  dcif1.dmemaddr  = 32'h00000000;
  dcif1.datomic   = 0;

  #(10 * PERIOD);

// testcase 3
// ----------------------------------------- //
  testcase = 3;

  //Intial Conditions
  dcif1.dmemWEN   = 1;
  dcif1.dmemstore = 32'hDEADBEEF;
  dcif1.dmemaddr  = 32'h00000100;
  dcif1.datomic   = 1;

  
  @(posedge dcif1.dhit);
  #(PERIOD);

  dcif1.dmemWEN   = 0;
  dcif1.dmemaddr  = 32'h00000000;
  dcif1.dmemstore = 0;
  dcif1.datomic   = 0;

  #(10 * PERIOD);

// testcase 4
// ----------------------------------------- //
  testcase = 4;

  //Intial Conditions
  dcif1.dmemWEN   = 1;
  dcif1.dmemstore = 32'hDEADFEED;
  dcif1.dmemaddr  = 32'h00000100;
  dcif1.datomic   = 1;

  
  @(posedge dcif1.dhit);
  #(PERIOD);

  dcif1.dmemWEN   = 0;
  dcif1.dmemaddr  = 32'h00000000;
  dcif1.dmemstore = 0;
  dcif1.datomic   = 0;

  #(10 * PERIOD);




// // // testcase 5 - write MISS 0, Snoop Hit 1
// // // ----------------------------------------- //
//   testcase = 5;

//   //Intial Conditions
//   dcif0.dmemWEN   = 1;
//   dcif0.dmemaddr  = 32'h0000B000;
//   dcif0.dmemstore  = 32'h0000ABCD;
  
//   @(posedge dcif0.dhit);
//   #(PERIOD);

//   dcif0.dmemWEN   = 0;
//   dcif0.dmemaddr  = 32'h00000000;
//   dcif0.dmemstore  = 32'h00000000;
//   #(PERIOD*10);


// // testcase 6 - read miss 1, snoop hit 0 (M -> S)
// // ----------------------------------------- //
//   testcase = 6;

//   //Intial Conditions
//   dcif1.dmemREN   = 1;
//   dcif1.dmemaddr  = 32'h0000B000;
  
//   @(posedge dcif1.dhit);
//   #(PERIOD);

//   dcif1.dmemREN   = 0;
//   dcif1.dmemaddr  = 32'h00000000;
//   #(PERIOD*10);

// // // testcase 7 - write hit 0, snoop hit (S -> M), (S -> I)
// // // ----------------------------------------- //
//   testcase = 7;

//   //Intial Conditions
//   dcif0.dmemWEN   = 1;
//   dcif0.dmemaddr  = 32'h0000B000;
//   dcif0.dmemstore  = 32'h0000DCBA;
  
//   @(posedge dcif0.dhit);
//   #(PERIOD);

//   dcif0.dmemWEN   = 0;
//   dcif0.dmemaddr  = 32'h00000000;
//   dcif0.dmemstore  = 32'h00000000;
//   #(PERIOD*10);

end
endprogram