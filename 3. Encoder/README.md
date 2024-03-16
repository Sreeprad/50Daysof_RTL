# Day 3: Encoder

Welcome to Day 3 of our learning journey! Today, we will delve into another essential component in digital circuit design: the Encoder. This README serves as a comprehensive guide to understand its operation, working principles, truth table, and Verilog implementation.

## Table of Contents
1. [Introduction to Encoder](#introduction-to-encoder)
2. [Operation and Diagram](#operation-and-diagram-encoder)
3. [Truth Table for Encoder](#truth-table-for-encoder)
4. [Verilog Implementation of Encoder](#verilog-implementation-of-encoder)

## Introduction to Encoder
An Encoder is a combinational logic circuit that converts one of 2^n input lines into a single output line, where n represents the number of input lines. It encodes the input into a binary representation.

## Operation and Diagram (Encoder)
The Encoder accepts multiple input lines and produces a binary output based on the active input line. It has \(2^n\) input lines and \(n\) output lines.

## Truth Table for Encoder
The truth table below illustrates the behavior of the Encoder for all possible input combinations:

| Input | Output |
|-------|--------|
| 000   | 00     |
| 001   | 01     |
| 010   | 10     |
| 011   | 11     |
| ...   | ...    |
| 111   | 111    |

## Verilog Implementation of Encoder
Please refer to the provided Design and Testbench files for the Verilog implementation of the Encoder.

This README provides a comprehensive guide on the Encoder, offering both theoretical insights and practical examples. It's a valuable resource for understanding digital encoding circuits.
