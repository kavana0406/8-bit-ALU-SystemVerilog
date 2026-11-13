# 8-Bit ALU Using SystemVerilog

## Project Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU)
using SystemVerilog.

The ALU performs arithmetic, logical and comparison operations.
It is verified using a SystemVerilog testbench.

## Team Members

| Name | USN |
|---|---|
| Kavana PN | 1AT24EC062 |
| Pallavi R | 1AT24EC105 |
| Pranathi C | 1AT24EC114 |

## Subject
System Verilog - BSYVC505D

## Operations Performed

| Opcode | Operation |
|---|---|
| 0000 | Addition |
| 0001 | Subtraction |
| 0010 | AND |
| 0011 | OR |
| 0100 | XOR |
| 0101 | A > B |
| 0110 | A < B |
| 0111 | A == B |

## Output Flags
- Carry Flag
- Zero Flag
- Overflow Flag

## Files Included
- alu_8bit.sv - ALU design source code
- testbench.sv - Testbench for verification

## Tools Used
- EDA Playground
- SystemVerilog
- Verilator Simulator

## Simulation
The design was simulated using EDA Playground.
All eight test cases were executed successfully.

## Developed By
Kavana PN, Pallavi R and Pranathi C
