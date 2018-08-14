module my_and(input in1,
              input  in2,
              output out);

   wire              out1;
   
   nand (out1, in1, in2),
     (out, out1, out1);
endmodule
