## FIRMWARE OVAM --- THE BEST 
> A Simple and Beautiful Firmware 

# OVAM (Open Vallen Ard Man) - The Beautiful Firmware

![License](https://shields.io/License/--BSD-2-Clause/blue)
![Security](https://shields.io/Security/--AEMos-Protected/red)
![Status](https://shields.io/Status/Programming/orange)
![Architecture](https://shields.io/Architecture/x86__64--Freestanding/black)

### LICENSE HEADER
* **BCD=2: Capsule of Two Patent**
* **Copyright (C) 2026 QMX Corporation**

---

### RULES 
* **Problems: If you no resolving a problem, the PR is canceled**
* **Mantainers-PR: Excect me, please open a PR for me review**
* **Folders/Paths Structure: With Pkg in end of Name**
* **Is mandatory in ALL Atuals and Futures Files/Folders the License Header**
* **Thanks for conttribute with project! Happy Coding!**

---

## IMPLEMT
### FUTURES IMPLEMENTATIONS 
* **ACPI Tables: ALL ACPI Tables existents**
* **Customized Format: PXE, the Bootloader is mandatory with extension-file .pxe**
* **Secure Boot: With ManagerPkg**
* **Memory Map**
* **Control of NVRAM**
* **Partition in FAT32: A Pointer in First Sector of Disk speaking the OP (OVAM Par) Local. The OP Local in the Lasts Sectors**

---

## PRE-REQUISITES
### WHAT I USES FOR COMPILE THE OVAM?
* **Clang, OPTIONAL: Compiler MSCV (Visual Studio)**
* **Linker: LLVM**
* **Operating System: Windows, Unix, Linux, MacOS or Android**
* **Caller: Make**
* **WARNING: The Flow is: Make -> build.bat/build.sh -> Compiler -> Linker -> App Signer -> File .bin**

---

## SIGNATURE
### SIGNER 
* **In Windows: Signtool (signtool.exe) in Windows SDKs**
* **In Unix, Linux, Android or MacOS: The App Signer Supported. e.g: OpenSSL/OpenSSH**
* **RFC 3161 Modern**

---

### FOLDER STRUCTURES 
```text
OVAM 
  | .github  # The MainPath of GitHub
       | ISSUE_TEMPLATE 
             | bug_report.md  # Update the Issues of Bugs
             | feature_request.md  # A Request of Features
        | pull_request_template.md  # The "God" of PRs
  | Compile  # The Build Folder
       | Unix, Linux, Android and MacOS  # The OS
             | build.sh  # Script for Compile the Project
       | Windows # The OS
           | build.bat  # Script for Compile the Project
  | ManagerPkg # The Manager Package
       | AEMos  # Crypto System
           | aemos.c # Crypto System
           | aes.h  # Crypto AES Header
    | manager.c  # The Manager
    | masks.c  # Masks Logic
    | masks.h  # Masks Header
| .gitattributes  # Essential Git File (EGF)
| .gitignore  # Essential Git File (EGF)
| CHANGELOG.md  # The Logs of Changes
| CONTRIBUTING.md  # With I collaborating with OVAM Project?
| CONTRIBUTORS.md  # The Contributors
| GOVERNANCE.md  # BDFL and System Updates
| LICENSE  # BSD-2 License
| README.md  # The README
| ROADMAP.md # RoadMaps
| SECURITY.md # Politics Security
| SUPPORT.md # Politics Support
```
* **WARNING:**
* **In build.sh, please modify the App Signer for App Signer Installed**
* **But, not commit your alteration in build.sh**

---

## LICENSE
### BSD-2 
* **The License is the BSD-2. See the File 'LICENSE' for more informations.**