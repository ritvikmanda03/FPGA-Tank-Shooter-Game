module fuel_c_rom (
	input logic clock,
	input logic [9:0] address,
	output logic [2:0] q
);

logic [2:0] memory [0:967] /* synthesis ram_init_file = "./fuel_c/fuel_c.mif" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
