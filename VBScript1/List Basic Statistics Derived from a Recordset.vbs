' Description: Demonstration script that lists the different operating systems found in a database, as well as the number of computers running each operating system.


Const adOpenStatic = 3
Const adLockOptimistic = 3

Set objConnection = CreateObject("ADODB.Connection")
Set objRecordSet = CreateObject("ADODB.Recordset")

objConnection.Open _
    "Provider = Microsoft.Jet.OLEDB.4.0; " & _
        "Data Source = inventory.mdb" 

objRecordSet.Open "SELECT OSName, Count(OSName) AS CountOfOSName" & _
   " FROM GeneralProperties GROUP BY OSName ORDER BY Count(OSName) DESC", _
        objConnection, adOpenStatic, adLockOptimistic

objRecordSet.MoveFirst

Do Until objRecordset.EOF
    Wscript.Echo objRecordset.Fields.Item("OSName") & _
        vbTab & objRecordset.Fields.Item("CountOfOSName")
    objRecordset.MoveNext
Loop

objRecordSet.Close
objConnection.Close

