' Description: Adds a DVD drive to all the virtual machines on a computer.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
set colVMs = objVS.VirtualMachines

For Each objVM in colVMS
    Set colDVDDrives = objVM.DVDROMDrives
    For Each objDrive in colDVDDrives
        errReturn = objDrive.AttachHostDrive("D")
    Next
Next

