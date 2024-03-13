# Day 31: SISO Shift Register

Welcome to Day 31 of our learning journey! Today, we will explore the Serial-In Serial-Out (SISO) shift register. This README serves as a comprehensive guide to understand the SISO shift register, its operation, working example, and Verilog implementation.

## Table of Contents
1. [Introduction to SISO Shift Register](#introduction-to-siso-shift-register)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example](#working-example)
4. [Verilog Code](#verilog-code)
5. [Truth Table](#truth-table)

## Introduction to SISO Shift Register
A Serial-In Serial-Out (SISO) shift register is a crucial component in digital systems. It accepts data serially, shifting it through its internal memory elements before presenting it serially at its output.

## Operation:
The SISO shift register comprises flip-flops connected in series, forming a shift path. Upon each clock pulse, the input data is loaded into the first flip-flop, and subsequent clock pulses cause the data to shift through the register.

## Working Example
Let's consider the input sequence "1011" to demonstrate the SISO shift register's operation:

- **Initial State (Reset)**: Q3=0, Q2=0, Q1=0, Q0=0
- **1st Falling Edge**: Q3=1, Q2=0, Q1=0, Q0=0
- **2nd Falling Edge**: Q3=1, Q2=1, Q1=0, Q0=0
- **3rd Falling Edge**: Q3=1, Q2=1, Q1=1, Q0=0
- **4th Falling Edge**: Q3=1, Q2=1, Q1=1, Q0=1

This demonstrates how the input data "1011" is shifted through the register.

## Verilog Code
I have provided the required Design and Testbench files, please refer them.

## Truth Table
The truth table below illustrates the behavior of the SISO shift register for different clock pulses:

| Clock Pulse | Q3 | Q2 | Q1 | Q0 |
|-------------|----|----|----|----|
| Initial State (Reset) | 0 | 0 | 0 | 0 |
| 1st Falling Edge | 1 | 0 | 0 | 0 |
| 2nd Falling Edge | 1 | 1 | 0 | 0 |
| 3rd Falling Edge | 1 | 1 | 1 | 0 |
| 4th Falling Edge | 1 | 1 | 1 | 1 |

This README provides a comprehensive guide on the SISO shift register, offering both theoretical insights and practical examples. It's a valuable resource for understanding digital systems.
