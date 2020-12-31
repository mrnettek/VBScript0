' Description: Lists Virtual Server access rights for the logged-on user.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
Set objSecurity = objVS.Security
Set objAccessRights = objSecurity.CurrentUserAccessRights

Wscript.Echo "Change permissions: " & objAccessRights.ChangePermissions
Wscript.Echo "Delete access: " & objAccessRights.DeleteAccess
Wscript.Echo "Execute access: " & objAccessRights.ExecuteAccess
Wscript.Echo "Flags: " & objAccessRights.Flags
Wscript.Echo "Name: " & objAccessRights.Name
Wscript.Echo "Read access: " & objAccessRights.ReadAccess
Wscript.Echo "Read permissions: " & objAccessRights.ReadPermissions
Wscript.Echo "SID: " & objAccessRights.SID
Wscript.Echo "Special access: " & objAccessRights.SpecialAccess
Wscript.Echo "Type: " & objAccessRights.Type
Wscript.Echo "Write access: " & objAccessRights.WriteAccess

