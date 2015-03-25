module cnt_data(WhiteData, BlackData,
				cnt_white, cnt_black);
	input [63:0] WhiteData, BlackData;
	output [7:0] cnt_white, cnt_black;
	
	assign cnt_white = cnt(WhiteData);
	assign cnt_black = cnt(BlackData);
	
	function [7:0] cnt;
		input [63:0] data;
		reg [7:0] tmp;
		
		begin
			integer i;
			tmp = 8'd0;
			for (i = 0; i < 64; i = i + 1) 
				tmp = tmp + data[i];
			cnt = tmp;
		end
	endfunction
endmodule
