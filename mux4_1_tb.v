module mux4_1_tb();
  reg [3:0]i0;
  reg [3:0]i1;
  reg [3:0]i2;
  reg [3:0]i3;
  reg [1:0]sel;
  wire [3:0]y;
  integer i;
  
  mux4_1 uut(i0,i1,i2,i3,sel,y);
  
  initial begin 
    sel = 0;
    i0 = 4'b0001;
    i1 = 4'b0010;
    i2 = 4'b0011;
    i3 = 4'b0100;
    
    for(i=0;i<4;i=i+1) begin
      sel = i;
      #10;
      $display("%b | %b",sel,y);
    end
    
    $finish;
  end
endmodule
