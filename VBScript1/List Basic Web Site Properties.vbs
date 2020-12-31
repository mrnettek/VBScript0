' Description: Lists global Web site metabase property values for a server running IIS 6.0.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from IIsWebServiceSetting")

For Each objItem in colItems
    Wscript.Echo "Allow Keep Alive: " & objItem.AllowKeepAlive
    Wscript.Echo "Connection Timeout: " & objItem.ConnectionTimeout
    Wscript.Echo "Don't Log: " & objItem.DontLog
    Wscript.Echo "Server Comment: " & objItem.ServerComment
Next

