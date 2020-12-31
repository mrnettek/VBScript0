' Description: Enables the Accounting terminal on a computer running Terminal Services. To disable the Accounting terminal, set the parameter of the Enable method to 0 rather than 1.


Const ENABLE = 1
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from Win32_Terminal Where TerminalName = 'Accounting'")

For Each objItem in colItems
    errResult = objItem.Enable(ENABLE)
Next

