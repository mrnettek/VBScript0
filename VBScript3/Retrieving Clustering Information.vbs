' Description: Returns basic information about a cluster.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\mscluster")

Set colItems = objWMIService.ExecQuery("Select * from MSCluster_Cluster")

For Each objItem in colItems
    Wscript.Echo "Administrator extensions: " & objItem.AdminExtensions
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "Dedicated: " & objItem.Dedicated
    Wscript.Echo "Default network role: " & objItem.DefaultNetworkRole
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Enable event log replication: " & _
        objItem.EnableEventLogReplication
    Wscript.Echo "Group administrator extensions: " & _
        objItem.GroupAdminExtensions
    Wscript.Echo "Identifying descriptions: " & objItem.IdentifyingDescriptions
    Wscript.Echo "Installation date: " & objItem.InstallDate
    Wscript.Echo "Maintenance file: " & objItem.MaintenanceFile
    Wscript.Echo "Maximum number of nodes: " & objItem.MaxNumberOfNodes
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "Name format: " & objItem.NameFormat
    Wscript.Echo "Network administrator extensions: " & _
        objItem.NetworkAdminExtensions
    Wscript.Echo "Network interface administrator extensions: " & _
        objItem.NetworkInterfaceAdminExtensions
    Wscript.Echo "Network priorities: " & objItem.NetworkPriorities
    Wscript.Echo "Node administrator xtensions: " & objItem.NodeAdminExtensions
    Wscript.Echo "Other identifying info: " & objItem.OtherIdentifyingInfo
    Wscript.Echo "Primary owner contact: " & objItem.PrimaryOwnerContact
    Wscript.Echo "Primary owner name: " & objItem.PrimaryOwnerName
    Wscript.Echo "Quorum log file size: " & objItem.QuorumLogFileSize
    Wscript.Echo "Resource administrator extensions: " & _
        objItem.ResourceAdminExtensions
    Wscript.Echo "Resource type administrator extensions: " & _
        objItem.ResourceTypeAdminExtensions
    Wscript.Echo "Roles: " & objItem.Roles
    Wscript.Echo "Security: " & objItem.Security
    Wscript.Echo "Security descriptor: " & objItem.Security_Descriptor
    Wscript.Echo "Status: " & objItem.Status
    Wscript.Echo
Next

