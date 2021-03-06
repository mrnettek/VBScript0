' Description: Enumerates the disk quota settings for drive C on the local computer. To enumerate disk quota settings for a different drive, change C:\ in line two to the appropriate drive letter (for example, D:\).


Set colDiskQuotas = CreateObject("Microsoft.DiskQuota.1")
colDiskQuotas.Initialize "C:\", True
 
If colDiskQuotas.QuotaState = 2 Then
    Wscript.Echo "Quota state: Enabled and enforced"
ElseIf colDiskQuotas.QuotaState = 1 Then
    Wscript.Echo "Quota state: Enabled but not enforced"
Else
    Wscript.Echo "Quota state: Disabled"
End If

Wscript.Echo "Default quota limit: " & colDiskQuotas.DefaultQuotaLimit
Wscript.Echo "Default warning limit: " & _
    colDiskQuotas.DefaultQuotaThreshold
Wscript.Echo "Record quota violations in event log: " & _
    colDiskQuotas.LogQuotaLimit
Wscript.Echo "Record warnings in event log: " & _
    colDiskQuotas.LogQuotaThreshold

