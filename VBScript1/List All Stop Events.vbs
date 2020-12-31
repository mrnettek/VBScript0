' Description: Queries the System event log for any events written due to a stop event (blue screen).


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colLoggedEvents = objWMIService.ExecQuery _
    ("Select * from Win32_NTLogEvent Where Logfile = 'System'" _
        & " and SourceName = 'SaveDump'")

For Each objEvent in colLoggedEvents
    Wscript.Echo "Event date: " & objEvent.TimeGenerated
    Wscript.Echo "Description: " & objEvent.Message
Next

