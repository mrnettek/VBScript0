' Description: Removes all the SCSI controllers for a virtual machine named Windows 2000 Server.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
Set objVM = objVS.FindVirtualMachine("Windows 2000 Server")
Set colControllers = objVM.SCSIControllers

For Each objController in colControllers
    objVM.RemoveSCSIController(objController)
Next

