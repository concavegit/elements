module memory (input shortint in,
               bit      clock, load,
               output   outDff, outBit,
               shortint outRegister);

   dff d0(in[0], clock, outDff);
   my_bit b0(in[0], load, clock, outBit);
   register r0(in, load, clock, outRegister);
endmodule
