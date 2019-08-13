`include"prio_enco.v"
module prec_tb();
reg [3:0]d_in;
wire [1:0]d_out;

pr_encode dut(.d_in(d_in),.d_out(d_out));

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
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=4'b0101;
			#10;
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=4'b1100;
			#10;
			d_in=4'b1001;
			$monitor("The value at the decoder output is:- %d",d_out);
			#10;
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=4'b1111;
			#10;
			$monitor("The value at the decoder output is:- %d",d_out);
			d_in=4'b0111;
			#10;
			d_in=4'b1011;
			$monitor("The value at the decoder output is:- %d",d_out);
			#10;
			
			
			#100 $finish;
	end
endmodule