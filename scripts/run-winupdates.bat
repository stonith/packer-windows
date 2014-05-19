cmd /c schtasks /create /tn "winupdates" /tr "powershell -file a:\win-updates.ps1" /sc once /sd 01/01/3000 /st 00:00 /rl highest /ru vagrant /rp vagrant
cmd /c schtasks /run /tn "winupdates" /I
cmd /c taskkill /F /IM sshd.exe /T
timeout 30
