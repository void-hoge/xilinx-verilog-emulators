module testbench();
   reg [1:0] in;
   wire	     out;
   LUT2 #(.INIT(4'b1100)) lut2inst(.I0(in[0]), .I1(in[1]), .O(out));
   initial begin
      $monitor("in 0x%x, out %d", in, out);
      in = 0;
      #1;
      in = 1;
      #1;
      in = 2;
      #1;
      in = 3;
   end
endmodule
