' Description: Demonstration script that returns multiple attributes from an Active Directory search.


On Error Resume Next

Const ADS_SCOPE_SUBTREE = 2

Set objConnection = CreateObject("ADODB.Connection")
Set objCommand =   CreateObject("ADODB.Command")
objConnection.Provider = "ADsDSOObject"
objConnection.Open "Active Directory Provider"
Set objCommand.ActiveConnection = objConnection

objCommand.Properties("Page Size") = 1000
objCommand.Properties("Searchscope") = ADS_SCOPE_SUBTREE 

objCommand.CommandText = _
    "SELECT AdsPath,givenName,SN,title,telephoneNumber " _
        & "FROM 'LDAP://dc=fabrikam,dc=com' WHERE " _
            & "objectCategory='user'"  
Set objRecordSet = objCommand.Execute
objRecordSet.MoveFirst

Do Until objRecordSet.EOF
    Wscript.Echo objRecordSet.Fields("ADsPath").Value
    Wscript.Echo objRecordSet.Fields("givenName").Value
    Wscript.Echo objRecordSet.Fields("SN").Value
    Wscript.Echo objRecordSet.Fields("title").Value
    Wscript.Echo _
        objRecordSet.Fields("telephoneNumber").Value
    objRecordSet.MoveNext
Loop

