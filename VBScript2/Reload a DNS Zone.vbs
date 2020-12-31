' Description: Reloads the DNS zone fabrikam.com from its database.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & _
        "\root\MicrosoftDNS")

Set colItems = objWMIService.ExecQuery _
    ("Select * from MicrosoftDNS_Zone Where Name = 'fabrikam.com'")

For Each objItem in colItems
    objItem.ReloadZone()
Next

