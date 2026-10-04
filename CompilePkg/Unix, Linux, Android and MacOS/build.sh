#!/bin/sh 

# Depending of your OS, but I have a example of Android/Linux

# BSD-2: Capsule of Two Patent
# Copyright (C) 2026 QMX Corporation 

# --- Compilers and Linker ---
CXX="clang"
CXXFLAGS="--target=x86_64 -ffreestanding -nostdlib -O3 -flto -fno-builtin -fno-rtti -fno-stack-protector -mno-sse -mno-sse2 -mno-red-zone"
LD="ld.lld"
LDFLAGS="-T ../linker.ld --flto -O3"
NASM="nasm"
NASMFLAGS="-f bin"

# --- FOLDERS ---
# MainPkg
MainPkgASM=../MainPkg/*.asm

# ManagerPkg
ManagerPkgASM=../ManagerPkg/*.asm 
ManagerPkgClang=../ManagerPkg/*.c
ManagerPkgSubFolderASM=../ManagerPkg/*/*.asm 
ManagerPkgSubFolderClang=../ManagerPkg/*/*.c

# --- Compile and Link ---

# 1. Create and Enter in Build Path
cd ../../
mkdir Build
cd Build

# 1.5. Compile the Entrypoint Assembly Files
$NASM $NASMFLAGS $MainPkgASM -o boot.o

# 2. Compile the Files .c
$CXX $CXXFLAGS -c $ManagerPkgClang -o firmware.o
$CXX $CXXFLAGS -c $ManagerPkgSubFolderClang -o firmware_sub.o 

# 3. Link all Files .o
$LD *.o $LDFLAGS -o ovam.bin

# 4. Using your App Signer for Sign the Binary,
# please NOT commit your alteration
# Your logic:

# 5. Remove all files .o
rm -rf *.o