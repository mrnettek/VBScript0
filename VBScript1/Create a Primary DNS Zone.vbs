' Description: Creates a primary DNS zone named accounting.fabrikam.com on a DNS server.


strZoneName = "accounting.fabrikam.com"
intPrimaryZone = 1
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & _
        "\root\MicrosoftDNS")

Set objItem = objWMIService.Get("MicrosoftDNS_Zone")
errResult = objItem.CreateZone(strZoneName, intPrimaryZone)

