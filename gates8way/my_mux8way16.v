`include "my_mux16"

module my_mux8way16 (input [15:0] in0,
                     input [15:0]  in1,
                     input [15:0]  in2,
                     input [15:0]  in3,
                     input [15:0]  in4,
                     input [15:0]  in5,
                     input [15:0]  in6,
                     input [15:0]  in7,
                     input [2:0]   sel,
                     output [15:0] out);

   wire [15:0]                     a, b, c, d, e, f;

   my_mux16 m0 (in0, in4, sel[0], a),
     m1 (in1, in5, sel[0], b),
     m2 (in2, in6, sel[0], c),
     m3 (in3, in7, sel[0], d),

     m4 (a, c, sel[1], e),
     m5 (b, d, sel[1], f),

     m6 (e, f, sel[2], out);
endmodule
