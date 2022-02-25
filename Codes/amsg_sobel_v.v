// vertical sobel kernel

module AMSG_sobel_v(
input [7:0] p1, p3, p4, p6, p7, p9,
  output reg [7:0] y1
    );
    wire [15:0] ys1;
    wire [8:0] n1, n2, n3, n4;
    wire [15:0] m1;
    
    assign n1 = p1 + p7;
    assign n2 = p3 + p9;
    assign n3 = p6 - p4;
    assign m1 = 2 * n3;
    assign n4 = n2 - n1;
    assign ys1 = m1 + n4;
    always@(ys1)
    begin
    if(ys1 > 255)
      y1 <= 255;
    else
      y1 <= ys1;
    end
endmodule