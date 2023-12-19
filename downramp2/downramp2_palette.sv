module downramp2_palette (
	input logic [3:0] index,
	output logic [3:0] red, green, blue
);

localparam [0:15][11:0] palette = {
	{4'hF, 4'h1, 4'hF},
	{4'h1, 4'h2, 4'h1},
	{4'h4, 4'h3, 4'h4},
	{4'h8, 4'h1, 4'h9},
	{4'h4, 4'h6, 4'h3},
	{4'h6, 4'h1, 4'h7},
	{4'hF, 4'h1, 4'hF},
	{4'h2, 4'h3, 4'h2},
	{4'h6, 4'h9, 4'h6},
	{4'h5, 4'h7, 4'h4},
	{4'hF, 4'h1, 4'hF},
	{4'h5, 4'h1, 4'h5},
	{4'h2, 4'h1, 4'h2},
	{4'h3, 4'h4, 4'h3},
	{4'h3, 4'h2, 4'h3},
	{4'h0, 4'h0, 4'h0}
};

assign {red, green, blue} = palette[index];

endmodule
