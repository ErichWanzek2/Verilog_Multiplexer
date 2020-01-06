
module top_level_4_1(HEX0, SW,LEDR); //declares module

	input wire [5:0]SW; //data and selection input

	output wire [5:0]LEDR; //outputs 6 wires for LEDR
	output wire [6:0]HEX0; //outputs 7 wires for our HEX display


	assign LEDR[5:0]	= SW[5:0]; //assigns LEDRs to switches

   wire m; //defines a wire m
	wire [3:0]X; //defines 4 wires X

	//assign {A, B, C, D} = {3’b000, m};
	
	Four_to_1_1_bit_mux (m,SW[3:0], SW[5:4]); //calls 4 to 1, 1 bit multiplexer, takes in m, and multiple switches
	
	assign X = {3'b000, m}; //concatenates the X wires
	
	hex_7seg_bitwise (X, HEX0); //calls hex_7seg_bitwise
	
endmodule //ends module
