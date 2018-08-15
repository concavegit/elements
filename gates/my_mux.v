module my_mux(input in1,
              input  in2,
              input  sel,
              output out);

   wire              a, b, c;

   nand (a, sel, sel),
     (b, in1, a),
     (c, sel, in2),
     (out, b, c);
endmodule
