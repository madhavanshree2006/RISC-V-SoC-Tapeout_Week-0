# RISC-V-SoC-Tapeout_Week-0

**🚩 Getting Started with Digital VLSI SoC Design and Planning**  

<img width="1615" height="216" alt="1" src="https://github.com/user-attachments/assets/e2de537b-9671-4087-8e69-60fd8856c925" />

- In chip modeling, the first step is to check whether the application itself is correct ✅️ or wrong ❌.  
- For that, we build in a **C code environment** using the **GCC compiler** and the given chip specifications.  
- **O0 == O1** must hold true 🟰, only then we can confirm that the chip specification is valid 👍.  
---
<img width="1663" height="241" alt="2" src="https://github.com/user-attachments/assets/bbe5f959-7980-4ebc-b898-ebca21f9cad7" />

- Next, the soft copy of the hardware is developed using RTL in different languages:  
  1. Verilog  
  2. VHDL  
  3. Bluespec  
  4. Cecile  

⚠️ While writing the code, make sure that the Verilog code does not contain any **constructs or primitives** that are not synthesizable.  
---
<img width="1428" height="524" alt="image" src="https://github.com/user-attachments/assets/64616813-94cc-4fd5-b2cd-9e998a7c9e76" />

- Moving to the next stage is the **ASIC flow**, where we build the **processor** and **peripherals/IPs** ⚙️.  

### 🟢 Processor  

- After **synthesis**, a processor design becomes a **Gate-Level Netlist** (collection of logic gates).  
- This is fully digital and directly mapped to **standard cells** in the library.  
<p align="center">
  <img src="https://github.com/user-attachments/assets/aec0a92c-c618-4777-9bfa-4b563ef4106b" width="600" alt="2020-03-30-image-2">
</p>

### 🔵 Peripherals / IPs  

- These are **custom** or **ready-made small circuit design blocks** connected to the processor inside a chip.  
<p align="center">
  <img src="https://github.com/user-attachments/assets/00a07b66-82d5-4ce0-a809-76a6486ca2e6" width="500" alt="ARMSoCBlockDiagram svg">
</p>

Peripherals can be of two types:  

**1️⃣ Digital Macros (Synthesizable RTL)**  
- Written in Verilog/VHDL.  
- Can be synthesized into gates (just like the processor).  
- Example: UART, SPI, I2C.

**2️⃣ Analog IPs (Functional RTL / Hard Macros)**  
- Cannot be synthesized in the same way.  
- They are usually pre-designed circuits (hard blocks).  
- Example: PLL, ADC, DAC, SERDES.  
---
<img width="1428" height="656" alt="image" src="https://github.com/user-attachments/assets/a39762ba-b4dc-4182-bc62-f021c47ef280" />
- After that, an SoC engineer arranges all the blocks accordingly to create a fully functional **SoC** 💻.  

---

- These steps are carried out using an **open-source RTL → GDSII flow** (known as **OpenLane flow**).  
<p align="center">
  <img src="https://github.com/user-attachments/assets/fc760372-935e-48ae-ad1d-7c9521fb3ac3" width="800" alt="1746515610094">
</p>

---
<p align="center">
  <img src="https://github.com/user-attachments/assets/6ec162bb-2fdf-450d-8a29-cd801159984d" width="800" alt="image">
</p>
- Finally, a perfect SoC satisfies the rule:  
  **O1 == O2 == O3 == O4** 👌  

