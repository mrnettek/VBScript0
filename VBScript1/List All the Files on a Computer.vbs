' Description: Enumerates all the files on a computer. This is  a demonstration script; if actually run, it could take an hour or more to complete, depending on the number of files on the computer. Depending on the number of files and on available memory, this script could also fail before finishing.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colFiles = objWMIService.ExecQuery("Select * from CIM_Datafile")

For Each objFile in colFiles
    Wscript.Echo objFile.Name
Next

