module Matrix_Multiplication (
  input clk, reset,
  input [7:0] a1, a2, a3, a4, b1, b2, b3, b4,
  output [16:0] c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16
);

  wire [7:0] 
  p12, p15, p23, p26, 
  p34, p37, p48, p56, 
  p59, p610, p67, p78, 
  p711, p812, p913, p910, 
  p1014, p1011, p1115, p1112, 
  p1216, p1314, p1415, p1516;

  Systolic_array B1(
    .clk(clk),
    .reset(reset),
    .in_a(a1),
    .in_b(b1),
    .out_a(p15),
    .out_b(p12),
    .out_c(c1)
  );

  Systolic_array B2(
    .clk(clk),
    .reset(reset),
    .in_a(a2),
    .in_b(p12),
    .out_a(p26),
    .out_b(p23),
    .out_c(c2)
  );

  Systolic_array B3(
    .clk(clk),
    .reset(reset),
    .in_a(a3),
    .in_b(p23),
    .out_a(p37),
    .out_b(p34),
    .out_c(c3)
  );

  Systolic_array B4(
    .clk(clk),
    .reset(reset),
    .in_a(a4),
    .in_b(p34),
    .out_a(p48),
    .out_b(),
    .out_c(c4)
  );

  Systolic_array B5(
    .clk(clk),
    .reset(reset),
    .in_a(p15),
    .in_b(b2),
    .out_a(p59),
    .out_b(p56),
    .out_c(c5)
  );

  Systolic_array B6(
    .clk(clk),
    .reset(reset),
    .in_a(p26),
    .in_b(p56),
    .out_a(p610),
    .out_b(p67),
    .out_c(c6)
  );

  Systolic_array B7(
    .clk(clk),
    .reset(reset),
    .in_a(p37),
    .in_b(p67),
    .out_a(p711),
    .out_b(p78),
    .out_c(c7)
  );

  Systolic_array B8(
    .clk(clk),
    .reset(reset),
    .in_a(p48),
    .in_b(p78),
    .out_a(p812),
    .out_b(),
    .out_c(c8)
  );

  Systolic_array B9(
    .clk(clk),
    .reset(reset),
    .in_a(p59),
    .in_b(b3),
    .out_a(p913),
    .out_b(p910),
    .out_c(c9)
  );
  
  Systolic_array B10(
    .clk(clk),
    .reset(reset),
    .in_a(p610),
    .in_b(p910),
    .out_a(p1014),
    .out_b(p1011),
    .out_c(c10)
  );

  Systolic_array B11(
    .clk(clk),
    .reset(reset),
    .in_a(p711),
    .in_b(p1011),
    .out_a(p1115),
    .out_b(p1112),
    .out_c(c11)
  );
  
  Systolic_array B12(
    .clk(clk),
    .reset(reset),
    .in_a(p812),
    .in_b(p1112),
    .out_a(p1216),
    .out_b(),
    .out_c(c12)
  );
  
  Systolic_array B13(
    .clk(clk),
    .reset(reset),
    .in_a(p913),
    .in_b(b4),
    .out_a(),
    .out_b(p1314),
    .out_c(c13)
  );
  
  Systolic_array B14(
    .clk(clk),
    .reset(reset),
    .in_a(p1014),
    .in_b(p1314),
    .out_a(),
    .out_b(p1415),
    .out_c(c14)
  );
  
  Systolic_array B15(
    .clk(clk),
    .reset(reset),
    .in_a(p1115),
    .in_b(p1415),
    .out_a(),
    .out_b(p1516),
    .out_c(c15)
  );
  
  Systolic_array B16(
    .clk(clk),
    .reset(reset),
    .in_a(p1216),
    .in_b(p1516),
    .out_a(),
    .out_b(),
    .out_c(c16)
  );

endmodule
