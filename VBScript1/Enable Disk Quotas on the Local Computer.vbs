' Description: Enables disk quotas for drive C on the local computer. To enable disk quotas for a different drive, change C:\ in line two to the appropriate drive letter (for example, D:\). To disable disk quotas, set the value of the constant ENABLE_QUOTAS to 0. To enable, but not enforce, disk quotas, set this value to 1. This script must be run on the local computer.


Const ENABLE_QUOTAS = 2

Set colDiskQuotas = CreateObject("Microsoft.DiskQuota.1")
colDiskQuotas.Initialize "C:\", True
colDiskQuotas.QuotaState = ENABLE_QUOTAS

