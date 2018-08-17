module dff (input in, clock,
            output out);

   bit             out0;

   always @ (posedge clock) begin
      out <= out0;
      out0 <= in;
   end
endmodule
