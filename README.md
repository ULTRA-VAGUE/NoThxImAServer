# 🪟💥🌐 TPM? No Thanks Im A Server

**NoThxImAServer** is a PowerShell script that performs a fully unattended upgrade to Windows 11. perfect for virtual machines, servers, labs, and unsupported PCs. It skips the TPM, CPU, and Secure Boot requirements automatically and requires no user input once launched.


## 🧠 Will I Lose My Data?

No. The script performs a safe, standard in-place upgrade using official setup flags.

✅ Your data stays
✅ Your apps stay
✅ Your settings stay

If Setup cannot proceed (e.g. language mismatch or driver conflict), it exits cleanly.


## 🌐 Language Notice

    ⚠️ Your ISO must match the System Default UI Language of your machine.
    Example: If your Windows uses American English, your ISO must be the American English one.
--- 
### 🚀 How to Use

### Option 1: Easiest
Right-click the script → **Run with PowerShell** And Enter A To Allow Execution.

### Option 2: Manual launch
```powershell
powershell -ExecutionPolicy Bypass -File .\NoThxImAServer.ps1
```

### ✅ Features

    Automatically searches for a Windows 11 ISO in:

        Downloads, Desktop, Documents, Pictures, Music, Videos

    Mounts the ISO if needed

    Launches setup.exe with these flags:

        /auto upgrade — full in-place upgrade (apps, data, settings preserved)

        /dynamicupdate disable — no updates downloaded during setup

        /eula accept — skips license agreement

    Injects a TPM/cpu check bypass into the registry

    Exits safely if upgrade is blocked (no changes made)

### 🧯 Notes

    This script cannot run from WinPE or recovery environments

    It uses only built-in PowerShell and system tools

    All operations are local — nothing is downloaded
    
## 🧡 Like it?

Star the repo. Fork it. tell your TPM chip to go touch grass.
