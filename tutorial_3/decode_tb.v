`include"decoder.v"
module dc_tb();
reg [1:0]d_in;
wire [3:0]d_out;

decode dut(.d_in(d_in),.d_out(d_out));

initial
	begin
		d_in=2'b00;
	end
	
always
	begin	
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=2'b10;
			#10;
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=2'b11;
			#10;
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=2'b01;
			#10;
			d_in=2'b00;
			$monitor("The value at the decoder output is:- %d",d_out);
			#10;
			
			#100 $finish;
	end
endmodule