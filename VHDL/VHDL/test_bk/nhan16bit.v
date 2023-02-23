module nhan16(
    input [15:0] a,b,
    output [15:0] s
);
reg  [15:0] ass0,ass1,ass2,ass3,ass4,ass5,ass6,ass7;
wire  [15:0]add0,add1,add2,add3;
wire  [15:0] aff0,aff1;
wire [6:0] co;
always @*
begin 
if (b[0]==1)
   ass0 = {8'b0,a[7:0]};
else 
   ass0 = 16'b0;
   if (b[1]==1)
   ass1 = {7'b0,a[7:0],1'b0};
else 
   ass1 = 16'b0;
   if (b[2]==1)
   ass2 = {6'b0,a[7:0],2'b0};
else 
   ass2 = 16'b0;
   if (b[3]==1)
   ass3 = {5'b0,a[7:0],3'b0};
else 
   ass3 = 16'b0;
   if (b[4]==1)
   ass4 = {4'b0,a[7:0],4'b0};
else 
   ass4 = 16'b0;
   if (b[5]==1)
   ass5 = {3'b0,a[7:0],5'b0};
else 
   ass5 = 16'b0;
   if (b[6]==1)
   ass6 = {2'b0,a[7:0],6'b0};
else 
   ass6 = 16'b0;
   if (b[7]==1)
   ass7 = {1'b0,a[7:0],7'b0};
else 
   ass7 = 16'b0;
end 

add16bit fa0 (ass0,ass1,add0,co[0]);
add16bit fa1 (ass2,ass3,add1,co[1]);
add16bit fa2 (ass4,ass5,add2,co[2]);
add16bit fa3 (ass6,ass7,add3,co[3]);
add16bit ff0 (add0,add1,aff0,co[4]);
add16bit ff1 (add2,add3,aff1,co[5]);
add16bit ft0 (aff0,aff1,s,co[6]);
endmodule 