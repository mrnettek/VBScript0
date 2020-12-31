' Description: Installs a hypothetical service named Db.exe.


Const OWN_PROCESS = 16
Const NOT_INTERACTIVE = False
Const NORMAL_ERROR_CONTROL = 2

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set objService = objWMIService.Get("Win32_BaseService")

errReturn = objService.Create("DbService" ,"Personnel Database" , _
    "c:\windows\system32\db.exe", OWN_PROCESS, NORMAL_ERROR_CONTROL,_
        "Manual", NOT_INTERACTIVE, "NT AUTHORITY\LocalService", ""  )

