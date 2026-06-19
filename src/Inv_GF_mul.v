module Inv_GF_mul(out, a, sel, Clk);
input [7:0] a;
input [1:0] sel;
input Clk;
output reg [7:0] out;

reg [7:0] mul2, mul4, mul8;
reg [7:0] temp2, temp4, temp8;

always @(*) begin
    // GF multiply by 2
    temp2 = (a[7] == 1) ? ((a << 1) ^ 8'h1b) : (a << 1);
    temp4 = (temp2[7] == 1) ? ((temp2 << 1) ^ 8'h1b) : (temp2 << 1);
    temp8 = (temp4[7] == 1) ? ((temp4 << 1) ^ 8'h1b) : (temp4 << 1);

    mul2 = temp2;
    mul4 = temp4;
    mul8 = temp8;
end

always @(posedge Clk) begin
    if(sel == 2'b00)
        out <= mul8 ^ mul4 ^ mul2; // *0E
    else if(sel == 2'b01)
        out <= mul8 ^ mul2 ^ a;    // *0B
    else if(sel == 2'b10)
        out <= mul8 ^ mul4 ^ a;    // *0D
    else if(sel == 2'b11)
        out <= mul8 ^ a;           // *09
    else
        out <= 8'b0;
end

endmodule
