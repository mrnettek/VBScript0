' Description: Deletes the disk quota entry for a user named kenmyer. This script must be run on the local computer.


Set colDiskQuotas = CreateObject("Microsoft.DiskQuota.1")

colDiskQuotas.Initialize "C:\", True
set objUser = colDiskQuotas.FindUser("kenmyer")
colDiskQuotas.DeleteUser(objUser)

