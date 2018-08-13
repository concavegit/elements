module my_xor(input in1,
              input  in2,
              output out);

   wire              a, b, c, d, e;

   nand (a, in1, in2),
     (b, in1, 1),
     (c, in2, 1),
     (d, b, c),
     (e, a, d),
     (out, e, 1);
endmodule
