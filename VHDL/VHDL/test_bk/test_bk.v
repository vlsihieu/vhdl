module alu
(input [15:0]a,b,
 input [2:0] en,
 output reg [15:0]kq,
 output reg carry,
 output reg [8:0] so_du );
 wire[15:0] cong,va,XOR,tru;
 wire c,d;
 wire[8:0] thuong,du;
 add16bit ic0(a,b,cong,c);
 and16bit ic1(a,b,va);
 division ic2(a,b,thuong,du);
 nhan16  ic3(a,b,nhan);
 tru16bit  ic4(a,b,tru,d);
 XOR16bit  ic5(a,b,XOR);
 always@*
 case(en)
 3'b00:begin
 kq=cong;
 carry=c;

        end
3'b01:begin
 kq=tru;
 carry=d;
 
        end
3'b010:begin
kq=nhan;
//carry=1'b0;
//du=1'b0;

        end
3'b011:begin
 kq={7'b0,thuong};
 so_du=du;

 end
 3'b100:kq=va;
 3'b101:kq=XOR;
 endcase
endmodule