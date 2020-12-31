' Description: Stops all services running under the hypothetical service account Netsvc.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colServices = objWMIService.ExecQuery _
    ("Select * from Win32_Service Where StartName = '.\netsvc'")

For Each objService in colServices 
    errReturnCode = objService.StopService()
Next

