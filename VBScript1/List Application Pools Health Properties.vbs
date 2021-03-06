' Description: Lists IIS application pools health information.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")
Set colItems = objWMIService.ExecQuery _
    ("Select * from IIsApplicationPoolsSetting")

For Each objItem in colItems
    Wscript.Echo "Pinging Enabled: " & objItem.PingingEnabled
    Wscript.Echo "Ping Interval: " & objItem.PingInterval
    Wscript.Echo "Rapid Fail Protection: " & _
        objItem.RapidFailProtection
    Wscript.Echo "Rapid Fail Protection Interval: " & _
        objItem.RapidFailProtectionInterval
    Wscript.Echo "Rapid Fail Protection Maximum Crashes: " & _
        objItem.RapidFailProtectionMaxCrashes
    Wscript.Echo "Shutdown Time Limit: " & objItem.ShutdownTimeLimit
    Wscript.Echo "Startup Time Limit: " & objItem.StartupTimeLimit
Next

