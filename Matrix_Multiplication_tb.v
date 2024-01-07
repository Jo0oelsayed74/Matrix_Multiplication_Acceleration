module Matrix_Multiplication_tb ();

  reg clk, reset;
  reg [7:0] a1, a2, a3, a4, b1, b2, b3 ,b4;
  wire [16:0] c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16;
  
  Matrix_Multiplication tb (
    .clk(clk),
    .reset(reset),
    .a1(a1),
    .a2(a2),
    .a3(a3),
	.a4(a4),
    .b1(b1),
    .b2(b2),
    .b3(b3),
	.b4(b4),
    .c1(c1),
    .c2(c2),
    .c3(c3),
    .c4(c4),
    .c5(c5),
    .c6(c6),
    .c7(c7),
    .c8(c8),
    .c9(c9),
    .c10(c10),
    .c11(c11),
    .c12(c12),
    .c13(c13),
    .c14(c14),
    .c15(c15),
    .c16(c16)	
  );
  
  always 
    begin
      #5;
      clk = ~clk;
    end

  initial
    begin
      clk = 0;
      reset = 1;
      a1 = 0; a2 = 0; a3 = 0; a4 = 0;
      b1 = 0; b2 = 0; b3 = 0; b4 = 0;

      #10;  

      reset = 0;

      #5;
      a1 = 7; a2 = 0; a3 = 0; a4 = 0;
      b1 = 5; b2 = 0; b3 = 0; b4 = 0;

      #10;
      a1 = 1; a2 = 5; a3 = 0; a4 = 0;
      b1 = 2; b2 = 0; b3 = 0; b4 = 0;

      #10;
      a1 = 9; a2 = 8; a3 = 8; a4 = 0;
      b1 = 6; b2 = 6; b3 = 3; b4 = 0;

      #10;
      a1 = 5; a2 = 4; a3 = 2; a4 = 0;
      b1 = 1; b2 = 2; b3 = 8; b4 = 1;

      #10;
      a1 = 0; a2 = 3; a3 = 3; a4 = 6;
      b1 = 0; b2 = 0; b3 = 1; b4 = 8;
	  
	  #10;
      a1 = 0; a2 = 0; a3 = 7; a4 = 8;
      b1 = 0; b2 = 0; b3 = 4; b4 = 5;
	  
	  #10;
      a1 = 0; a2 = 0; a3 = 0; a4 = 9;
      b1 = 0; b2 = 0; b3 = 0; b4 = 6;
	  
    end

endmodule
