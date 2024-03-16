# Day 4: Decoder

Welcome to Day 4 of our learning journey! Today, we will continue our exploration of fundamental components in digital circuit design with a focus on the Decoder. This README serves as a comprehensive guide to understand its operation, working principles, truth table, and Verilog implementation.

## Table of Contents
1. [Introduction to Decoder](#introduction-to-decoder)
2. [Operation and Diagram](#operation-and-diagram-decoder)
3. [Truth Table for Decoder](#truth-table-for-decoder)
4. [Verilog Implementation of Decoder](#verilog-implementation-of-decoder)

## Introduction to Decoder
A Decoder is a combinational logic circuit that takes binary input and activates one of its \(2^n\) output lines based on the input value. It essentially performs the opposite function of an Encoder.

## Operation and Diagram (Decoder)
The Decoder accepts a binary input and activates one of its output lines based on the binary value of the input. It typically has \(n\) input lines and \(2^n\) output lines.

## Truth Table for Decoder
The truth table below illustrates the behavior of the Decoder for all possible input combinations:

| Input | Output |
|-------|--------|
| 00    | 0001   |
| 01    | 0010   |
| 10    | 0100   |
| 11    | 1000   |

## Verilog Implementation of Decoder
Please refer to the provided Design and Testbench files for the Verilog implementation of the Decoder.

This README provides a comprehensive guide on the Decoder, offering both theoretical insights and practical examples. It's a valuable resource for understanding digital decoding circuits.