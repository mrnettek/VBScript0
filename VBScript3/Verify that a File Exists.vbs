' Description: Uses the FileSystemObject to determine whether or not the file C:\FSO\ScriptLog.txt exists on the local computer.


Set objFSO = CreateObject("Scripting.FileSystemObject")

If objFSO.FileExists("C:\FSO\ScriptLog.txt") Then
    Set objFolder = objFSO.GetFile("C:\FSO\ScriptLog.txt")
Else
    Wscript.Echo "File does not exist."
End If

