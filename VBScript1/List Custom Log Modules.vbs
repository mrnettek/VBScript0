' Description: Lists the names of all the custom log modules in an IIS server.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery("Select * from IIsCustomLogModule")
 
For Each objItem in colItems
    Wscript.Echo "Name: " & objItem.Name
Next

