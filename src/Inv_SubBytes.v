module Inv_SubBytes(SubBytes_out,in);
input [127:0]in;
output [127:0] SubBytes_out;
wire [7:0] sub0,sub1,sub2,sub3,sub4,sub5,sub6,sub7,sub8,sub9,sub10,sub11,sub12,sub13,sub14,sub15;

wire [7:0] pre_state0, pre_state1, pre_state2, pre_state3,
           pre_state4, pre_state5, pre_state6, pre_state7,
           pre_state8, pre_state9, pre_state10, pre_state11,
           pre_state12, pre_state13, pre_state14, pre_state15;

assign pre_state0  = in[127:120];
assign pre_state1  = in[119:112];
assign pre_state2  = in[111:104];
assign pre_state3  = in[103:96];
assign pre_state4  = in[95:88];
assign pre_state5  = in[87:80];
assign pre_state6  = in[79:72];
assign pre_state7  = in[71:64];
assign pre_state8  = in[63:56];
assign pre_state9  = in[55:48];
assign pre_state10 = in[47:40];
assign pre_state11 = in[39:32];
assign pre_state12 = in[31:24];
assign pre_state13 = in[23:16];
assign pre_state14 = in[15:8];
assign pre_state15 = in[7:0];


Inv_S_box n1(sub0,pre_state0);
Inv_S_box n2(sub1,pre_state1);
Inv_S_box n3(sub2,pre_state2);
Inv_S_box n4(sub3,pre_state3);
Inv_S_box n5(sub4,pre_state4);
Inv_S_box n6(sub5,pre_state5);
Inv_S_box n7(sub6,pre_state6);
Inv_S_box n8(sub7,pre_state7);
Inv_S_box n9(sub8,pre_state8);
Inv_S_box n10(sub9,pre_state9);
Inv_S_box n11(sub10,pre_state10);
Inv_S_box n12(sub11,pre_state11);
Inv_S_box n13(sub12,pre_state12);
Inv_S_box n14(sub13,pre_state13);
Inv_S_box n15(sub14,pre_state14);
Inv_S_box n16(sub15,pre_state15);


assign SubBytes_out={sub0,sub1,sub2,sub3,
                     sub4,sub5,sub6,sub7,
                     sub8,sub9,sub10,sub11,
                     sub12,sub13,sub14,sub15};


endmodule
