# DAY 37: Priority Decoder

Welcome to the introduction to the Priority Decoder! In this document, we'll explore the theory behind the Priority Decoder, its operational aspects, a working example, and how it's implemented using Verilog.

## Table of Contents
1. [Introduction to Priority Decoder](#introduction-to-priority-decoder)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example](#working-example)
4. [Verilog Implementation](#verilog-implementation)
5. [Truth Table](#truth-table)
6. [Boolean Expressions](#boolean-expressions)

## Introduction to Priority Decoder
The Priority Decoder is a fundamental component in digital design, used to decode a binary input and activate a corresponding output based on the highest-priority active input. It efficiently decodes the highest-priority input into a binary representation.

## Operation 
The Priority Decoder operates by examining a binary input and activating the corresponding output based on the highest-priority active input. It typically employs a series of logic gates to determine the priority and activate the appropriate output line.


## Working Example
Let's illustrate the operation of the Priority Decoder with a detailed example:

- **Input Data**: 3 bits (I2 I1 I0)
- **Priority**: Input with the lowest index has the highest priority.

In this example, the Priority Decoder will activate the output corresponding to the input with the lowest index, indicating the highest-priority active input.

## Verilog Implementation
Implementing the Priority Decoder in Verilog requires careful consideration of the priority logic and decoding scheme. It involves defining the module with appropriate input and output ports and implementing the logic to activate the corresponding output based on the highest-priority active input.

## Truth Table
The truth table below provides a comprehensive overview of the behavior of the Priority Decoder for various input combinations:

| Inputs (I2-I0) | Output (3-bit binary) |
|----------------|-----------------------|
| 000            | 00000000              |
| 001            | 00000001              |
| 010            | 00000010              |
| 011            | 00000011              |
| 100            | 00000100              |
| 101            | 00000101              |
| 110            | 00000110              |
| 111            | 00000111              |

This truth table illustrates how the binary input is decoded into a binary representation based on the lowest-index active input, indicating the highest-priority input.

## Boolean Expressions
The Boolean expressions for the output bits of the Priority Decoder can be derived from the truth table as follows:

- Output bit 2 (Y2): \( Y2 = \overline{I2} \)
- Output bit 1 (Y1): \( Y1 = \overline{I1} \)
- Output bit 0 (Y0): \( Y0 = \overline{I0} \)

These Boolean expressions represent the logic required to activate the corresponding output based on the highest-priority active input.

Feel free to refer to this document for a comprehensive understanding of the Priority Decoder and its implementation in Verilog. If you have any further questions, don't hesitate to ask!