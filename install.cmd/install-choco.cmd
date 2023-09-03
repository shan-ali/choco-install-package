@echo off
:: Check if Chocolatey is already installed
choco --version >nul 2>&1
if %errorlevel% neq 0 (
    :: Install Chocolatey
    echo Installing Chocolatey...
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
) else (
    echo Chocolatey is already installed.
)

:: Verify Chocolatey installation
choco --version

:: Pause to see the output
pause
