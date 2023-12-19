module player2win_rom (
	input logic clock,
	input logic [18:0] address,
	output logic [3:0] q
);

logic [3:0] memory [0:307199] /* synthesis ram_init_file = "./player2win/player2win.mif" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
