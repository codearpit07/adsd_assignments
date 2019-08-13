module comp(a,b,great,eq,less);
//1st parameter a and second is b;
input [1:0]a;
input [1:0]b;
output great,eq,less;
assign eq=a[0]^~b[0] && a[1]^~b[1];
assign great=(a[1]&& ~b[1]) + (a[1]~^b[1])&&(a[0]&&~b[0]);
assign less=(~a[1]&& b[1]) + (a[1]~^b[1])&&(~a[0]&&b[0]);
endmodule
