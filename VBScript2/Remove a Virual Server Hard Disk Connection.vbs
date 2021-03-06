' Description: Removes all the hard disk connections for a virtual machine named Windows 2000 Server.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
Set objVM = objVS.FindVirtualMachine("Windows 2000 Server")

Set colConnections = objVM.HardDiskConnections
For Each objConnection in colConnections
    objVM.RemoveHardDiskConnection(objConnection)
Next

