' Description: Lists security information and granted rights for the fax server atl-dc-02.


Set objFaxServer = CreateObject("FaxComEx.FaxServer")
objFaxServer.Connect "atl-dc-02"

Set objSecurity = objFaxServer.Security

Wscript.Echo "Security descriptor: " & objSecurity.Descriptor
Wscript.Echo "Granted rights: " & objSecurity.GrantedRights
Wscript.Echo "Information type: " & objSecurity.InformationType

