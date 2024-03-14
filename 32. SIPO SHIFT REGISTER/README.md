# Day 32: SIPO Shift Register

Welcome to Day 32 of our learning journey! Today, we will delve into the Serial-In Parallel-Out (SIPO) shift register. This README serves as an exhaustive guide to grasp the SIPO shift register, including its operation, working example, Verilog implementation, and truth table.

## Table of Contents
1. [Introduction to SIPO Shift Register](#introduction-to-sipo-shift-register)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example](#working-example)
4. [Verilog Code](#verilog-code)
5. [Truth Table](#truth-table)

## Introduction to SIPO Shift Register
The Serial-In Parallel-Out (SIPO) shift register, akin to its SISO counterpart, is a pivotal component in digital systems. However, it presents the shifted data in parallel at its output.

## Operation:
The SIPO shift register also comprises flip-flops connected in series, forming a shift path. Upon each clock pulse, the input data is loaded into the first flip-flop, and subsequent clock pulses cause the data to shift through the register. However, in SIPO, all the flip-flops' outputs are available in parallel.

## Working Example
Let's consider the input sequence "1011" to demonstrate the SIPO shift register's operation:

- **Initial State (Reset)**: Q3=0, Q2=0, Q1=0, Q0=0
- **1st Falling Edge**: Q3=1, Q2=0, Q1=0, Q0=0
- **2nd Falling Edge**: Q3=1, Q2=1, Q1=0, Q0=0
- **3rd Falling Edge**: Q3=1, Q2=1, Q1=1, Q0=0
- **4th Falling Edge**: Q3=1, Q2=1, Q1=1, Q0=1

This illustrates how the input data "1011" is shifted through the register, with all the outputs available in parallel.

## Verilog Code
Just like the SISO shift register, I have provided the required Design and Testbench files for the SIPO shift register. Please refer to them for implementation details.

## Truth Table
The truth table below elucidates the behavior of the SIPO shift register for different clock pulses:

| Clock Pulse | Q3 | Q2 | Q1 | Q0 |
|-------------|----|----|----|----|
| Initial State (Reset) | 0 | 0 | 0 | 0 |
| 1st Falling Edge | 1 | 0 | 0 | 0 |
| 2nd Falling Edge | 1 | 1 | 0 | 0 |
| 3rd Falling Edge | 1 | 1 | 1 | 0 |
| 4th Falling Edge | 1 | 1 | 1 | 1 |

This README offers a thorough understanding of the SIPO shift register, encompassing both theoretical insights and practical demonstrations. It serves as a valuable resource for comprehending digital systems.

Feel free to explore the provided Verilog code and truth table to deepen your understanding of the SIPO shift register. Happy learning!