' Description: Changes the drive letter of volume D to Q. If you modify this script to change the drive letter of a volume other than D, note that the volume name in the WQL query must include both the colon (:) and two  slashes (\\). Thus drive C would look like this: C:\\. When specifying the new drive letter, however, you only have to include the colon (in the sample script, Q:).


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colVolumes = objWMIService.ExecQuery _
    ("Select * from Win32_Volume Where Name = 'D:\\'")

For Each objVolume in colVolumes
    objVolume.DriveLetter = "Q:"
    objVolume.Put_
Next

