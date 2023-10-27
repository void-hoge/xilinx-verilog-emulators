module testbench();
   reg in;
   wire	out;
   LUT1 #(.INIT(2'b01)) lut1inst(.I0(in), .O(out));
   initial begin
      $monitor("in 0x%x, out %d", in, out);
      in = 0;
      #1;
      in = 1;
   end
endmodule
