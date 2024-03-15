# Day 2: Half Subtractor and Full Subtractor

Welcome to Day 2 of our learning journey! Today, we will explore two fundamental components in digital circuit design: the Half Subtractor and the Full Subtractor. This README serves as a comprehensive guide to understand their operation, working principles, truth tables, and Verilog implementations.

## Table of Contents
1. [Introduction to Half Subtractor](#introduction-to-half-subtractor)
2. [Operation and Diagram](#operation-and-diagram)
3. [Truth Table for Half Subtractor](#truth-table-for-half-subtractor)
4. [Verilog Implementation of Half Subtractor](#verilog-implementation-of-half-subtractor)
5. [Introduction to Full Subtractor](#introduction-to-full-subtractor)
6. [Operation and Diagram](#operation-and-diagram-full-subtractor)
7. [Truth Table for Full Subtractor](#truth-table-for-full-subtractor)
8. [Verilog Implementation of Full Subtractor](#verilog-implementation-of-full-subtractor)

## Introduction to Half Subtractor
A Half Subtractor is a combinational logic circuit that performs subtraction of two bits, producing the difference (D) and borrow (B) outputs.

## Operation and Diagram
The Half Subtractor consists of two inputs: minuend (A) and subtrahend (B). It produces two outputs: difference (D) and borrow (B).

- **Difference (D)**: Represents the result of the subtraction A - B.
- **Borrow (B)**: Indicates whether borrowing is required during subtraction.

## Truth Table for Half Subtractor
The truth table below illustrates the behavior of the Half Subtractor for all possible input combinations:

| A | B | D | B |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |

## Verilog Implementation of Half Subtractor
Please refer to the provided Design and Testbench files for the Verilog implementation of the Half Subtractor.

## Introduction to Full Subtractor
A Full Subtractor is an extension of the Half Subtractor that can perform subtraction of three bits, considering the previous borrow (if any).

## Operation and Diagram (Full Subtractor)
The Full Subtractor takes three inputs: minuend (A), subtrahend (B), and borrow in (Bin). It produces two outputs: difference (D) and borrow out (Bout).

- **Difference (D)**: Represents the result of the subtraction A - B - Bin.
- **Borrow out (Bout)**: Indicates whether borrowing is required during subtraction.

## Truth Table for Full Subtractor
The truth table below illustrates the behavior of the Full Subtractor for all possible input combinations:

| A | B | Bin | D | Bout |
|---|---|-----|---|------|
| 0 | 0 | 0   | 0 | 0    |
| 0 | 0 | 1   | 1 | 1    |
| 0 | 1 | 0   | 1 | 1    |
| 0 | 1 | 1   | 0 | 1    |
| 1 | 0 | 0   | 1 | 0    |
| 1 | 0 | 1   | 0 | 0    |
| 1 | 1 | 0   | 0 | 0    |
| 1 | 1 | 1   | 1 | 1    |

## Verilog Implementation of Full Subtractor
Please refer to the provided Design and Testbench files for the Verilog implementation of the Full Subtractor.

This README provides a comprehensive guide on the Half Subtractor and Full Subtractor, offering both theoretical insights and practical examples. It's a valuable resource for understanding digital subtraction circuits.