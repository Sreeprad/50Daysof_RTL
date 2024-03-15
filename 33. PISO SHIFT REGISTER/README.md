# Day 33: PISO Shift Register

Welcome to Day 33 of our learning journey! Today, we will delve into the Parallel-In Serial-Out (PISO) shift register. This README serves as a comprehensive guide to understand the PISO shift register, its operation, working example, and Verilog implementation.

## Table of Contents
1. [Introduction to PISO Shift Register](#introduction-to-piso-shift-register)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example](#working-example)
4. [Verilog Code](#verilog-code)
5. [Truth Table](#truth-table)

## Introduction to PISO Shift Register
The Parallel-In Serial-Out (PISO) shift register is a vital component in digital systems. It accepts data in parallel, loading it into internal memory elements before serially shifting it out.

## Operation:
The PISO shift register consists of flip-flops connected in series, forming a shift path. Upon each clock pulse, the data is loaded in parallel into the flip-flops, and subsequent clock pulses cause the data to shift out serially.

## Working Example
Let's consider the input parallel data "1101" to demonstrate the PISO shift register's operation:

- **Initial State (Reset)**: Q3=0, Q2=0, Q1=0, Q0=0
- **1st Rising Edge**: Q3=1, Q2=1, Q1=0, Q0=1
- **2nd Rising Edge**: Q3=0, Q2=1, Q1=1, Q0=0
- **3rd Rising Edge**: Q3=0, Q2=0, Q1=1, Q0=1
- **4th Rising Edge**: Q3=0, Q2=0, Q1=0, Q0=1

This demonstrates how the input data "1101" is loaded in parallel and then shifted out serially.

## Verilog Code
I have provided the necessary Design and Testbench files; please refer to them for the Verilog implementation.

## Truth Table
The truth table below illustrates the behavior of the PISO shift register for different clock pulses:

| Clock Pulse | Q3 | Q2 | Q1 | Q0 |
|-------------|----|----|----|----|
| Initial State (Reset) | 0 | 0 | 0 | 0 |
| 1st Rising Edge | 1 | 1 | 0 | 1 |
| 2nd Rising Edge | 0 | 1 | 1 | 0 |
| 3rd Rising Edge | 0 | 0 | 1 | 1 |
| 4th Rising Edge | 0 | 0 | 0 | 1 |

This README provides a comprehensive guide on the PISO shift register, offering both theoretical insights and practical examples. It's a valuable resource for understanding digital systems.