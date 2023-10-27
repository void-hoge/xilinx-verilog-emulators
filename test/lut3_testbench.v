module testbench();
   reg [2:0] in;
   wire	     out;
   LUT3 #(.INIT(8'h87)) lut3inst(.I0(in[0]), .I1(in[1]), .I2(in[2]), .O(out));
   initial begin
      $monitor("in 0x%x, out %d", in, out);
      in = 0;
      #1;
      in = 1;
      #1;
      in = 2;
      #1;
      in = 3;
      #1;
      in = 4;
      #1;
      in = 5;
      #1;
      in = 6;
      #1;
      in = 7;
   end
endmodule   
