' Description: Lists identity properties for IIS application pools.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")
Set colItems = objWMIService.ExecQuery _
    ("Select * from IIsApplicationPoolsSetting")

For Each objItem in colItems
    Wscript.Echo "WAM User Name: " & objItem.WAMUserName
    Wscript.Echo "WAM User Password: " & objItem.WAMUserPass
Next

