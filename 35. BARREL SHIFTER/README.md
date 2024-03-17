# 8-Bit Barrel Shifter

Welcome to the introduction to the 8-bit Barrel Shifter! In this document, we'll delve into the theory behind the Barrel Shifter, its operational aspects, a working example, and how it's implemented using Verilog.

## Table of Contents
1. [Introduction to 8-Bit Barrel Shifter](#introduction-to-8-bit-barrel-shifter)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example](#working-example)
4. [Verilog Implementation](#verilog-implementation)
5. [Truth Table](#truth-table)

## Introduction to 8-Bit Barrel Shifter
The 8-bit Barrel Shifter is a fundamental component in digital design, particularly in processors and digital signal processing circuits. It enables efficient parallel shifting operations, making it versatile for various applications.

## Operation and Diagram
The Barrel Shifter operates by rotating or shifting binary data across its input bits. It utilizes a series of multiplexers arranged in stages to select the appropriate shifted data based on the rotate amount or shift direction.

A typical diagram of an 8-bit Barrel Shifter consists of cascaded stages of multiplexers. Each stage is responsible for selecting the correct input bits based on the rotate amount.

## Working Example
Let's illustrate the operation of the 8-bit Barrel Shifter with a more detailed example:

- **Input Data**: 8 bits (A7 A6 A5 A4 A3 A2 A1 A0)
- **Rotate Amount**: 3 (for example)

The Barrel Shifter would rotate the input data by 3 positions to the left. This operation involves selecting the appropriate input bits for each stage of the Barrel Shifter, ensuring the correct rotation is achieved across all 8 bits.

## Verilog Implementation
Implementing the 8-bit Barrel Shifter in Verilog requires careful design of the multiplexer structure to facilitate efficient rotation operations. It involves defining the module with appropriate input and output ports, as well as implementing the logic for selecting the input bits based on the rotate amount.
I have provided the all the verilog files, feel free to refer them.

## Truth Table
The truth table below provides a comprehensive overview of the behavior of the 8-bit Barrel Shifter for various rotate amounts and input selections:

| Rotate Amount | Mux Selection Lines (S) | Input Selection for Each Mux               | Output Data (8 bits) |
|---------------|-------------------------|--------------------------------------------|----------------------|
| 0             | S0 = 0, S1 = 0, S2 = 0  | [A7, A6, A5, A4, A3, A2, A1, A0]          | Same as input        |
| 1             | S0 = 0, S1 = 0, S2 = 1  | [A6, A5, A4, A3, A2, A1, A0, A7]          | Rotated left by 1     |
| 2             | S0 = 0, S1 = 1, S2 = 0  | [A5, A4, A3, A2, A1, A0, A7, A6]          | Rotated left by 2     |
| 3             | S0 = 0, S1 = 1, S2 = 1  | [A4, A3, A2, A1, A0, A7, A6, A5]          | Rotated left by 3     |
| 4             | S0 = 1, S1 = 0, S2 = 0  | [A3, A2, A1, A0, A7, A6, A5, A4]          | Rotated left by 4     |
| 5             | S0 = 1, S1 = 0, S2 = 1  | [A2, A1, A0, A7, A6, A5, A4, A3]          | Rotated left by 5     |
| 6             | S0 = 1, S1 = 1, S2 = 0  | [A1, A0, A7, A6, A5, A4, A3, A2]          | Rotated left by 6     |
| 7             | S0 = 1, S1 = 1, S2 = 1  | [A0, A7, A6, A5, A4, A3, A2, A1]          | Rotated left by 7     |

This truth table provides a clear understanding of how the input data is rotated across 8 bits based on the rotate amount, along with the corresponding mux selection lines and output data.