' Description: Demonstration script that searches a database for all records where the TimeWritten field is equal to the value of the variable dtmDate.


Const adOpenStatic = 3
Const adLockOptimistic = 3

Set objConnection = CreateObject("ADODB.Connection")
Set objRecordSet = CreateObject("ADODB.Recordset")

objConnection.Open _
    "Provider= Microsoft.Jet.OLEDB.4.0; " & _
        "Data Source=eventlogs.mdb" 

dtmDate = "#1/7/2004#"

objRecordSet.Open "SELECT * FROM EventTable Where TimeWritten = " & dtmDate, objconnection, adOpenStatic, adLockOptimistic

objRecordSet.MoveFirst

Do Until objRecordSet.EOF
    Wscript.Echo objRecordset.Fields.Item("EventCode") & vbTab _
        & objRecordset.Fields.Item("Logfile")
    objRecordSet.MoveNext
Loop

