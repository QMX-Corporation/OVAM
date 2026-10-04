# Changelog - OVAM Firmware

All notable changes to the OVAM ecosystem will be documented in this file under QMX Corporation guidelines.

## - 2026-10-04
### Added
- Architecture foundation for independent firmware boot (OVAM Partition - OP / ESP 2.0).
- Multiplatform compilation pipeline inside `CompilePkg` (`build.bat` and `build.sh`).
- Standard enterprise repository protection (`CODE_OF_CONDUCT.md`, `CONTRIBUTING.md`, `SECURITY.md`).

### Changed
- Consolidated `ManagerPkg` and `AEMos` (34+ Extreme Cryptographic Rounds) into the independent core tree.
- Switched `MainAPIMask` api to volatile int execution types for side-channel attack mitigation.
