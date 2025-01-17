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
---
# Analyzed instruction
