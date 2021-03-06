' Description: Demonstrates the use of StdOut as a method for indicating the progress being made by a script.


Wscript.Echo "Processing information. This might take several minutes."

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colServices = objWMIService.ExecQuery("Select * from Win32_Service")

For Each objService in colServices
    Wscript.StdOut.Write(".")
Next

Wscript.StdOut.WriteLine
Wscript.Echo "Service information processed."

