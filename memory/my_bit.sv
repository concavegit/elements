`include "../gates/my_mux.sv"

module my_bit (input in, load, clock,
               output out);

   bit                a;

   my_mux m0(in, out, load, a);
   dff d0(a, clock, out);
endmodule
