' Description: Returns information about all the cluster resource types on a computer.


On Error Resume Next

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\mscluster")

Set colItems = objWMIService.ExecQuery("Select * from MSCluster_ResourceType")

For Each objItem in colItems
    Wscript.Echo "Administrator extensions: " & objItem.AdminExtensions
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "Characteristics: " & objItem.Characteristics
    Wscript.Echo "Delete requires all nodes: " & objItem.DeleteRequiresAllNodes
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Display name: " & objItem.DisplayName
    Wscript.Echo "DLL name: " & objItem.DllName
    Wscript.Echo "Flags: " & objItem.Flags
    Wscript.Echo "Installation date: " & objItem.InstallDate
    Wscript.Echo "Is alive poll interval: " & objItem.IsAlivePollInterval
    Wscript.Echo "Local quorum capable: " & objItem.LocalQuorumCapable
    Wscript.Echo "Looks alive poll interval: " & objItem.LooksAlivePollInterval
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "Quorum capable: " & objItem.QuorumCapable
    Wscript.Echo "Status: " & objItem.Status
    Wscript.Echo
Next

