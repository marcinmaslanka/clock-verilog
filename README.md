# ⏱️ 1 MHz Clock Generator in Verilog

This project implements a simple 1 MHz clock generator using Verilog and provides a testbench for simulation. It toggles a clock signal every 500 ns, resulting in a 1 µs period (1 MHz frequency). The output waveform can be visualized using GTKWave.

---

## 📁 Files

- `clock.v`: Verilog module that generates a 1 MHz clock.
- `clock_tb.v`: Testbench for simulating the clock.
- `clock.vcd`: Waveform file generated during simulation.

---

## 🔧 Module Description

### `clock.v`

```verilog
`timescale 1ns/1ps

module clock(output reg clk);

    initial clk = 0;

    // Toggle clock every 500 ns => 1 MHz
    always #500 clk = ~clk;

    // Automatically finish simulation after 10 µs
    initial #10000 $finish;

endmodule
```

## ▶️ Simulation Instructions


## ✅ Using Icarus Verilog (iverilog) and GTKWave:
Compile:

```bash
iverilog -o clock_tb.vvp clock.v clock_tb.v
```

Run the simulation:

```bash
vvp clock_tb.vvp
```

Open the waveform in GTKWave:

```bash
gtkwave clock.vcd
```
You should see a square wave with a period of 1 µs in GTKWave.

## 🧠 Concepts Demonstrated
  - Clock signal generation in Verilog

  - Use of timescale for real-time simulation

-   Waveform dumping with $dumpfile and $dumpvars

-   Monitoring signal values in simulation

-   Viewing waveforms with GTKWave

## 🛠️ Requirements
Icarus Verilog

GTKWave

## 📸 Example Output


![Screenshot From 2025-04-23 17-24-09](https://github.com/user-attachments/assets/3bc0691d-eb25-47c3-8b66-533a9341aa94)

---

