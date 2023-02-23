module division(
	input[15:0] devidend,devisor,
	output [8:0] Quo , Rem 
	); 
wire[15:0] q0;
wire[15:0] q1,q2,q3,q4,q5,q6,q7,q8;
wire[15:0] s1,s2,s3,s4,s5,s6,s7,s8,s9;
wire c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,c7 ,c8,c9 ;
assign q0 = {7'b0 , devidend[15:8]} ;
tru16bit a0 (
	.a(q0),
	.b(devisor),
	.cin(1'b0),
	.c(s1),
	.cout(c1)
	);
assign Quo[8] = (c1) ? 0 : 1;
assign q1 = (c1) ? {q0[14:0] , devidend[7]} : {s1[14:0] , devidend[7] } ;
tru16bit a2 (
	.a(q1),
	.b(devisor),
	.cin(1'b0),
	.c(s2),
	.cout(c2)
	);
assign Quo[7] = (c2) ? 0 : 1;
assign q2 = (c2) ? {q1[14:0] , devidend[6]} : {s2[14:0] , devidend[6] } ;
tru16bit a3 (
	.a(q2),
	.b(devisor),
	.cin(1'b0),
	.c(s3),
	.cout(c3)
	);
assign Quo[6] = (c3) ? 0 : 1;
assign q3 = (c3) ? {q2[14:0] , devidend[5]} : {s3[14:0] , devidend[5] } ;
tru16bit a4 (
	.a(q3),
	.b(devisor),
	.cin(1'b0),
	.c(s4),
	.cout(c4)
	);
assign Quo[5] = (c4) ? 0 : 1;
assign q4 = (c4) ? {q3[14:0] , devidend[4]} : {s4[14:0] , devidend[4] } ;
tru16bit a5 (
	.a(q4),
	.b(devisor),
	.cin(1'b0),
	.c(s5),
	.cout(c5)
	);
assign Quo[4] = (c5) ? 0 : 1;
assign q5 = (c5) ? {q4[14:0] , devidend[3]} : {s5[14:0] , devidend[3] } ;
tru16bit a6 (
	.a(q5),
	.b(devisor),
	.cin(1'b0),
	.c(s6),
	.cout(c6)
	);
assign Quo[3] = (c6) ? 0 : 1;
assign q6 = (c6) ? {q5[14:0] , devidend[2]} : {s6[14:0] , devidend[2] } ;
tru16bit a7 (
	.a(q6),
	.b(devisor),
	.cin(1'b0),
	.c(s7),
	.cout(c7)
	);
assign Quo[2] = (c7) ? 0 : 1;
assign q7 = (c7) ? { q6[14:0], devidend[1] } : {s7[14:0] , devidend[1] } ;
tru16bit a8 (
	.a(q7),
	.b(devisor),
	.cin(1'b0),
	.c(s8),
	.cout(c8)
	);
assign Quo[1] = (c8) ? 0 : 1;
assign q8 = (c8) ? { q7[14:0], devidend[0] } : {s8[14:0] , devidend[0] } ;
tru16bit a9 (
	.a(q8),
	.b(devisor),
	.cin(1'b0),
	.c(s9),
	.cout(c9)
	);
assign Quo[0] = (c9) ? 0 : 1;
assign Rem =(c9) ? q8[8:0] : s9[8:0] ;
endmodule