' Description: Demonstration script that returns a list of all locked-out user accounts. Uses the LDAP search syntax.


On Error Resume Next

Set objConnection = CreateObject("ADODB.Connection")
Set objCommand =   CreateObject("ADODB.Command")
objConnection.Provider = "ADsDSOObject"
objConnection.Open "Active Directory Provider"
Set objCommand.ActiveConnection = objConnection

objCommand.Properties("Page Size") = 1000

objCommand.CommandText = _
    "<LDAP://dc=fabrikam,dc=com>;(&(objectCategory=User)" & _
        "(userAccountControl:1.2.840.113556.1.4.803:=10));Name;Subtree"  
Set objRecordSet = objCommand.Execute
objRecordSet.MoveFirst

Do Until objRecordSet.EOF
    Wscript.Echo objRecordSet.Fields("Name").Value
    objRecordSet.MoveNext
Loop

