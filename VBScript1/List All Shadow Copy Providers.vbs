' Description: Returns the properties of all the shadow copy providers installed on a computer. For most computers, there will be only the default shadow copy provider included with the operating system.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery("Select * from Win32_ShadowProvider")

For Each objItem in colItems
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "CLSID: " & objItem.CLSID
    Wscript.Echo "ID: " & objItem.ID
    Wscript.Echo "Type: " & objItem.Type
    Wscript.Echo "Version: " & objItem.Version
    Wscript.Echo "Version ID: " & objItem.VersionID
    Wscript.Echo
Next

