@echo off

"%PROGRAMFILES%\7-Zip\7z.exe" a -tgzip "%CD%\initrd.gz" "%CD%\initrd"

FTP -i -s:ftp.ini -v

timeout /t 5

pause

del /q initrd.gz
