module my_dmux(input in,
               input  sel,
               output out1,
               output out2);

   wire               a, b, c;

   nand (a, sel, 1);
   nand (b, a, in);
   nand(out1, b, 1);

   nand(c, in, sel);
   nand(out2, c, 1);
endmodule
