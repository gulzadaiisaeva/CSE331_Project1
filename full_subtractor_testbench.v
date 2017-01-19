module full_subtractor_testbench(); 
	reg a, b, carry_in;
	wire sub, borrow;

	full_subtractor fatb (sub, borrow, a, b, carry_in);

	initial begin
	a = 1'b0; b = 1'b0; carry_in = 1'b0;
	#20;
	a = 1'b0; b = 1'b0; carry_in = 1'b1;
	#20;
	a = 1'b0; b = 1'b1; carry_in = 1'b0;
	#20;
	a = 1'b0; b = 1'b1; carry_in = 1'b1;
	#20;
	a = 1'b1; b = 1'b0; carry_in = 1'b0;
	#20;
	a = 1'b1; b = 1'b0; carry_in = 1'b1;
	#20;
	a = 1'b1; b = 1'b1; carry_in = 1'b0;
	#20;
	a = 1'b1; b = 1'b1; carry_in = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, carry_in=%1b, sum=%1b, carry_out=%1b", $time, a, b, carry_in, sub, borrow);
end
 
endmodule