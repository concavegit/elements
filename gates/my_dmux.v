module my_dmux(input in,
               input  sel,
               output out1,
               output out2);

   wire               a, b, c;

   nand (a, sel, sel),
     (b, in, a),
     (out1, b, b),

     (c, in, sel),
     (out2, c, c);
endmodule
