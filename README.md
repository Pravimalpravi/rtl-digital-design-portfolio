# RTL Digital Design Portfolio

A collection of fundamental digital hardware designs implemented and verified using SystemVerilog.

This repository documents the progression from basic combinational logic to arithmetic circuits, sequential logic, and finite-state machines.

## Contents

### Combinational Logic

- 2-to-4 Decoder
- 4-to-2 Encoder
- Half Adder
- Full Adder
- 4-bit Ripple-Carry Adder

### Sequential Logic

- 4-bit SISO Shift Register

### Finite-State Machines

- 1101 Sequence Detector

## Designs

### 2-to-4 Decoder

A combinational decoder that maps a 2-bit input to one of four mutually exclusive output lines.

### 4-to-2 Encoder

A combinational encoder that converts a one-hot 4-bit input into its corresponding 2-bit binary representation.

The design assumes that exactly one input is active at a time.

### Half Adder

A basic arithmetic circuit that adds two single-bit inputs and produces:

- Sum
- Carry

Implemented using XOR and AND logic.

### Full Adder

A one-bit full adder supporting two input bits and a carry-in.

The design was implemented hierarchically using two Half Adder modules and an OR gate.

### 4-bit Ripple-Carry Adder

A 4-bit adder constructed hierarchically from four Full Adder modules.

Carry propagates from the least significant bit to the most significant bit.

The design was exhaustively verified across all 256 possible combinations of two 4-bit inputs.

### 4-bit SISO Shift Register

A 4-bit serial-in serial-out shift register implemented using edge-triggered sequential logic.

The design demonstrates:

- D flip-flop based storage
- Serial data input
- Clock-controlled data movement
- Bit-to-bit data propagation

### 1101 Sequence Detector

A finite-state-machine based sequence detector that detects the bit pattern `1101`.

The design uses a Mealy FSM with overlapping sequence detection.

The implementation demonstrates:

- State encoding using SystemVerilog enumerations
- State register
- Next-state combinational logic
- Mealy output logic
- Synchronous active-low reset
- Testbench-based verification
- Waveform analysis

## Design Approach

The designs use different RTL modeling approaches depending on the structure of the hardware:

- Dataflow modeling
- Behavioral modeling
- Structural modeling
- Hierarchical module composition

The goal is to understand the underlying digital logic and hardware behavior before describing it using SystemVerilog.

## Verification

Each design includes a SystemVerilog testbench for functional verification.

Verification techniques used throughout the portfolio include:

- Directed test cases
- Exhaustive input testing where practical
- Automated pass/fail checking
- Simulation
- Waveform analysis
- Debugging using signal-level behavior

## Tools

- SystemVerilog
- Icarus Verilog
- EDA Playground
- EPWave

## Learning Focus

This portfolio was developed to strengthen understanding of:

- Boolean logic
- Combinational digital circuits
- Arithmetic circuits
- Sequential logic
- Registers and shift registers
- Hierarchical RTL design
- Finite-state machines
- Moore and Mealy concepts
- SystemVerilog RTL coding
- Testbench development
- Functional verification
- Waveform-based debugging

## Repository Structure

    2:4 decoder/
    4:2 Encoder/
    Half_adder/
    Full_adder/
    4bit_ripple_carry_adder/
    4bit_shift_register/
    FSM 1101/
    README.md

Each design contains its corresponding SystemVerilog implementation and testbench.
