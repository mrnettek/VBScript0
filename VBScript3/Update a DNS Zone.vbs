' Description: Forces an update of the DNS zone accounting.fabrikam.com from Active Directory.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & _
        "\root\MicrosoftDNS")

Set colItems = objWMIService.ExecQuery _
    ("Select * from MicrosoftDNS_Zone Where Name = 'accounting.fabrikam.com'")

For Each objItem in colItems
    objItem.UpdateFromDS()
Next

