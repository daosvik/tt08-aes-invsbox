/*
   Verilog modules for standard cells.

   The modules have the keep_hierarchy attribute to prevent synthesis
   from modifying the structure of the logic built using these modules.

   Module names are consistent with the Sky130 PDK, but the modules are
   portable to other PDKs, though not necessarily matching their gates.

   Copyright 2024 Dag Arne Osvik

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

(* keep_hierarchy *) module a2111o (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  c0,
    input wire  d0,
    output wire y);

    assign y = (a0 & a1) | b0 | c0 | d0;
endmodule

(* keep_hierarchy *) module a2111oi (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  c0,
    input wire  d0,
    output wire y);

    assign y = ~((a0 & a1) | b0 | c0 | d0);
endmodule

(* keep_hierarchy *) module a211o (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  c0,
    output wire y);

    assign y = (a0 & a1) | b0 | c0;
endmodule

(* keep_hierarchy *) module a211oi (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  c0,
    output wire y);

    assign y = ~((a0 & a1) | b0 | c0);
endmodule

(* keep_hierarchy *) module a21bo (
    input wire  a0,
    input wire  a1,
    input wire  b0n,
    output wire y);

    assign y = (a0 & a1) | ~b0n;
endmodule

(* keep_hierarchy *) module a21boi (
    input wire  a0,
    input wire  a1,
    input wire  b0n,
    output wire y);

    assign y = ~((a0 & a1) | ~b0n);
endmodule

(* keep_hierarchy *) module a21o (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    output wire y);

    assign y = (a0 & a1) | b0;
endmodule

(* keep_hierarchy *) module a21oi (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    output wire y);

    assign y = ~((a0 & a1) | b0);
endmodule

(* keep_hierarchy *) module a221o (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    input wire  c0,
    output wire y);

    assign y = (a0 & a1) | (b0 & b1) | c0;
endmodule

(* keep_hierarchy *) module a221oi (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    input wire  c0,
    output wire y);

    assign y = ~((a0 & a1) | (b0 & b1) | c0);
endmodule

(* keep_hierarchy *) module a222oi (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    input wire  c0,
    input wire  c1,
    output wire y);

    assign y = ~((a0 & a1) | (b0 & b1) | (c0 & c1));
endmodule

(* keep_hierarchy *) module a22o (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = (a0 & a1) | (b0 & b1);
endmodule

(* keep_hierarchy *) module a22oi (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = ~((a0 & a1) | (b0 & b1));
endmodule

(* keep_hierarchy *) module a2bb2o (
    input wire  a0n,
    input wire  a1n,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = (~a0n & ~a1n) | (b0 & b1);
endmodule

(* keep_hierarchy *) module a2bb2oi (
    input wire  a0n,
    input wire  a1n,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = ~((~a0n & ~a1n) | (b0 & b1));
endmodule

(* keep_hierarchy *) module a311o (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    input wire  c0,
    output wire y);

    assign y = (a0 & a1 & a2) | b0 | c0;
endmodule

(* keep_hierarchy *) module a311oi (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    input wire  c0,
    output wire y);

    assign y = ~((a0 & a1 & a2) | b0 | c0);
endmodule

(* keep_hierarchy *) module a31o (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    output wire y);

    assign y = (a0 & a1 & a2) | b0;
endmodule

(* keep_hierarchy *) module a31oi (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    output wire y);

    assign y = ~((a0 & a1 & a2) | b0);
endmodule

(* keep_hierarchy *) module a32o (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = (a0 & a1 & a2) | (b0 & b1);
endmodule

(* keep_hierarchy *) module a32oi (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = ~((a0 & a1 & a2) | (b0 & b1));
endmodule

(* keep_hierarchy *) module a41o (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  a3,
    input wire  b0,
    output wire y);

    assign y = (a0 & a1 & a2 & a3) | b0;
endmodule

(* keep_hierarchy *) module a41oi (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  a3,
    input wire  b0,
    output wire y);

    assign y = ~((a0 & a1 & a2 & a3) | b0);
endmodule

(* keep_hierarchy *) module and2 (
    input wire  a,
    input wire  b,
    output wire y);

    assign y = a & b;
endmodule

(* keep_hierarchy *) module and2b (
    input wire  an,
    input wire  b,
    output wire y);

    assign y = ~an & b;
endmodule

(* keep_hierarchy *) module and3 (
    input wire  a,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = a & b & c;
endmodule

(* keep_hierarchy *) module and3b (
    input wire  an,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = ~an & b & c;
endmodule

(* keep_hierarchy *) module and4 (
    input wire  a,
    input wire  b,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = a & b & c & d;
endmodule

(* keep_hierarchy *) module and4b (
    input wire  an,
    input wire  b,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~an & b & c & d;
endmodule

(* keep_hierarchy *) module and4bb (
    input wire  an,
    input wire  bn,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~an & ~bn & c & d;
endmodule

(* keep_hierarchy *) module inv (
    input wire  a,
    output wire y);

    assign y = ~a;
endmodule

(* keep_hierarchy *) module maj3 (
    input wire  a,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = (a & b) | (a & c) | (b & c);
endmodule

(* keep_hierarchy *) module mux2 (
    input wire  s,
    input wire  a0,
    input wire  a1,
    output wire y);

    assign y = s ? a1 : a0;
endmodule

(* keep_hierarchy *) module mux2i (
    input wire  s,
    input wire  a0,
    input wire  a1,
    output wire y);

    assign y = ~(s ? a1 : a0);
endmodule

(* keep_hierarchy *) module nand2 (
    input wire  a,
    input wire  b,
    output wire y);

    assign y = ~(a & b);
endmodule

(* keep_hierarchy *) module nand2b (
    input wire  an,
    input wire  b,
    output wire y);

    assign y = ~(~an & b);
endmodule

(* keep_hierarchy *) module nand3 (
    input wire  a,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = ~(a & b & c);
endmodule

(* keep_hierarchy *) module nand3b (
    input wire  an,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = ~(~an & b & c);
endmodule

(* keep_hierarchy *) module nand4 (
    input wire  a,
    input wire  b,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~(a & b & c & d);
endmodule

(* keep_hierarchy *) module nand4b (
    input wire  an,
    input wire  b,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~(~an & b & c & d);
endmodule

(* keep_hierarchy *) module nand4bb (
    input wire  an,
    input wire  bn,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~(~an & ~bn & c & d);
endmodule

(* keep_hierarchy *) module nor2 (
    input wire  a,
    input wire  b,
    output wire y);

    assign y = ~(a | b);
endmodule

(* keep_hierarchy *) module nor2b (
    input wire  an,
    input wire  b,
    output wire y);

    assign y = ~(~an | b);
endmodule

(* keep_hierarchy *) module nor3 (
    input wire  a,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = ~(a | b | c);
endmodule

(* keep_hierarchy *) module nor3b (
    input wire  an,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = ~(~an | b | c);
endmodule

(* keep_hierarchy *) module nor4 (
    input wire  a,
    input wire  b,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~(a | b | c | d);
endmodule

(* keep_hierarchy *) module nor4b (
    input wire  an,
    input wire  b,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~(~an | b | c | d);
endmodule

(* keep_hierarchy *) module nor4bb (
    input wire  an,
    input wire  bn,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~(~an | ~bn | c | d);
endmodule

(* keep_hierarchy *) module o2111a (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  c0,
    input wire  d0,
    output wire y);

    assign y = (a0 | a1) & b0 & c0 & d0;
endmodule

(* keep_hierarchy *) module o2111ai (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  c0,
    input wire  d0,
    output wire y);

    assign y = ~((a0 | a1) & b0 & c0 & d0);
endmodule

(* keep_hierarchy *) module o211a (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  c0,
    output wire y);

    assign y = (a0 | a1) & b0 & c0;
endmodule

(* keep_hierarchy *) module o211ai (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  c0,
    output wire y);

    assign y = ~((a0 | a1) & b0 & c0);
endmodule

(* keep_hierarchy *) module o21a (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    output wire y);

    assign y = (a0 | a1) & b0;
endmodule

(* keep_hierarchy *) module o21ai (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    output wire y);

    assign y = ~((a0 | a1) & b0);
endmodule

(* keep_hierarchy *) module o21ba (
    input wire  a0,
    input wire  a1,
    input wire  b0n,
    output wire y);

    assign y = (a0 | a1) & ~b0n;
endmodule

(* keep_hierarchy *) module o21bai (
    input wire  a0,
    input wire  a1,
    input wire  b0n,
    output wire y);

    assign y = ~((a0 | a1) & ~b0n);
endmodule

(* keep_hierarchy *) module o221a (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    input wire  c0,
    output wire y);

    assign y = (a0 | a1) & (b0 | b1) & c0;
endmodule

(* keep_hierarchy *) module o221ai (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    input wire  c0,
    output wire y);

    assign y = ~((a0 | a1) & (b0 | b1) & c0);
endmodule

(* keep_hierarchy *) module o22a (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = (a0 | a1) & (b0 | b1);
endmodule

(* keep_hierarchy *) module o22ai (
    input wire  a0,
    input wire  a1,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = ~((a0 | a1) & (b0 | b1));
endmodule

(* keep_hierarchy *) module o2bb2a (
    input wire  a0n,
    input wire  a1n,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = (~a0n | ~a1n) & (b0 | b1);
endmodule

(* keep_hierarchy *) module o2bb2ai (
    input wire  a0n,
    input wire  a1n,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = ~((~a0n | ~a1n) & (b0 | b1));
endmodule

(* keep_hierarchy *) module o311a (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    input wire  c0,
    output wire y);

    assign y = (a0 | a1 | a2) & b0 & c0;
endmodule

(* keep_hierarchy *) module o311ai (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    input wire  c0,
    output wire y);

    assign y = ~((a0 | a1 | a2) & b0 & c0);
endmodule

(* keep_hierarchy *) module o31a (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    output wire y);

    assign y = (a0 | a1 | a2) & b0;
endmodule

(* keep_hierarchy *) module o31ai (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    output wire y);

    assign y = ~((a0 | a1 | a2) & b0);
endmodule

(* keep_hierarchy *) module o32a (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = (a0 | a1 | a2) & (b0 | b1);
endmodule

(* keep_hierarchy *) module o32ai (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  b0,
    input wire  b1,
    output wire y);

    assign y = ~((a0 | a1 | a2) & (b0 | b1));
endmodule

(* keep_hierarchy *) module o41a (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  a3,
    input wire  b0,
    output wire y);

    assign y = (a0 | a1 | a2 | a3) & b0;
endmodule

(* keep_hierarchy *) module o41ai (
    input wire  a0,
    input wire  a1,
    input wire  a2,
    input wire  a3,
    input wire  b0,
    output wire y);

    assign y = ~((a0 | a1 | a2 | a3) & b0);
endmodule

(* keep_hierarchy *) module or2 (
    input wire  a,
    input wire  b,
    output wire y);

    assign y = a | b;
endmodule

(* keep_hierarchy *) module or2b (
    input wire  an,
    input wire  b,
    output wire y);

    assign y = ~an | b;
endmodule

(* keep_hierarchy *) module or3 (
    input wire  a,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = a | b | c;
endmodule

(* keep_hierarchy *) module or3b (
    input wire  an,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = ~an | b | c;
endmodule

(* keep_hierarchy *) module or4 (
    input wire  a,
    input wire  b,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = a | b | c | d;
endmodule

(* keep_hierarchy *) module or4b (
    input wire  an,
    input wire  b,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~an | b | c | d;
endmodule

(* keep_hierarchy *) module or4bb (
    input wire  an,
    input wire  bn,
    input wire  c,
    input wire  d,
    output wire y);

    assign y = ~an | ~bn | c | d;
endmodule

(* keep_hierarchy *) module xnor2 (
    input wire  a,
    input wire  b,
    output wire y);

    assign y = ~(a ^ b);
endmodule

(* keep_hierarchy *) module xnor3 (
    input wire  a,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = ~(a ^ b ^ c);
endmodule

(* keep_hierarchy *) module xor2 (
    input wire  a,
    input wire  b,
    output wire y);

    assign y = a ^ b;
endmodule

(* keep_hierarchy *) module xor3 (
    input wire  a,
    input wire  b,
    input wire  c,
    output wire y);

    assign y = a ^ b ^ c;
endmodule
