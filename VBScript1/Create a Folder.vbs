' Description: Demonstration script that uses the FileSystemObject to create a folder. Script must be run on the local computer.


Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.CreateFolder("C:\FSO")

