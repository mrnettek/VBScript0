' Description: Issues an alert if available space on a disk drive falls below 100 megabytes. Will wait one hour before issuing the next alert.


dtmStartTime = Now
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objDiskDrives = objWMIService.ExecQuery _
    ("Select * from Win32_LogicalDisk")

For Each objDrive in objDiskDrives
    If objDrive.FreeSpace < 10000000 Then
        Wscript.Echo "Drive is low on disk space."
    End If
Next

Do
    Set objDiskDrives = objWMIService.ExecQuery _
        ("Select * from Win32_LogicalDisk")
    For Each objDrive in objDiskDrives
        If objDrive.FreeSpace < 10000000 Then
            intElapsedHours = DateDiff("h", dtmStartTime, Now)
            If intElapsedHours >= 1 Then
                Wscript.Echo "Drive is low on disk space." 
                dtmStartTime = Now
            End If  
        End If
    Next
    Wscript.Sleep 1000
Loop

