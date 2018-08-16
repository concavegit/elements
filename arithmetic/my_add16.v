`include "my_fulladder"

module my_add16 (input [15:0] a, b,
                 output [15:0] out);

   wire                        carry0,
                               carry1,
                               carry2,
                               carry3,
                               carry4,
                               carry5,
                               carry6,
                               carry7,
                               carry8,
                               carry9,
                               carry10,
                               carry11,
                               carry12,
                               carry13,
                               carry14;


   my_halfadder h0(a[15], b[15], out[15], carry0);

   my_fulladder h1(a[14], b[14], carry0, out[14], carry1),
     h2(a[13], b[13], carry1, out[13], carry2),
     h3(a[12], b[12], carry2, out[12], carry3),
     h4(a[11], b[11], carry3, out[11], carry4),
     h5(a[10], b[10], carry4, out[10], carry5),
     h6(a[9], b[9], carry5, out[9], carry6),
     h7(a[8], b[8], carry6, out[8], carry7),
     h8(a[7], b[7], carry7, out[7], carry8),
     h9(a[6], b[6], carry8, out[6], carry9),
     h10(a[5], b[5], carry9, out[5], carry10),
     h11(a[4], b[4], carry10, out[4], carry11),
     h12(a[3], b[3], carry11, out[3], carry12),
     h13(a[2], b[2], carry12, out[2], carry13),
     h14(a[1], b[1], carry13, out[1], carry14);

   xor(out[0], a[0], b[0], carry14);
endmodule
