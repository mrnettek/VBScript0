' Description: Demonstration script that uses the FileSystemObject to verify that a folder exists. If the folder does exist, the script binds to that folder. Script must be run on the local computer.


Set objFSO = CreateObject("Scripting.FileSystemObject")

If objFSO.FolderExists("C:\FSO") Then
    Set objFolder = objFSO.GetFolder("C:\FSO")
Else
    Wscript.Echo "Folder does not exist."
End If

