' Description: Indicates whether IIS settings can be edited while the service is running.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from IIsComputerSetting")

For Each objItem in colItems
    Wscript.Echo "Enable Edit While Running: " & _
        objItem.EnableEditWhileRunning
Next

