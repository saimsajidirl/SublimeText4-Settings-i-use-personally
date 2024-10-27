# Sublime-Settings:

        {
        "ignored_packages":
            ["Vintage",],
        "font_size": 18,
        "index_files": true,
        "update_check": false,
        "save_on_focus_lost": true,
        }
            


# Terminus-settings:


        [
            {
                "keys": ["alt+1"], 
                "command": "terminus_open", 
                "args": {
                    "cwd": "${file_path:${folder}}"
                }
            }
        ]


# Key-bindings:

    [
        { "keys": ["alt+1"], "command": "terminus_open", "args": { "cwd": "${file_path:${folder}}" } },
        { "keys": ["ctrl+b"], "command": "build" },
        { "keys": ["ctrl+alt+b"], "command": "cancel_build" }
    ]


# where-to-find-openwithsublime-stuff-to-delete

Computer\HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode

Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell


# bat-file-code-to-add-openwithsublime
    
    @echo off
    SET st3Path=C:\Program Files\Sublime Text\sublime_text.exe
    
    rem add it for all file types
    @reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
    
    rem add it for folders
    @reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
    @reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
    
    rem add it for desktop background
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /t REG_SZ /v "" /d "Open with Sublime Text" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%V\"" /f
    pause



