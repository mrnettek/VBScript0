' Description: Demonstration script that retrieves the status for all the services installed on a computer, and then saves the service name and status to a text file.


Const ForAppending = 8

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
    ("c:\scripts\service_status.txt", ForAppending, True)

Set objWMIService=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\root\cimv2")
Set colServices = objWMIService.ExecQuery("Select * from Win32_Service")

For Each objService in colServices    
    objTextFile.WriteLine(objService.DisplayName & vbTab & _
        objService.State)
Next
objTextFile.Close

