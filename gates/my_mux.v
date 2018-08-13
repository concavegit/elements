module my_mux(input in1,
              input  in2,
              input  sel,
              output out);

   wire              a, b, c, d, e, f, g;

   nand (a, sel, 1),
     (b, in1, a),
     (c, b, 1),

     (d, sel, in2),
     (e, d, 1),

     (f, c, 1),
     (g, e, 1),
     (out, f, g);
endmodule
