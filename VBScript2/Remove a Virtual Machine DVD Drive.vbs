' Description: Removes all the DVD drives for a virtual machine named Windows 2000 Server.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
Set objVM = objVS.FindVirtualMachine("Windows 2000 Server")

Set colDVDDrives = objVM.DVDROMDrives
For Each objDrive in colDVDDrives
    errReturn = objVM.RemoveDVDROMDrive(objDrive)
Next

