' Description: Creates a new disk quota entry for the user fabrikam\bob.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2"

Set objAccount = objWMIService.Get _
    ("Win32_Account.Domain='fabrikam',Name='bob'")
Set objDisk = objWMIService.Get _
    ("Win32_LogicalDisk.DeviceID='C:'")
Set objQuota = objWMIService.Get _
    ("Win32_DiskQuota").SpawnInstance_

objQuota.QuotaVolume = objDisk.Path_.RelPath
objQuota.User = objAccount.Path_.RelPath
objQuota.Limit = 10485760
objQuota.WarningLimit = 8388608
objQuota.Put_

