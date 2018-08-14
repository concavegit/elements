module my_xor(input in1,
              input  in2,
              output out);

   wire              a, b, c;

   nand (a, in1, in2),
     (b, in1, a),
     (c, in2, a),
     (out, b, c);
endmodule
