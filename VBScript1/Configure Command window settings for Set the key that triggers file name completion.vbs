HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set objReg = GetObject("winmgmts:\\" & strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Microsoft\Command Processor"
objReg.CreateKey HKEY_CURRENT_USER, strKeyPath
ValueName = "CompletionChar"
dwValue = &H6
objReg.SetDWORDValue HKEY_CURRENT_USER, strKeyPath, ValueName, dwValue


