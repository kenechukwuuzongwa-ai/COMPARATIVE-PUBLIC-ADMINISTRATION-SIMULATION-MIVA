$cmakeDir = 'C:\Program Files\CMake\bin'
$vsTools = 'C:\Program\VC\Tools\MSVC\14.44.35207\bin\Hostx64\x64'
$vsCommon = 'C:\Program\Common7\Tools'
$env:VSINSTALLDIR = 'C:\Program\'
$env:VisualStudioVersion = '17.0'
$env:VSCMD_ARG_TGT_ARCH = 'x64'
$env:Path = "$cmakeDir;$vsTools;$vsCommon;$env:Path"
Write-Host 'PATH updated'
Get-Command cmake,cl -ErrorAction SilentlyContinue | Select-Object Name,Source | Format-Table -AutoSize
Set-Location 'C:\Users\Miva University\Downloads\LichtFeld-Studio-0.5.3\LichtFeld-Studio-0.5.3'
.\build_lichtfeld.ps1 -Configuration Release -SkipVerification
