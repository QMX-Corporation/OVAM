# Engineering Roadmap - OVAM Firmware

This document describes the planned progression and architectural milestones for the Open Vallen Ard Man (OVAM) ecosystem under QMX Corporation management.

## 🏁 Phase 1: Core Foundation & Security Infrastructure (Active)
- [x] Detach project dependency hooks from old EDK II structures.
- [x] Implement multiplatform automation pipelines (`build.bat` / `build.sh`) under pure `--target=x86_64 -ffreestanding -nostdlib` constraints.
- [x] Deploy the enterprise-grade repository governance matrices.
- [ ] Integrate the AEMos extreme 34+ cryptographic round-key scheduling matrix into `ManagerPkg`.

## 📦 Phase 2: Low-Level Storage & Partitions (Next)
- [ ] Code the pure C structures to parse the first disk sector and look for the custom **OP (OVAM Par)** sector mapping.
- [ ] Write the NASM Assembly execution layer to boot and jump directly to the target sectors at the end of the physical disk.
- [ ] Establish standard FAT32 standalone memory allocation limits for the native boot system.

## 🛰️ Phase 3: Advanced Silicon Control (Future)
- [ ] Implement standalone non-volatile storage routines for **NVRAM Control**.
- [ ] Map full core platform architectures for independent **ACPI Tables** tracking.
- [ ] Finalize the **`.pxe` Custom Bootloader** executable binary deployment specs.