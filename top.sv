`include "counter.sv"


module top;

logic Clk;
logic Resetn;


counter dut(.Clk(Clk), .Resetn(Resetn));




endmodule