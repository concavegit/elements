`include "../gates/my_dmux"

module my_dmux8way(input in,
                   input [2:0] sel,
                   output      out0,
                   out1,
                   out2,
                   out3,
                   out4,
                   out5,
                   out6,
                   out7);

   wire                        a, b, c, d, e, f;

   my_dmux d0(in, sel[0], a, b),
     d1(a, sel[1], c, d),
     d2(b, sel[1], e, f),

     d3(c, sel[2], out0, out1),
     d4(d, sel[2], out2, out3),
     d5(e, sel[2], out4, out5),
     d6(f, sel[2], out6, out7);
endmodule
