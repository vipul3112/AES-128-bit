module Inv_ShiftRows(inv_shift_out,in);
input [127:0]in;
output [127:0]inv_shift_out;

wire [7:0] cipher0,cipher1,cipher2,cipher3,cipher4,cipher5,cipher6,cipher7,cipher8,cipher9,cipher10,cipher11,cipher12,cipher13,cipher14,cipher15;
wire [7:0]shift0,shift1,shift2,shift3,shift4,shift5,shift6,shift7,shift8,shift9,shift10,shift11,shift12,shift13,shift14,shift15;

assign cipher0  = in[127:120];
assign cipher1  = in[119:112];
assign cipher2  = in[111:104];
assign cipher3  = in[103:96];
assign cipher4  = in[95:88];
assign cipher5  = in[87:80];
assign cipher6  = in[79:72];
assign cipher7  = in[71:64];
assign cipher8  = in[63:56];
assign cipher9  = in[55:48];
assign cipher10 = in[47:40];
assign cipher11 = in[39:32];
assign cipher12 = in[31:24];
assign cipher13 = in[23:16];
assign cipher14 = in[15:8];
assign cipher15 = in[7:0];

// Row 0 (no shift)
assign shift0 = cipher0;
assign shift1 = cipher13;
assign shift2 = cipher10;
assign shift3 = cipher7;
// Row 1 (right shift by 1)
assign shift4 = cipher4;
assign shift5 = cipher1;
assign shift6 = cipher14;
assign shift7 = cipher11;
// Row 2 (right shift by 2)
assign shift8 = cipher8;
assign shift9 = cipher5;
assign shift10 = cipher2;
assign shift11 = cipher15;
// Row 3 (right shift by 3)
assign shift12 = cipher12;
assign shift13 = cipher9;
assign shift14 = cipher6;
assign shift15 = cipher3;

assign inv_shift_out = {shift0,shift1,shift2,shift3,shift4,shift5,shift6,shift7,shift8,shift9,shift10,shift11,shift12,shift13,shift14,shift15};

endmodule
