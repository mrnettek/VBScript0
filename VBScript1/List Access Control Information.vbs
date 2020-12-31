' Description: Lists IIS access control information.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery("Select * from IIsAdminACL")
 
For Each objItem in colItems
    Wscript.Echo "Group: " & objItem.Group
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "Owner: " & objItem.Owner
    Wscript.Echo "Control Flags: " & objItem.ControlFlags
Next

