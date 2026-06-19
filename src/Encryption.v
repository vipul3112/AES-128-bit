module Encryption(cipher,in,key,Clk);
input [127:0]in,key;
input Clk;
output [127:0]cipher;
wire [127:0] w4_7,w8_11,w12_15,w16_19,w20_23,w24_27,w28_31,w32_35,w36_39,w40_43;
Key_expension n0(w4_7,w8_11,w12_15,w16_19,w20_23,w24_27,w28_31,w32_35,w36_39,w40_43,key,Clk);

wire [127:0] psm_out1, psm_out2, psm_out3, psm_out4, psm_out5, psm_out6, psm_out7, psm_out8, psm_out9, psm_out10 ,psm_out11;

wire [127:0] SubBytes_out1, SubBytes_out2, SubBytes_out3, SubBytes_out4, SubBytes_out5, SubBytes_out6, SubBytes_out7, SubBytes_out8, SubBytes_out9, SubBytes_out10;

wire [127:0] shift_out1, shift_out2, shift_out3, shift_out4, shift_out5, shift_out6, shift_out7, shift_out8, shift_out9, shift_out10;

wire [127:0] MixColumns_out1, MixColumns_out2, MixColumns_out3, MixColumns_out4, MixColumns_out5, MixColumns_out6, MixColumns_out7, MixColumns_out8, MixColumns_out9;

//Round 1

pre_state_matrix n1(psm_out1,in,key);

SubBytes n2(SubBytes_out1,psm_out1);

ShiftRows n3(shift_out1,SubBytes_out1);

MixColumns n4(MixColumns_out1,shift_out1,Clk);

//Round 2

pre_state_matrix n5(psm_out2,MixColumns_out1,w4_7);

SubBytes n6(SubBytes_out2,psm_out2);

ShiftRows n7(shift_out2,SubBytes_out2);

MixColumns n8(MixColumns_out2,shift_out2,Clk);

// Round 3

pre_state_matrix n9(psm_out3,MixColumns_out2,w8_11);

SubBytes n10(SubBytes_out3,psm_out3);

ShiftRows n11(shift_out3,SubBytes_out3);

MixColumns n12(MixColumns_out3,shift_out3,Clk);

// Round 4

pre_state_matrix n13(psm_out4,MixColumns_out3,w12_15);

SubBytes n14(SubBytes_out4,psm_out4);

ShiftRows n15(shift_out4,SubBytes_out4);

MixColumns n16(MixColumns_out4,shift_out4,Clk);

// Round 5

pre_state_matrix n17(psm_out5,MixColumns_out4,w16_19);

SubBytes n18(SubBytes_out5,psm_out5);

ShiftRows n19(shift_out5,SubBytes_out5);

MixColumns n20(MixColumns_out5,shift_out5,Clk);

// Round 6

pre_state_matrix n21(psm_out6,MixColumns_out5,w20_23);

SubBytes n22(SubBytes_out6,psm_out6);

ShiftRows n23(shift_out6,SubBytes_out6);

MixColumns n24(MixColumns_out6,shift_out6,Clk);

// Round 7

pre_state_matrix n25(psm_out7,MixColumns_out6,w24_27);

SubBytes n26(SubBytes_out7,psm_out7);

ShiftRows n27(shift_out7,SubBytes_out7);

MixColumns n28(MixColumns_out7,shift_out7,Clk);

// Round 8

pre_state_matrix n29(psm_out8,MixColumns_out7,w28_31);

SubBytes n30(SubBytes_out8,psm_out8);

ShiftRows n31(shift_out8,SubBytes_out8);

MixColumns n32(MixColumns_out8,shift_out8,Clk);

// Round 9

pre_state_matrix n33(psm_out9,MixColumns_out8,w32_35);

SubBytes n34(SubBytes_out9,psm_out9);

ShiftRows n35(shift_out9,SubBytes_out9);

MixColumns n36(MixColumns_out9,shift_out9,Clk);

// Round 10
              
pre_state_matrix n37(psm_out10,MixColumns_out9,w36_39);

SubBytes n38(SubBytes_out10,psm_out10);

ShiftRows n39(shift_out10,SubBytes_out10);

// No Column Mixing in last round

pre_state_matrix n40(psm_out11,shift_out10,w40_43);

//////////////
//////////final output


assign cipher= psm_out11;



endmodule

