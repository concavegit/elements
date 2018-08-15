`include "my_halfadder"

module my_arithmetic (input [15:0] a,
                      input [15:0] b,
                      input        c,
                      output       out_halfadder_sum,
                      output       out_halfadder_carry,
                      output       out_fulladder_sum,
                      output       out_fulladder_carry,
                      output       out_adder);

   my_halfadder hw(a[0], b[0], out_halfadder_sum, out_halfadder_carry);
   my_fulladder fw(a[0], b[0], c, out_fulladder_sum, out_fulladder_carry);
   my_adder aw(a, b, out_adder);
endmodule
