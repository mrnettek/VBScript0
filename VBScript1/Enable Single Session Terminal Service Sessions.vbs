' Description: Enables single session Terminal Service sessions on a computer. To allow multiple sessions, pass the value 0 (rather than 1) to the SetSingleSession parameter.


Const ENABLE = 1
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from Win32_TerminalServiceSetting")

For Each objItem in colItems
    errResult = objItem.SetSingleSession(ENABLE)
Next

