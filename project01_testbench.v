module project01_testbench();
	reg [4:0]a;
	reg [4:0]b;
	
	wire [1:0]r;
	
	
	project01 testme(r[1:0], a[4:0], b[4:0]);
	
	initial begin
	

	a=5'b00110; b=5'b01000; 
	#20 a=5'b01001; b=5'b01001; 
	#20 a=5'b00000; b=5'b00000;
	#20 a=5'b00001; b=5'b00000;
	#20 a=5'b00010; b=5'b00001; 
	end
	
initial
begin
$monitor("time = %2d, a =%5b,b =%5b, result=%2b", $time, a[4:0], b[4:0], r[1:0]);
end
 
endmodule