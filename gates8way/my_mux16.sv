module my_mux16 (input shortint in0, in1,
                 bit             sel,
                 output shortint out);

   bit                           a;
   shortint                      aa, bb;

   nand (a, sel, sel);

   genvar                        i;

   generate
      for (i = 0; i < $bits(in0); i = i + 1) begin
         nand (aa[i], in0[i], a),
        (bb[i], in1[i], sel);
      end
   endgenerate

   nand (out, aa, bb);
endmodule
