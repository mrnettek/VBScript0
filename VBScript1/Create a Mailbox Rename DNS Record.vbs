' Description: Creates a mailbox rename (MR) record on a DNS server.


strDNSServer = "atl-dc-03.fabrikam.com"
strContainer = "fabrikam.com"
strOwner = "old-mailbox.fabrikam.com"
intRecordClass = 1
intTTL = 600 
strMailbox = "newmailbox.fabrikam.com"
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & _
        "\root\MicrosoftDNS")

Set objItem = objWMIService.Get("MicrosoftDNS_MRType")
errResult = objItem.CreateInstanceFromPropertyData _
    (strDNSServer, strContainer, strOwner, intRecordClass, intTTL, strMailbox)

