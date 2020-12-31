On Error Resume Next

Const wbemFlagReturnImmediately = &h10
Const wbemFlagForwardOnly = &h20

arrComputers = Array(".")
For Each strComputer In arrComputers
   WScript.Echo
   WScript.Echo "=========================================="
   WScript.Echo "Computer: " & strComputer
   WScript.Echo "=========================================="

   Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\MSAPPS11")
   Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_ExcelActiveWorkbook", "WQL", _
                                          wbemFlagReturnImmediately + wbemFlagForwardOnly)

   For Each objItem In colItems
      WScript.Echo "ActiveSheet: " & objItem.ActiveSheet
      WScript.Echo "ActiveWindowType: " & objItem.ActiveWindowType
      WScript.Echo "ActiveWindowZoom: " & objItem.ActiveWindowZoom
      WScript.Echo "Author: " & objItem.Author
      WScript.Echo "CreateDate: " & WMIDateStringToDate(objItem.CreateDate)
      WScript.Echo "Format: " & objItem.Format
      WScript.Echo "LastAuthor: " & objItem.LastAuthor
      WScript.Echo "LastSavedDate: " & WMIDateStringToDate(objItem.LastSavedDate)
      WScript.Echo "Name: " & objItem.Name
      WScript.Echo "Path: " & objItem.Path
      WScript.Echo "SheetCount: " & objItem.SheetCount
      WScript.Echo "Size: " & objItem.Size
      WScript.Echo
   Next
Next


Function WMIDateStringToDate(dtmDate)
WScript.Echo dtm: 
	WMIDateStringToDate = CDate(Mid(dtmDate, 5, 2) & "/" & _
	Mid(dtmDate, 7, 2) & "/" & Left(dtmDate, 4) _
	& " " & Mid (dtmDate, 9, 2) & ":" & Mid(dtmDate, 11, 2) & ":" & Mid(dtmDate,13, 2))
End Function

