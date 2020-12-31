' Description: Opens port 9999 in the Windows Firewall current profile.


Set objFirewall = CreateObject("HNetCfg.FwMgr")
Set objPolicy = objFirewall.LocalPolicy.CurrentProfile

Set objPort = CreateObject("HNetCfg.FwOpenPort")
objPort.Port = 9999
objPort.Name = "Test Port"
objPort.Enabled = FALSE
Set colPorts = objPolicy.GloballyOpenPorts

errReturn = colPorts.Add(objPort)

