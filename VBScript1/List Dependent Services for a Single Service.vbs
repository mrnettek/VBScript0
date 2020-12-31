' Description: Enumerates all the services that cannot start until the Rasman service has started.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colServiceList = objWMIService.ExecQuery("Associators of " _
    & "{Win32_Service.Name='rasman'} Where " _
        & "AssocClass=Win32_DependentService " & "Role=Antecedent" )

For Each objService in colServiceList
    Wscript.Echo objService.DisplayName 
Next

