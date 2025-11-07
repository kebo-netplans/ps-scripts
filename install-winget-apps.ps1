# Logging
$LogFile = "C:\Windows\Temp\winget-install.log"
Start-Transcript -Path $LogFile -Append

Write-Host "=== Updating WinGet sources ==="
try { winget source update } catch {}

# App-Liste (IDs sind exakt geprüft & enterprise-sicher)
$Apps = @(
    "Google.Chrome",
    "Microsoft.Edge",                      # Edge Enterprise, NICHT Store
    "Notepad++.Notepad++",
    "Adobe.Acrobat.Reader.64-bit",
    "Microsoft.DotNet.DesktopRuntime.8",   # .NET Desktop Runtime
    "Greenshot.Greenshot"
)

foreach ($App in $Apps) {
    Write-Host "`n=== Installing $App ==="

    try {
        winget install `
            --id $App `
            --source winget `
            --silent `
            --force `
            --accept-package-agreements `
            --accept-source-agreements `
            --disable-interactivity
    }
    catch {
        Write-Warning "Installation failed for $App -> continuing build"
    }
}

Write-Host "`n=== Installation Complete ==="
winget list

Stop-Transcript

