# SPWM (Sinusoidal Pulse Width Modulation) Generator - Verilog on Basys 3

## 🧠 Project Overview

This project implements a **Sinusoidal Pulse Width Modulation (SPWM) generator** using Verilog HDL on the **Basys 3 FPGA development board**. SPWM is commonly used in inverter circuits for AC motor control and efficient power conversion. The design generates a PWM signal whose duty cycle varies sinusoidally, mimicking a sine wave.

---

## 📌 Features

- Generates high-frequency PWM with sinusoidal modulation
- Adjustable frequency and resolution via Verilog parameters
- Real-time waveform generation suitable for motor control
- FPGA-optimized design with precise timing using the system clock

---

## 🔧 Hardware and Tools Used

- 🧠 **FPGA Board:** Basys 3 (Artix-7 FPGA)
- 🛠️ **Toolchain:** Vivado Design Suite (version 2023.2)
- 📜 **Language:** Verilog HDL
- ⏱️ **Clock:** 100 MHz onboard clock used for timing

---

## 🛠️ Implementation Details

### 1. **Sine Lookup Table**
- A precomputed sine table stored in a ROM
- 256 samples for one sine wave cycle (can be modified)
- Used to modulate the duty cycle of the PWM

### 2. **PWM Generator Logic**
- Compares sine value with a high-frequency counter
- Outputs a `1` when counter < sine value, else `0`

### 3. **Clock Divider**
- Converts 100 MHz clock to desired frequency for sine sampling
- Parameterized for flexibility

---


