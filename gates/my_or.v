module my_or(input in1,
             input  in2,
             output out);

   wire             oa1, oa2;

   nand(oa1, in1, in1),
     (oa2, in2, in2),
     (out, oa1, oa2);
endmodule
