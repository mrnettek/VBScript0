' Description: Demonstration script showing how WMI data can be sorted using a disconnected recordset (by itself, WMI does not allow you to specify a sort order for returned data). In this script, service information is retrieved using WMI and is stored in a disconnected recordset, a recordset that is not tied to a physical data source. The Sort method is then used to sort the service data by service state rather than by service name.


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

