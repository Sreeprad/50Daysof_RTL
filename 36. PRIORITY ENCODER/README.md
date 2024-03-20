# DAY 36 : 8-Bit Priority Encoder

Welcome to the introduction to the 8-bit Priority Encoder! In this document, we'll explore the theory behind the Priority Encoder, its operational aspects, a working example, and how it's implemented using Verilog.

## Table of Contents
1. [Introduction to 8-Bit Priority Encoder](#introduction-to-8-bit-priority-encoder)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example](#working-example)
4. [Verilog Implementation](#verilog-implementation)
5. [Truth Table](#truth-table)
6. [Boolean Expressions](#boolean-expressions)

## Introduction to 8-Bit Priority Encoder
The 8-bit Priority Encoder is a crucial component in digital design, commonly employed in systems where multiple inputs need to be prioritized. It efficiently encodes the highest-priority active input into a binary representation.

## Operation and Diagram
The Priority Encoder operates by examining multiple inputs and generating a binary output corresponding to the highest-priority active input. It typically employs a series of logic gates to determine the priority and encode the input into binary form.

A typical diagram of an 8-bit Priority Encoder illustrates multiple input lines and a binary output representing the highest-priority active input.

## Working Example
Let's illustrate the operation of the 8-bit Priority Encoder with a detailed example:

- **Input Data**: 8 bits (I7 I6 I5 I4 I3 I2 I1 I0)
- **Priority**: Input with the highest index has the highest priority.

In this example, if multiple inputs are active simultaneously, the Priority Encoder will encode the input with the highest index into a binary representation.

## Verilog Implementation
Implementing the 8-bit Priority Encoder in Verilog requires careful consideration of the priority logic and encoding scheme. It involves defining the module with appropriate input and output ports and implementing the logic to detect the highest-priority active input.

## Truth Table
The truth table below provides a comprehensive overview of the behavior of the 8-bit Priority Encoder for various input combinations:

| Inputs (I7-I0) | Output (3-bit binary) |
|----------------|-----------------------|
| 00000000       | 000                   |
| 00000001       | 000                   |
| 00000010       | 001                   |
| 00000100       | 010                   |
| 00001000       | 011                   |
| 00010000       | 100                   |
| 00100000       | 101                   |
| 01000000       | 110                   |
| 10000000       | 111                   |
| 11111111       | 111                   |

This truth table illustrates how the inputs are encoded into a binary representation based on their priority, with the highest-priority active input being encoded into the output.

Feel free to refer to this document for a comprehensive understanding of the 8-bit Priority Encoder and its implementation in Verilog. If you have any further questions, don't hesitate to ask!