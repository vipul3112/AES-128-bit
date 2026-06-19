module GF_mul(out,a,sel,Clk);
input [7:0]a;
input [1:0]sel;
input Clk;
output reg [7:0]out;
reg [7:0] temp;
always @(posedge Clk) begin
    if(a[7]==1)
        temp<= (a<<1) ^(8'h1b);
    else 
        temp<= a<<1;
if(sel==2'b01)
    out<=a;
else if(sel==2'b10)
    out<=temp;
else if(sel==2'b11)
    out<=temp^a;
else
    out<=8'h00;
end
endmodule