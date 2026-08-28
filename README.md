# Signed 4-bit Calculator

A combinational signed 4-bit calculator implemented and verified using **Verilog HDL** and **Xilinx Vivado**.

---

## Overview

The calculator performs four signed arithmetic operations:

- Addition
- Subtraction
- Multiplication
- Division

It also includes a **division-by-zero detection** output.

---

## Operations

| OP | Operation |
|:--:|:---------|
| `00` | Addition |
| `01` | Subtraction |
| `10` | Multiplication |
| `11` | Division |

---

## Design Specifications

| Parameter | Specification |
|-----------|---------------|
| Input A | Signed 4-bit |
| Input B | Signed 4-bit |
| Operation Select | 2-bit |
| Result | Signed 8-bit |
| Division-by-Zero Flag | 1-bit |
| Design Type | Combinational |

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Vivado Behavioral Simulation
- Xilinx ISE

---

## Verification

A Verilog testbench was developed to verify:

- Addition
- Subtraction
- Negative arithmetic
- Multiplication
- Division
- Division by zero

The design was functionally verified using **Vivado behavioral simulation**.

---

## RTL Schematic

The calculator architecture was analyzed using an RTL/hardware schematic to visualize the arithmetic blocks and output selection.

![RTL Schematic](schematic/signed_calculator_rtl_schematic.png)

---

## Simulation Waveform

The Vivado behavioral simulation waveform demonstrates the calculator response for multiple signed arithmetic operations, including negative results and division-by-zero handling.

![Simulation Waveform](waveform/signed_calculator_waveform.png)

---

## Project Structure

```text
signed-4bit-calculator/
│
├── signed_4bit_calculator.v
├── tb_signed_4bit_calculator.v
│
├── waveform/
│   └── signed_calculator_waveform.png
│
├── schematic/
│   └── signed_calculator_rtl_schematic.png
│
└── README.md
