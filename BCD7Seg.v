module BCD7Seg (dig_4bits,seg7);

input [3:0] dig_4bits;
output reg [7:0] seg7;

always@ (dig_4bits)
begin
	case(dig_4bits)
		4'b0000	:	seg7 = 8'b11000000;	// Dígito 0
		4'b0001 	:	seg7 = 8'b11111001;	// Dígito 1 
		4'b0010	:	seg7 = 8'b10100100;	// Dígito 2
		4'b0011	:	seg7 = 8'b10110000;	// Dígito 3
		4'b0100	:	seg7 = 8'b10011001;  // Dígito 4
		4'b0101	:	seg7 = 8'b10010010;	// Dígito 5
		4'b0110	:	seg7 = 8'b10000010;	// Dígito 6
		4'b0111	:	seg7 = 8'b11111000;	// Digito 7
		4'b1000	:	seg7 = 8'b10000000;	//	Dígito 8
		4'b1001	:	seg7 = 8'b10010000;	// Dígito 9
		4'b1010	:	seg7 = 8'b10001000;	// Dígito A
		4'b1011	:	seg7 = 8'b10000011;	// Dígito B
		4'b1100  :	seg7 = 8'b11000110;	// Dígito C
		4'b1101	:	seg7 = 8'b10100001;	// Dígito D
		4'b1110	:	seg7 = 8'b10000110;	// Dígito E
		4'b1111	:	seg7 = 8'b10001110;	// Dígito F
	endcase
end

endmodule
