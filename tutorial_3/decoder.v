module decode(d_in,d_out);
input [1:0]d_in;
output reg[3:0]d_out;

always @(*)
	begin
		case(d_in)
			2'b00   : d_out		<=4'b0001;
			2'b01   : d_out		<=4'b0010;
			2'b10   : d_out		<=4'b0100;
			2'b11   : d_out		<=4'b1000;
			default : d_out		<=4'b0001;
		endcase
	end
endmodule
