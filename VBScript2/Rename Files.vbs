' Description: Renames the file C:\Scripts\Toggle_Service.vbs to C:\Scripts\Toggle_Service.old.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & "\root\cimv2")

Set colFiles = objWMIService.ExecQuery _
    ("Select * from Cim_Datafile where Name = " _
        & "'c:\\scripts\\toggle_service.vbs'")

For Each objFile in colFiles
    errResult = objFile.Rename("c:\scripts\toggle_service.old")
    Wscript.Echo errResult
Next

