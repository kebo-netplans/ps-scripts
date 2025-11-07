    # Chrome Enterprise
    '$chrome = "$env:TEMP\\chrome.msi"',
    'Invoke-WebRequest "https://dl.google.com/tag/s/appguidchromeenterprise/msi/GoogleChromeEnterpriseBundle.msi" -OutFile $chrome',
    'Start-Process msiexec.exe -ArgumentList "/i $chrome /qn /norestart" -Wait',

    # Notepad++ silent
    '$np = "$env:TEMP\\npp.exe"',
    'Invoke-WebRequest "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/latest/download/npp.x64.Installer.exe" -OutFile $np',
    'Start-Process $np -ArgumentList "/S" -Wait',

    # Adobe Reader
    '$acro = "$env:TEMP\\acro.exe"',
    'Invoke-WebRequest "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/2300920067/AcroRdrDCx642300920067_de_DE.exe" -OutFile $acro',
    'Start-Process $acro -ArgumentList "/sAll /rs /rps /msi EULA_ACCEPT=YES" -Wait',

    # DotNet Runtime
    '$dotnet = "$env:TEMP\\dotnet.exe"',
    'Invoke-WebRequest "https://download.visualstudio.microsoft.com/download/pr/dotnet-runtime-8.0.latest-win-x64.exe" -OutFile $dotnet',
    'Start-Process $dotnet -ArgumentList "/quiet /norestart" -Wait',

    # Greenshot
    '$gs = "$env:TEMP\\greenshot.exe"',
    'Invoke-WebRequest "https://github.com/greenshot/greenshot/releases/latest/download/Greenshot-INSTALLER-RELEASE.exe" -OutFile $gs',
    'Start-Process $gs -ArgumentList "/VERYSILENT" -Wait'
