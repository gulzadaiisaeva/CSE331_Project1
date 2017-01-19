module half_subtractor(sub, borrow, a, b);
	input a, b;
	output sub, borrow;
	wire aNot;

	xor sub_of_digits(sub, a, b);
	not(aNot,a);
	and borrow_of_sub(borrow, aNot, b);

endmodule 