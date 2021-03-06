' Description: Creates an IPv6 address record (AAAA) on a DNS server.


strDNSServer = "atl-dc-03.fabrikam.com"
strContainer = "fabrikam.com"
strOwner = "ipv6.fabrikam.com"
intRecordClass = 1
intTTL = 600 
strIPv6Address = "4321:0:1:2:3:4:567:89ab"
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & _
        "\root\MicrosoftDNS")

Set objItem = objWMIService.Get("MicrosoftDNS_AAAAType")
errResult = objItem.CreateInstanceFromPropertyData _
    (strDNSServer, strContainer, strOwner, intRecordClass, _
        intTTL, strIPv6Address)

