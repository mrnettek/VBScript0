' Description: Lists all the printer drivers that have been installed on a computer.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colInstalledPrinters =  objWMIService.ExecQuery _
    ("Select * from Win32_PrinterDriver")

For each objPrinter in colInstalledPrinters
    Wscript.Echo "Configuration File: " & objPrinter.ConfigFile
    Wscript.Echo "Data File: " & objPrinter.DataFile
    Wscript.Echo "Description: " & objPrinter.Description
    Wscript.Echo "Driver Path: " & objPrinter.DriverPath
    Wscript.Echo "File Path: " & objPrinter.FilePath
    Wscript.Echo "Help File: " & objPrinter.HelpFile
    Wscript.Echo "INF Name: " & objPrinter.InfName
    Wscript.Echo "Monitor Name: " & objPrinter.MonitorName
    Wscript.Echo "Name: " & objPrinter.Name
    Wscript.Echo "OEM Url: " & objPrinter.OEMUrl
    Wscript.Echo "Supported Platform: " & objPrinter.SupportedPlatform
    Wscript.Echo "Version: " & objPrinter.Version
Next

