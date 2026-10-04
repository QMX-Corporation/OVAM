REM BSD-2: Capsule of Two Patent
REM Copyright (C) QMX Corporation

REM Compilers and Linker
set CXX=clang
set LLD=ld.lld
set NASM=nasm

REM Flags
set LDFLAGS=-T linker.ld --flto-O3 
set NASMFLAGS=-f bin
set CXXFLAGS=--target=x86_64 -ffreestanding -nostdlib -O3 -flto -fno-builtin -fno-rtti -fno-stack-protector -mno-sse -mno-sse2 -mno-red-zone

REM --- FOLDERS ---
REM ManagerPkg
set ManagerPkgASM=..\ManagerPkg\*.asm 
set ManagerPkgClang=..\ManagerPkg\*.c
set ManagerPkgSubFolderASM=..\ManagerPkg\*\*.asm 
set ManagerPkgSubFolderClang=..\ManagerPkg\*\*.c


REM --- Compile and Link Logic ---

REM Create the Path Build
cd ..\..\
mkdir Build
cd Build

REM Compile the Files .c
%CXX% %CXXFLAGS% -c %ManagerPkgClang% -o firmware.o
%CXX% %CXXFLAGS% -c %ManagerPkgSubFolderClang% -o firmware_sub.o

REM Link all Files .o
%LLD% *.o %LDFLAGS% -o ovam.bin

REM Using App Signer for Sign the Binary
signtool sign /n "QMX Corporation" /fd SHA256 /tr http://timestamp.digicert.com /td SHA256 ovam.bin

REM Remove all files .o
rm -rf *.o