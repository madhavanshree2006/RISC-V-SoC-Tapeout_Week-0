<h1 align="center">🌟 RISC-V SoC Tapeout – Week 0</h1> 
<br><br><br>
## 🚀 Getting Started with Digital VLSI SoC Design & Planning  

<p align="center">
<img src="https://github.com/user-attachments/assets/e2de537b-9671-4087-8e69-60fd8856c925" width="700" alt="Chip Modeling">
</p>

### 🟢 Step 1: Application & Chip Modeling  
- ✅ First, verify whether the **application itself is correct** or ❌ **wrong**.  
- 🖥️ Build the design in **C language** using the **GCC compiler** and given chip specifications.  
- 📏 **Golden Rule:**  

    ```text
    O0 == O1   → chip specification is valid 👍
    ```

---

## 🏗️ Step 2: RTL Development  

<p align="center">
<img src="https://github.com/user-attachments/assets/bbe5f959-7980-4ebc-b898-ebca21f9cad7" width="700" alt="RTL Development">
</p>

- ✍️ Hardware is described in **Register Transfer Level (RTL)** using languages like:  
  1️⃣ Verilog  
  2️⃣ VHDL  
  3️⃣ Bluespec  
  4️⃣ Cecile  

⚠️ **Critical Note:**  
- ⛔ Do **not** use non-synthesizable constructs in Verilog.  
- ✅ Keep the design **synthesizable & portable**.  

---

## ⚙️ Step 3: ASIC Flow – Processor & Peripherals  

<p align="center">
<img src="https://github.com/user-attachments/assets/45d56169-828a-42ae-a75c-eb15b32cc090" width="700" alt="ASIC Flow">
</p>

### 🔹 Processor (CPU Core)  

<p align="center">
<img src="https://github.com/user-attachments/assets/aec0a92c-c618-4777-9bfa-4b563ef4106b" width="600" alt="Processor Block">
</p>

-  After **synthesis**, the processor becomes a **Gate-Level Netlist (GLN)**.  
- 🧩 GLN = collection of **logic gates** mapped to **standard cell libraries**.  

---

### 🔹 Peripherals / IPs  

<p align="center">
<img src="https://github.com/user-attachments/assets/00a07b66-82d5-4ce0-a809-76a6486ca2e6" width="500" alt="Peripherals Block">
</p>

- 🛠️ **Peripherals** are reusable blocks connected to the processor.  
- They enhance functionality such as **I/O, communication, and timing**.  

| 🔧 Type | 📖 Description | 💡 Examples |
|---------|----------------|-------------|
| **Digital Macros (Synthesizable RTL)** | Written in Verilog/VHDL, synthesizable into gates | UART, SPI, I²C |
| **Analog IPs (Hard Macros)** | Pre-designed hard layouts, not synthesizable | PLL, ADC, DAC, SERDES |

---

## 🔗 Step 4: SoC Integration  

<p align="center">
<img src="https://github.com/user-attachments/assets/a39762ba-b4dc-4182-bc62-f021c47ef280" width="700" alt="SoC Integration">
</p>

- 🧩 Combine **processor + peripherals** into one **System-on-Chip (SoC)**.  
- ⚡ Ensure correct **interconnects, memory mapping, and power distribution**.  
- 🏆 End result = a **functional chip** ready for implementation.  

---

## 🛠️ Step 5: OpenLane Flow (RTL → GDSII)  

<p align="center">
<img src="https://github.com/user-attachments/assets/fc760372-935e-48ae-ad1d-7c9521fb3ac3" width="700" alt="OpenLane Flow">
</p>

<p align="center">
<img src="https://github.com/user-attachments/assets/6ec162bb-2fdf-450d-8a29-cd801159984d" width="700" alt="OpenLane Flow 2">
</p>

- 🏗️ **OpenLane** is the open-source ASIC flow used for **tapeout preparation**.  
- 🔄 Flow includes:  

    ```text
    RTL → Netlist → Floorplan → Placement → Routing → GDSII
    ```

- 🖼️ **GDSII** = Final chip mask layout used for fabrication.  

---

## ✅ Final Golden Rule  

For a valid & correct SoC →  

```text
O1 == O2 == O3 == O4
