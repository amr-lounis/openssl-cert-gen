@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

SET this_file=%~dp0
SET this_path=%this_file:~0,-1%
echo "mode ADMIN"
echo --------------------------
SET target_path=C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1	sit1.dev.local >> %target_path%
echo 127.0.0.1	sit2.dev.local >> %target_path%
echo 127.0.0.1	sit3.dev.local >> %target_path%

echo 127.0.0.1	sit >> %target_path%
echo 127.0.0.1	sit.dev >> %target_path%
echo 127.0.0.1	sit.local >> %target_path%
echo --------------------------
pause
