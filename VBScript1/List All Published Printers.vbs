' Description: Returns a list of all the printers published in Active Directory.


Const ADS_SCOPE_SUBTREE = 2

Set objConnection = CreateObject("ADODB.Connection")
Set objCommand =   CreateObject("ADODB.Command")
objConnection.Provider = "ADsDSOObject"
objConnection.Open "Active Directory Provider"

Set objCommand.ActiveConnection = objConnection
objCommand.CommandText = "Select printerName, serverName from " _     
    & " 'LDAP://DC=fabrikam,DC=com'  where objectClass='printQueue'"  
objCommand.Properties("Page Size") = 1000
objCommand.Properties("Searchscope") = ADS_SCOPE_SUBTREE 
Set objRecordSet = objCommand.Execute
objRecordSet.MoveFirst

Do Until objRecordSet.EOF
    Wscript.Echo "Printer Name: " & objRecordSet.Fields("printerName").Value
    Wscript.Echo "Server Name: " & objRecordSet.Fields("serverName").Value
    objRecordSet.MoveNext
Loop

