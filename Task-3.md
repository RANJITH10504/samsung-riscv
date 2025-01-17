# Overview
Observe and define 15 instructions, determine the exact 32-bit instruction code in their respective instruction type formats.
---

# Types of formats 
### R-type (Register): Used for arithmetic and logical operations.
- Example: add rd, rs1, rs2
- Fields: opcode, rd, funct3, rs1, rs2, funct7

### I-type (Immediate): Used for operations with a 12-bit immediate value.
- Example: addi rd, rs1, imm
- Fields: opcode, rd, funct3, rs1, imm

### S-type (Store): Used for store operations.
- Example: sw rs2, imm(rs1)
- Fields: opcode, funct3, rs1, rs2, imm

### B-type (Branch): Used for branch operations.
- Example: beq rs1, rs2, offset
- Fields: opcode, funct3, rs1, rs2, imm

### U-type (Unsigned Immediate): Used for operations with a 20-bit unsigned immediate value.
- Example: lui rd, imm
- Fields: opcode, rd, imm

### J-type (Jump): Used for jump operations.
- Example: jal rd, imm
- Fields: opcode, rd, imm

### C-type (Compare): Used for comparison operations.
- Example: csrr rd, csr
- Fields: opcode, rd, csr
  ![32bit format](https://github.com/user-attachments/assets/ad678e38-605b-49ab-a97b-7234f3832031)

  
---
# Analyzed instruction
## 1. ADD1(I-type)
### Field Values:
- opcode: 0010011 (for addi)
- rd: 0101 (x5)
- rs1: 1010 (x10)
- imm: 0000000001100100 (100 in binary)

### Field Breakdown:
- imm[11:0] = 0000000001100100
- rs1 = 1010
- funct3 = 000
- rd = 0101
- opcode = 0010011
- 32-bit Representation: 0000000001100100101000001010011

##  2. AUIPD(U-type)
   ### Machine Value(hex)=00000f97
  ### Field Value:
- opcode (7 bits): 0x17 (auipc)
- rd (5 bits): a5 (x15, 0b1111)
- immediate[31:12] (20 bits): 0xfff (0b111111111111)

 ## 3. ADDI(I-type)
  ### Machine Value(hex)=ea678793
 ### Field Value:
- opcode (7 bits): 0x13 (addi)
- rd (5 bits): a5 (0b1111)
- funct3 (3 bits): 0x0 (addi)
- rs1 (5 bits): a5 (0b1111)
- immediate[11:0] (12 bits): -352 (0b111111101100000 in two's complement)

  ## 4. BENQ(B-type)
   ### Machine Value(hex)=86678c63
  ### Field Value:
- opcode (7 bits): 0x63 (branch)
- funct3 (3 bits): 0x0 (beqz)
- rs1 (5 bits): a5 (0b1111)
- immediate[12|10:5|4:1|11] (12 bits): 0x18186 (PC-relative offset as seen by the assembler)

  ## 5. LUI(L-TYPE)
   ### Machine Value(hex)=80076537
  ### Field Value:
- Machine code: 80076537 (hex)
- opcode (7 bits): 0x37 (lui)
- rd (5 bits): t0 (0b01010)
- immediate[31:12] (20 bits): 0x7b (0b00000000000001111011)
  
## 6. JAL(J-type)
### Machine Value(hex)=2a4068ef
### Field Value:
- opcode (7 bits): 0x6f (jal)
- rd (5 bits): ra (0b00001)
- immediate[20|10:1|11|19:12] (20 bits): 0x18438

  ## 7. LW(L-type)
  ### Machine Value(hex)=88c12583
  ### Field Value:
- opcode (7 bits): 0x03 (load)
- rd (5 bits): a1 (0b01011)
- funct3 (3 bits): 0x2 (lw)
- rs1 (5 bits): sp (0b00010)
- immediate[11:0] (12 bits): 12 (0b000000001100)

  ## 8. ADDI(I-type)
   ### Machine Value(hex)=80151793
  ### Field Value:
- opcode (7 bits): 0x13 (I-type)
- rd (5 bits): a5
- funct3 (3 bits): 0x7 (andi)
- rs1 (5 bits): a1
- immediate[11:0] (12 bits): 1

  ## 9. AUIPC(U-TYPE)
   ### Machine Value(hex)=0001e197
  ### Field Value:
- opcode (7 bits): 0x17
- rd (5 bits): gp (presumably x3)
- immediate[31:12] (20 bits): The upper 20 bits of the address represented by &xte.

  ## 10. RET(I-type)
  ### Machine Value(hex)=80008067
  ### Field Value:
- opcode: 0x67
- rd: x0 (zero register)
- funct3: 0x0
- rs1: ra
- imm: 0

## 11. ADD(R-type)
### Field Values:
- opcode (7 bits): 0x33
- rd (5 bits): a0 (x10)
- funct3 (3 bits): 0x0
- rs1 (5 bits): gp
- rs2 (5 bits): 1898
- funct7 (7 bits): 0x00

## 12. JAL(J-type)
### Field Value:
- opcode (7 bits): 0x6f
- rd (5 bits): ra (x1)
- immediate[20|10:1|11|19:12] (20 bits): 18318

## 13. BEQZ(B-type)
### Field Value:
- opcode (7 bits): 0x63
- funct3 (3 bits): 0x0
- rs1 (5 bits): a5 (x15)
- immediate[12|10:5] (12 bits): 180c8

  ## 14. LBU(I-type)
  ### Field Value:
 - opcode (7 bits): 0x03
- rd (5 bits): a5
- funct3 (3 bits): 0x4
- rs1 (5 bits): gp
- immediate[11:0] (12 bits): 1944

  ## 15. SD(S-type)
  ### Field Value:
- opcode (7 bits): 0x23
- funct3 (3 bits): 0x3
- rs1 (5 bits): sp (x2)
- rs2 (5 bits): ra
- immediate[11:5|4:0] (12 bits): 8

  
  
  

  
