module RegIO(
	input						clk_i,
	//input						rst_ni,
	input			[7:0]		int_data_i,
	inout			[7:0]		ext_data_io,
	input						dir_ctl,
	input						wr_i,
	input						rd_i,
	input						sel_i,
	output reg	[7:0]		int_data_o
);

	reg	[7:0]	data;
	reg	[7:0]	din;
	wire			wr_w;

	assign	wr_w = wr_i & sel_i;
	
	always @ (posedge clk_i, negedge wr_w)
	begin
		if (!wr_w)
		begin
			data <= data;
		end
		else
		begin
			data <= int_data_i;
		end
	end
	
	assign ext_data_io = (!dir_ctl) ? data : 8'bz;
	
	always @(*)
	begin
		if (rd_i)
		begin
			int_data_o <= ext_data_io;
		end
		else
		begin
			int_data_o <= 8'b0;
		end
	end

endmodule
