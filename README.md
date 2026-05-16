# LFSR-Based Pseudo Random Number Generator

## Overview

This project implements a 4-bit Linear Feedback Shift Register (LFSR)-based Pseudo Random Number Generator using VHDL. The design demonstrates sequential logic behavior, feedback mechanisms, and pseudo-random sequence generation commonly used in digital systems and communication applications.

---

## Objective

To design and simulate a pseudo-random number generator using LFSR architecture and verify its behavior using waveform simulation and testbench validation.

---

## Project Architecture

The design consists of:

* 4 D Flip-Flops connected as a shift register
* XOR feedback logic
* Clock and reset control
* Sequential shifting operation for pseudo-random sequence generation

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

* The register is initialized with a non-zero seed value (`0001`).
* On every rising clock edge:

  * bits are shifted sequentially,
  * feedback is generated using XOR logic,
  * the feedback bit is inserted into the register.
* This process generates a repeating pseudo-random sequence.

---

## Technologies & Tools Used

* VHDL
* OSS CAD Suite
* Yosys
* GTKWave
* Digital System Design
* Testbench Verification


---

## Files Included

* `lfsr_prng.vhd` → Main VHDL source code
* `tb_lfsr.vhd` → Testbench code
* `waveform.png` → Simulation waveform output
* `report.pdf` → Project report and architecture diagrams

---

## Simulation & Verification

The design was verified using:

* clock-driven simulation,
* waveform analysis,
* testbench validation techniques.

The waveform output confirms the sequential generation of pseudo-random binary sequences.

---
<img width="1600" height="349" alt="image" src="https://github.com/user-attachments/assets/eccd652c-b649-400f-9dda-e85107292453" />

<img width="964" height="841" alt="image" src="https://github.com/user-attachments/assets/ed08cdc3-ffd8-4e2c-a99d-a21622b7c41e" />

<img width="1600" height="865" alt="image" src="https://github.com/user-attachments/assets/996b0bb0-b98a-438a-84aa-c9e04d9fe1a1" />



## Applications

LFSRs are widely used in:

* Cryptography
* Communication Systems
* Digital Signal Processing
* Built-In Self-Test (BIST)
* Error Detection & Correction
* Test Pattern Generation

---

## Learning Outcomes

Through this project, I gained understanding of:

* shift register operations,
* feedback logic implementation,
* pseudo-random sequence generation,
* VHDL-based digital design,
* simulation and verification flow.

---

## Author

Manvi Dhamija
B.Tech – Electronics & Communication Engineering
