module Four_to_1_1_bit_mux(O,D,S); //declares module

	input wire [3:0]D; // four data inputs
	input wire [1:0]S; // two selectors
	output wire O;   //define input wire
	
	assign O = (D[3] & S[0] & S[1]) |  (D[2]& ~S[0]& S[1]) |  (D[1] & S[0] & ~S[1]) | (D[0] & ~S[0] & ~S[1]); //assigns logical expression to output for the 4 to 1 MUX

endmodule //ends module
