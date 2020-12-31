' Description: Configure Terminal Services to prompt for a password each time a user logs on. To disable password prompting, pass the value 0 (rather than 1) to the SetPromptForPassword method.


Const ENABLE = 1
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from Win32_TSLogonSetting")

For Each objItem in colItems
    errResult = objItem.SetPromptForPassword(ENABLE)
Next

