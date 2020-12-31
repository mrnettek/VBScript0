' Description: Returns a list of all the hidden folders on a computer.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colFiles = objWMIService.ExecQuery _
    ("Select * from Win32_Directory Where Hidden = True")

For Each objFile in colFiles
    Wscript.Echo objFile.Name
Next

