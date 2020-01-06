module Four_to_1_4_bit_mux(O,D,S); //declares module

	input wire [15:0]D; // four data inputs
	input wire [1:0]S; // two selector inputs
	output wire [3:0]O;   //define output data wire
	
	Four_to_1_1_bit_mux inst0(O[0],D[3:0],S); //calls the four to 1, 1 bit module from earlier.
	Four_to_1_1_bit_mux inst1(O[1],D[7:4],S); //calls the four to 1, 1 bit module from earlier.
	Four_to_1_1_bit_mux inst2(O[2],D[11:8],S); //calls the four to 1, 1 bit module from earlier.
	Four_to_1_1_bit_mux inst3(O[3],D[15:12],S); //calls the four to 1, 1 bit module from earlier.
	//using four of the four to 1, 1 bit functions from earlier, we can create a 4 to 1, 4 bits multiplexer.
	
endmodule //ends module