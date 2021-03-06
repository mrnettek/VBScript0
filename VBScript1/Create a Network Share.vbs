' Description: Creates a shared folder named FinanceShare, setting the maximum number of simultaneous connections to 25 and adding a share description.


Const FILE_SHARE = 0
Const MAXIMUM_CONNECTIONS = 25

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objNewShare = objWMIService.Get("Win32_Share")

errReturn = objNewShare.Create _
    ("C:\Finance", "FinanceShare", FILE_SHARE, _
        MAXIMUM_CONNECTIONS, "Public share for the Finance group.")

