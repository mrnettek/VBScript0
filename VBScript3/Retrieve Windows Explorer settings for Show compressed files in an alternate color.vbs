On Error Resume Next
HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set objReg = GetObject("winmgmts:\\" & strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
ValueName = "ShowCompColor"
objReg.GetDWORDValue HKEY_CURRENT_USER, strKeyPath, ValueName, dwValue
If IsNull(strValue) Then
    Wscript.Echo "Show compressed files in an alternate color:  The value is either Null or could not be found in the registry."
Else
    Wscript.Echo "Show compressed files in an alternate color: ", dwValue
End If

