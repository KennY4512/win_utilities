function InstallOffice {
    Clear-Host
    $imgPath = Join-Path -Path $PSScriptRoot -ChildPath "../sources/Office.img"
    $mountResult = Mount-DiskImage -ImagePath $imgPath -PassThru
    $driveLetter = (Get-Volume -DiskImage $mountResult | Select-Object -First 1).DriveLetter
    Write-Host "Montage du disque"
    $setupPath = "$driveLetter`:\Office\Setup64.exe"
    Write-Host "Installation"
    Start-Process -FilePath $setupPath -Wait
    Write-Host "Ejection du disque"
    Dismount-DiskImage -ImagePath $imgPath | Out-Null
    $lnk_path = @(
        "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk",
        "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk",
        "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PowerPoint.lnk"
    )
    $desktop_path = [Environment]::GetFolderPath("Desktop")
    Write-Host "Ajout des raccourcis sur le bureau"
    Copy-Item -Path $lnk_path -Destination $desktop_path -Force
    Write-Host "Fin"
    Pause
}

function InstallChrome {
    Clear-Host
    $chromePath = Join-Path -Path $PSScriptRoot -ChildPath "../sources/ChromeSetup.exe"
    Write-Host "Installation"
    Start-Process -FilePath $chromePath -Wait
    Write-Host "Fin"
    Pause
}

function InstallWindows {
    Clear-Host
    $windowsPath = Join-Path -Path $PSScriptRoot -ChildPath "../sources/WindowsSetup.exe"
    Write-Host "Lancement"
    Start-Process -FilePath $windowsPath -Wait
    Write-Host "Fin"
    Pause
}