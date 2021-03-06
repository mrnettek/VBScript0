' Description: Returns information about all the cluster nodes found on a computer.


On Error Resume Next

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\mscluster")

Set colItems = objWMIService.ExecQuery("Select * from MSCluster_Node")

For Each objItem in colItems
    Wscript.Echo "Build number: " & objItem.BuildNumber
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "Characteristics: " & objItem.Characteristics
    Wscript.Echo "CSD version: " & objItem.CSDVersion
    Wscript.Echo "Dedicated: " & objItem.Dedicated
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Enable event log replication: " & _
        objItem.EnableEventLogReplication
    Wscript.Echo "Flags: " & objItem.Flags
    Wscript.Echo "Identifying descriptions: " & objItem.IdentifyingDescriptions
    Wscript.Echo "Initial load info: " & objItem.InitialLoadInfo
    Wscript.Echo "Installation date: " & objItem.InstallDate
    Wscript.Echo "Last load info: " & objItem.LastLoadInfo
    Wscript.Echo "Major version: " & objItem.MajorVersion
    Wscript.Echo "Minor version: " & objItem.MinorVersion
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "Name format: " & objItem.NameFormat
    Wscript.Echo "Node highest version: " & objItem.NodeHighestVersion
    Wscript.Echo "Node lowest version: " & objItem.NodeLowestVersion
    Wscript.Echo "Other identifying info: " & objItem.OtherIdentifyingInfo
    Wscript.Echo "Power state: " & objItem.PowerState
    Wscript.Echo "Primary owner contact: " & objItem.PrimaryOwnerContact
    Wscript.Echo "Primary owner name: " & objItem.PrimaryOwnerName
    Wscript.Echo "Reset capability: " & objItem.ResetCapability
    Wscript.Echo "Roles: " & objItem.Roles
    Wscript.Echo "State: " & objItem.State
    Wscript.Echo "Status: " & objItem.Status
    Wscript.Echo
Next

