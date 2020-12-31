' Description: Demonstrates a method for converting the Universal Time Coordinate (UTC) values used by WMI to standard date-time values. The script retrieves the date that the operating system was installed, and passes that UTC value to a function named WMIDateStringToDate. This function converts the UTC value (such as 20011029113047.000000-480) to a standard date-time value (such as 10/29/200111:30:47 AM).


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objOS = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")
 
For Each strOS in objOS
    dtmInstallDate = strOS.InstallDate
    strReturn = WMIDateStringToDate(dtmInstallDate)
    Wscript.Echo strReturn 
Next
 
Function WMIDateStringToDate(dtmInstallDate)
    WMIDateStringToDate = CDate(Mid(dtmInstallDate, 5, 2) & "/" & _
        Mid(dtmInstallDate, 7, 2) & "/" & Left(dtmInstallDate, 4) _
            & " " & Mid (dtmInstallDate, 9, 2) & ":" & _
                Mid(dtmInstallDate, 11, 2) & ":" & Mid(dtmInstallDate, _
                    13, 2))
End Function

