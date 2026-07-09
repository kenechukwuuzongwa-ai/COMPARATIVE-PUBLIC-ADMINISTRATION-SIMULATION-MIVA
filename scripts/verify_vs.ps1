$vswhere = 'C:\PROGRA~2\Microsoft Visual Studio\Installer\vswhere.exe'
Write-Host 'vswhere path:' $vswhere
if (Test-Path $vswhere) {
    & $vswhere -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath
} else {
    Write-Host 'vswhere missing'
}

Write-Host ''
$vcvarsall = 'C:\Program Files\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat'
if (Test-Path $vcvarsall) {
    Write-Host 'vcvarsall found:' $vcvarsall
} else {
    Write-Host 'vcvarsall missing'
}

Write-Host ''
Get-Command cl -ErrorAction SilentlyContinue | Select-Object Name,Source | Format-Table -AutoSize
