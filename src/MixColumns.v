module MixColumns(MixColumns_out,in,Clk);

input [127:0]in;
input Clk;
output [127:0]MixColumns_out;
wire [7:0] column0, column1, column2, column3,
           column4, column5, column6, column7,
           column8, column9, column10, column11,
           column12, column13, column14, column15;
wire [7:0] shift0, shift1, shift2, shift3,
           shift4, shift5, shift6, shift7,
           shift8, shift9, shift10, shift11,
           shift12, shift13, shift14, shift15;
           
assign shift0  = in[127:120];
assign shift1  = in[119:112];
assign shift2  = in[111:104];
assign shift3  = in[103:96];
assign shift4  = in[95:88];
assign shift5  = in[87:80];
assign shift6  = in[79:72];
assign shift7  = in[71:64];
assign shift8  = in[63:56];
assign shift9  = in[55:48];
assign shift10 = in[47:40];
assign shift11 = in[39:32];
assign shift12 = in[31:24];
assign shift13 = in[23:16];
assign shift14 = in[15:8];
assign shift15 = in[7:0];
                      
//column 1
wire [7:0]m1,m2,m3,m4;
GF_mul n1(m1,shift0,2'b10,Clk);
GF_mul n2(m2,shift1,2'b11,Clk);
GF_mul n3(m3,shift2,2'b01,Clk);
GF_mul n4(m4,shift3,2'b01,Clk);
assign column0= m1^m2^m3^m4;

wire [7:0]m5,m6,m7,m8;
GF_mul n5(m5,shift0,2'b01,Clk);
GF_mul n6(m6,shift1,2'b10,Clk);
GF_mul n7(m7,shift2,2'b11,Clk);
GF_mul n8(m8,shift3,2'b01,Clk);
assign column1= m5^m6^m7^m8;

wire [7:0]m9,m10,m11,m12;
GF_mul n9(m9,shift0,2'b01,Clk);
GF_mul n10(m10,shift1,2'b01,Clk);
GF_mul n11(m11,shift2,2'b10,Clk);
GF_mul n12(m12,shift3,2'b11,Clk);
assign column2= m9^m10^m11^m12;

wire [7:0]m13,m14,m15,m16;
GF_mul n13(m13,shift0,2'b11,Clk);
GF_mul n14(m14,shift1,2'b01,Clk);
GF_mul n15(m15,shift2,2'b01,Clk);
GF_mul n16(m16,shift3,2'b10,Clk);
assign column3= m13^m14^m15^m16;

//Column 2

wire [7:0]m17,m18,m19,m20;
GF_mul n17(m17,shift4,2'b10,Clk);
GF_mul n18(m18,shift5,2'b11,Clk);
GF_mul n19(m19,shift6,2'b01,Clk);
GF_mul n20(m20,shift7,2'b01,Clk);
assign column4= m17^m18^m19^m20;

wire [7:0]m21,m22,m23,m24;
GF_mul n21(m21,shift4,2'b01,Clk);
GF_mul n22(m22,shift5,2'b10,Clk);
GF_mul n23(m23,shift6,2'b11,Clk);
GF_mul n24(m24,shift7,2'b01,Clk);
assign column5= m21^m22^m23^m24;

wire [7:0]m25,m26,m27,m28;
GF_mul n25(m25,shift4,2'b01,Clk);
GF_mul n26(m26,shift5,2'b01,Clk);
GF_mul n27(m27,shift6,2'b10,Clk);
GF_mul n28(m28,shift7,2'b11,Clk);
assign column6= m25^m26^m27^m28;

wire [7:0]m29,m30,m31,m32;
GF_mul n29(m29,shift4,2'b11,Clk);
GF_mul n30(m30,shift5,2'b01,Clk);
GF_mul n31(m31,shift6,2'b01,Clk);
GF_mul n32(m32,shift7,2'b10,Clk);
assign column7= m29^m30^m31^m32;

//Column3

wire [7:0]m33,m34,m35,m36;
GF_mul n33(m33,shift8,2'b10,Clk);
GF_mul n34(m34,shift9,2'b11,Clk);
GF_mul n35(m35,shift10,2'b01,Clk);
GF_mul n36(m36,shift11,2'b01,Clk);
assign column8= m33^m34^m35^m36;

wire [7:0]m37,m38,m39,m40;
GF_mul n37(m37,shift8,2'b01,Clk);
GF_mul n38(m38,shift9,2'b10,Clk);
GF_mul n39(m39,shift10,2'b11,Clk);
GF_mul n40(m40,shift11,2'b01,Clk);
assign column9= m37^m38^m39^m40;

wire [7:0]m41,m42,m43,m44;
GF_mul n41(m41,shift8,2'b01,Clk);
GF_mul n42(m42,shift9,2'b01,Clk);
GF_mul n43(m43,shift10,2'b10,Clk);
GF_mul n44(m44,shift11,2'b11,Clk);
assign column10= m41^m42^m43^m44;

wire [7:0]m45,m46,m47,m48;
GF_mul n45(m45,shift8,2'b11,Clk);
GF_mul n46(m46,shift9,2'b01,Clk);
GF_mul n47(m47,shift10,2'b01,Clk);
GF_mul n48(m48,shift11,2'b10,Clk);
assign column11= m45^m46^m47^m48;

//Column 4 

wire [7:0]m49,m50,m51,m52;
GF_mul n49(m49,shift12,2'b10,Clk);
GF_mul n50(m50,shift13,2'b11,Clk);
GF_mul n51(m51,shift14,2'b01,Clk);
GF_mul n52(m52,shift15,2'b01,Clk);
assign column12= m49^m50^m51^m52;

wire [7:0]m53,m54,m55,m56;
GF_mul n53(m53,shift12,2'b01,Clk);
GF_mul n54(m54,shift13,2'b10,Clk);
GF_mul n55(m55,shift14,2'b11,Clk);
GF_mul n56(m56,shift15,2'b01,Clk);
assign column13= m53^m54^m55^m56;

wire [7:0]m57,m58,m59,m60;
GF_mul n57(m57,shift12,2'b01,Clk);
GF_mul n58(m58,shift13,2'b01,Clk);
GF_mul n59(m59,shift14,2'b10,Clk);
GF_mul n60(m60,shift15,2'b11,Clk);
assign column14= m57^m58^m59^m60;

wire [7:0]m61,m62,m63,m64;
GF_mul n61(m61,shift12,2'b11,Clk);
GF_mul n62(m62,shift13,2'b01,Clk);
GF_mul n63(m63,shift14,2'b01,Clk);
GF_mul n64(m64,shift15,2'b10,Clk);
assign column15= m61^m62^m63^m64;


assign MixColumns_out={column0, column1, column2, column3,
                       column4, column5, column6, column7,
                       column8, column9, column10, column11,
                       column12, column13, column14, column15};
endmodule
