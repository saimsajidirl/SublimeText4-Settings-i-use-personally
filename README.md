#Sublime-Settings:
{
"ignored_packages":
["Vintage",],
"font_size": 18,
"index_files": true,
"update_check": false,
"save_on_focus_lost": true,
}



#Terminus-settings:
[
    {
        "keys": ["alt+1"], 
        "command": "terminus_open", 
        "args": {
            "cwd": "${file_path:${folder}}"
        }
    }
]


#Key-bindings:
[
    { "keys": ["alt+1"], "command": "terminus_open", "args": { "cwd": "${file_path:${folder}}" } },

    { "keys": ["ctrl+b"], "command": "build" },
    { "keys": ["ctrl+alt+b"], "command": "cancel_build" }
]


#how-toget-open-with-streamlit
create folder here
Computer\HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode
