@echo off
echo ====================================================
echo  Building TextConfig Studio into a Windows .exe ...
echo ====================================================
pip install pyinstaller
pyinstaller --onefile --noconsole --name "TextConfig_Studio" textconfig_gui.py
echo.
echo Build Complete! Your .exe is located in the dist/ folder:
echo dist\TextConfig_Studio.exe
pause
