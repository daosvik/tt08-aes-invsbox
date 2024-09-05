/*
 * Copyright (c) 2024 Dag Arne Osvik
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_daosvik_aesinvsbox (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // Instantiate the inverse s-box module

  sbox_aesinv sbox_aesinv_inst (.clk(clk), .x(ui_in), .y(uo_out), .cy(uio_out));

  // All output pins must be assigned. If not used, assign to 0.
  assign uio_oe  = 255;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, rst_n, uio_in, 1'b0};

endmodule
