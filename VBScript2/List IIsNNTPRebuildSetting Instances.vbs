' Description: Demonstration script that lists all the instances of the IIsNNTPRebuildSetting class.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from IIsNntpRebuildSetting")
 
For Each objItem in colItems
    Wscript.Echo "Name: " & objItem.Name
Next

