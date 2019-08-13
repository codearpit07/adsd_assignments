module pr_encode(d_in,d_out);
input [3:0]d_in;
output reg [1:0]d_out;
always @(*)
	begin
		case(d_in)
			4'b0001   : d_out		<=2'b00;
			4'b0010   : d_out		<=2'b01;
			4'b0011   : d_out		<=2'b01;
			4'b0100   : d_out		<=2'b10;
			4'b0101   : d_out		<=2'b10;
			4'b0110   : d_out		<=2'b10;
			4'b0111   : d_out		<=2'b10;
			4'b1000   : d_out		<=2'b11;
			4'b1001   : d_out		<=2'b11;
			4'b1010   : d_out		<=2'b11;
			4'b1011   : d_out		<=2'b11;
			4'b1100   : d_out		<=2'b11;
			4'b1101   : d_out		<=2'b11;
			4'b1110   : d_out		<=2'b11;
			4'b1111   : d_out		<=2'b11;
			default   : d_out		<=2'b00;
		endcase
	end
endmodule
