module dff (input in, clock,
            output out);

   always @ (posedge clock) begin
      out <= in;
   end
endmodule
