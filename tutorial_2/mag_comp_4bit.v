module four_comp(a,b,great,eq,less);
input [3:0]a;
input [3:0]b;
output great,eq,less;
wire [1:0]a_1;
wire[1:0]b_1;
wire[1:0]a_2;
wire[1:0]b_2;
assign a_1=a[3:2];
assign a_2=a[1:0];
assign b_1=b[3:2];
assign b_2=b[1:0];

wire great_1,great_2,eq_1,eq_2,less_1,less_2;
comp dur(.a(a_1),.b(b_1),.great(great_1),.eq(eq_1),.less(less_1));
comp dur1(.a(a_2),.b(b_2),.great(great_2),.eq(eq_2),.less(less_2));

assign eq=eq_1&&eq_2;
assign great=great_1 + (eq_1&&eq_2)&&great_2;
assign less=less_1 + (eq_1&&eq_2)&&less_2;
endmodule