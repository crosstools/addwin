@echo off
setlocal enabledelayedexpansion

set argcount=0
for %%x in (%*) do (
    set /A argcount+=1
    set "argvec[!argcount!]=%%~x"
)

set sum=0
for /L %%i in (1,1,%argcount%) do (
    set /A sum+=argvec[%%i]
)

echo %sum%
