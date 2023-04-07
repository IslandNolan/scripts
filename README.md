# Tools/Scripts for a new Linux System.


### Secure-Boot:
- 91-sbctl.install - A kernel-install plugin used to auto-sign kernels on a Linux Fedora System using sbctl (Foxboron).  
- sbctl.action     - A DNF 4.0 Post-Transaction-Action used to auto sign systemd-boot binaries when the system is upgraded using DNF.


### SSH/GPG Keys:
- keys.sh - A Shell script used to generate an SSH, and GPG Key for easy importing.
