module pre_state_matrix(psm_out,in,key);
input [127:0]in,key;
output [127:0] psm_out;
assign psm_out= in ^ key;
endmodule
