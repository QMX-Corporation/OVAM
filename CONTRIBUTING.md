# Contributing to OVAM (Open Vallen Ard Man)

Thank you for your interest in contributing to the independent firmware ecosystem of QMX Corporation! To maintain pure architectural performance and prevent legacy bloatware, we enforce strict guidelines.

## 🛠️ Pull Request Rules
1. **No Direct Commits:** The `main` branch is protected. All contributions must be submitted via a Pull Request (PR).
2. **Maintainer Review:** Every PR will be audited and reviewed by the Project Administrator (dev12124). If any architectural violations are found, the PR will be canceled immediately.
3. **No Spaghetti Code:** Keep code modular, clean, and strictly aligned with ANSI C or NASM Assembly. Unused functions, temporary logs, or unsafe pointers will be rejected.
4. **Local Paths Protection:** Never commit your local compilation paths or local signing tools configurations within `build.sh` or `build.bat`.

## 🚀 How to Submit a PR
1. Fork the repository `QMX-Corporation/OVAM`.
2. Clone your Fork. 
3. Create your feature branch (example: `git checkout -b feature/AmazingSecurity`).
4. Commit your alterations following the established style guides.
5. Run static validation tests on your side.
6. Open a Pull Request to our `main` branch and await review.