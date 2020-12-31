' Description: Indicates whether or not any hard drives on a computer have the "dirty bit" set, and should have Chkdsk.exe run.


Const LOCAL_HARD_DISK = 3

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colDisks = objWMIService.ExecQuery _
    ("Select * from Win32_LogicalDisk Where DriveType = LOCAL_HARD_DISK ")

For Each objDisk in colDisks
    Wscript.Echo "Device ID: "& vbTab &  objDisk.DeviceID       
    Wscript.Echo "Drive Type: "& vbTab & objDisk.VolumeDirty
Next

