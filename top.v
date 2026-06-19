module AES(out,in,key,mode,Clk);
input [127:0]in,key;
input Clk,mode;
output reg [127:0] out;
wire [127:0]cipher,inv_cipher;

Encryption e0(cipher,in,key,Clk);

Decryption_new d0(inv_cipher,cipher,key,Clk);

always @(*) begin
if(mode==1'b0)
     out<=cipher;
else if(mode==1'b1)
     out<= inv_cipher;
 else
  out<=0;
end
endmodule
