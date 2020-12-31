' Description: Removes a hypothetical service named DbService.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colListOfServices = objWMIService.ExecQuery _
    ("Select * from Win32_Service Where Name = 'DbService'")

For Each objService in colListOfServices
    objService.StopService()
    objService.Delete()
Next

