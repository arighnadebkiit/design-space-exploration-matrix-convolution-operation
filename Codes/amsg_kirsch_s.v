// AMSG for Kirsch south kernel

module AMSG_kirsch_s(
  input [7:0] p1, p2, p3, p4, p6, p7, p8, p9,
  output reg [7:0] y1
    );
    wire [15:0] ys1;
    wire [8:0] n1, n2, n3, n4, n5, n6;
    wire [15:0] m1, m2;
    
    assign n1 = p2 + p3;
    assign n2 = p6 + p8;
    assign n3 = n1 + n2;
	assign n4 = n3 + p9;
	assign n5 = p1 + p4;
	assign n6 = n5 + p7;
	assign m1 = 5 * n6;
    assign m2 = 3 * n4;
    assign ys1 = m1 - m2;
    always@(ys1)
    begin
    if(ys1 > 255)
      y1 <= 255;
    else
      y1 <= ys1;
    end
endmodule