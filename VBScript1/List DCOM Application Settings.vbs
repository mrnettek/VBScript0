' Description: Returns information about the configuration of each DCOM (distributed COM) application installed on a computer.


On Error Resume Next

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from Win32_DCOMApplicationSetting")

For Each objItem in colItems
    Wscript.Echo "Application ID: " & objItem.AppID
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Enable At Storage Activation: " & _
        objItem.EnableAtStorageActivation
    Wscript.Echo "Local Service: " & objItem.LocalService
    Wscript.Echo "Service Parameters: " & objItem.ServiceParameters
    Wscript.Echo "Use Surrogate: " & objItem.UseSurrogate
    Wscript.Echo
Next

