`include "../gates/my_mux.sv"

module my_bit (input clock, in, load,
               output out);

   dff d0(clock, in, out);

   // my_mux is a multiplexor with inputs a, b, sel, and output out in
   // that order.
   my_mux m0(in, out, load, out);
endmodule
