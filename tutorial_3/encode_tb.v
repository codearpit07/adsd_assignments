`include"encode.v"
module ec_tb();
reg [3:0]d_in;
wire [1:0]d_out;

encode dut(.d_in(d_in),.d_out(d_out));

initial
	begin
		d_in=4'b0001;
	end
	
always
	begin	
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=4'b0010;
			#10;
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=4'b0001;
			#10;
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=4'b0100;
			#10;
			d_in=4'b1000;
			$monitor("The value at the decoder output is:- %d",d_out);
			#10;
			
			#100 $finish;
	end
endmodule