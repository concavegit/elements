module dff (input in, clock,
            output reg out);

   always @ (posedge clock) begin
      out <= in;
   end
endmodule
