module my_or(input in1, in2,
             output out);

   bit              oa1, oa2;

   nand(oa1, in1, in1),
     (oa2, in2, in2),
     (out, oa1, oa2);
endmodule
