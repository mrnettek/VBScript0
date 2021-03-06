' Description: Backs up and clears an event log if the log file size is larger than 20 megabytes.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate, (Backup, Security)}!\\" _
        & strComputer & "\root\cimv2")

Set colLogFiles = objWMIService.ExecQuery _
    ("Select * from Win32_NTEventLogFile")

For Each objLogfile in colLogFiles
    If objLogFile.FileSize > 100000 Then
       strBackupLog = objLogFile.BackupEventLog _
           ("c:\scripts\" & objLogFile.LogFileName & ".evt")
       objLogFile.ClearEventLog()
    End If
Next

