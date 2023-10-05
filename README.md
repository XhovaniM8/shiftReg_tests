# Shift Register Test for SPI Write Cycles

## Table of Contents

- [Introduction](#introduction)
- [Project Description](#project-description)
- [Design Overview](#design-overview)
- [Target Devices](#target-devices)
- [Getting Started](#getting-started)
- [Contributors](#contributors)
- [License](#license)

---

## Introduction

The "shiftReg_tests" project is a Verilog module designed for use with the Arty S7-25 FPGA development board. It serves as a testbench for shift registers in Verilog and is intended for the implementation of Lenovo SPI write cycles. This project is a starting point for experimenting with shift registers and can be adapted for various applications.

---

## Project Description

- **Module Name**: shiftReg
- **Engineer**: Xhovani Mali
- **Create Date**: 06/14/2022 01:23:29 PM

The `shiftReg` module is a Verilog implementation of a shift register. It takes in the following inputs:

- `clk`: Clock signal for synchronization.
- `reset`: Reset signal to clear the shift register.
- `s_in`: Input data to be shifted into the register.
- `s_out`: Output data from the register.

The shift register has a parameter `N` that defines its width, which is set to 8 by default (`parameter N=8`). The shift register operates on the rising edge of the clock signal and can be reset by the `reset` signal.

---

## Design Overview

The `shiftReg` module is designed as follows:

- It uses an `N`-bit wide register `r_reg` to store the shift register's contents.
- The `r_next` wire represents the next state of the register and is computed based on the input data (`s_in`) and the current register contents (`r_reg`).
- The output `s_out` is connected to the least significant bit (LSB) of the register, providing the shifted-out data.

---

## Target Devices

This project is designed for the Arty S7-25 FPGA development board.

---

## Getting Started

To use this project as a testbench for shift registers, follow these steps:

1. Set up your FPGA development environment.
2. Create a new project and add the `shiftReg` module to your project.
3. Connect the clock signal (`clk`), reset signal (`reset`), input data (`s_in`), and output data (`s_out`) to appropriate sources.
4. Customize the width of the shift register by modifying the `N` parameter if needed.
5. Compile the project and program it onto your Arty S7-25 board.

---

## Contributors

- [Xhovani Mali](mailto:your.email@example.com)

---

## License

[Specify the license information for your project here.]

---

Feel free to modify this README to include additional details, such as specific tool versions or licensing information, and tailor it to your project's needs. Enjoy experimenting with shift registers and Verilog for your Lenovo SPI write cycle implementation!
