' Description: Registers a virtual machine named Windows 2000 Server.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
errReturn = objVS.RegisterVirtualMachine("Windows 2000 Server", _
    "C:\Virtual Machines")

