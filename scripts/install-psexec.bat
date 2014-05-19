if not exist "C:\Windows\Temp\7z920-x64.msi" (
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://downloads.sourceforge.net/sevenzip/7z920-x64.msi', 'C:\Windows\Temp\7z920-x64.msi')" <NUL
)
msiexec /qb /i C:\Windows\Temp\7z920-x64.msi

if not exist "C:\Windows\Temp\PSTools.zip" (
  powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://download.sysinternals.com/files/PSTools.zip', 'C:\Windows\Temp\PSTools.zip')" <NUL
)

if not exist "C:\Windows\Temp\psexec.exe" (
        cmd /c ""C:\Program Files\7-Zip\7z.exe" x C:\Windows\Temp\PStools.zip -oC:\Windows\Temp"
)

cmd /c reg.exe ADD HKCU\Software\Sysinternals\PsExec /v EulaAccepted /t REG_DWORD /d 1 /f
