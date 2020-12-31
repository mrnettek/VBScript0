' Description: Returns the version of IIS running on a computer.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery("Select * from IIsWebInfo")

For Each objItem in colItems
    Wscript.Echo "Major IIS Version Number: " & _
        objItem.MajorIIsVersionNumber
    Wscript.Echo "Minor IIS Version Number: " & _
        objItem.MinorIIsVersionNumber
    Wscript.Echo "Name: " & objItem.Name
Next

