module contador_0a5(clk,clear,cont4bits,carry_out);

input clk;
input clear;
output reg[3:0] cont4bits;
output reg carry_out;

always @(posedge clk or posedge clear)
begin
	if(clear == 1'b1)begin
		cont4bits[3:0] = 4'b0000;
	end
	else begin
		if(cont4bits[3:0] < 4'b0101)begin
			cont4bits[3:0] = cont4bits[3:0] + 1;
			carry_out = 0;
		end
		else begin
			cont4bits[3:0] = 4'b0000;
			carry_out = 1;
		end
	end
end


endmodule
