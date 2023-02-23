module add1bit(a,b,ci,s,CO);
input a,b,ci;
output s,CO;
assign s=a^b^ci;
assign CO=a&b|a&ci|b&ci;
endmodule