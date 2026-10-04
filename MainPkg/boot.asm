; 
; BSD-2: Capsule of Two Patent
; Copyright (C) 2026, QMX Corporation
;


[BITS 64]  ; 64-Bit Pure

; For a Binary Pure (a File .bin), no is mandatory sections,
; but I have a section .text for preucation
section .text
   global boot_main

boot_main:
         ; 1. Define the Stack, reserving 32 Bytes for Call Functions
        sub rsp, 64
        ; 2. Configure the NOP Static Flags (NSF)
        mov ebx, -1  ; -1 is the Default with Firmware is the Unic running in CPU
        mov [nsf.nop], ebx 
        mov ecx, 0x100  ; 0x100 is the 'Static' of NSF (NOP Static Flags)
        mov [nsf.static], ecx
        mov edx, 0  ; None with Firmware is the Unic running in CPU
        mov [nsf.flags], edx
        ; Jump a Loop
        jmp .Loop
.Loop:
     cli
     hlt
     jmp .Loop

; Section .bss
section .bss
   nsf:
      nop: dd 0
      static: dd 0
      flags: dd 0

; Section reset 
section reset
      jmp .boot_main