' Description: Demonstration script that uses the FileSystemObject to copy a folder to a new location. Script must be run on the local computer.


Const OverWriteFiles = TRUE

Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.CopyFolder "C:\Scripts" , "C:\FSO" , OverWriteFiles

