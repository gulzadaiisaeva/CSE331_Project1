module full_subtractor(sub, borrow, a, b, carry_in);
	input a, b, carry_in;
	output sub, borrow;
	wire temp_sub, first_carry_out, second_carry_out;

	half_subtractor first_sub(temp_sub, first_carry_out, a, b);
	half_subtractor second_sub(sub, second_carry_out, temp_sub, carry_in);

	or final_borrow(borrow, second_carry_out, first_carry_out);

endmodule 