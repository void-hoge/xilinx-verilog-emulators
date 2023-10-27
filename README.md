# Xilinx Verilog Emulators
- Verilog Modules that emulate LUTs and CARRY4 of Xilinx FPGAs

## Overview
- It's enables verilog code with Xilinx FPGA-specific LUTs and CARRY4 mapping description to be executed on a general purpose simulator such as iverilog.
- Modules based on [UG953](https://docs.xilinx.com/r/en-US/ug953-vivado-7series-libraries/Introduction)

## CYINIT and CI inputs in CARRY4
- CYINIT and CI in CARRY4 used for similar purposes and are logically treated almost the same way.
  - CI is used to cascade previous carry output when constructing a carry chain with multiple CARRY4s.
  - CYINIT is used to input 0 or 1 as an immediete value, such as at the bottom of the carry chain.
- Vivado doesn't make much of a distinction between these and automatically connects them to the desired physical port.
- In this implementation, if something is connected to CYINIT (if not high impedance) it takes precedence.
