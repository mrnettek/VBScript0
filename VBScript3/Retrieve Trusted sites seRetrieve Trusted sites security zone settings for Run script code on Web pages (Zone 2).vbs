On Error Resume Next
HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set objReg = GetObject("winmgmts:\\" & strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2"
ValueName = "1400"
objReg.GetDWORDValue HKEY_CURRENT_USER, strKeyPath, ValueName, dwValue
If IsNull(strValue) Then
    Wscript.Echo "Run script code on Web pages (Zone 2):  The value is either Null or could not be found in the registry."
Else
    Wscript.Echo "Run script code on Web pages (Zone 2): ", dwValue
End If

