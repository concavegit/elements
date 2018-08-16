module my_inc16 (input shortint in,
                 output shortint out);

   bit                           carry0,
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
                                 carry13;

   not (out[15], in[15]);
   my_fullinc f0(in[14], in[15], out[14], carry0),
     f1(carry0, in[13], out[13], carry1),
     f3(carry1, in[12], out[12], carry2),
     f4(carry2, in[11], out[11], carry3),
     f5(carry3, in[10], out[10], carry4),
     f6(carry4, in[9], out[9], carry5),
     f7(carry5, in[8], out[8], carry6),
     f8(carry6, in[7], out[7], carry7),
     f9(carry7, in[6], out[6], carry8),
     f10(carry8, in[5], out[5], carry9),
     f11(carry9, in[4], out[4], carry10),
     f12(carry10, in[3], out[3], carry11),
     f13(carry11, in[2], out[2], carry12),
     f14(carry12, in[1], out[1], carry13);

   xor (out[0], in[0], carry13);
endmodule
