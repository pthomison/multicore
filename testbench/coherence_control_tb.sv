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

  // test program
  test PROG (CLK, nRST);

  // DUT
`ifndef MAPPED
  dcache            DUTDC1(CLK, nRST, dcif0, cache0);
  dcache            DUTDC2(CLK, nRST, dcif1, cache1);
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

// ----------------------------------------- // testcase 0 - reset

  testcase = 0;

  //Intial Conditions

  // Reseting
  #(PERIOD*2);
  nRST = 0;
  #(PERIOD*2);
  nRST = 1;
  #(PERIOD);


end
endprogram