' Description: Runs ChkDsk.exe against drive D on a computer.


Const FIX_ERRORS = True

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objDisk = objWMIService.Get("Win32_LogicalDisk.DeviceID='D:'")

errReturn = objDisk.ChkDsk(FIX_ERRORS)

