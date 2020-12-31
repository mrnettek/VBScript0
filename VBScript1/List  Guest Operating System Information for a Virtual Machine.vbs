' Description: Lists the Guest operating system information for a virtual machine named Windows 2000 Server.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
Set objVM = objVS.FindVirtualMachine("Windows 2000 Server")

Set objGuestOS = objVM.GuestOS
Wscript.Echo "Additions version: " &  objGuestOS.AdditionsVersion
Wscript.Echo "Can shut down: " &  objGuestOS.CanShutdown
Wscript.Echo "Heartbeat percentage: " &  objGuestOS.HeartbeatPercentage
Wscript.Echo "Is heart beating: " &  objGuestOS.IsHeartbeating
Wscript.Echo "Is host time synchronization enabled: " & _
    objGuestOS.IsHostTimeSyncEnabled
Wscript.Echo "OS name: " &  objGuestOS.OSName

