' Description: Returns a list of all the folders whose path begins with C:\S.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colFolders = objWMIService.ExecQuery _
    ("Select * from Win32_Directory where Name Like '%c:\\S%'")

For Each objFolder in colFolders
    Wscript.Echo "Name: " & objFolder.Name
Next

