' Description: Creates a custom disk quota entry for a user named kenmyer. This script must be run on the local computer.


Set colDiskQuotas = CreateObject("Microsoft.DiskQuota.1")

colDiskQuotas.Initialize "C:\", True
Set objUser = colDiskQuotas.AddUser("kenmyer")
Set objUser = colDiskQuotas.FindUser("kenmyer")
objUser.QuotaLimit = 50000000

