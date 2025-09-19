# RISC-V SoC Tapeout – Week 0

## 🚩 Getting Started with Digital VLSI SoC Design and Planning

![Chip Modeling](https://github.com/user-attachments/assets/e2de537b-9671-4087-8e69-60fd8856c925)

- In **chip modeling**, the first step is to check whether the **application itself is correct ✅** or **wrong ❌**.  
- For that, we build in a **C code environment** using the **GCC compiler** and the given chip specifications.  
- **Rule:** `O0 == O1` must hold true 🟰. Only then the **chip specification is valid 👍**.  

---

## Step 2: RTL Development

![RTL Development](https://github.com/user-attachments/assets/bbe5f959-7980-4ebc-b898-ebca21f9cad7)

- The soft copy of the hardware is developed using **RTL** in different languages:  
  1. **Verilog**  
  2. **VHDL**  
  3. **Bluespec**  
  4. **Cecile**  

⚠️ **Important:** While writing the code, make sure that the **Verilog code does not contain any constructs or primitives that are not synthesizable.**  

---

## Step 3: ASIC Flow – Processor & Peripherals ⚙️

<img width="1496" height="552" alt="image" src="https://github.com/user-attachments/assets/45d56169-828a-42ae-a75c-eb15b32cc090" />

-Moving to next is ASIC flow were we would build the processors and Peripherals/IPs ⚙️

### 🟢 Processor

<p align="center">
<img src="https://github.com/user-attachments/assets/aec0a92c-c618-4777-9bfa-4b563ef4106b" width="600" alt="2020-03-30-image-2">
</p>

- After **synthesis**, a processor design becomes a **Gate-Level Netlist** (collection of logic gates).  
- Fully digital and directly mapped to **standard cells** in the library.  

### 🔵 Peripherals / IPs

<p align="center">
<img src="https://github.com/user-attachments/assets/00a07b66-82d5-4ce0-a809-76a6486ca2e6" width="500" alt="ARMSoCBlockDiagram svg">
</p>

- These are **custom** or **ready-made small circuit design blocks** connected to the processor inside a chip.  

**Types of Peripherals:**  

**1️⃣ Digital Macros (Synthesizable RTL)**  
- Written in Verilog/VHDL  
- Can be synthesized into gates (just like the processor)  
- **Examples:** UART, SPI, I2C  

**2️⃣ Analog IPs (Functional RTL / Hard Macros)**  
- Cannot be synthesized in the same way  
- Usually pre-designed circuits (**hard blocks**)  
- **Examples:** PLL, ADC, DAC, SERDES  

---

## Step 4: SoC Integration

<img width="1428" height="656" alt="image" src="https://github.com/user-attachments/assets/a39762ba-b4dc-4182-bc62-f021c47ef280" />

- Arrange **processor and peripherals** to create a fully functional **SoC 💻**.  

---

## Step 5: OpenLane Flow (RTL → GDSII)

<p align="center">
<img src="https://github.com/user-attachments/assets/fc760372-935e-48ae-ad1d-7c9521fb3ac3" width="700" alt="1746515610094">
</p>

---

<p align="center">
<img src="https://github.com/user-attachments/assets/6ec162bb-2fdf-450d-8a29-cd801159984d" width="800" alt="image">
</p>

- Use the **open-source OpenLane flow** for complete SoC design.  

**✅ Final Rule:** A perfect SoC satisfies:  
`O1 == O2 == O3 == O4` 👌
