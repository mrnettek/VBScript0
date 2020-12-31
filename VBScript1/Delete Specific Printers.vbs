' Description: Deletes all HP QuietJet printers installed on a computer.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colInstalledPrinters =  objWMIService.ExecQuery _
    ("Select * from Win32_Printer Where DriverName = 'HP QuietJet'")

For Each objPrinter in colInstalledPrinters
    objPrinter.Delete_
Next

