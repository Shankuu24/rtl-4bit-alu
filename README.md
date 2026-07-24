# 🚀 4-Bit Arithmetic Logic Unit (ALU) using Verilog HDL

> A modular RTL implementation of a 4-bit Arithmetic Logic Unit (ALU) designed in Verilog HDL and verified using Xilinx Vivado.

---

# 📖 Overview

This project implements a **4-bit Arithmetic Logic Unit (ALU)** using Verilog HDL. The design is developed using a modular approach, where arithmetic, logic, and multiplexing operations are implemented as separate reusable modules.

The objective of this project is to strengthen the fundamentals of **RTL Design**, **Digital Logic Design**, and **Processor Datapath Design**.

The ALU performs arithmetic and logical operations based on a 3-bit opcode and demonstrates hierarchical Verilog design.

---

# ✨ Features

- 4-bit Arithmetic Logic Unit
- Modular RTL Design
- Ripple Carry Adder based arithmetic unit
- Logic Unit
- Multiplexer based output selection
- Verilog Testbench
- Functional Simulation using Xilinx Vivado

---

# 🏗️ ALU Architecture

```
                 +----------------------+
                 |      ALU TOP         |
                 +----------------------+
                     │
        ┌────────────┼────────────┐
        │                         │
        ▼                         ▼
+----------------+       +----------------+
| Arithmetic Unit|       |   Logic Unit   |
+----------------+       +----------------+
        │                         │
        └────────────┬────────────┘
                     ▼
             +---------------+
             | 8:1 MUX       |
             +---------------+
                     │
                     ▼
                  Result
```

---

# 📂 Project Structure

```
rtl-4bit-alu/

│
├── rtl/
│   ├── alu_top.v
│   ├── arithmetic_unit.v
│   ├── logic_unit.v
│   ├── ripple_carry_adder.v
│   ├── full_adder.v
│   ├── mux2to1.v
│   ├── mux4to1_4bit.v
│   └── mux8to1_4bit.v
│
├── testbench/
│   └── tb_alu.v
│
├── waveforms/
│   ├── addition.png
│   ├── subtraction.png
│   ├── and_operation.png
│   ├── or_operation.png
│   └── xor_operation.png
│
├── docs/
│   └── ALU_Block_Diagram.png
│
└── README.md
```

---

# ⚙️ Operation Table

| Opcode | Operation |
|---------|-----------|
|000|Addition|
|001|Subtraction|
|010|AND|
|011|OR|
|100|XOR|
|101|NOT A|
|110|Pass A|
|111|Pass B|

*(Modify according to your implementation.)*

---

# 🔄 Data Flow

```
Input A
        \
         \
          ---> Arithmetic Unit ----\
                                     \
Input B -------------------------------> 8:1 MUX ----> Result
                                     /
Opcode ------------------------------/
                                     \
                                      --> Logic Unit
```

---

# 🧩 RTL Modules

## 1. Full Adder

Performs single-bit addition.

### Inputs

- A
- B
- Cin

### Outputs

- Sum
- Cout

---

## 2. Ripple Carry Adder

Implements 4-bit addition using four Full Adders.

---

## 3. Arithmetic Unit

Supports

- Addition
- Subtraction

using two's complement arithmetic.

---

## 4. Logic Unit

Supports

- AND
- OR
- XOR
- NOT

---

## 5. Multiplexers

Used to select the required ALU output based on opcode.

---

## 6. ALU Top

Integrates all modules into a complete Arithmetic Logic Unit.

---

# 🧪 Verification

Simulation was performed using **Xilinx Vivado**.

Verification includes

- Addition
- Subtraction
- Logical Operations
- Carry Verification

---

# 📈 Simulation Results

## Addition

![Addition](waveforms/addition.png)

---

## Subtraction

![Subtraction](waveforms/subtraction.png)

---

## AND

![AND](waveforms/and_operation.png)

---

## OR

![OR](waveforms/or_operation.png)

---

## XOR

![XOR](waveforms/xor_operation.png)

---

# 🛠️ Tools Used

- Verilog HDL
- Xilinx Vivado
- Git
- GitHub

---

# 📚 Digital Design Concepts Used

- Combinational Logic
- Hierarchical RTL Design
- Ripple Carry Adder
- Multiplexer
- Two's Complement Arithmetic
- Logic Gates
- Modular Hardware Design

---

# 🚀 Future Improvements

This repository is part of my RTL Design learning roadmap.

Upcoming projects include:

- Register Design
- Register File
- SRAM Controller
- FIFO
- UART
- AXI Interface
- Cache Controller
- Simple RISC Processor

---

# 👨‍💻 About Me

**Shankar Vijayakumar**

Final Year Electrical & Electronics Engineering Student

Interested in:

- RTL Design
- Logic Design
- Processor Architecture
- VLSI
- FPGA Design

LinkedIn:
https://linkedin.com/in/shankar-v-2b06b224b

Email:
vijayshankar12122401@gmail.com

---

# ⭐ If you found this project interesting, feel free to star the repository!
