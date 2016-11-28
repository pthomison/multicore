/*
  Emily Fredette
  Patrick Thomison
*/

// interface include
`include "cache_control_if.vh"

// memory types
`include "cpu_types_pkg.vh"

module coherence_control (
  input CLK, nRST,
  cache_control_if cif,
  caches_if.caches mcif
);
  	// type import
  	import cpu_types_pkg::*;

	// Module Enums
	// ----------------------------------------- //
	typedef enum logic [3:0] {
	IDLE         = 4'h0,
	INV          = 4'h1,
	SNOOP	     = 4'h2,
	R1           = 4'h3,
	R2           = 4'h4,
	DATAREADY1   = 4'h5,
	DATAREADY2   = 4'h6,
	W1MOD        = 4'h7,
	W2MOD        = 4'h8,
	W1WEN        = 4'h9,
	W2WEN        = 4'hA,
	H1MOD        = 4'hB,
	H2MOD        = 4'hC,
	H1WEN        = 4'hD,
	H2WEN        = 4'hE
	} controllerState;

	//inputs from CACHE  - 2 Bits each
	//iREN, dREN, dWEN, dstore (data), iaddr, daddr,
	//COHERENCE inputs from cache
	//ccwrite, cctrans

	//outputs to cache - 2 Bits each
	//iwait, dwait - always high unless in ACCESS, iload, dload,
	//COHERENCE outputs to cache
	//ccwait, ccinv, ccsnoopaddr


	controllerState currState;
	controllerState nextState;

	logic currReq, nextReq;
	word_t rdata;
	word_t newRData;
	logic lastUsedIcache;
	logic NextCache;


// Coherence Controller Flip Flop
// ----------------------------------------- //

	always_ff @(posedge CLK, negedge nRST) begin
		if(!nRST) begin
			currState <= IDLE;
		end else begin
			currState <= nextState;
		end
	end

// Snoop Flip Flop
// ----------------------------------------- //
	always_ff @(posedge CLK, negedge nRST) begin
		if(nRST == 0) begin
			currReq  <= 0;
		end else begin
			currReq  <= nextReq;
		end
	end

// Read Data Flip Flop
// ----------------------------------------- //
	always_ff @(posedge CLK, negedge nRST) begin
		if(nRST == 0) begin
			rdata  <= 0;
		end else begin
			rdata <= newRData;
		end
	end

// ccwait comb
// ----------------------------------------- //
	always_comb begin
		cif.ccwait[0] = 0;
		cif.ccwait[1] = 0;
		
		if (currState == IDLE) begin
			//ccwaits 0 in IDLE
			cif.ccwait[0] = 0;
			cif.ccwait[1] = 0;
		end else begin
			if (currReq == 0) begin
				//0 is requesting
				cif.ccwait[0] = 0;
				cif.ccwait[1] = 1;
			end else begin
				//1 is requesting
				cif.ccwait[0] = 1;
				cif.ccwait[1] = 0;
			end
		end
	end

// Next Cache Flip Flop and Comb
// ----------------------------------------- //
	always_ff @(posedge CLK, negedge nRST) begin
		if(!nRST) begin
			NextCache <= 0;
		end else begin
			if (cif.iREN[0] == 1 && cif.iREN[1] == 1) begin
				if (mcif.iwait == 0) begin
					NextCache <= ~NextCache;
				end
			end
			else if (cif.iREN[0] == 1 && cif.iREN[1] == 0) begin
				NextCache <= 0;
			end

			else if (cif.iREN[0] == 0 && cif.iREN[1] == 1) begin
				NextCache <= 1;
			end

		end
	end

	always_comb begin
		cif.iwait[0] = 1;
		cif.iwait[1] = 1;
		if (NextCache == 0) begin
			mcif.iaddr   = cif.iaddr[0];
			mcif.iREN    = cif.iREN[0];
			cif.iload[0] = mcif.iload;
			cif.iwait[0] = mcif.iwait;
		end else begin
			mcif.iaddr   = cif.iaddr[1];
			mcif.iREN    = cif.iREN[1];
			cif.iload[1] = mcif.iload;
			cif.iwait[1] = mcif.iwait;
		end
	end

// Coherence Controller Next State Logic
// ----------------------------------------- //
	always_comb begin
		nextState = currState;


		if (!nRST) begin
			//nextState = IDLE;

		end else if (currState == IDLE) begin
			if ((cif.dREN[0] == 1 && cif.cctrans[0] == 1) || (cif.dREN[1] == 1 && cif.cctrans[1] == 1)) begin
				nextState = SNOOP;
			end else if ((cif.ccwrite[0] == 1 && cif.cctrans[0] == 1) || (cif.ccwrite[1] == 1 && cif.cctrans[1] == 1)) begin
				nextState = INV;
			end else if ((cif.dWEN[0] == 1 && cif.cctrans[0] == 1) || (cif.dWEN[1] == 1 && cif.cctrans[1] == 1)) begin
				nextState = W1WEN;
			end else begin
				nextState = IDLE;
			end

		end else if (currState == SNOOP) begin
			nextState = SNOOP;
			if (currReq == 0) begin
				if (cif.ccwrite[1] == 1 && cif.cctrans[1] == 1) begin
					nextState = W1MOD;
				end else if (cif.ccwrite[1] == 0 && cif.cctrans[1] == 1) begin
					nextState = R1;
				end else begin
					nextState = SNOOP;
				end
			end else if (currReq == 1) begin
				if (cif.ccwrite[0] == 1 && cif.cctrans[0] == 1) begin
					nextState = W1MOD;
				end else if (cif.ccwrite[0] == 0 && cif.cctrans[0] == 1) begin
					nextState = R1;
				end else begin
					nextState = SNOOP;
				end
			end

		end else if (currState == W1MOD) begin
			nextState = W1MOD;
			if (mcif.dwait == 0) begin
				nextState = H1MOD;
			end

		end else if (currState == H1MOD) begin
			nextState = W2MOD;

		end else if (currState == W2MOD) begin
			nextState = W2MOD;
			if (mcif.dwait == 0) begin
				nextState = H2MOD;
			end

		end else if (currState == H2MOD) begin
			nextState = IDLE;

		end else if (currState == R1) begin
			nextState = R1;
			if (mcif.dwait == 0) begin
				nextState = DATAREADY1;
			end

		end else if (currState == R2) begin
			nextState = R2;
			if (mcif.dwait == 0) begin
				nextState = DATAREADY2;
			end

		end else if (currState == DATAREADY1) begin
			nextState = R2;
			//

		end else if (currState == DATAREADY2) begin
			nextState = IDLE;
			//

		end else if (currState == W1WEN) begin
			nextState = W1WEN;
			if (mcif.dwait == 0) begin
				nextState = H1WEN;
			end

		end else if (currState == H1WEN) begin
			nextState = W2WEN;

		end else if (currState == W2WEN) begin
			nextState = W2WEN;
			if (mcif.dwait == 0) begin
				nextState = H2WEN;
			end

		end else if (currState == H2WEN) begin
			nextState = IDLE;

		end else if (currState == INV) begin
			nextState = IDLE;
			//

		end
	end


// Coherence Controller Control Signals
// ----------------------------------------- //
	always_comb begin

		// Defaults Here
		nextReq     = 0;
		
		mcif.daddr  = 0;
		mcif.dstore = 0;

		mcif.dWEN   = 0;
		mcif.dREN   = 0;

		cif.dload[0] = 0;
		cif.dload[1] = 0;
		cif.dwait[0] = 1;
		cif.dwait[1] = 1;

		cif.ccinv[0] = 0;
		cif.ccinv[1] = 0;
		cif.ccsnoopaddr[0] = 0;
		cif.ccsnoopaddr[1] = 0;

		// Keeping Junk Data Out of the FF's
		nextReq   = currReq;
		newRData = rdata;
		newRData = rdata;

		if (currState == IDLE) begin
			//To SNOOP state
			if (cif.dREN[0] == 1 && cif.cctrans[0] == 1) begin
				nextReq   = 0;
			end else if (cif.dREN[1] == 1 && cif.cctrans[1] == 1) begin
				nextReq   = 1;

			//To INV state
			end else if (cif.ccwrite[0] == 1 && cif.cctrans[0] == 1) begin
				nextReq   = 0;
			end else if (cif.ccwrite[1] == 1 && cif.cctrans[1] == 1) begin
				nextReq   = 1;

			//To W1WEN state
			end else if (cif.cctrans[0] == 1 && cif.dWEN[0] == 1) begin
				nextReq   = 0;
			end else if (cif.cctrans[1] == 1 && cif.dWEN[1] == 1) begin
				nextReq   = 1;
			end

		end else if (currState == SNOOP) begin
			if (currReq == 0) begin
				cif.ccsnoopaddr[1] = cif.daddr[0];
			end else if (currReq == 1) begin
				cif.ccsnoopaddr[0] = cif.daddr[1];
			end

		// Writing Requestee Data Word One
		end else if (currState == W1MOD) begin
			mcif.dWEN = 1;
			newRData = cif.dstore[!currReq];
			if (currReq == 0) begin
				mcif.daddr  = cif.daddr[1];
				mcif.dstore = cif.dstore[1];
				cif.ccsnoopaddr[1] = cif.daddr[0];
			end else if (currReq == 1) begin
				mcif.daddr  = cif.daddr[0];
				mcif.dstore = cif.dstore[0];
				cif.ccsnoopaddr[0] = cif.daddr[1];
			end

		end else if (currState == H1MOD) begin
			if (currReq == 0) begin
				cif.dload[0] = rdata;
				cif.dwait[0] = 0;

				cif.ccsnoopaddr[1] = cif.daddr[0];
				cif.dwait[1] = 0;

			end else if (currReq == 1) begin
				cif.dload[1] = rdata;
				cif.dwait[1] = 0;
				
				cif.ccsnoopaddr[0] = cif.daddr[1];
				cif.dwait[0] = 0;
			end

		// Writing Requestee Data Word Two
		end else if (currState == W2MOD) begin
			mcif.dWEN = 1;
			newRData = cif.dstore[!currReq];
			if (currReq == 0) begin
				mcif.daddr  = cif.daddr[1];
				mcif.dstore = cif.dstore[1];
				cif.ccsnoopaddr[1] = cif.daddr[0] - 4;
			end else if (currReq == 1) begin
				mcif.daddr  = cif.daddr[0];
				mcif.dstore = cif.dstore[0];
				cif.ccsnoopaddr[0] = cif.daddr[1] - 4;
			end

		end else if (currState == H2MOD) begin
			if (currReq == 0) begin
				cif.dload[0] = rdata;
				cif.dwait[0] = 0;

				cif.ccsnoopaddr[1] = cif.daddr[0];
				cif.dwait[1] = 0;

			end else if (currReq == 1) begin
				cif.dload[1] = rdata;
				cif.dwait[1] = 0;
				
				cif.ccsnoopaddr[0] = cif.daddr[1];
				cif.dwait[0] = 0;
			end
		// Reading Memory Data Word one
		end else if (currState == R1) begin
			mcif.dREN = 1;
			newRData = mcif.dload;
			if (currReq == 0) begin
				mcif.daddr  = cif.daddr[0];
			end else if (currReq == 1) begin
				mcif.daddr  = cif.daddr[1];
			end

		// Reading Memory Data Word Two
		end else if (currState == R2) begin
			mcif.dREN = 1;
			newRData = mcif.dload;
			if (currReq == 0) begin
				mcif.daddr  = cif.daddr[0];
			end else if (currReq == 1) begin
				mcif.daddr  = cif.daddr[1];
			end

		// Sending Read Data To Cache
		end else if (currState == DATAREADY1) begin
			if (currReq == 0) begin
				cif.dwait[0] = 0;
				cif.dload[0] = newRData;
			end else if (currReq == 1) begin
				cif.dwait[1] = 0;
				cif.dload[1] = newRData;
			end

		// Sending Read Data To Cache
		end else if (currState == DATAREADY2) begin
			if (currReq == 0) begin
				cif.dwait[0] = 0;
				cif.dload[0] = newRData;
			end else if (currReq == 1) begin
				cif.dwait[1] = 0;
				cif.dload[1] = newRData;
			end

		// Strictly Writing Data To Memory
		end else if (currState == W1WEN) begin
			mcif.dWEN = 1;
			newRData = mcif.dload;
			if (currReq == 0) begin
				mcif.daddr = cif.daddr[0];
				mcif.dstore = cif.dstore[0];
				cif.ccsnoopaddr[1] = cif.daddr[0];
			end else if (currReq == 1) begin
				mcif.daddr = cif.daddr[1];
				mcif.dstore = cif.dstore[1];
				cif.ccsnoopaddr[0] = cif.daddr[1];
			end

		// Strictly Writing Data To Memory
		end else if (currState == H1WEN) begin
			if (currReq == 0) begin
				cif.dwait[0] = 0;
				cif.dload[0] = rdata;
				cif.ccsnoopaddr[1] = cif.daddr[0];
			end else if (currReq == 1) begin
				cif.ccsnoopaddr[0] = cif.daddr[1];
				cif.dwait[1] = 0;
				cif.dload[1] = rdata;
			end

		end else if (currState == W2WEN) begin
			mcif.dWEN = 1;
			newRData = mcif.dload;
			if (currReq == 0) begin
				mcif.daddr = cif.daddr[0];
				mcif.dstore = cif.dstore[0];
				cif.ccsnoopaddr[1] = cif.daddr[0];
			end else if (currReq == 1) begin
				cif.ccsnoopaddr[0] = cif.daddr[1];
				mcif.daddr = cif.daddr[1];
				mcif.dstore = cif.dstore[1];
			end
		// Invalidating other data
		end else if (currState == H2WEN) begin
			if (currReq == 0) begin
				cif.dwait[0] = 0;
				cif.dload[0] = rdata;
				cif.ccsnoopaddr[1] = cif.daddr[0];
			end else if (currReq == 1) begin
				cif.ccsnoopaddr[0] = cif.daddr[1];
				cif.dwait[1] = 0;
				cif.dload[1] = rdata;
			end
		end else if (currState == INV) begin
			//not finished...
			if (currReq == 0) begin
				cif.ccinv[1] = 1;
				cif.ccsnoopaddr[1] = cif.daddr[0];
			end else if (currReq == 1) begin
				cif.ccinv[0] = 1;
				cif.ccsnoopaddr[0] = cif.daddr[1];
			end
		end
	end

	
	// ICache Handling
	//always_comb begin
	  
	//end

endmodule