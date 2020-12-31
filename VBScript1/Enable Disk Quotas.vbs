' Description: Enables disk quotas for drive C on a computer.


Const ENFORCE_QUOTAS = 1

StrComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colDisks = objWMIService.ExecQuery _
    ("Select * from Win32_QuotaSetting Where VolumePath = 'C:\\'")

For Each objDisk in colDisks
    objDisk.State = ENFORCE_QUOTAS
    objDisk.Put_
Next

