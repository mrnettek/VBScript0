' Description: Returns a list of all log modules found on a server.


strComputer = "LocalHost"
Set colLogs = GetObject("IIS://" & strComputer & "/Logging")
 
For Each objLog in colLogs
    Wscript.Echo "Name: " & objLog.Name
Next

