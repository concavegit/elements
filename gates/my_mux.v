module my_mux(input in1,
              input  in2,
              input  sel,
              output out);

   wire              a, b, c, d, e, f, g;

   nand (a, sel, sel),
     (b, in1, a),
     (c, b, b),

     (d, sel, in2),
     (e, d, d),

     (f, c, c),
     (g, e, e),
     (out, f, g);
endmodule
