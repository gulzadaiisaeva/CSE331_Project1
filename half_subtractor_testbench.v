module half_subtractor_testbench(); 
	reg a, b;
	wire sub, borrow;

	half_subtractor hatb (sub, borrow, a, b);

	initial begin
	a = 1'b0; b = 1'b0;
	#20;
	a = 1'b0; b = 1'b1;
	#20;
	a = 1'b1; b = 1'b0;
	#20;
	a = 1'b1; b = 1'b1;
	end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, sum=%1b, carry_out=%1b", $time, a, b, sub, borrow);
end
 
endmodule