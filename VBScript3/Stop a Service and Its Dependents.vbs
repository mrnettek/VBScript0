' Description: Stops the NetDDE service and all its dependent services.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colServiceList = objWMIService.ExecQuery("Associators of " _
    & "{Win32_Service.Name='NetDDE'} Where " _
        & "AssocClass=Win32_DependentService " & "Role=Antecedent" )

For Each objService in colServiceList
    objService.StopService()
Next

Wscript.Sleep 20000

Set colServiceList = objWMIService.ExecQuery _
        ("Select * from Win32_Service where Name='NetDDE'")
For Each objService in colServiceList
    errReturn = objService.StopService()
Next

