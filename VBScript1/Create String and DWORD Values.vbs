' Description: Uses WMI to create string and DWORD values under the HKLM\SOFTWARE\System Admin Scripting Guide portion of the registry.


Const HKEY_LOCAL_MACHINE = &H80000002

strComputer = "."
 
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\root\default:StdRegProv")
 
strKeyPath = "SOFTWARE\System Admin Scripting Guide"
strValueName = "String Value Name"
strValue = "string value"
oReg.SetStringValue HKEY_LOCAL_MACHINE,strKeyPath,strValueName,strValue
 
strValueName = "DWORD Value Name"
dwValue = 82
oReg.SetDWORDValue HKEY_LOCAL_MACHINE,strKeyPath,strValueName,dwValue

