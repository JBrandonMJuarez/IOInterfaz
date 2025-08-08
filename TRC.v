module TRC(
	input						clk_i,
	input						rst_ni,
	input			[1:0]		ctl_data_i,
	input						wr_i,
	input						rd_i,
	input						sel_i,
	output 		[1:0]		ctl_data_o
);

	reg	[1:0]	ctl_reg;
	wire			wr_w;
	
	assign	wr_w = wr_i & sel_i;
	
	always @ (posedge clk_i, negedge rst_ni)
	begin
		if (!rst_ni)
		begin
			ctl_reg <= 2'b0;
		end
		else
		begin
			if (wr_w)
			begin
				ctl_reg <= ctl_data_i;
			end
			else
			begin
				ctl_reg <= ctl_reg;
			end
		end
	end
	
	assign ctl_data_o = ctl_reg;

endmodule