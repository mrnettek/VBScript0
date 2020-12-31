' Description: Finds all the folders created after March 1, 2002.


On Error Resume Next

dtmTargetDate = "20020301000000.000000-420"

strComputer = "." 
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & "\root\cimv2")

Set colFolders = objWMIService.ExecQuery _
    ("Select * from Win32_Directory Where CreationDate > '" & _
        dtmtargetDate & "'")
 
For Each objFolder in colFolders
    Wscript.Echo objFolder.Name 
Next

