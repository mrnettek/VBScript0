' Description: Demonstration script that uses the FileSystemObject to rename a folder. Script must be run on the local computer.


Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.MoveFolder "C:\FSO\Samples" , "C:\FSO\Scripts"
