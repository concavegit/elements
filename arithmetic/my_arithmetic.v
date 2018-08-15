`include "my_halfadder"

module my_arithmetic (input [15:0] a, b,
                      input  carry,
                      output out_halfadder_sum, out_halfadder_carry,
                      out_fulladder_sum, out_fulladder_carry,
                      out_adder);

   my_halfadder hw(a[0], b[0], out_halfadder_sum, out_halfadder_carry);
   my_fulladder fw(a[0], b[0], carry, out_fulladder_sum, out_fulladder_carry);
   my_adder aw(a, b, out_adder);
endmodule
