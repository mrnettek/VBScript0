' Description: Installs two logical network printers (with different printer priorities) for the same physical print device.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objPrinter = objWMIService.Get("Win32_Printer").SpawnInstance_

objPrinter.DriverName = "HP LaserJet 4000 Series PS"
objPrinter.PortName   = "IP_169.254.110.160"
objPrinter.DeviceID   = "PublicPrinter"
objPrinter.Location = "USA/Redmond/Building 37/Room 114"
objPrinter.Network = True
objPrinter.Shared = True
objPrinter.ShareName = "PublicPrinter"
objPrinter.Put_
 
objPrinter.DriverName = "HP LaserJet 4000 Series PS"
objPrinter.PortName   = "IP_169.254.110.160"
objPrinter.DeviceID   = "PrivatePrinter"
objPrinter.Location = "USA/Redmond/Building 37/Room 114"
objPrinter.Priority = 2
objPrinter.Network = True
objPrinter.Shared = True
objPrinter.Hidden = True
objPrinter.ShareName = "PrivatePrinter"
objPrinter.Put_

