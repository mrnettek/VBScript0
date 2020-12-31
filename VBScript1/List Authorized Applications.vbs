' Description: Lists all authorized applications for the Windows Firewall current profile.


Set objFirewall = CreateObject("HNetCfg.FwMgr")
Set objPolicy = objFirewall.LocalPolicy.CurrentProfile

Set colApplications = objPolicy.AuthorizedApplications

For Each objApplication in colApplications
    Wscript.Echo "Authorized application: " & objApplication.Name
    Wscript.Echo "Application enabled: " & objApplication.Enabled
    Wscript.Echo "Application IP version: " & objApplication.IPVersion
    Wscript.Echo "Application process image file name: " & _
        objApplication.ProcessImageFileName
    Wscript.Echo "Application remote addresses: " & _
        objApplication.RemoteAddresses
    Wscript.Echo "Application scope: " & objApplication.Scope
    Wscript.Echo
Next

