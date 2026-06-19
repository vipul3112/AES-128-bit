module Decryption_new(plain,cipher,key,Clk);
input [127:0]cipher,key;
input Clk;
output [127:0]plain;
wire [127:0]w4_7,w8_11,w12_15,w16_19,w20_23,w24_27,w28_31,w32_35,w36_39,w40_43;
Key_expension n0(w4_7,w8_11,w12_15,w16_19,w20_23,w24_27,w28_31,w32_35,w36_39,w40_43,key,Clk);

wire [127:0]psm_out1,psm_out2,psm_out3,psm_out4,psm_out5,psm_out6,psm_out7,psm_out8,psm_out9,psm_out10,psm_out11;

wire [127:0]InvSubBytes_out1,InvSubBytes_out2,InvSubBytes_out3,InvSubBytes_out4,InvSubBytes_out5,InvSubBytes_out6,InvSubBytes_out7,InvSubBytes_out8,InvSubBytes_out9,InvSubBytes_out10;

wire [127:0]InvShiftRows_out1,InvShiftRows_out2,InvShiftRows_out3,InvShiftRows_out4,InvShiftRows_out5,InvShiftRows_out6,InvShiftRows_out7,InvShiftRows_out8,InvShiftRows_out9,InvShiftRows_out10;

wire [127:0]InvMixColumns_out1,InvMixColumns_out2,InvMixColumns_out3,InvMixColumns_out4,InvMixColumns_out5,InvMixColumns_out6,InvMixColumns_out7,InvMixColumns_out8,InvMixColumns_out9;

pre_state_matrix n1(psm_out1,cipher,w40_43);

// round 1

Inv_ShiftRows n2(InvShiftRows_out1,psm_out1);
Inv_SubBytes n3(InvSubBytes_out1,InvShiftRows_out1);
pre_state_matrix n4(psm_out2,InvSubBytes_out1,w36_39);
Inv_MixColumns n5(InvMixColumns_out1,psm_out2,Clk);

// round 2
Inv_ShiftRows n6(InvShiftRows_out2,InvMixColumns_out1);
Inv_SubBytes n7(InvSubBytes_out2,InvShiftRows_out2);
pre_state_matrix n8(psm_out3,InvSubBytes_out2,w32_35);
Inv_MixColumns n9(InvMixColumns_out2,psm_out3,Clk);

// round 3
Inv_ShiftRows n10(InvShiftRows_out3,InvMixColumns_out2);
Inv_SubBytes n11(InvSubBytes_out3,InvShiftRows_out3);
pre_state_matrix n12(psm_out4,InvSubBytes_out3,w28_31);
Inv_MixColumns n13(InvMixColumns_out3,psm_out4,Clk);

// round 4
Inv_ShiftRows n14(InvShiftRows_out4,InvMixColumns_out3);
Inv_SubBytes n15(InvSubBytes_out4,InvShiftRows_out4);
pre_state_matrix n16(psm_out5,InvSubBytes_out4,w24_27);
Inv_MixColumns n17(InvMixColumns_out4,psm_out5,Clk);

// round 5
Inv_ShiftRows n18(InvShiftRows_out5,InvMixColumns_out4);
Inv_SubBytes n19(InvSubBytes_out5,InvShiftRows_out5);
pre_state_matrix n20(psm_out6,InvSubBytes_out5,w20_23);
Inv_MixColumns n21(InvMixColumns_out5,psm_out6,Clk);

// round 6
Inv_ShiftRows n22(InvShiftRows_out6,InvMixColumns_out5);
Inv_SubBytes n23(InvSubBytes_out6,InvShiftRows_out6);
pre_state_matrix n24(psm_out7,InvSubBytes_out6,w16_19);
Inv_MixColumns n25(InvMixColumns_out6,psm_out7,Clk);

// round 7
Inv_ShiftRows n26(InvShiftRows_out7,InvMixColumns_out6);
Inv_SubBytes n27(InvSubBytes_out7,InvShiftRows_out7);
pre_state_matrix n28(psm_out8,InvSubBytes_out7,w12_15);
Inv_MixColumns n29(InvMixColumns_out7,psm_out8,Clk);

// round 8
Inv_ShiftRows n30(InvShiftRows_out8,InvMixColumns_out7);
Inv_SubBytes n31(InvSubBytes_out8,InvShiftRows_out8);
pre_state_matrix n32(psm_out9,InvSubBytes_out8,w8_11);
Inv_MixColumns n33(InvMixColumns_out8,psm_out9,Clk);

// round 9
Inv_ShiftRows n34(InvShiftRows_out9,InvMixColumns_out8);
Inv_SubBytes n35(InvSubBytes_out9,InvShiftRows_out9);
pre_state_matrix n36(psm_out10,InvSubBytes_out9,w4_7);
Inv_MixColumns n37(InvMixColumns_out9,psm_out10,Clk);

// round 10
Inv_ShiftRows n38(InvShiftRows_out10,InvMixColumns_out9);
Inv_SubBytes n39(InvSubBytes_out10,InvShiftRows_out10);
pre_state_matrix n40(psm_out11,InvSubBytes_out10,key);


assign plain= psm_out11;

endmodule
