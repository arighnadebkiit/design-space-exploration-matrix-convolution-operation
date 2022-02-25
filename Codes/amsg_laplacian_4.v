// AMSG for Laplacian #4 kernel

module AMSG_laplacian_4(
  input [7:0] p1, p2, p3, p4, p5, p6, p7, p8, p9,
  output reg [7:0] y1
    );
    wire [15:0] ys1;
    wire [8:0] n1, n2, n3, n4, n5, n6, n7;
    wire [15:0] m1;
    
    assign n1 = p1 + p2;
    assign n2 = p3 + p4;
	assign n3 = p6 + p7;
	assign n4 = p8 + p9;
    assign n5 = n1 + n2;
	assign n6 = n3 + n4;
	assign n7 = n5 + n6;
	assign m1 = 8 * p5;
    assign ys1 = m1 - n7;
    always@(ys1)
    begin
    if(ys1 > 255)
      y1 <= 255;
    else
      y1 <= ys1;
    end
endmodule