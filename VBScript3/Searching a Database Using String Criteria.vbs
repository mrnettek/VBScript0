' Description: Demonstration script that searches a database for all records where the Type field is equal to Error.


Const adOpenStatic = 3
Const adLockOptimistic = 3

Set objConnection = CreateObject("ADODB.Connection")
Set objRecordSet = CreateObject("ADODB.Recordset")

objConnection.Open _
    "Provider = Microsoft.Jet.OLEDB.4.0; " & _
        "Data Source = eventlogs.mdb" 

objRecordSet.Open "SELECT * FROM EventTable " & _
    "WHERE Type = 'Error'", objConnection, adOpenStatic, _
         adLockOptimistic

objRecordSet.MoveFirst

Wscript.Echo "Number of records: " & objRecordset.RecordCount

objRecordSet.Close
objConnection.Close

