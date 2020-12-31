' Description: Deletes a TCP/IP printer port from a computer.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colInstalledPorts =  objWMIService.ExecQuery _
    ("Select * from Win32_TCPIPPrinterPort Where Name = 'IP_169.254.110.14'")

For Each objPort in colInstalledPorts 
    objPort.Delete
Next

