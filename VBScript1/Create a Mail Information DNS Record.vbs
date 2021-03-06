' Description: Creates a mail information (MI) record on a DNS server.


strDNSServer = "atl-dc-03.fabrikam.com"
strContainer = "fabrikam.com"
strOwner = "administrator.fabrikam.com"
intRecordClass = 1
intTTL = 600 
strAdminMailbox = "dnsadmin.fabrikam.com"
strErrorMailbox = "support.fabrikam.com"
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & _
        "\root\MicrosoftDNS")

Set objItem = objWMIService.Get("MicrosoftDNS_MInfoType")
errResult = objItem.CreateInstanceFromPropertyData _
    (strDNSServer, strContainer, strOwner, intRecordClass, intTTL, _
        strAdminMailbox, strErrorMailbox)

