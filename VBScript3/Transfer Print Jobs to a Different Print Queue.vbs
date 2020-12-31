' Description: Changes the TCP/IP printer port for a logical printer, which has the net effect of transferring existing print jobs to the new printer port, and thus to a different printer.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objPrinter = objWMIService.Get _
    ("Win32_Printer.DeviceID='ArtDepartmentPrinter'")

objPrinter.PortName = "IP_192.168.1.10"
objPrinter.Put_

