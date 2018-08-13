module my_dmux(input in,
               input  sel,
               output out1,
               output out2);

   wire               a, b, c;

   nand (a, sel, 1),
     (b, a, in),
     (out1, b, 1),

     (c, in, sel),
     (out2, c, 1);
endmodule
