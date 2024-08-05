@echo off
SET "st3Path=C:\Program Files\Sublime Text\sublime_text.exe"

rem Add to right-click context menu on desktop
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime" /t REG_SZ /v "" /d "Open with Sublime Text" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime" /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime\command" /t REG_SZ /v "" /d "\"%st3Path%\" \"%%V\"" /f

pause
