# Day 7: Comparators

Welcome to Day 7 of our learning journey! Today, we will dive into Comparators, essential components in digital circuits used for comparing two binary numbers. This README serves as a comprehensive guide to understanding comparators, their operation, working examples, Verilog implementation, and includes truth tables.

## Table of Contents
1. [Introduction to Comparators](#introduction-to-comparators)
2. [Operation and Diagram](#operation-and-diagram)
3. [Working Example - 2-bit Comparator](#working-example-2-bit-comparator)
4. [Working Example - 4-bit Comparator](#working-example-4-bit-comparator)
5. [Verilog Implementation](#verilog-implementation)
6. [Applications](#applications)
7. [Truth Tables](#truth-tables)

## Introduction to Comparators
A Comparator is a digital circuit used to compare two binary numbers and determine their relationship, such as equality, less than, or greater than.

## Operation and Diagram
Comparators typically have two inputs, A and B, and multiple output signals indicating the result of the comparison (e.g., equal, less than, greater than). The internal logic of comparators varies based on the comparison operation required.

A typical diagram of a Comparator illustrates its input lines (A and B) and output signals indicating the comparison result.

## Working Example - 2-bit Comparator
Let's consider a 2-bit Comparator to compare two binary numbers:

- **Input A**: 01
- **Input B**: 10
- **Output Signals**: 
  - Equal: 0
  - Less than: 1
  - Greater than: 0

In this example, the 2-bit Comparator compares the binary numbers 01 and 10 and determines that A is less than B.

## Working Example - 4-bit Comparator
Now, let's consider a 4-bit Comparator to compare two 4-bit binary numbers:

- **Input A**: 1101
- **Input B**: 1010
- **Output Signals**: 
  - Equal: 0
  - Less than: 0
  - Greater than: 1

In this example, the 4-bit Comparator compares the binary numbers 1101 and 1010 and determines that A is greater than B.

## Verilog Implementation
Implementing comparators in Verilog involves defining the logic for comparing the input signals and generating the appropriate output signals based on the comparison result. Please refer to the provided Design and Testbench files for detailed Verilog implementations.

## Applications
Comparators find applications in various digital systems, including:
- Arithmetic operations in processors and ALU units
- Address comparison in memory access
- Sorting algorithms in computer science
- Control logic in digital signal processing

## Truth Tables
Below are the truth tables for the 2-bit and 4-bit comparators:

### 2-bit Comparator Truth Table:
| Input A (MSB) | Input A (LSB) | Input B (MSB) | Input B (LSB) | Equal | Less than | Greater than |
|---------------|----------------|---------------|----------------|-------|-----------|--------------|
|       0       |       0        |       0       |       0        |   1   |     0     |       0      |
|       0       |       0        |       0       |       1        |   0   |     1     |       0      |
|       0       |       0        |       1       |       0        |   0   |     0     |       1      |
|       0       |       0        |       1       |       1        |   1   |     0     |       0      |
|       0       |       1        |       0       |       0        |   0   |     1     |       0      |
|       0       |       1        |       0       |       1        |   1   |     0     |       0      |
|       0       |       1        |       1       |       0        |   0   |     0     |       1      |
|       0       |       1        |       1       |       1        |   0   |     0     |       1      |
|       1       |       0        |       0       |       0        |   0   |     0     |       1      |
|       1       |       0        |       0       |       1        |   0   |     0     |       1      |
|       1       |       0        |       1       |       0        |   1   |     0     |       0      |
|       1       |       0        |       1       |       1        |   0   |     1     |       0      |
|       1       |       1        |       0       |       0        |   0   |     0     |       1      |
|       1       |       1        |       0       |       1        |   0   |     0     |       1      |
|       1       |       1        |       1       |       0        |   0   |     0     |       1      |
|       1       |       1        |       1       |       1        |   1   |     0     |       0      |

### 4-bit Comparator Truth Table:
| Input A (MSB) | Input A (Bit 3) | Input A (Bit 2) | Input A (Bit 1) | Input A (LSB) | Input B (MSB) | Input B (Bit 3) | Input B (Bit 2) | Input B (Bit 1) | Input B (LSB) | Equal | Less than | Greater than |
|---------------|------------------|------------------|------------------|----------------|---------------|------------------|------------------|------------------|----------------|-------|-----------|--------------|
|       0       |        0         |        0         |        0         |        0       |       0       |        0         |        0         |        0         |        0       |   1   |     0     |       0      |
|       0       |        0         |        0         |        0         |        1       |       0       |        0         |        0         |        0         |        0       |   0   |     0     |       1      |
|       0       |        0         |        0         |        1         |        0       |       0       |        0         |        0         |        0         |        0       |   0   |     1     |       0      |
|       0       |        0         |        0         |        1         |        1       |       0       |        0         |        0         |        0         |        0       |   0   |     0     |       1      |
|       0       |        0         |        1         |        0         |        0       |       0       |        0         |        0         |        0         |        0       |   0   |     1     |       0      |
|       0       |        0         |        1         |        0         |        1       |       0       |        0         |        0         |        0         |        0       |   0   |     0     |       1      |
|       0       |        0         |        1         |        1         |        0       |       0       |        0         |        0         |        0         |        0       |   0   |     1     |       0      |
|       0       |        0         |        1         |        1         |        1       |       0       |        0         |        0         |        0         |        0       |   0   |     0     |       1      |
|       0       |        1         |        0         |        0         |        0       |       0       |        0         |        0         |        0         |        0       |   0   |     1     |       0      |
|       0       |        1         |        0         |        0         |        1       |       0       |        0         |        0         |        0         |        0       |   0   |     0     |       1      |
|       0       |        1         |        0         |        1         |        0       |       0       |        0         |        0         |        0         |        0       |   0   |     1     |       0      |
|       0       |        1         |        0         |        1         |        1       |       0       |        0         |        0         |        0         |        0       |   0   |     0     |       1      |
|       0       |        1         |        1         |        0         |        0       |       0       |        0         |        0         |        0         |        0       |   0   |     1     |       0      |
|       0       |        1         |        1         |        0         |        1       |       0       |        0         |        0         |        0         |        0       |   0   |     0     |       1      |
|       0       |        1         |        1         |        1         |        0       |       0       |        0         |        0         |        0         |        0       |   0   |     1     |       0      |

In the truth tables above:
- The `Equal`, `Less than`, and `Greater than` columns represent the comparison result based on the inputs A and B.

Feel free to explore further and experiment with comparators to deepen your understanding of digital circuit design!