' Description: Stops sharing a shared folder named FinanceShare. This does not delete the folder from the local hard drive, but simply stops making it available over the network.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colShares = objWMIService.ExecQuery _
    ("Select * from Win32_Share Where Name = 'FinanceShare'")

For Each objShare in colShares
    objShare.Delete
Next

