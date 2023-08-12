module debounce(input pb, Hclk, output sig_out);
wire Lclk;
wire Q1,Q2,Q2bar,y;

clk_div c(.clk_in(Hclk),.clk_out(Lclk));
D_FF d1(.clk(Lclk),.D(pb), .Q(Q1));
D_FF d2(.clk(Lclk),.D(Q1), .Q(Q2));
assign Q2bar = ~Q2;
assign y = (Q1&Q2bar);
pulser p1(.in(y),.out(sig_out));
 
endmodule