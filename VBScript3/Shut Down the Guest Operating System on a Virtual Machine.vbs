' Description: Shuts down a virtual machine named Windows 2000 Server.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
Set objVM = objVS.FindVirtualMachine("Windows 2000 Server")

Set objGuestOS = objVM.GuestOS
objGuestOS.Shutdown()

