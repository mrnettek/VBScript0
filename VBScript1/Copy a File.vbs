' Description: Demonstration script that uses the FileSystemObject to copy a file. Script must be run on the local computer.


Const OverwriteExisting = TRUE

Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.CopyFile "C:\FSO\ScriptLog.txt" , "D:\Archive\", OverwriteExisting

