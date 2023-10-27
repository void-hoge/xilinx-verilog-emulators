module testbench();
   reg [3:0] in;
   wire	     out;
   LUT4 #(.INIT(16'h3210)) lut4inst(.I0(in[0]), .I1(in[1]), .I2(in[2]), .I3(in[3]), .O(out));
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
      #1;
      in = 8;
      #1;
      in = 9;
      #1;
      in = 10;
      #1;
      in = 11;
      #1;
      in = 12;
      #1;
      in = 13;
      #1;
      in = 14;
      #1;
      in = 15;
   end
endmodule
