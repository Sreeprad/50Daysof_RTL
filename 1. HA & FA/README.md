
# DAY 1: Half Adder and Full Adder

Welcome to this comprehensive guide on Half Adders and Full Adders. This README covers the theory, operation, Verilog implementation, and examples of both Half Adders and Full Adders.

## Table of Contents
1. [Introduction to Half Adder](#introduction-to-half-adder)
2. [Operation and Diagram](#operation-and-diagram-half-adder)
3. [Verilog Code for Half Adder](#verilog-code-for-half-adder)
4. [Truth Table for Half Adder](#truth-table-for-half-adder)
5. [Introduction to Full Adder](#introduction-to-full-adder)
6. [Operation and Diagram](#operation-and-diagram-full-adder)
7. [Verilog Code for Full Adder](#verilog-code-for-full-adder)
8. [Truth Table for Full Adder](#truth-table-for-full-adder)

## Introduction to Half Adder
A Half Adder is a combinational logic circuit that performs the addition of two bits: A and B. It produces two outputs: the sum (S) and the carry (C). The truth table for a Half Adder is as follows:

| A | B | S | C |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

## Operation and Diagram (Half Adder)
The operation of a Half Adder is simple. It performs the XOR operation on the input bits to generate the sum and performs the AND operation to generate the carry. 


## Verilog Code for Half Adder
The Verilog code for the Half Adder module is provided in the file `HA.v`.

## Truth Table for Half Adder
The truth table for the Half Adder has been provided above.

## Introduction to Full Adder
A Full Adder is a combinational logic circuit that performs the addition of three bits: A, B, and an incoming carry, Cin. It produces two outputs: the sum (S) and the carry out (Cout). The truth table for a Full Adder is as follows:

| A | B | Cin | S | Cout |
|---|---|-----|---|------|
| 0 | 0 | 0   | 0 | 0    |
| 0 | 0 | 1   | 1 | 0    |
| 0 | 1 | 0   | 1 | 0    |
| 0 | 1 | 1   | 0 | 1    |
| 1 | 0 | 0   | 1 | 0    |
| 1 | 0 | 1   | 0 | 1    |
| 1 | 1 | 0   | 0 | 1    |
| 1 | 1 | 1   | 1 | 1    |

## Operation and Diagram (Full Adder)
The operation of a Full Adder involves combining two Half Adders along with an additional OR gate. Below is a schematic diagram illustrating the operation of a Full Adder:

![Full Adder Diagram](full_adder_diagram.png)

## Verilog Code for Full Adder
The Verilog code for the Full Adder module is provided in the file `FA.v`.

## Truth Table for Full Adder
The truth table for the Full Adder has been provided above.

This README provides a comprehensive guide on both Half Adders and Full Adders, including their theory, operation, Verilog implementation, and examples. It's a valuable resource for understanding digital arithmetic circuits.
