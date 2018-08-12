module my_or(input in1,
             input  in2,
             output out);

   wire             oa1, oa2;

   nand(oa1, in1, 1);
   nand(oa2, in2, 1);
   nand(out, oa1, oa2);
endmodule
