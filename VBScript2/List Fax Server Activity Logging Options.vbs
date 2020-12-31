' Description: Lists logging options for the fax server atl-dc-02.


Set objFaxServer = CreateObject("FaxComEx.FaxServer")
objFaxServer.Connect "atl-dc-02"

Set objFaxLoggingOptions = objFaxServer.LoggingOptions
Set objFaxActivityLogging = objFaxLoggingOptions.ActivityLogging
Wscript.Echo "Database path: " & _
    objFaxActivityLogging.DatabasePath
Wscript.Echo "Log incoming: " & _
    objFaxActivityLogging.LogIncoming
Wscript.Echo "Log outgoing: " & _
    objFaxActivityLogging.LogOutgoing

