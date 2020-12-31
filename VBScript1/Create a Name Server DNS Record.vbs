' Description: Creates a name server (NS) record on a DNS server.


strDNSServer = "atl-dc-03.fabrikam.com"
strContainer = "fabrikam.com"
strOwner = "atl-srv-01.fabrikam.com"
intRecordClass = 1
intTTL = 600 
strNSHost = "nameserver.fabrikam.com"
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & _
        "\root\MicrosoftDNS")

Set objItem = objWMIService.Get("MicrosoftDNS_NSType")
errResult = objItem.CreateInstanceFromPropertyData _
    (strDNSServer, strContainer, strOwner, intRecordClass, intTTL, strNSHost)

