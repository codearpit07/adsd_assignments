module mux_g(a,b,sel,out);
input a,b;
input sel;
output out;
wire net1,net2,bsel;

not(bsel,sel);
and(net1,sel,b);
and(net2,bsel,a);
or(out,net1,net2);

endmodule
