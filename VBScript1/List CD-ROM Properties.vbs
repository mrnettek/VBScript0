' Description: Returns information about all the CD-ROM drives installed on a computer.


On Error Resume Next

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery("Select * from Win32_CDROMDrive")

For Each objItem in colItems
    Wscript.Echo "Availability: " & objItem.Availability
    For Each strCapability in objItem.Capabilities
        Wscript.Echo "Capability: "& strCapability
    Next
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Device ID: " & objItem.DeviceID
    Wscript.Echo "Drive: " & objItem.Drive
    Wscript.Echo "Manufacturer: " & objItem.Manufacturer
    Wscript.Echo "Media Loaded: " & objItem.MediaLoaded
    Wscript.Echo "Media Type: " & objItem.MediaType
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "PNP Device ID: " & objItem.PNPDeviceID
    Wscript.Echo "SCSI Bus: " & objItem.SCSIBus
    Wscript.Echo "SCSI Logical Unit: " & objItem.SCSILogicalUnit
    Wscript.Echo "SCSI Port: " & objItem.SCSIPort
    Wscript.Echo "SCSI Target ID: " & objItem.SCSITargetId
Next

