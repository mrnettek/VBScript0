' Description: Assigns the startup program C:\Accounting\Invoice.exe (with a startup folder of C:\Accounting\FY_2003) to users logging on to a computer running Terminal Services.


Const STARTUP_PROGRAM = "c:\accounting\invoice.exe"
Const STARTUP_FOLDER = "c:\accounting\fy_2003"
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from Win32_TSEnvironmentSetting")

For Each objItem in colItems
    errResult = objItem.InitialProgram(STARTUP_PROGRAM, STARTUP_FOLDER)
Next

