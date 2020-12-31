' Description: Closes port 9999 in the Windows Firewall current profile.


Set objFirewall = CreateObject("HNetCfg.FwMgr")
Set objPolicy = objFirewall.LocalPolicy.CurrentProfile

Set colPorts = objPolicy.GloballyOpenPorts
errReturn = colPorts.Remove(9999,6)

