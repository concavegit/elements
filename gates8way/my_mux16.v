module my_mux16(input shortint in1, in2,
                bit             sel,
                output shortint out);

   bit                          a;
   shortint                     aa, bb;

   nand (a, sel, sel);

   genvar                       i;

   generate
      for (i = 0; i < $bits(in1); i = i + 1) begin
         nand (aa[i], in1[i], a),
        (bb[i], in2[i], sel);
      end
   endgenerate

   nand (out, aa, bb);
endmodule
