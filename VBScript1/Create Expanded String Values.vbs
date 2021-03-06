' Description: Uses WMI to create an expanded string value under the HKLM\SOFTWARE\System Admin Scripting Guide portion of the registry.


Const HKEY_LOCAL_MACHINE = &H80000002

strComputer = "."
 
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\root\default:StdRegProv")
 
strKeyPath = "SOFTWARE\System Admin Scripting Guide"
strValueName = "Expanded String Value Name"
strValue = "%PATHEXT%"
 
oReg.SetExpandedStringValue _
    HKEY_LOCAL_MACHINE,strKeyPath,strValueName,strValue

