module memory (input in, clock, load,
               output outDff, outBit);

   dff d0(in, clock, outDff);
   my_bit b0(in, clock, load, outBit);
endmodule
