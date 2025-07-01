$lines = @(
"██╗   ██╗██╗  ████████╗██████╗  █████╗     ██╗   ██╗ █████╗  ██████╗ ██╗   ██╗███████╗",
"██║   ██║██║  ╚══██╔══╝██╔══██╗██╔══██╗    ██║   ██║██╔══██╗██╔════╝ ██║   ██║██╔════╝",
"██║   ██║██║     ██║   ██████╔╝███████║    ██║   ██║███████║██║  ███╗██║   ██║█████╗",
"██║   ██║██║     ██║   ██╔══██╗██╔══██║    ╚██╗ ██╔╝██╔══██║██║   ██║██║   ██║██╔══╝",
"╚██████╔╝███████╗██║   ██║  ██║██║  ██║     ╚████╔╝ ██║  ██║╚██████╔╝╚██████╔╝███████╗",
" ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝      ╚═══╝  ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝",
"",
"██████╗ ██████╗ ███████╗███████╗███████╗███╗   ██╗████████╗███████╗",
"██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝████╗  ██║╚══██╔══╝██╔════╝",
"██████╔╝██████╔╝█████╗  ███████╗█████╗  ██╔██╗ ██║   ██║   ███████╗",
"██╔═══╝ ██╔══██╗██╔══╝  ╚════██║██╔══╝  ██║╚██╗██║   ██║   ╚════██║",
"██║     ██║  ██║███████╗███████║███████╗██║ ╚████║   ██║   ███████║",
"╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝",
"",
"███╗   ██╗ ██████╗     ████████╗██╗  ██╗ █████╗ ███╗   ██╗██╗  ██╗███████╗    ████████╗██████╗ ███╗   ███╗",
"████╗  ██║██╔═══██╗    ╚══██╔══╝██║  ██║██╔══██╗████╗  ██║██║ ██╔╝██╔════╝    ╚══██╔══╝██╔══██╗████╗ ████║",
"██╔██╗ ██║██║   ██║       ██║   ███████║███████║██╔██╗ ██║█████╔╝ ███████╗       ██║   ██████╔╝██╔████╔██║",
"██║╚██╗██║██║   ██║       ██║   ██╔══██║██╔══██║██║╚██╗██║██╔═██╗ ╚════██║       ██║   ██╔═══╝ ██║╚██╔╝██║",
"██║ ╚████║╚██████╔╝       ██║   ██║  ██║██║  ██║██║ ╚████║██║  ██╗███████║       ██║   ██║     ██║ ╚═╝ ██║",
"╚═╝  ╚═══╝ ╚═════╝        ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝       ╚═╝   ╚═╝     ╚═╝     ╚═╝",
"",
"██╗███╗   ███╗     █████╗     ███████╗███████╗██████╗ ██╗   ██╗███████╗██████╗     ███╗   ██╗ ██████╗ ██╗    ██╗",
"██║████╗ ████║    ██╔══██╗    ██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝██╔══██╗    ████╗  ██║██╔═══██╗██║    ██║",
"██║██╔████╔██║    ███████║    ███████╗█████╗  ██████╔╝██║   ██║█████╗  ██████╔╝    ██╔██╗ ██║██║   ██║██║ █╗ ██║",
"██║██║╚██╔╝██║    ██╔══██║    ╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██╔══╝  ██╔══██╗    ██║╚██╗██║██║   ██║██║███╗██║",
"██║██║ ╚═╝ ██║    ██║  ██║    ███████║███████╗██║  ██║ ╚████╔╝ ███████╗██║  ██║    ██║ ╚████║╚██████╔╝╚███╔███╔╝",
"╚═╝╚═╝     ╚═╝    ╚═╝  ╚═╝    ╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═══╝ ╚═════╝  ╚══╝╚══╝"
)

$cyanTop    = 4
$pinkTop    = 4
$whiteMid   = 4
$pinkBottom = 4
$cyanBottom = 4

for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($i -lt $cyanTop) {
        $color = "Cyan"
    } elseif ($i -lt ($cyanTop + $pinkTop)) {
        $color = "Magenta"
    } elseif ($i -lt ($cyanTop + $pinkTop + $whiteMid)) {
        $color = "White"
    } elseif ($i -lt ($cyanTop + $pinkTop + $whiteMid + $pinkBottom)) {
        $color = "Magenta"
    } else {
        $color = "Cyan"
    }
    Write-Host $lines[$i] -ForegroundColor $color
}

function Write-Info($msg)     { Write-Host $msg -ForegroundColor Green }
function Write-ErrorMsg($msg) { Write-Host $msg -ForegroundColor Red }
function Wait-For-Exit {
    Write-Host ""
    Write-Host "Press any key to exit..." -ForegroundColor Yellow
    try {
        $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    } catch {
        # Fallback for ReadKey
        try {
            Read-Host "Press Enter to continue"
        } catch {
            
            Start-Sleep -Seconds 3
        }
    }
}

function Find-Win11Iso {
    $userProfile = [Environment]::GetFolderPath("UserProfile")
    $folders     = @("Desktop","Downloads","Documents","Pictures","Videos","Music")
    foreach ($f in $folders) {
        $path = Join-Path $userProfile $f
        if (Test-Path $path) {
            $iso = Get-ChildItem -Path $path -Filter "Win11*.iso" -File -ErrorAction SilentlyContinue |
                   Select-Object -First 1
            if ($iso) { return $iso }
        }
    }
    return $null
}

function CheckSetupAndLaunch {
    $cds = Get-Volume | Where-Object { $_.DriveType -eq 'CD-ROM' -and $_.DriveLetter }
    foreach ($vol in $cds) {
        $exe = "$($vol.DriveLetter):\setup.exe"
        if (Test-Path $exe) {
            Write-Info "Launching Setup from $exe"
            try {
                
                Write-Info "Starting Windows 11 Setup in SERVER MODE..."
                Start-Process -FilePath $exe -ArgumentList "/product server /eula accept /auto upgrade /dynamicupdate disable" -Wait
                return $true
            } catch {
                Write-ErrorMsg "Setup start failed with Method 1: $($_.Exception.Message)"
                
                # Method 2: Only Product Server Flag Fallback
                try {
                    Write-Info "Trying with /product server flag only..."
                    Start-Process -FilePath $exe -ArgumentList "/product server" -Wait
                    return $true
                } catch {
                    Write-ErrorMsg "Setup start failed with Method 2: $($_.Exception.Message)"
                    
                    # Method 3: product server + auto upgrade
                    try {
                        Write-Info "Trying /product server + auto upgrade..."
                        Start-Process -FilePath $exe -ArgumentList "/product server /auto upgrade" -Wait
                        return $true
                    } catch {
                        Write-ErrorMsg "All methods failed: $($_.Exception.Message)"
                        return $false
                    }
                }
            }
        }
    }
    return $false
}

# Admin Rights Elevation

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()
    ).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)) {
    Write-Info "Requesting administrator privileges..."
    Start-Process powershell "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

Set-ExecutionPolicy Bypass -Scope Process -Force

$iso = Find-Win11Iso
if (-not $iso) {
    Write-ErrorMsg "No Windows 11 ISO found. Opening download page..."
    Start-Process "https://www.microsoft.com/en-us/software-download/windows11"
    Wait-For-Exit
    exit 1
}

try {
    $disk = Get-DiskImage -ImagePath $iso.FullName -ErrorAction Stop
    $mounted = $disk.Attached
} catch {
    $mounted = $false
}

if (-not $mounted) {
    Write-Info "Mounting ISO $($iso.Name)..."
    Mount-DiskImage -ImagePath $iso.FullName -ErrorAction Stop
    Start-Sleep -Seconds 2
} else {
    Write-Info "ISO is already mounted."
}

if (CheckSetupAndLaunch) {
    Write-Info "Setup launched successfully."
    Wait-For-Exit
    exit 0
} else {
    Write-ErrorMsg "setup.exe could not be found or started."
    Wait-For-Exit
    exit 1
}