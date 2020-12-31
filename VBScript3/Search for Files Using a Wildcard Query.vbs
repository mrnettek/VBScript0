' Description: Uses the Like keyword to search for all files on a computer that begin with the tilde (~).


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & "\root\cimv2")

Set colFiles = objWMIService.ExecQuery _
    ("Select * from CIM_DataFile where FileName Like '%~%'")

For Each objFile in colFiles
    Wscript.Echo objFile.Name
Next

