# samsung-riscv
Introduction
## Hosted by
Global Academy of Technology, Electronics and Communication Engineering Department, in collaboration with VLSI System Design and the Tech Connect Club.

This workshop is part of the Digital India RISC-V Mission 2025, powered by **Samsung Semiconductor India Research (SSIR).
---

## Resource Person
Kunal Ghosh
- Founder of VLSI System Design (VSD)
- IITian with over 15 years of experience in the VLSI industry.

---

## Workshop Agenda

### Part I: From Apps to Machine Code
- Topic: How RISC-V simplifies the process of translating applications to machine code.

### Part II: Converting RISC-V Verilog
- Topic: Using open-source EDA tools to convert RISC-V Verilog RTL to GDS.

### Part III: Programming the VSD Squadron Mini RISC-V Development Board
- Topic: Hands-on programming experience with the VSD Squadron board.
---

## Workshop Details
Date: 6th & 7th January  
Venue: Global Academy of Technology, Rajarajeshwari Nagar, Bengaluru - 560098
---

## Highlights
- Certification: Certified by Samsung and VLSI System Design.
- Internship Opportunity: Secure a free internship in VLSI and Embedded Systems domain by attending the workshop.
- Hands-On Learning: Learn about cutting-edge open-source tools and RISC-V hardware.

---
## Tasks
<details>
<summary> Task 1:To perform C_Based and RISC-V lab  </summary>
<br> 
 
- Create a GitHub Repository:
Name it "samsung-riscv".
Watch the provided videos to understand how the program works.
 
- Install the RISC-V Toolchain:
Use the VDI link from the shared PDF to download and install the toolchain.
 
- Follow Lab Videos:
Watch the C-based and RISC-V-based lab videos.
Repeat the steps on your computer.
Take screenshots of your progress with the current date and time visible on your screen.
 
- simple c program
![c based lab](https://github.com/user-attachments/assets/046951b9-5f67-443c-aa30-f1f323208bac)


- disassembly code
![risc-based-lab-O1](https://github.com/user-attachments/assets/91f11897-f95a-4998-ae85-e5309f3f0fc5)

![risc-based-lab-Ofast](https://github.com/user-attachments/assets/aa3c09d0-6058-4875-92c9-b8f0d9e0216e)
</details>
---
<details>
<summary> Task 2:Spike Simulation  </summary>
<br>
-Spike is a RISC-V architecture simulator that allows for the simulation of RISC-V programs and software stacks.

- step 1:Compile the c code using gcc copmiler 
 Step1
$ gcc fact.c
$ ./a.out

- step 2: Compile the code with riscv compiler
![c-program](https://github.com/user-attachments/assets/ae32a990-4d9b-4d45-a20f-16226dd0305e)

- using -O1 instruction.
step2
$ riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o fact.o fact.c
![O1](https://github.com/user-attachments/assets/a2253593-1184-4852-9004-63932e365665)

- using -Ofast instruction.

$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o fact.o fact.c

![Ofast](https://github.com/user-attachments/assets/b129f662-2a16-4b0c-9944-3d50ba36aa5b)


- Open the Objdump of code by using the below command
bash
$ riscv64-unknown-elf-objdump -d sum_1ton.o | less  

- Open the debugger in another terminal by using the below command
bash
$  spike -d pk fact.o 

- The rest steps are shown in the following snapshot.
![spike](https://github.com/user-attachments/assets/161d1bdd-5b8a-4ea6-8907-42a2746c3d38)
