module my_mux(input in1,
              input  in2,
              input  sel,
              output out);

   wire              a, b, c, d, e, f, g;

   nand (a, sel, 1);
   nand (b, in1, a);
   nand (c, b, 1);

   nand (d, sel, in2);
   nand (e, d, 1);

   nand (f, c, 1);
   nand (g, e, 1);
   nand(out, f, g);
endmodule
