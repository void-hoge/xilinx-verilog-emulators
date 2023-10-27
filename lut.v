module LUT1
  #(parameter INIT=2'h0)
   (input wire I0, output wire O);
   reg [1:0] init;
   wire	     src;
   assign src = (I0 !== 1'bz) ? I0 : 0;
   assign O = init[src];
   initial begin
      init = INIT;
   end
endmodule

module LUT2
  #(parameter INIT=4'h0)
   (input wire I0, I1, output wire O);
   reg [3:0] init;
   wire [1:0] src;
   assign src[0] = (I0 !== 1'bz) ? I0 : 0;
   assign src[1] = (I1 !== 1'bz) ? I1 : 0;
   assign O = init[src];
   initial begin
      init = INIT;
   end
endmodule

module LUT3
  #(parameter INIT=8'h00)
   (input wire I0, I1, I2, output wire O);
   reg [7:0] init;
   wire [2:0] src;
   assign src[0] = (I0 !== 1'bz) ? I0 : 0;
   assign src[1] = (I1 !== 1'bz) ? I1 : 0;
   assign src[2] = (I2 !== 1'bz) ? I2 : 0;
   assign O = init[src];
   initial begin
      init = INIT;
   end
endmodule

module LUT4
  #(parameter INIT=16'h0000)
   (input wire I0, I1, I2, I3, output wire O);
   reg [15:0] init;
   wire [3:0] src;
   assign src[0] = (I0 !== 1'bz) ? I0 : 0;
   assign src[1] = (I1 !== 1'bz) ? I1 : 0;
   assign src[2] = (I2 !== 1'bz) ? I2 : 0;
   assign src[3] = (I3 !== 1'bz) ? I3 : 0;
   assign O = init[src];
   initial begin
      init = INIT;
   end
endmodule

module LUT5 
  #(parameter INIT=32'h0000_0000) 
   (input wire I0, I1, I2, I3, I4, output wire O);
   reg [31:0] init;
   wire [4:0] src;
   assign src[0] = (I0 !== 1'bz) ? I0 : 0;
   assign src[1] = (I1 !== 1'bz) ? I1 : 0;
   assign src[2] = (I2 !== 1'bz) ? I2 : 0;
   assign src[3] = (I3 !== 1'bz) ? I3 : 0;      
   assign src[4] = (I4 !== 1'bz) ? I4 : 0;
   assign O = init[src];
   initial begin
      init = INIT;
   end
endmodule

module LUT6
  #(parameter INIT=64'h0000_0000_0000_0000) 
   (input wire I0, I1, I2, I3, I4, I5, output wire O);
   reg [63:0] init;
   wire [5:0] src;
   assign src[0] = (I0 !== 1'bz) ? I0 : 0;
   assign src[1] = (I1 !== 1'bz) ? I1 : 0;
   assign src[2] = (I2 !== 1'bz) ? I2 : 0;
   assign src[3] = (I3 !== 1'bz) ? I3 : 0;      
   assign src[4] = (I4 !== 1'bz) ? I4 : 0;
   assign src[5] = (I5 !== 1'bz) ? I5 : 0;
   assign O = init[src];
   initial begin
     init = INIT;
   end
endmodule

module LUT6_2
  #(parameter INIT=64'h0000_0000_0000_0000)
   (input wire I0, I1, I2, I3, I4, I5, output wire O5, O6);
   reg [63:0] init;
   wire [5:0] src;
   assign src[0] = (I0 !== 1'bz) ? I0 : 0;
   assign src[1] = (I1 !== 1'bz) ? I1 : 0;
   assign src[2] = (I2 !== 1'bz) ? I2 : 0;
   assign src[3] = (I3 !== 1'bz) ? I3 : 0;      
   assign src[4] = (I4 !== 1'bz) ? I4 : 0;
   assign src[5] = (I5 !== 1'bz) ? I5 : 0;
   assign O5 = init[src[4:0]];
   assign O6 = init[src];
   initial begin
      init = INIT;
   end
endmodule
