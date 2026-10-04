# Changelog - OVAM Firmware

All notable changes to the OVAM ecosystem will be documented in this file under QMX Corporation guidelines.

## - 2026-10-04
### Added
- Architecture foundation for independent firmware boot (OVAM Partition - OP / ESP 2.0).
- Multiplatform compilation pipeline inside `CompilePkg` (`build.bat` and `build.sh`).
- Standard enterprise repository protection (`CODE_OF_CONDUCT.md`, `CONTRIBUTING.md`, `SECURITY.md`).
- Strategic repository deployment schemas (`GOVERNANCE.md` and `ROADMAP.md`) for corporate project alignment.
- Low-level automated isolated sandbox environment definitions utilizing container backend clusters (`.devcontainer`).
- Native x86_64 entrypoint initialization routine (`MainPkg/boot.asm`) enforcing 16-byte aligned stack frame controls and NOP Static Flags (NSF) memory structures.

### Changed
- Consolidated `ManagerPkg` and `AEMos` (34+ Extreme Cryptographic Rounds) into the independent core tree.
- Switched `MainAPIMask` api to volatile int execution types for side-channel attack mitigation.
- Enhanced `CONTRIBUTORS.md` vetting threshold requiring exactly 5 continuous years of direct embedded engineering engagement.