' Description: Adds a Command Prompt Here command to the Windows Explorer system menu. If a user selects Command Prompt Here from the system menu, a command window will be displayed, open to the same folder as the current Windows Explorer folder.


Set objShell = CreateObject("WScript.Shell")
 
objShell.RegWrite "HKCR\Folder\Shell\MenuText\Command\", _
    "cmd.exe /k cd " & chr(34) & "%1" & chr(34)
objShell.RegWrite "HKCR\Folder\Shell\MenuText\", "Command Prompt Here"

