' Description: Demonstration script that uses the FileSystemObject to delete a folder. Script must be run on the local computer.


Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFolder("C:\FSO")

