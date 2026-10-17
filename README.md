## FIRMWARE OVAM --- THE BEST 
> A Simple and Beautiful Firmware

# OVAM (Open Vallen Ard Man) - The Beautiful Firmware

![License](https://img.shields.io/badge/License-BSD--2--Clause-blue)
![Security](https://shields.io/badge/Security-AEMos--Protected-red)
![Status](https://shields.io/badge/Status-Programming-orange)
![Architecture](https://shields.io/badge/Architecture-x86__64--Freestanding-black)

## Navigation
- [LICENSE HEADER](#license-header)
- [CONTRIBUTORS](#contributors)
- [RULES](#rules)
- [SYSTEM TOOLCHAIN](#system-toolchain)
- [FUTURE IMPLEMENTATIONS](#future-implementations)
- [PRE-REQUISITES](#pre-requisites)
- [SIGNER](#signer)
- [FOLDER STRUCTURES](#folder-structures)

---

### LICENSE HEADER
* **BSD-2: Clause-Two-Patent**
* **Copyright (C) 2026 QMX Corporation**

---

### CONTRIBUTORS 
All Reviewers and Maintainers of OVAM.

<a href="https://github.com/QMX-Corporation/OVAM/graphs/contributors">
   <img src="contrib.rocks/image?repo=QMX-Corporation/OVAM" />
</a>

---

### RULES 
* **Problems:** If you no resolving a problem, the PR is canceled.
* **Maintainers-PR:** Except me, please open a PR for me review.
* **Folders/Paths Structure:** With Pkg in end of Name.
* **License Guard:** Is mandatory in ALL Current and Future Files/Folders the License Header.
* **Thanks for contribute with project! Happy Coding!**

---

## 🛠️ System Toolchain
* **🖥️ Assembly:** NASM (Netwide Assembler) — `Integrated`
* **🦾 C / C++:** Clang v19.x Engine — `Active`
* **🔗 Linker:** LLVM `ld.lld` Utilities — `Optimized`
* **🛡️ Security:** AEMos Polymorphic Core — `Locked`

---

## FUTURE IMPLEMENTATIONS 
* **ACPI Tables:** ALL ACPI Tables existents.
* **Customized Format:** PXE, the Bootloader is mandatory with extension-file .pxe.
* **Secure Boot:** Supported and verified via ManagerPkg.
* **Memory Map:** Advanced structural tracking post-ExitBootServices.
* **Control of NVRAM:** Active hardware storage allocation variables.
* **Partition in FAT32:** A Pointer in First Sector of Disk speaking the OP (OVAM Par) Local. The OP Local in the Last Sectors.

---

## PRE-REQUISITES
### WHAT I USE TO COMPILE OVAM?
* **Compiler Framework:** Clang. *OPTIONAL:* Compiler MSVC (Visual Studio).
* **Linker Backend:** LLVM Infrastructure.
* **Host Operating System:** Windows, Unix, Linux, MacOS or Android.
* **Execution Automation:** Make.
* **The Compilation Pipeline:** Make -> build.bat/build.sh -> Compiler -> Linker -> App Signer -> File .bin

---

## SIGNER 
* **In Windows Architecture:** Signtool (signtool.exe) in Windows SDKs.
* **In Unix, Linux, Android or MacOS Platforms:** The App Signer Supported (e.g., OpenSSL/OpenSSH).
* **Compliance Standards:** RFC 3161 Modern Time Stamping.

---

### FOLDER STRUCTURES 
```text
OVAM/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md
│   │   └── feature_request.md
│   └── pull_request_template.md
├── CompilePkg/
│   ├── Unix_Linux_Android_MacOS/
│   │   └── build.sh
│   └── Windows/
│       └── build.bat
├── MainPkg/
│   └── boot.asm
├── ManagerPkg/
│   ├── AEMos/
│   │   ├── aemos.c
│   │   └── aes.h
│   ├── manager.c
│   ├── masks.c
│   └── masks.h
├── .clang-format
├── .editorconfig
├── .gitattributes
├── .gitignore
├── CHANGELOG.md
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── CONTRIBUTORS.md
├── GOVERNANCE.md
├── Kconfig
├── LICENSE
├── README.md
├── ROADMAP.md
├── SECURITY.md
└── SUPPORT.md
```
* **⚠️ WARNING:**
* In `build.sh`, please modify the App Signer for the local App Signer Installed.
* Do not commit your environmental alterations in `build.sh`.

---

## LICENSE
### BSD-2 
* **The License is the BSD-2. See the File 'LICENSE' for more informations.**