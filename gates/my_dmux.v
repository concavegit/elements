module my_dmux(input in, sel,
               output out1, out2);

   bit                a, b, c;

   nand (a, sel, sel),
     (b, in, a),
     (out1, b, b),

     (c, in, sel),
     (out2, c, c);
endmodule
