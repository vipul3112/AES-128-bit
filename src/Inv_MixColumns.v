module Inv_MixColumns(MixColumns_out, in, Clk);
input [127:0] in;
input Clk;
output [127:0] MixColumns_out;

wire [7:0] column0, column1, column2, column3;
wire [7:0] column4, column5, column6, column7;
wire [7:0] column8, column9, column10, column11;
wire [7:0] column12, column13, column14, column15;

assign column0 = in[127:120]; assign column1 = in[119:112];
assign column2 = in[111:104]; assign column3 = in[103:96];
assign column4 = in[95:88];   assign column5 = in[87:80];
assign column6 = in[79:72];   assign column7 = in[71:64];
assign column8 = in[63:56];   assign column9 = in[55:48];
assign column10 = in[47:40];  assign column11 = in[39:32];
assign column12 = in[31:24];  assign column13 = in[23:16];
assign column14 = in[15:8];   assign column15 = in[7:0];

// Column 0 group
wire [7:0] m1, m2, m3, m4;
Inv_GF_mul n1(m1, column0, 2'b00, Clk);
Inv_GF_mul n2(m2, column1, 2'b01, Clk);
Inv_GF_mul n3(m3, column2, 2'b10, Clk);
Inv_GF_mul n4(m4, column3, 2'b11, Clk);
wire [7:0] out_column0 = m1 ^ m2 ^ m3 ^ m4;

wire [7:0] m5, m6, m7, m8;
Inv_GF_mul n5(m5, column0, 2'b11, Clk);
Inv_GF_mul n6(m6, column1, 2'b00, Clk);
Inv_GF_mul n7(m7, column2, 2'b01, Clk);
Inv_GF_mul n8(m8, column3, 2'b10, Clk);
wire [7:0] out_column1 = m5 ^ m6 ^ m7 ^ m8;

wire [7:0] m9, m10, m11, m12;
Inv_GF_mul n9(m9,column0,2'b10, Clk);
Inv_GF_mul n10(m10,column1,2'b11, Clk);
Inv_GF_mul n11(m11,column2,2'b00, Clk);
Inv_GF_mul n12(m12,column3,2'b01, Clk);
wire [7:0] out_column2 = m9 ^ m10 ^ m11 ^ m12;

wire [7:0] m13, m14, m15, m16;
Inv_GF_mul n13(m13, column0, 2'b01, Clk);
Inv_GF_mul n14(m14, column1, 2'b10, Clk);
Inv_GF_mul n15(m15, column2, 2'b11, Clk);
Inv_GF_mul n16(m16, column3, 2'b00, Clk);
wire [7:0] out_column3 = m13 ^ m14 ^ m15 ^ m16;

// Column 1 group
wire [7:0] m17, m18, m19, m20;
Inv_GF_mul n17(m17, column4, 2'b00, Clk);
Inv_GF_mul n18(m18, column5, 2'b01, Clk);
Inv_GF_mul n19(m19, column6, 2'b10, Clk);
Inv_GF_mul n20(m20, column7, 2'b11, Clk);
wire [7:0] out_column4 = m17 ^ m18 ^ m19 ^ m20;

wire [7:0] m21, m22, m23, m24;
Inv_GF_mul n21(m21, column4, 2'b11, Clk);
Inv_GF_mul n22(m22, column5, 2'b00, Clk);
Inv_GF_mul n23(m23, column6, 2'b01, Clk);
Inv_GF_mul n24(m24, column7, 2'b10, Clk);
wire [7:0] out_column5 = m21 ^ m22 ^ m23 ^ m24;

wire [7:0] m25, m26, m27, m28;
Inv_GF_mul n25(m25, column4, 2'b10, Clk);
Inv_GF_mul n26(m26, column5, 2'b11, Clk);
Inv_GF_mul n27(m27, column6, 2'b00, Clk);
Inv_GF_mul n28(m28, column7, 2'b01,Clk);
wire [7:0] out_column6 = m25 ^ m26 ^ m27 ^ m28;

wire [7:0] m29, m30, m31, m32;
Inv_GF_mul n29(m29, column4, 2'b01, Clk);
Inv_GF_mul n30(m30, column5, 2'b10, Clk);
Inv_GF_mul n31(m31, column6, 2'b11, Clk);
Inv_GF_mul n32(m32, column7, 2'b00, Clk);
wire [7:0] out_column7 = m29 ^ m30 ^ m31 ^ m32;

// Column 2 group
wire [7:0] m33, m34, m35, m36;
Inv_GF_mul n33(m33, column8, 2'b00, Clk);
Inv_GF_mul n34(m34, column9, 2'b01, Clk);
Inv_GF_mul n35(m35, column10, 2'b10, Clk);
Inv_GF_mul n36(m36, column11, 2'b11, Clk);
wire [7:0] out_column8 = m33 ^ m34 ^ m35 ^ m36;

wire [7:0] m37, m38, m39, m40;
Inv_GF_mul n37(m37, column8, 2'b11, Clk);
Inv_GF_mul n38(m38, column9, 2'b00, Clk);
Inv_GF_mul n39(m39, column10, 2'b01, Clk);
Inv_GF_mul n40(m40, column11, 2'b10, Clk);
wire [7:0] out_column9 = m37 ^ m38 ^ m39 ^ m40;

wire [7:0] m41, m42, m43, m44;
Inv_GF_mul n41(m41, column8, 2'b10, Clk);
Inv_GF_mul n42(m42, column9, 2'b11, Clk);
Inv_GF_mul n43(m43, column10, 2'b00, Clk);
Inv_GF_mul n44(m44, column11, 2'b01, Clk);
wire [7:0] out_column10 = m41 ^ m42 ^ m43 ^ m44;

wire [7:0] m45, m46, m47, m48;
Inv_GF_mul n45(m45, column8, 2'b01, Clk);
Inv_GF_mul n46(m46, column9, 2'b10, Clk);
Inv_GF_mul n47(m47, column10, 2'b11, Clk);
Inv_GF_mul n48(m48, column11, 2'b00, Clk);
wire [7:0] out_column11 = m45 ^ m46 ^ m47 ^ m48;

// Column 3 group
wire [7:0] m49, m50, m51, m52;
Inv_GF_mul n49(m49, column12, 2'b00, Clk);
Inv_GF_mul n50(m50, column13, 2'b01, Clk);
Inv_GF_mul n51(m51, column14, 2'b10, Clk);
Inv_GF_mul n52(m52, column15, 2'b11, Clk);
wire [7:0] out_column12 = m49 ^ m50 ^ m51 ^ m52;

wire [7:0] m53, m54, m55, m56;
Inv_GF_mul n53(m53, column12, 2'b11, Clk);
Inv_GF_mul n54(m54, column13, 2'b00, Clk);
Inv_GF_mul n55(m55, column14, 2'b01, Clk);
Inv_GF_mul n56(m56, column15, 2'b10, Clk);
wire [7:0] out_column13 = m53 ^ m54 ^ m55 ^ m56;

wire [7:0] m57, m58, m59, m60;
Inv_GF_mul n57(m57, column12, 2'b10, Clk);
Inv_GF_mul n58(m58, column13, 2'b11, Clk);
Inv_GF_mul n59(m59, column14, 2'b00, Clk);
Inv_GF_mul n60(m60, column15, 2'b01, Clk);
wire [7:0] out_column14 = m57 ^ m58 ^ m59 ^ m60;

wire [7:0] m61, m62, m63, m64;
Inv_GF_mul n61(m61, column12, 2'b01, Clk);
Inv_GF_mul n62(m62, column13, 2'b10, Clk);
Inv_GF_mul n63(m63, column14, 2'b11, Clk);
Inv_GF_mul n64(m64, column15, 2'b00, Clk);
wire [7:0] out_column15 = m61 ^ m62 ^ m63 ^ m64;
// Final Output
assign MixColumns_out = {out_column0, out_column1, out_column2, out_column3,
                         out_column4, out_column5, out_column6, out_column7,
                         out_column8, out_column9, out_column10, out_column11,
                         out_column12, out_column13, out_column14, out_column15};

endmodule
