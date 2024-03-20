# DAY 39: Edge Detectors

Welcome to the introduction to edge detectors! In this document, we'll explore the theory behind edge detection, its operational aspects, working examples, and how to implement positive and negative edge detectors.

## Table of Contents
1. [Introduction to Edge Detectors](#introduction-to-edge-detectors)
2. [Positive Edge Detector](#positive-edge-detector)
3. [Negative Edge Detector](#negative-edge-detector)
4. [Verilog Implementation](#verilog-implementation)
5. [Truth Tables](#truth-tables)
6. [Boolean Expressions](#boolean-expressions)

## Introduction to Edge Detectors
Edge detectors are fundamental components in digital design used to detect transitions in signals, such as rising or falling edges. They play a crucial role in various applications where detecting these transitions is essential, such as in synchronization, timing, and data sampling.

## Positive Edge Detector
A positive edge detector detects the rising edges in a signal. It generates an output signal when the input signal transitions from low to high.

## Negative Edge Detector
A negative edge detector detects the falling edges in a signal. It generates an output signal when the input signal transitions from high to low.

## Verilog Implementation
I have added the Verilog codes for both positive and negative edge detectors. Please refer to the provided Verilog files for detailed implementation.

## Truth Tables
The truth tables below provide a comprehensive overview of the behavior of the edge detectors for various input signal combinations:

### Positive Edge Detector
| SIG | CLK | PE |
|-----|-----|----|
| 0   | ↑   | 0  |
| 1   | ↑   | 1  |
| 0   | ↑   | 0  |
| 1   | ↑   | 0  |

### Negative Edge Detector
| SIG | CLK | NE |
|-----|-----|----|
| 0   | ↓   | 0  |
| 1   | ↓   | 0  |
| 0   | ↓   | 1  |
| 1   | ↓   | 0  |

These truth tables illustrate how the edge detectors behave based on the input signal, indicating the detection of positive and negative edges.

## Boolean Expressions
The Boolean expressions for the edge detectors can be derived based on the desired operation:

- Positive Edge Detector (PE): \( PE = \text{SIG} \land \text{~SIG_DLY} \)
- Negative Edge Detector (NE): \( NE = \text{~SIG} \land \text{SIG_DLY} \)

These Boolean expressions represent the logic required to detect positive and negative edges in the input signal using combinational logic.

Feel free to refer to this document for a comprehensive understanding of edge detectors and their implementation. If you have any further questions, don't hesitate to ask!