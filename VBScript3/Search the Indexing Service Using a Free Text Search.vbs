' Description: Uses a free text search to return the file name and file size for all files in the Indexing Service catalog Script Catalog that include the term Win32_NetworkAdapterConfiguration.


On Error Resume Next

Set objConnection = CreateObject("ADODB.Connection")
objConnection.ConnectionString = "provider=msidxs;"
objConnection.Properties("Data Source") = "Script Catalog"
objConnection.Open
 
Set objCommand = CreateObject("ADODB.Command")
 
strQuery = "Select Filename, Size, Contents from Scope() Where " _
    & "Freetext('Win32_NetworkAdapterConfiguration')"
 
Set objRecordSet = objConnection.Execute(strQuery)
 
Do While Not objRecordSet.EOF
    Wscript.Echo objRecordSet("Filename"), objRecordSet("Size")
    objRecordSet.MoveNext
Loop

