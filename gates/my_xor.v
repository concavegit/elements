module my_xor(input in1,
              input  in2,
              output out);

   wire              a, b, c, d, e;

   nand (a, in1, in2);
   nand(b, in1, 1);
   nand(c, in2, 1);
   nand(d, b, c);
   nand(e, a, d);
   nand(out, e, 1);
endmodule
