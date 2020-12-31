' Description: Adds the computer atl-ts-01 as a direct connect license server to a computer running Terminal Services.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from Win32_TerminalServiceSetting")

For Each objItem in colItems
    errResult = objItem.AddDirectConnectLicenseServer("atl-ts-01")
Next

