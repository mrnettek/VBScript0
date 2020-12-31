' Description: Lists all the services that must be running before the SMTP service can be started.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colServiceList = objWMIService.ExecQuery("Associators of " _ 
     & "{Win32_service.Name='SMTPSVC'} Where " _
         & "AssocClass=Win32_DependentService " & "Role=Dependent")   
     
For Each objService in colServiceList
    Wscript.Echo objService.DisplayName 
Next

