$ErrorActionPreference = 'Stop'
$installer = Join-Path $env:TEMP 'vs_BuildTools.exe'

if (-not (Test-Path $installer)) {
    Write-Host "Downloading Visual Studio Build Tools to $installer"
    Invoke-WebRequest -Uri 'https://aka.ms/vs/17/release/vs_BuildTools.exe' -OutFile $installer
}

$arguments = @(
    '--wait',
    '--passive',
    '--norestart',
    '--includeRecommended',
    '--add', 'Microsoft.VisualStudio.Component.VC.Tools.x86.x64',
    '--add', 'Microsoft.VisualStudio.Component.Windows11SDK.22000',
    '--add', 'Microsoft.VisualStudio.Component.VC.CMake.Project',
    '--add', 'Microsoft.VisualStudio.Component.VC.CoreBuildTools',
    '--installPath', 'C:\Program Files\Microsoft Visual Studio\2022\BuildTools'
)

Write-Host 'Launching Visual Studio Build Tools installer...'
$proc = Start-Process -FilePath $installer -ArgumentList $arguments -NoNewWindow -Wait -PassThru
Write-Host "Installer exited with code $($proc.ExitCode)"

Write-Host ''
Write-Host 'Checking for Visual Studio toolchain...'
$vswhere = 'C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe'
if (Test-Path $vswhere) {
    & $vswhere -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath
}

$cl = 'C:\Program Files\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC'
if (Test-Path $cl) {
    Write-Host 'MSVC folder exists.'
    Get-ChildItem $cl -ErrorAction SilentlyContinue | Select-Object -First 10 Name, FullName | Format-Table -AutoSize
}
