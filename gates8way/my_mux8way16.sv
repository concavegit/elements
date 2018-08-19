module my_mux8way16 (input shortint in0,
                     in1,
                     in2,
                     in3,
                     in4,
                     in5,
                     in6,
                     in7,
                     [2:0] sel,
                     output shortint out);

   shortint                          a, b, c, d, e, f;

   my_mux16 m0 (in0, in1, sel[0], a),
     m1 (in2, in3, sel[0], b),
     m2 (in4, in5, sel[0], c),
     m3 (in6, in7, sel[0], d),

     m4 (a, b, sel[1], e),
     m5 (c, d, sel[1], f),

     m6 (e, f, sel[2], out);
endmodule
