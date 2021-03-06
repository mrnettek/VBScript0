' Description: Searches for all computers that begin with the letters "ATL" in a domain and any child domain, and then modifies the location attribute of all computers found.


Set objConnection = CreateObject("ADODB.Connection")
objConnection.Open "Provider=ADsDSOObject;"
 
Set objCommand = CreateObject("ADODB.Command")
objCommand.ActiveConnection = objConnection
 
objCommand.CommandText = _
    "<LDAP://dc=NA,dc=fabrikam,dc=com>;" & _
        "(&(objectCategory=Computer)(cn=ATL*));" & _
            "ADsPath;subtree"
  
Set objRecordSet = objCommand.Execute
 
Do Until objRecordset.EOF
    strADsPath = objRecordset.Fields("ADsPath")
    Set objComputer = GetObject(strADsPath)
    objComputer.Put "location", "Atlanta, Georgia"
    objComputer.SetInfo
    objRecordSet.MoveNext
Loop
 
WScript.Echo objRecordSet.RecordCount & _
   " computers objects modified."
 
objConnection.Close

