' Description: Returns the status of the Web server W3SVC/2142295254.


strComputer = "LocalHost"
Set objIIS = GetObject("IIS://" & strComputer & "/W3SVC/2142295254")
intStatus = objIIS.Status
 
Select Case intStatus
    Case 1 Wscript.Echo "The Web server is starting."
    Case 2 Wscript.Echo "The Web server is running."
    Case 3 Wscript.Echo "The Web server is stopping."
    Case 4 Wscript.Echo "The Web server is stopped."
    Case 5 Wscript.Echo "The Web server is pausing."
    Case 6 Wscript.Echo "The Web server is paused."
    Case 7 Wscript.Echo "The Web server is continuing."
End Select

