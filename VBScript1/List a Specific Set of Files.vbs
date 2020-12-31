' Description: Returns a list of all the files larger than 1,000,000 bytes.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colFiles = objWMIService. _
    ExecQuery("Select * from CIM_DataFile where FileSize > 1000000")

For Each objFile in colFiles
    Wscript.Echo objFile.Name & " -- " & objFile.FileSize
Next

