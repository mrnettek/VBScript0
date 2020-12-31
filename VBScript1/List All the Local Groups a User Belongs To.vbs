' Description: Returns a list of all the local groups on the computer atl-win2k-01 that a user named kenmyer belongs to.


strComputer = "atl-win2k-01"
Set colGroups = GetObject("WinNT://" & strComputer & "")
colGroups.Filter = Array("group")

For Each objGroup In colGroups
    For Each objUser in objGroup.Members
        If objUser.name = "kenmyer" Then
            Wscript.Echo objGroup.Name
        End If
    Next
Next

