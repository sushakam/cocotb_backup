// This file is public domain, it can be freely copied without restrictions.
// SPDX-License-Identifier: CC0-1.0

`include "cache_memory.v"

module my_design(input logic Clk,
                input logic [31:0] data,
                input logic [31:0] rdaddress,
                input logic [31:0] wraddress,
                input logic wren,
                input logic [31:0] q
);


    logic my_signal_1;
    logic my_signal_2;

    assign my_signal_1 = 1'bx;
    assign my_signal_2 = 0;


    cache_memory cache_memory (.clock(Clk), .data(data), .rdaddress(rdaddress),
                                .wraddress(wraddress), .wren(wren), .q(q)
    );



endmodule