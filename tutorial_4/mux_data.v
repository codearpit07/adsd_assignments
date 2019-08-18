module mux_dt(a,b,sel,out);
input a,b;
input sel;
output out;

assign out=sel?b:a;

endmodule