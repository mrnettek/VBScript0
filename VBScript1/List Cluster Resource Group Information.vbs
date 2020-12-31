' Description: Returns information about all the cluster resource groups on a computer.


On Error Resume Next

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\mscluster")

Set colItems = objWMIService.ExecQuery("Select * from MSCluster_ResourceGroup")

For Each objItem in colItems
    Wscript.Echo "Auto-failback type: " & objItem.AutoFailbackType
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "Characteristics: " & objItem.Characteristics
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Failback window end: " & objItem.FailbackWindowEnd
    Wscript.Echo "Failback window start: " & objItem.FailbackWindowStart
    Wscript.Echo "Failover period: " & objItem.FailoverPeriod
    Wscript.Echo "Failover threshold: " & objItem.FailoverThreshold
    Wscript.Echo "Flags: " & objItem.Flags
    Wscript.Echo "Installation date: " & objItem.InstallDate
    Wscript.Echo "Load balance state: " & objItem.LoadBalState
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "Persistent state: " & objItem.PersistentState
    Wscript.Echo "State: " & objItem.State
    Wscript.Echo "Status: " & objItem.Status
    Wscript.Echo
Next

