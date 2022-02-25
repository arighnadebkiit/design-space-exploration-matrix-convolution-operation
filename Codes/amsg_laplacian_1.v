// AMSG for Laplacian #1 kernel

module AMSG_laplacian_1(
  input [7:0] p2, p4, p5, p6, p8,
  output reg [7:0] y1
    );
    wire [15:0] ys1;
    wire [8:0] n1, n2, n3;
    wire [15:0] m1;
    
    assign n1 = p2 + p4;
    assign n2 = p6 + p8;
    assign n3 = n1 + n2;
	assign m1 = 4 * p5;
    assign ys1 = n3 - m1;
    always@(ys1)
    begin
    if(ys1 > 255)
      y1 <= 255;
    else
      y1 <= ys1;
    end
endmodule