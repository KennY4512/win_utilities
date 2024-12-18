if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`""
    Start-Process -FilePath "powershell.exe" -ArgumentList $arguments -Verb RunAs
    exit
}

Import-Module  "$PSScriptRoot\data\scripts\installers.psm1" -Force
Import-Module  "$PSScriptRoot\data\scripts\win_opti.psm1" -Force

while ($true) {
    Clear-Host
    Write-Host "########################################"
    Write-Host "            Windows Utilities"
    Write-Host "########################################"
    Write-Host "1) Activer Windows 10/11 (Permanent)"
    Write-Host "2) Activer Windows 10/11/Server (Annee 2038)"
    Write-Host "3) Activer Office"
    Write-Host "4) Changer de version Windows 10/11/Server"
    Write-Host "5) Changer de version Office"
    Write-Host "6) Installer Office 2021 Professionnal Plus"
    Write-Host "7) Installer Chrome"
    Write-Host "8) Cle bootable Windows 11"
    Write-Host "9) Optimiser Windows 11"
    Write-Host "0) Quitter"
    $choice = Read-Host "Saisisez un chiffre (0 - 9) "
    switch ($choice) {
        1 { cmd /c $PSScriptRoot\data\scripts\win1011_activator }
        2 { cmd /c $PSScriptRoot\data\scripts\win1011srv_activator }
        3 { cmd /c $PSScriptRoot\data\scripts\office_activator }
        4 { cmd /c $PSScriptRoot\data\scripts\win_editions }
        5 { cmd /c $PSScriptRoot\data\scripts\office_editions }
        6 { InstallOffice }
        7 { InstallChrome }
        8 { InstallWindows }
        9 { Write-Host "To be dev"}
        0 { exit 0 }
        Default { Write-Host "Veuillez entrer un choix valide (0 - 9)"; Pause }
    }
}