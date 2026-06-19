module ShiftRows(shift_out,in);
input [127:0]in;
output [127:0]shift_out;

wire [7:0] shift0,shift1,shift2,shift3,shift4,shift5,shift6,shift7,shift8,shift9,shift10,shift11,shift12,shift13,shift14,shift15;
wire [7:0]sub0,sub1,sub2,sub3,sub4,sub5,sub6,sub7,sub8,sub9,sub10,sub11,sub12,sub13,sub14,sub15;

assign sub0  = in[127:120];
assign sub1  = in[119:112];
assign sub2  = in[111:104];
assign sub3  = in[103:96];
assign sub4  = in[95:88];
assign sub5  = in[87:80];
assign sub6  = in[79:72];
assign sub7  = in[71:64];
assign sub8  = in[63:56];
assign sub9  = in[55:48];
assign sub10 = in[47:40];
assign sub11 = in[39:32];
assign sub12 = in[31:24];
assign sub13 = in[23:16];
assign sub14 = in[15:8];
assign sub15 = in[7:0];
 
 
    assign shift0=sub0;
    assign shift1=sub5;
    assign shift2=sub10;
    assign shift3=sub15;
    //Row 1 Shift left by 1
    assign shift4=sub4;
    assign shift5=sub9;
    assign shift6=sub14;
    assign shift7=sub3;
    //Row 2 Shift left by 2
    assign shift8=sub8;
    assign shift9=sub13;    
    assign shift10=sub2;
    assign shift11=sub7;
    //Row3 Shift left by 3
    assign shift12=sub12;
    assign shift13=sub1;
    assign shift14=sub6;
    assign shift15=sub11;
assign shift_out={shift0,shift1,shift2,shift3,shift4,shift5,shift6,shift7,shift8,shift9,shift10,shift11,shift12,shift13,shift14,shift15};
endmodule
