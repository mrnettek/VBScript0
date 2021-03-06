' Description: Uses WMI to create a  multi-string registry value in the HKLM\SOFTWARE\System Admin Scripting Guide portion of the registry.


Const HKEY_LOCAL_MACHINE = &H80000002

strComputer = "."
 
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\root\default:StdRegProv")
 
strKeyPath = "SOFTWARE\System Admin Scripting Guide"
strValueName = "Multi String Value Name"
arrStringValues = Array("first string", "second string", _
    "third string", "fourth string")
 
oReg.SetMultiStringValue HKEY_LOCAL_MACHINE,strKeyPath, _
    strValueName,arrStringValues

