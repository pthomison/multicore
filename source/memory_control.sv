/*
  Emily Fredette
*/

// interface include
`include "cache_control_if.vh"

// memory types
`include "cpu_types_pkg.vh"

module memory_control (
  input CLK, nRST,
  cache_control_if.cc ccif
);

// type import
import cpu_types_pkg::*;

caches_if cache0();
caches_if cache1();
cache_control_if #(.CPUS(1)) mcif (cache0, cache1);
coherence_control COHCON(CLK, nRST, ccif, cache0);

assign mcif.iload = mcif.ramload;
assign mcif.dload = mcif.ramload;

assign mcif.ramstate = ccif.ramstate;
assign ccif.ramaddr = mcif.ramaddr;
assign ccif.ramstore = mcif.ramstore;
assign mcif.ramload  = ccif.ramload;
assign ccif.ramWEN   = mcif.ramWEN;
assign ccif.ramREN   = mcif.ramREN;

always_comb begin

  //defaults
  mcif.ramaddr = mcif.daddr;
  mcif.ramREN = 0;
  mcif.ramWEN = 0;
  mcif.dwait = 1;
  mcif.iwait = 1;
  mcif.ramstore = mcif.dstore;

  if (mcif.dREN) begin
    mcif.ramaddr = mcif.daddr;
    mcif.ramREN = 1;
    mcif.ramWEN = 0;

    if (mcif.ramstate == ACCESS) begin
      mcif.dwait = 0;
      mcif.iwait = 1;
    end
    else begin
      mcif.dwait = 1;
      mcif.iwait = 1;
    end


  end
  else if (mcif.dWEN) begin
    mcif.ramstore = mcif.dstore;
    mcif.ramaddr = mcif.daddr;
    mcif.ramREN = 0;
    mcif.ramWEN = 1;

    if (mcif.ramstate == ACCESS) begin
      mcif.dwait = 0;
      mcif.iwait = 1;
    end
    else begin
      mcif.dwait = 1;
      mcif.iwait = 1;
    end


  end
  else if (mcif.iREN) begin
    mcif.ramaddr = mcif.iaddr;
    mcif.ramREN = 1;
    mcif.ramWEN = 0;

    if (mcif.ramstate == ACCESS) begin
      mcif.dwait = 1;
      mcif.iwait = 0;
    end
    else begin
      mcif.dwait = 1;
      mcif.iwait = 1;
    end
  end

end
endmodule