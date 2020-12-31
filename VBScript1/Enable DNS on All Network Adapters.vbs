' Description: Enables DNS for all network adapters on a computer, configuring the host name to fabrikam1 and designating hr.fabrikam.com and research.fabrikam.com as DNS search order suffixes.


On Error Resume Next

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objNetworkSettings = objWMIService.Get("Win32_NetworkAdapterConfiguration")
strHostName = "fabrikam1"
arrDNSSuffixes = Array("hr.fabrikam.com", "research.fabrikam.com")
objNetworkSettings.EnableDNS strHostName, , , arrDNSSuffixes

