' Description: Starts Notepad.exe on a remote computer. On Windows XP and Windows Server 2003, Notepad will run in a hidden window.


strComputer = "webserver"
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\cimv2:Win32_Process")
 
Error = objWMIService.Create("notepad.exe", null, null, intProcessID)

If Error = 0 Then
    Wscript.Echo "Notepad was started with a process ID of " _
         & intProcessID & "."
Else
    Wscript.Echo "Notepad could not be started due to error " & _
        Error & "."
End If

