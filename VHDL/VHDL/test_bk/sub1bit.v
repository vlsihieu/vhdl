module sub1bit(a,b,bi,s,BO);
input a,b,bi;
output s,BO;
assign s=a^b^bi;
assign BO=(~a&b)|(~a&bi)|(b&bi);
endmodule