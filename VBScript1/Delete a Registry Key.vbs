' Description: Uses WMI to delete the registry key HKLM\SOFTWARE\System Admin Scripting Guide.


Const HKEY_LOCAL_MACHINE = &H80000002

strComputer = "."
 
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\root\default:StdRegProv")
 
strKeyPath = "SOFTWARE\System Admin Scripting Guide"
 
oReg.DeleteKey HKEY_LOCAL_MACHINE, strKeyPath

