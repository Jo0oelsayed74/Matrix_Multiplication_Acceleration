module Systolic_array (
    input clk, reset,
    input [7:0] in_a, in_b,
    output reg [7:0] out_a, out_b,
    output reg [16:0] out_c
);

    always @(posedge clk or posedge reset) 
		begin
			if (reset) begin
				out_a <= 8'b0;
				out_b <= 8'b0;
				out_c <= 17'b0;
        end
			else 
				begin
					out_c <= out_c + (in_a * in_b);
					out_a <= in_a;
					out_b <= in_b;
				end
			end
endmodule
