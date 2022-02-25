// horizontal prewitt kernel
 
module AMSG_prewitt_h(
  input [7:0] p1, p2, p3, p7, p8, p9,
  output reg [7:0] y1
    );
    wire [15:0] ys1;
    wire [8:0] add1, add2, add3, add4;
    assign add1 = p1 + p2;
    assign add2 = p7 + p8;
    assign add3 = add1 + p3;
    assign add4 = add2 + p9;
    assign ys1 = add4 - add3;
    always@(ys1)
    begin
    if(ys1 > 255)
      y1 <= 255;
    else
      y1 <= ys1;
    end
endmodule