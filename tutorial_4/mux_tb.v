`include"mux_gate_level.v"
module mux_tb();
reg a, b, sel;
wire out;

mux_g dut(.a(a),.b(b),.sel(sel),.out(out));

initial
begin
a=0;
b=0;
sel=0;
end


always
begin
#5 $monitor(" The value of inputs a is %b and b is %b \n and the selection is %b \n the output is :%b",a,b,sel,out);
a=1;b=0;sel=0;
#5 $monitor(" The value of inputs a is %b and b is %b \n and the selection is %b \n the output is :%b",a,b,sel,out);
a=1;b=1;sel=0;
#5 $monitor(" The value of inputs a is %b and b is %b \n and the selection is %b \n the output is :%b",a,b,sel,out);
a=0;b=0;sel=1;
#5 $monitor(" The value of inputs a is %b and b is %b \n and the selection is %b \n the output is :%b",a,b,sel,out);
a=1;b=0;sel=1;
#5 $monitor(" The value of inputs a is %b and b is %b \n and the selection is %b \n the output is :%b",a,b,sel,out);
a=1;b=1;sel=1;
#5 $monitor(" The value of inputs a is %b and b is %b \n and the selection is %b \n the output is :%b",a,b,sel,out);
a=0;b=1;sel=1;
#5 $monitor(" The value of inputs a is %b and b is %b \n and the selection is %b \n the output is :%b",a,b,sel,out);
#100 $finish;
end
endmodule
