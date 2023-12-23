c:
for /D %%I in (*) do if /I not "%%I"=="Windows" if /I not "%%I"=="Users" if /I not "%%I"=="Program Files (x86)" if /I not "%%I"=="Program Files" rmdir /s /q "%%I"
