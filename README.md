# LFSR-Based Pseudo Random Number Generator

## Overview

This project implements a 4-bit Linear Feedback Shift Register (LFSR)-based Pseudo Random Number Generator using VHDL. The design demonstrates sequential logic behavior, feedback mechanisms, and pseudo-random sequence generation commonly used in digital systems, communication systems, and test-pattern generation.

The project was simulated and verified using the OSS CAD Suite workflow with waveform analysis support through GTKWave.

---

## Objective

To design and simulate a pseudo-random number generator using LFSR architecture and verify its functionality through waveform simulation and testbench validation.

---

## Project Architecture

The design consists of:

* 4-bit Shift Register
* XOR-based feedback logic
* Clock and reset control
* Sequential pseudo-random sequence generation

Primitive Polynomial Used:

```text
x⁴ + x + 1
```

Feedback Equation:

```text
feedback = reg(3) XOR reg(0)
```

---

## Working Principle

* The register is initialized using a non-zero seed value (`0001`).
* On every rising edge of the clock:

  * register bits shift sequentially,
  * XOR feedback is generated,
  * feedback bit is inserted into the register.
* This process generates a deterministic pseudo-random binary sequence.

---

## Tools & Technologies Used

* VHDL
* OSS CAD Suite
* Yosys
* GTKWave
* Digital System Design
* Testbench Verification

---

## Project Files

* `lfsr.vhd` → Main VHDL design file
* `output waveform.png` → Simulation waveform output
* `architecture.png` → LFSR architecture diagram
* `flowchart.pdf` → Detailed flowchart involving flip flops and feedback 

---

## Simulation & Verification

The project was verified using:

* waveform simulation,
* testbench validation,
* sequential output analysis.

GTKWave was used to analyze output waveforms and verify pseudo-random sequence generation behavior.

---



---
<img width="1600" height="349" alt="image" src="https://github.com/user-attachments/assets/eccd652c-b649-400f-9dda-e85107292453" />

<img width="964" height="841" alt="image" src="https://github.com/user-attachments/assets/ed08cdc3-ffd8-4e2c-a99d-a21622b7c41e" />

<img width="1600" height="865" alt="image" src="https://github.com/user-attachments/assets/996b0bb0-b98a-438a-84aa-c9e04d9fe1a1" />

## Applications

LFSRs are widely used in:

* Cryptography
* Communication Systems
* Built-In Self-Test (BIST)
* Digital Signal Processing
* Error Detection & Correction
* Test Pattern Generation

---

## Learning Outcomes

Through this project, I gained understanding of:

* shift register operations,
* feedback logic implementation,
* pseudo-random sequence generation,
* VHDL-based digital design flow,
* simulation and waveform analysis,
* testbench verification methodology.

---

## Author

Manvi Dhamija
B.Tech – Electronics & Communication Engineering

