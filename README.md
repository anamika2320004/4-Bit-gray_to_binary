# 4-bit Gray to Binary Code Converter

## 📌 Overview
This project implements a **4-bit Gray to Binary Converter** in **Verilog**.  
It demonstrates **code conversion, combinational logic, and truth tables**.  
A testbench is included to verify all input combinations and generate waveforms for **EPWave/GTKWave**.

---

## 📂 Files
- `design.vs, testbench.vs` → Verilog module + testbench
- `README.md` → Project documentation
---

## 🧩 Logic Used
Conversion from Gray → Binary uses the following rules:
- `binary[MSB] = gray[MSB]`
- `binary[i] = binary[i+1] ^ gray[i]` for other bits

**Equations (4-bit):**
binary[3] = gray[3]
binary[2] = binary[3] ^ gray[2]
binary[1] = binary[2] ^ gray[1]
binary[0] = binary[1] ^ gray[0]

---

## 🧪 Truth Table (4-bit)

| Gray  | Binary |
|-------|--------|
| 0000  | 0000   |
| 0001  | 0001   |
| 0011  | 0010   |
| 0010  | 0011   |
| 0110  | 0100   |
| 0111  | 0101   |
| 0101  | 0110   |
| 0100  | 0111   |
| 1100  | 1000   |
| 1101  | 1001   |
| 1111  | 1010   |
| 1110  | 1011   |
| 1010  | 1100   |
| 1011  | 1101   |
| 1001  | 1110   |
| 1000  | 1111   |

---

## ▶️ Simulation
1. Copy `code and testbench` into [EDA Playground](https://edaplayground.com/).  
2. Select **Icarus Verilog** as simulator.  
3. Run → Console shows the mapping.  
4. Use **EPWave** to view waveform.

---

## 📊 Example Output
Gray -> Binary

0000 -> 0000
0001 -> 0001
0011 -> 0010
0010 -> 0011
...
1000 -> 1111

---

## 🚀 Future Work
- Add **Binary to Gray Converter**  
- Parameterize design for **N-bit inputs**

---

## 📝 License
This project is open-source under the **MIT License**.
