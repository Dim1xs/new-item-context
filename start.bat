@ECHO OFF
copy "%cd%\Templates\" "%appdata%\Microsoft\Windows\Templates\"
regedit.exe /S item_format.reg
TIMEOUT /T 10
