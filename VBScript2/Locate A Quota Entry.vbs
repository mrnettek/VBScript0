' Description: Lists quota information for the user fabrikam\bob.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objQuota = objWMIService.Get _
    ("Win32_DiskQuota.QuotaVolume='Win32_LogicalDisk.DeviceID=""C:""'," & _
        "User='Win32_Account.Domain=""fabrikam"",Name=""bob""'")

Wscript.Echo objQuota.Limit

