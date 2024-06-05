@ECHO OFF
copy "%cd%\Templates\" "%appdata%\Microsoft\Windows\Templates\"
regedit.exe /S item_format.reg
echo "Explorer will be restarted!"
TIMEOUT /T 10
taskkill /f /im explorer.exe & start explorer.exe
