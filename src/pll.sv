/* 
 *
 * Phase Lock Loop
 *
 * @file  pll.sv
 * @autor Luis Arturo Mora Granados
 * @date  21/09/2018
 */

module pll #(parameter BITS = 2)
(
	input logic clk_i, rst_i, ena_i,
	output logic clk_o
);
	logic[BITS-1:0] register;
	counter#(BITS) inner(clk_i, rst_i, ena_i, register);
	always_comb begin 
		clk_o = register[BITS-1];
	end
endmodule