module my_and(input in1, in2,
              output out);

   bit               out1;

   nand (out1, in1, in2),
     (out, out1, out1);
endmodule
