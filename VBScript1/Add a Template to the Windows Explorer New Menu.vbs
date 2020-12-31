' Description: Demonstrates how to add VBScript Script File to the New context menu in Windows Explorer. Requires a script template named Template.vbs to be in the \Windows\System32\ShellExt folder (on Windows XP and Windows Server 2003), or in the \Winnt\ShellNew folder (Windows 2000).


Set objShell = WScript.CreateObject("WScript.Shell")
objShell.RegWrite "HKCR\.VBS\ShellNew\FileName","template.vbs"

