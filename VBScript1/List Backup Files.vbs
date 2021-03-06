' Description: Lists all IIS backup files found on the local computer.


On Error Resume Next

Const MD_BACKUP_NO_MORE_BACKUPS = &H80070103
strComputer = "."

Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set objComputer = _
    objWMIService.Get("IIsComputer.Name='LM'")

intIndex = 0

Do While True
    strName = ""
    objComputer.EnumBackups strName, intIndex, _
        strVersion, strDateTime
    If (Err.Number <> 0) Then
        If (Err.Number = MD_BACKUP_NO_MORE_BACKUPS) Then
            Exit Do
        End If
    End If
        
    dtDate = DateSerial(Mid(strDateTime, 1, 4), _
        Mid(strDateTime, 5, 2), Mid(strDateTime, 7, 2))
    dtTime = TimeSerial(Mid(strDateTime, 9, 2), _
        Mid(strDateTime, 11, 2), Mid(strDateTime, 13, 2))
    strFmtDateTime = FormatDateTime(dtDate) & " " & _
        FormatDateTime(dtTime, vbLongTime)
        
    WScript.Echo "Name: " & strName
    Wscript.Echo "Version Number: " & strVersion 
    Wscript.Echo "Backup Date: " & strFmtDateTime
        
    intIndex = intIndex + 1
Loop

