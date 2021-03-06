' Description: Demonstration script that determines whether the samAccountName kenmyer has already been assigned in Active Directory.


On Error Resume Next

Const ADS_SCOPE_SUBTREE = 2

Set objConnection = CreateObject("ADODB.Connection")
Set objCommand = CreateObject("ADODB.Command")
objConnection.Provider = ("ADsDSOObject")
objConnection.Open "Active Directory Provider"
objCommand.ActiveConnection = objConnection
objCommand.CommandText = "SELECT samAccountName FROM " & _
    "'LDAP://dc=fabrikam,dc=com' " & _
        "WHERE samAccountName = 'kenmyer'"
objCommand.Properties("SearchScope") = ADS_SCOPE_SUBTREE
Set objRecordSet = objCommand.Execute

If objRecordSet.RecordCount = 0 Then
    Wscript.Echo "The samAccount name is not being used."
Else
    Wscript.Echo "The samAccount name is being used."
End If

