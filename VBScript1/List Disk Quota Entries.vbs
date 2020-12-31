' Description: Enumerates disk quota information (including user name, warning and quota limits, and disk space used) for each disk quota entry on a computer.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colDiskQuotas = objWMIService.ExecQuery("Select * from Win32_DiskQuota")

For each objQuota in colDiskQuotas
    Wscript.Echo "Disk Space Used: " & vbTab &  objQuota.DiskSpaceUsed
    Wscript.Echo "Limit: " & vbTab &  objQuota.Limit   
    Wscript.Echo "Quota Volume: " & vbTab &  objQuota.QuotaVolume     
    Wscript.Echo "Status: " & vbTab &  objQuota.Status 
    Wscript.Echo "User: " & vbTab &  objQuota.User     
    Wscript.Echo "Warning Limit: " & vbTab &  objQuota.WarningLimit
Next

