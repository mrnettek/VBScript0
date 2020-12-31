' Description: Returns information about the pointing devices installed on a computer. Used as an example of how to retrieve hardware information using WMI.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colMice = objWMIService.ExecQuery _
    ("Select * from Win32_PointingDevice")

For Each objMouse in colMice
    Wscript.Echo "Hardware Type: " & objMouse.HardwareType
    Wscript.Echo "Number of Buttons: " & objMouse.NumberOfButtons    
    Wscript.Echo "Status: " & objMouse.Status
    Wscript.Echo "PNP Device ID: " & objMouse.PNPDeviceID
Next

