# Day 6: Demultiplexer (DEMUX)

Welcome to Day 6 of our learning journey! Today, we will delve into Demultiplexers (DEMUX). This README serves as a comprehensive guide to understanding DEMUX, its operation, working example, Verilog implementation, and includes a truth table.

## Table of Contents
1. [Introduction to Demultiplexer (DEMUX)](#introduction-to-demultiplexer-demux)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example](#working-example)
4. [Verilog Implementation](#verilog-implementation)
5. [Applications](#applications)
6. [Truth Table](#truth-table)

## Introduction to Demultiplexer (DEMUX)
A Demultiplexer, commonly referred to as DEMUX, is a digital circuit that takes a single input line and distributes it to one of several output lines based on the control signals.

## Operation and Diagram
A Demultiplexer operates opposite to a Multiplexer. It takes a single input and routes it to one of the output lines based on the select signal. The select signal determines which output line receives the input.

A typical diagram of a Demultiplexer illustrates its input line, select lines, and multiple output lines.

## Working Example
Let's consider a 1-to-4 DEMUX to demonstrate its operation:

- **Input Signal (D)**: 1
- **Select Signals (S1 S0)**: 10
- **Output Signals (Y0, Y1, Y2, Y3)**: 0100

In this example, the 1-to-4 DEMUX takes the input signal 1 and distributes it to the output line Y1 based on the select signal 10.

## Verilog Implementation
Implementing a Demultiplexer in Verilog involves defining the logic for selecting the appropriate output based on the select signal. Please refer to the provided Design and Testbench files for a detailed Verilog implementation.

## Applications
Demultiplexers find applications in various digital systems, including:
- Memory addressing in RAM modules
- Signal demultiplexing in communication systems
- Data distribution in parallel processing systems
- Instruction decoding in microprocessors

Understanding Demultiplexers is crucial for digital system designers as they play a vital role in signal distribution and control logic.

## Truth Table
Below is the truth table for a 1-to-4 Demultiplexer (DEMUX):

| Select (S1 S0) | Input D | Output Y0 | Output Y1 | Output Y2 | Output Y3 |
|-----------------|---------|-----------|-----------|-----------|-----------|
| 00              | 1       | 1         | 0         | 0         | 0         |
| 01              | 1       | 0         | 1         | 0         | 0         |
| 10              | 1       | 0         | 0         | 1         | 0         |
| 11              | 1       | 0         | 0         | 0         | 1         |

In the truth table above:
- The `Select` column represents the select lines of the DEMUX.
- The `Input D` column represents the single input signal.
- The `Output Y0`, `Output Y1`, `Output Y2`, and `Output Y3` columns represent the possible output signals selected based on the select lines.

Feel free to explore further and experiment with Demultiplexers to deepen your understanding of digital circuit design!