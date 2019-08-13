module encode(d_in,d_out);
input [3:0]d_in;
output reg [1:0]d_out;
always @(*)
	begin
		case(d_in)
			4'b0001   : d_out		<=2'b00;
			4'b0010   : d_out		<=2'b01;
			4'b0100   : d_out		<=2'b10;
			4'b1000   : d_out		<=2'b11;
			default   : d_out		<=2'b00;
		endcase
	end
endmodule
