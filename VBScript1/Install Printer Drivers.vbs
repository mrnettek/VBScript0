' Description: Installs the printer driver for an Apple LaserWriter 8500 printer.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objDriver = objWMIService.Get("Win32_PrinterDriver")
objWMIService.Security_.Privileges.AddAsString "SeLoadDriverPrivilege", True

objDriver.Name = "Apple LaserWriter 8500"
objDriver.SupportedPlatform = "Windows NT x86"
objDriver.Version = "3"
errResult = objDriver.AddPrinterDriver(objDriver)

