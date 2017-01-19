 module project01 (r[1:0], a[4:0], b[4:0]);
 
		//Out1= (Zr'Za + ZaM + ZrZa'M)
		//Out2= (Zr'Za + ZrM')
		
		input [4:0]a;
		input [4:0]b;
		output [1:0]r;
		
		wire [4:0] SubR; //a-b icin
		wire Zr, notZr; //Sub result ve or(result)
		wire Za,notZa;  //or(a) ve or(or(a))
		wire msb,notmsb; //MSB 
		wire tmp1, tmp2, tmp3, tmp4, tmp5; //carry in
		wire Out1And1, Out1And2, Out1And3, Out2And;
		
		full_subtractor num1 (SubR[0], tmp1, a[0], b[0], 0);
		full_subtractor num2 (SubR[1], tmp2, a[1], b[1], tmp1);
		full_subtractor num3 (SubR[2], tmp3, a[2], b[2],tmp2);
		full_subtractor num4 (SubR[3], tmp4, a[3], b[3], tmp3);
		full_subtractor num5 (msb, tmp5, a[4], b[4],tmp4);
		
		or (Zr,SubR[0],SubR[1],SubR[2],SubR[3],msb);  //Subtract resultin (a-b) orlanmasi (Zr)
		or (Za,a[0],a[1],a[2],a[3],a[4]);  //Input a nin orlanmasi or(a)
		
		not (NotZr, Zr) ; //Zr'
		and (Out1And1, NotZr, Za); //Zr'Za
		and(Out1And2,Za,msb); //ZaM
		not(NotZa,Za); //Za'
		and(Out1And3,Zr,Notza,msb ); //ZrZa'M
		or(r[1],Out1And1, Out1And2, Out1And3 ); //Zr'Za + ZaM + ZrZa'M
		
		not(notmsb,msb); //M'
		and(Out2And,Zr, notmsb); //ZrM'
		or(r[0],Out1And1,Out2And); //Zr'Za+ZrM'
		
		
		
		
		

endmodule 