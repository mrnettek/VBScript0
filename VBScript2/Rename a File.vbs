' Description: Demonstration script that uses the FileSystemObject to rename a file. Script must be run on the local computer.


Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.MoveFile "C:\FSO\ScriptLog.txt" , "C:\FSO\BackupLog.txt"

