function WinOpti {
    Clear-Host
    Write-Host "Optimisations basiques`nVoir Capet sur YouTube pour aller plus loin`n"
    Write-Host "Desactivation de 'SysMain'"
    Stop-Service -Name "SysMain" -Force
    Set-Service -Name "SysMain" -StartupType Disabled
    Pause
}