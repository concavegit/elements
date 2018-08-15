module my_mux16(input [15:0] in1, in2,
                input         sel,
                output [15:0] out);

   wire                       a;
   wire [15:0]                aa, bb;

   nand (a, sel, sel);

   genvar                     i;

   generate
      for (i = 0; i < 16; i = i + 1) begin
         nand (aa[i], in1[i], a),
        (bb[i], in2[i], sel);
      end
   endgenerate

   nand (out, aa, bb);
endmodule
