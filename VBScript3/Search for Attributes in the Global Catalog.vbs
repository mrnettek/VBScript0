' Description: Demonstration script that returns the names of the attributes that are found in the global catalog, and indicates whether those attributes are indexed.


On Error Resume Next

Const IS_INDEXED = 1
Const ADS_SCOPE_SUBTREE = 2

Set objConnection = CreateObject("ADODB.Connection")
objConnection.Open "Provider=ADsDSOObject;"
Set objCommand = CreateObject("ADODB.Command")
objCommand.ActiveConnection = objConnection
objCommand.Properties("Searchscope") = ADS_SCOPE_SUBTREE
objCommand.CommandText = _
    "SELECT lDAPDisplayName,isMemberOfPartialAttributeSet,searchFlags " _
        & "FROM 'LDAP://CN=Schema,CN=Configuration,DC=fabrikam,DC=com'"_
            & " WHERE objectClass='attributeSchema'"
Set objRecordSet = objCommand.Execute

Do Until objRecordSet.EOF
    WScript.Echo objRecordset.Fields("lDAPDisplayName") 
    If objRecordset.Fields("isMemberOfPartialAttributeSet") Then
        WScript.Echo "In the global catalog."
    End If
    If IS_INDEXED AND objRecordset.Fields("searchFlags") Then
        WScript.Echo "Indexed."
    End If
    Wscript.Echo
    objRecordSet.MoveNext
Loop
objConnection.Close

