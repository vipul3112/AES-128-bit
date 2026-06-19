module Key_expension(w4_7,w8_11,w12_15,w16_19,w20_23,w24_27,w28_31,w32_35,w36_39,w40_43,key,Clk);
input [127:0]key;
input Clk;
output [127:0]w4_7,w8_11,w12_15,w16_19,w20_23,w24_27,w28_31,w32_35,w36_39,w40_43; 
wire [7:0]key0,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15;
Secret_key n0(key0,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key,Clk);

//G_box
wire [7:0] b0,b1,b2,b3;
assign b0= key13;
assign b1=key14;
assign b2=key15;
assign b3=key12;

// Sbox
wire [7:0]out0,out1,out2,out3;
S_box n1(out0,b0);
S_box n2(out1,b1);
S_box n3(out2,b2);
S_box n4(out3,b3);

wire [7:0]rcon_1,rcon_2,rcon_3, rcon_4, rcon_5,rcon_6, rcon_7, rcon_8, rcon_9, rcon_10;
assign rcon_1 = 8'h01;
assign rcon_2 = 8'h02;
assign rcon_3 = 8'h04;
assign rcon_4 =8'h08;
assign rcon_5 = 8'h10;
assign rcon_6 = 8'h20;
assign rcon_7 = 8'h40;
assign rcon_8 = 8'h80;
assign rcon_9 = 8'h1B;
assign rcon_10 = 8'h36;

wire [7:0] x_rcon1;
assign x_rcon1= out0^ rcon_1;
// W4
wire [7:0] w40,w41,w42,w43;
assign  w40=x_rcon1 ^ key0;
assign  w41=out1 ^ key1;
assign  w42=out2 ^ key2;
assign  w43=out3 ^ key3;

// w5
wire [7:0] w50,w51,w52,w53;
assign w50= w40 ^ key4;
assign w51= w41 ^ key5;
assign w52= w42 ^ key6;
assign w53= w43 ^ key7;

// w6
wire [7:0] w60,w61,w62,w63;
assign w60= w50 ^ key8;
assign w61= w51 ^ key9;
assign w62= w52 ^ key10;
assign w63= w53 ^ key11;

//w7
wire [7:0] w70,w71,w72,w73;
assign w70= w60 ^ key12;
assign w71= w61 ^ key13;
assign w72= w62 ^ key14;
assign w73= w63 ^ key15;

wire [7:0] b4,b5,b6,b7;
assign b4= w71;
assign b5= w72;
assign b6= w73;
assign b7= w70;

// Sbox
wire [7:0]out4,out5,out6,out7;
S_box n5(out4,b4);
S_box n6(out5,b5);
S_box n7(out6,b6);
S_box n8(out7,b7);

wire [7:0] x_rcon2;
assign x_rcon2= out4^ rcon_2;

//w8
wire [7:0] w80,w81,w82,w83;
assign  w80=x_rcon2 ^ w40;
assign  w81=out5 ^ w41;
assign  w82=out6 ^ w42;
assign  w83=out7 ^ w43;

//w9
wire [7:0] w90,w91,w92,w93;
assign w90= w80 ^ w50;
assign w91= w81 ^ w51;
assign w92= w82 ^ w52;
assign w93= w83 ^ w53;

//w10
wire [7:0] w100,w101,w102,w103;
assign w100= w90 ^ w60;
assign w101= w91 ^ w61;
assign w102= w92 ^ w62;
assign w103= w93 ^ w63;

//w11
wire [7:0] w110,w111,w112,w113;
assign w110= w100 ^ w70;
assign w111= w101 ^ w71;
assign w112= w102 ^ w72;
assign w113= w103 ^ w73;

wire [7:0] b8,b9,b10,b11;
assign b8= w111;
assign b9= w112;
assign b10= w113;
assign b11= w110;

// Sbox
wire [7:0]out8,out9,out10,out11;
S_box n9(out8,b8);
S_box n10(out9,b9);
S_box n11(out10,b10);
S_box n12(out11,b11);

wire [7:0] x_rcon3;
assign x_rcon3= out8^ rcon_3;

//w12
wire [7:0] w120,w121,w122,w123;
assign  w120=x_rcon3 ^ w80;
assign  w121=out9 ^ w81;
assign  w122=out10 ^ w82;
assign  w123=out11 ^ w83;

//w13
wire [7:0] w130,w131,w132,w133;
assign w130= w120 ^ w90;
assign w131= w121 ^ w91;
assign w132= w122 ^ w92;
assign w133= w123 ^ w93;

//w14
wire [7:0] w140,w141,w142,w143;
assign w140= w130 ^ w100;
assign w141= w131 ^ w101;
assign w142= w132 ^ w102;
assign w143= w133 ^ w103;

//w15
wire [7:0] w150,w151,w152,w153;
assign w150= w140 ^ w110;
assign w151= w141 ^ w111;
assign w152= w142 ^ w112;
assign w153= w143 ^ w113;

//////////////////////////////////////

wire [7:0] b12,b13,b14,b15;
assign b12= w151;
assign b13= w152;
assign b14= w153;
assign b15= w150;

// Sbox
wire [7:0]out12,out13,out14,out15;
S_box n13(out12,b12);
S_box n14(out13,b13);
S_box n15(out14,b14);
S_box n16(out15,b15);

wire [7:0] x_rcon4;
assign x_rcon4= out12^ rcon_4;

//w16
wire [7:0] w160,w161,w162,w163;
assign  w160=x_rcon4 ^ w120;
assign  w161=out13 ^ w121;
assign  w162=out14 ^ w122;
assign  w163=out15 ^ w123;

//w17
wire [7:0] w170,w171,w172,w173;
assign w170= w160 ^ w130;
assign w171= w161 ^ w131;
assign w172= w162 ^ w132;
assign w173= w163 ^ w133;

//w18
wire [7:0] w180,w181,w182,w183;
assign w180= w170 ^ w140;
assign w181= w171 ^ w141;
assign w182= w172 ^ w142;
assign w183= w173 ^ w143;

//w19
wire [7:0] w190,w191,w192,w193;
assign w190= w180 ^ w150;
assign w191= w181 ^ w151;
assign w192= w182 ^ w152;
assign w193= w183 ^ w153;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
wire [7:0] b16,b17,b18,b19;
assign b16= w191;
assign b17= w192;
assign b18= w193;
assign b19= w190;

// Sbox
wire [7:0] out16,out17,out18,out19;
S_box n17(out16,b16);
S_box n18(out17,b17);
S_box n19(out18,b18);
S_box n20(out19,b19);

wire [7:0] x_rcon5;
assign x_rcon5= out16^ rcon_5;

//w20
wire [7:0] w200,w201,w202,w203;
assign w200= x_rcon5 ^ w160;
assign w201= out17 ^ w161;
assign w202= out18 ^ w162;
assign w203= out19 ^ w163;

//w21
wire [7:0] w210,w211,w212,w213;
assign w210= w200 ^ w170;
assign w211= w201 ^ w171;
assign w212= w202 ^ w172;
assign w213= w203 ^ w173;

//w22
wire [7:0] w220,w221,w222,w223;
assign w220= w210 ^ w180;
assign w221= w211 ^ w181;
assign w222= w212 ^ w182;
assign w223= w213 ^ w183;

//w23
wire [7:0] w230,w231,w232,w233;
assign w230= w220 ^ w190;
assign w231= w221 ^ w191;
assign w232= w222 ^ w192;
assign w233= w223 ^ w193;

////////////////////////////////////////////////////

wire [7:0] b20,b21,b22,b23;
assign b20= w231;
assign b21= w232;
assign b22= w233;
assign b23= w230;

// Sbox
wire [7:0] out20,out21,out22,out23;
S_box n21(out20,b20);
S_box n22(out21,b21);
S_box n23(out22,b22);
S_box n24(out23,b23);

wire [7:0] x_rcon6;
assign x_rcon6= out20^ rcon_6;

//w24
wire [7:0] w240,w241,w242,w243;
assign w240= x_rcon6 ^ w200;
assign w241= out21 ^ w201;
assign w242= out22 ^ w202;
assign w243= out23 ^ w203;

//w25
wire [7:0] w250,w251,w252,w253;
assign w250= w240 ^ w210;
assign w251= w241 ^ w211;
assign w252= w242 ^ w212;
assign w253= w243 ^ w213;

//w26
wire [7:0] w260,w261,w262,w263;
assign w260= w250 ^ w220;
assign w261= w251 ^ w221;
assign w262= w252 ^ w222;
assign w263= w253 ^ w223;

//w27
wire [7:0] w270,w271,w272,w273;
assign w270= w260 ^ w230;
assign w271= w261 ^ w231;
assign w272= w262 ^ w232;
assign w273= w263 ^ w233;

////////////////////////////////////////////////////

wire [7:0] b24,b25,b26,b27;
assign b24= w271;
assign b25= w272;
assign b26= w273;
assign b27= w270;

// Sbox
wire [7:0] out24,out25,out26,out27;
S_box n25(out24,b24);
S_box n26(out25,b25);
S_box n27(out26,b26);
S_box n28(out27,b27);

wire [7:0] x_rcon7;
assign x_rcon7= out24^ rcon_7;

//w28
wire [7:0] w280,w281,w282,w283;
assign w280= x_rcon7 ^ w240;
assign w281= out25 ^ w241;
assign w282= out26 ^ w242;
assign w283= out27 ^ w243;

//w29
wire [7:0] w290,w291,w292,w293;
assign w290= w280 ^ w250;
assign w291= w281 ^ w251;
assign w292= w282 ^ w252;
assign w293= w283 ^ w253;

//w30
wire [7:0] w300,w301,w302,w303;
assign w300= w290 ^ w260;
assign w301= w291 ^ w261;
assign w302= w292 ^ w262;
assign w303= w293 ^ w263;

//w31
wire [7:0] w310,w311,w312,w313;
assign w310= w300 ^ w270;
assign w311= w301 ^ w271;
assign w312= w302 ^ w272;
assign w313= w303 ^ w273;

////////////////////////////////////////////////////

wire [7:0] b28,b29,b30,b31;
assign b28= w311;
assign b29= w312;
assign b30= w313;
assign b31= w310;

// Sbox
wire [7:0] out28,out29,out30,out31;
S_box n29(out28,b28);
S_box n30(out29,b29);
S_box n31(out30,b30);
S_box n32(out31,b31);

wire [7:0] x_rcon8;
assign x_rcon8= out28^ rcon_8;

//w32
wire [7:0] w320,w321,w322,w323;
assign w320= x_rcon8 ^ w280;
assign w321= out29 ^ w281;
assign w322= out30 ^ w282;
assign w323= out31 ^ w283;

//w33
wire [7:0] w330,w331,w332,w333;
assign w330= w320 ^ w290;
assign w331= w321 ^ w291;
assign w332= w322 ^ w292;
assign w333= w323 ^ w293;

//w34
wire [7:0] w340,w341,w342,w343;
assign w340= w330 ^ w300;
assign w341= w331 ^ w301;
assign w342= w332 ^ w302;
assign w343= w333 ^ w303;

//w35
wire [7:0] w350,w351,w352,w353;
assign w350= w340 ^ w310;
assign w351= w341 ^ w311;
assign w352= w342 ^ w312;
assign w353= w343 ^ w313;

////////////////////////////////////////////////////

wire [7:0] b32,b33,b34,b35;
assign b32= w351;
assign b33= w352;
assign b34= w353;
assign b35= w350;

// Sbox
wire [7:0] out32,out33,out34,out35;
S_box n33(out32,b32);
S_box n34(out33,b33);
S_box n35(out34,b34);
S_box n36(out35,b35);

wire [7:0] x_rcon9;
assign x_rcon9= out32^ rcon_9;

//w36
wire [7:0] w360,w361,w362,w363;
assign w360= x_rcon9 ^ w320;
assign w361= out33 ^ w321;
assign w362= out34 ^ w322;
assign w363= out35 ^ w323;

//w37
wire [7:0] w370,w371,w372,w373;
assign w370= w360 ^ w330;
assign w371= w361 ^ w331;
assign w372= w362 ^ w332;
assign w373= w363 ^ w333;

//w38
wire [7:0] w380,w381,w382,w383;
assign w380= w370 ^ w340;
assign w381= w371 ^ w341;
assign w382= w372 ^ w342;
assign w383= w373 ^ w343;

//w39
wire [7:0] w390,w391,w392,w393;
assign w390= w380 ^ w350;
assign w391= w381 ^ w351;
assign w392= w382 ^ w352;
assign w393= w383 ^ w353;

////////////////////////////////////////////////////

wire [7:0] b36,b37,b38,b39;
assign b36= w391;
assign b37= w392;
assign b38= w393;
assign b39= w390;

// Sbox
wire [7:0] out36,out37,out38,out39;
S_box n37(out36,b36);
S_box n38(out37,b37);
S_box n39(out38,b38);
S_box n40(out39,b39);

wire [7:0] x_rcon10;
assign x_rcon10= out36^ rcon_10;

//w40
wire [7:0] w400,w401,w402,w403;
assign w400= x_rcon10 ^ w360;
assign w401= out37 ^ w361;
assign w402= out38 ^ w362;
assign w403= out39 ^ w363;

//w41
wire [7:0] w410,w411,w412,w413;
assign w410= w400 ^ w370;
assign w411= w401 ^ w371;
assign w412= w402 ^ w372;
assign w413= w403 ^ w373;

//w42
wire [7:0] w420,w421,w422,w423;
assign w420= w410 ^ w380;
assign w421= w411 ^ w381;
assign w422= w412 ^ w382;
assign w423= w413 ^ w383;

//w43
wire [7:0] w430,w431,w432,w433;
assign w430= w420 ^ w390;
assign w431= w421 ^ w391;
assign w432= w422 ^ w392;
assign w433= w423 ^ w393;

////////////////////
assign w4_7 = {w40,w41,w42,w43,w50,w51,w52,w53,w60,w61,w62,w63,w70,w71,w72,w73};
assign w8_11  = {w80,w81,w82,w83,w90,w91,w92,w93,w100,w101,w102,w103,w110,w111,w112,w113};
assign w12_15  = {w120,w121,w122,w123,w130,w131,w132,w133,w140,w141,w142,w143,w150,w151,w152,w153};
assign w16_19  = {w160,w161,w162,w163,w170,w171,w172,w173,w180,w181,w182,w183,w190,w191,w192,w193};
assign w20_23 = {w200,w201,w202,w203,w210,w211,w212,w213,w220,w221,w222,w223,w230,w231,w232,w233};
assign w24_27 = {w240,w241,w242,w243,w250,w251,w252,w253,w260,w261,w262,w263,w270,w271,w272,w273};
assign w28_31  = {w280,w281,w282,w283,w290,w291,w292,w293,w300,w301,w302,w303,w310,w311,w312,w313};
assign w32_35  = {w320,w321,w322,w323,w330,w331,w332,w333,w340,w341,w342,w343,w350,w351,w352,w353};
assign w36_39 = {w360,w361,w362,w363,w370,w371,w372,w373,w380,w381,w382,w383,w390,w391,w392,w393};
assign w40_43 = {w400,w401,w402,w403,w410,w411,w412,w413,w420,w421,w422,w423,w430,w431,w432,w433};

endmodule
