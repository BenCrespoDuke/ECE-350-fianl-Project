module register64(data_In, data_Out, clk,en,clr);

input[63:0] data_In;
input clk,en,clr;
output [63:0] data_Out;

genvar i;
generate 
    for(i = 0; i<64; i = i+1) begin: loop

    dffe_ref DDF(.q(data_Out[i]),.d(data_In[i]),.clk(clk),.en(en),.clr(clr));

    end
endgenerate


endmodule