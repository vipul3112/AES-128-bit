module Secret_key(key0,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15,key,Clk);
input [127:0]key;
input Clk;
output reg [7:0]key0,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15;
always @(posedge Clk) begin
key0<=key[127:120];
key1<=key[119:112];
key2<=key[111:104];
key3<=key[103:96];
key4<=key[95:88];
key5<=key[87:80];
key6<=key[79:72];
key7<=key[71:64];
key8<=key[63:56];
key9<=key[55:48];
key10<=key[47:40];
key11<=key[39:32];
key12<=key[31:24];
key13<=key[23:16];
key14<=key[15:8];
key15<=key[7:0];
end
endmodule
