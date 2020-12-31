' Description: Resumes all the paused printers on a print server.


Const PRINTER_IS_PAUSED = 8

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colInstalledPrinters =  objWMIService.ExecQuery _
    ("Select * from Win32_Printer where ExtendedPrinterStatus = 8")

For Each objPrinter in colInstalledPrinters 
    ObjPrinter.Resume()
Next

