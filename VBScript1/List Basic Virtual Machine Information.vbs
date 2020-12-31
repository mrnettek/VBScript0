' Description: Lists configuration information for all the virtual machines on a computer.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
set colVMs = objVS.VirtualMachines

For Each objVM in colVMS
    Wscript.Echo "Account name: " & objVM.accountname
    Wscript.Echo "Account name and password: " & objVM.Accountnameandpassword
    Wscript.Echo "Autostart at launch: " & objVM.Autostartatlaunch
    Wscript.Echo "Autostart at launch delay: " & objVM.Autostartatlaunchdelay
    Wscript.Echo "Baseboard serial number: " & objVM.Baseboardserialnumber
    Wscript.Echo "BIOS GUID: " & objVM.BIOSGUID
    Wscript.Echo "BIOS serial number: " & objVM.BIOSerialNumber
    Wscript.Echo "Chassis asset tag: " & objVM.ChassisAssetTag
    Wscript.Echo "Chassis serial number: " & objVM.ChassisSerialNumber
    Wscript.Echo "Config ID: " & objVM.ConfigID
    Wscript.Echo "Display: " & objVM.Display
    Wscript.Echo "File: " & objVM.File
    Wscript.Echo "Floppy autodetect enabled: " & objVM.FloppyAutoDetectEnabled
    Wscript.Echo "Gues OS: " & objVM.GuestOS
    Wscript.Echo "Has MMX: " & objVM.HasMMX
    Wscript.Echo "Has SSE: " & objVM.HasSSE
    Wscript.Echo "Has SSE2: " & objVM.HasSSE2
    Wscript.Echo "Keyboard: " & objVM.Keyboard
    Wscript.Echo "Memory: " & objVM.Memory
    Wscript.Echo "Mouse: " & objVM.Mouse
    Wscript.Echo "Name: " & objVM.Name
    Wscript.Echo "Notes: " & objVM.Notes
    Wscript.Echo "Processor speed: " & objVM.ProcessorSpeed
    Wscript.Echo "Run as defined account: " & objVM.RunAsDefinedAccount
    Wscript.Echo "Saved state file path: " & objVM.SavedStateFilePath
    Wscript.Echo "Shutdown action on quit: " & objVM.ShutdownActionOnQuit
    Wscript.Echo "State: " & objVM.State
    Wscript.Echo "Undoable: " & objVM.Undoable
    Wscript.Echo "Undo action: " & objVM.UndoAction
    Wscript.Echo
Next

