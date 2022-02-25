// AMSG for line detection with +45degree kernel

module AMSG_line_p45(
  input [7:0] p1, p2, p3, p4, p5, p6, p7, p8, p9,
  output reg [7:0] y1
    );
    wire [15:0] ys1;
    wire [8:0] n1, n2, n3, n4, n5, n6, n7;
    wire [15:0] m1;
    
    assign n1 = p2 + p3;
    assign n2 = p4 + p6;
	assign n3 = p7 + p8;
	assign n4 = p1 + p5;
    assign n5 = n1 + n2;
	assign n6 = n3 + n5;
	assign n7 = n4 + p9;
	assign m1 = 2 * n7;
    assign ys1 = m1 - n6;
    always@(ys1)
    begin
    if(ys1 > 255)
      y1 <= 255;
    else
      y1 <= ys1;
    end
endmodule