# Day 5: Multiplexer (MUX)

Welcome to Day 5 of our learning journey! Today, we will explore Multiplexers (MUX). This README serves as a comprehensive guide to understanding MUX, its operation, working example, Verilog implementation, and includes a truth table.

## Table of Contents
1. [Introduction to Multiplexer (MUX)](#introduction-to-multiplexer-mux)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example](#working-example)
4. [Verilog Implementation](#verilog-implementation)
5. [Applications](#applications)
6. [Truth Table](#truth-table)

## Introduction to Multiplexer (MUX)
A Multiplexer, commonly referred to as MUX, is a digital circuit that selects one of several input signals and forwards it to a single output line. MUX is a fundamental building block in digital systems, used for data routing, signal selection, and control logic.

## Operation and Diagram
A Multiplexer operates based on a select signal that determines which input is routed to the output. It consists of multiple data input lines, one output line, and select lines to control the data routing.

A typical diagram of a Multiplexer illustrates its input lines, select lines, and the output line.

## Working Example
Let's consider a 4-to-1 MUX to demonstrate its operation:

- **Input Signals (D0, D1, D2, D3)**: 1010
- **Select Signal (S)**: 01
- **Output Signal (Y)**: 0

In this example, the 4-to-1 MUX selects input signal D1 based on the select signal 01 and forwards it to the output line Y.

## Verilog Implementation
Implementing a Multiplexer in Verilog involves defining the logic for selecting the appropriate input based on the select signal. Please refer to the provided Design and Testbench files for a detailed Verilog implementation.

## Applications
Multiplexers find applications in various digital systems, including:
- Data multiplexing in communication systems
- Address selection in memory access
- Input selection in arithmetic and logic units (ALU)
- Control signal generation in microprocessors

Understanding Multiplexers is essential for digital system designers as they play a crucial role in data processing and control logic.

## Truth Table
Below is the truth table for a 4-to-1 Multiplexer (MUX):

| Select (S1 S0) | Input D0 | Input D1 | Input D2 | Input D3 | Output Y |
|-----------------|----------|----------|----------|----------|----------|
| 00              | D0       | D0       | D0       | D0       | D0       |
| 01              | D1       | D1       | D1       | D1       | D1       |
| 10              | D2       | D2       | D2       | D2       | D2       |
| 11              | D3       | D3       | D3       | D3       | D3       |

In the truth table above:
- The `Select` column represents the select lines of the MUX.
- The `Input D0`, `Input D1`, `Input D2`, and `Input D3` columns represent the possible input signals.
- The `Output Y` column represents the output signal selected based on the select lines.