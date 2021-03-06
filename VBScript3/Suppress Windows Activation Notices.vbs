' Description: Suppresses the Windows Activation reminder notices on a computer. This does not preclude the need to activate the computer; it simply prevents users from seeing the periodic reminders.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colWPASettings = objWMIService.ExecQuery _
    ("Select * from Win32_WindowsProductActivation")
 
For Each objWPASetting in colWPASettings
    objWPASetting.SetNotification(0)
Next

