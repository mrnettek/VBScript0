' Description: Searches for all user account objects whose department attribute is Human Resources. The script then moves the user accounts that are not already in the HR OU to this OU.


Set objConnection = CreateObject("ADODB.Connection")
objConnection.Open "Provider=ADsDSOObject;"
 
Set objCommand = CreateObject("ADODB.Command")
objCommand.ActiveConnection = objConnection
 
objCommand.CommandText = _
    "<LDAP://dc=NA,dc=fabrikam,dc=com>;" & _
        "(&(&(objectCategory=person)(objectClass=user)" & _
            "(department=Human Resources)));" & _
                "ADsPath,distinguishedName, name;subtree"
  
Set objRecordSet = objCommand.Execute
Set objOU = GetObject("LDAP://ou=HR,dc=NA,dc=fabrikam,dc=com")
 
Do Until objRecordset.EOF
    strADsPath = objRecordset.Fields("ADsPath")
  
    strDNRecord=lcase(objRecordset.Fields("distinguishedName"))
    strDNCompare=lcase("cn=" & objRecordset.Fields("name") & _
        ",ou=HR,dc=NA,dc=fabrikam,dc=com")
 
    If strDNRecord <> strDNCompare Then
        objOU.MoveHere strADsPath, vbNullString
        WScript.Echo objRecordset.Fields("distinguishedName") & " Moved."
    Else
        Wscript.Echo objRecordset.Fields("distinguishedName") & " Not Moved."
    End If
    objRecordSet.MoveNext
Loop
 
objConnection.Close

