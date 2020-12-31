' Description: Demonstration script that uses the FileSystemObject's GetTempName method to generate a file name, and then creates a file by that name.


Set objFSO = CreateObject("Scripting.FileSystemObject")

strPath = "C:\FSO"
strFileName = objFSO.GetTempName
strFullName = objFSO.BuildPath(strPath, strFileName)
Set objFile = objFSO.CreateTextFile(strFullName)
objFile.Close
objFSO.DeleteFile(strFullName)

