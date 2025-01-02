module mux4_1(input [3:0]i0,
              input [3:0]i1,
              input [3:0]i2,
              input [3:0]i3,
              input [1:0]sel,
              output [3:0]y);
  
  assign y = sel[1] ? (sel[0] ? i3 : i2) : (sel[0] ? i1 :i0);
endmodule
