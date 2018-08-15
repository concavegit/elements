`include "my_fulladder.v"

module my_add16 (input [15:0] a,
                 input [15:0]  b,
                 output [15:0] out);

   wire                        carry1,
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
                               carry14,
                               carry15;

   my_halfadder h1(a[15], b[15], out[15], carry1);
   my_fulladder h2(a[14], b[14], carry1, out[14], carry2);
   my_fulladder h3(a[13], b[13], carry2, out[13], carry3);
   my_fulladder h4(a[12], b[12], carry3, out[12], carry4);
   my_fulladder h5(a[11], b[11], carry4, out[11], carry5);
   my_fulladder h6(a[10], b[10], carry5, out[10], carry6);
   my_fulladder h7(a[9], b[9], carry6, out[9], carry7);
   my_fulladder h8(a[8], b[8], carry7, out[8], carry8);
   my_fulladder h9(a[7], b[7], carry8, out[7], carry9);
   my_fulladder h10(a[6], b[6], carry9, out[6], carry10);
   my_fulladder h111(a[5], b[5], carry10, out[5], carry11);
   my_fulladder h112(a[4], b[4], carry11, out[4], carry12);
   my_fulladder h113(a[3], b[3], carry12, out[3], carry13);
   my_fulladder h114(a[2], b[2], carry13, out[2], carry14);
   my_fulladder h115(a[1], b[1], carry14, out[1], carry15);
   xor(out[0], a[0], b[0], carry15);

endmodule
