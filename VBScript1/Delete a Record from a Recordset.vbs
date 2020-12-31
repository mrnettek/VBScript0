' Description: Demonstration script that deletes the record for a computer named WebServer from an ADO database with the DSN "Inventory."


Const adOpenStatic = 3
Const adLockOptimistic = 3
Const adUseClient = 3

Set objConnection = CreateObject("ADODB.Connection")
Set objRecordset = CreateObject("ADODB.Recordset")

objConnection.Open "DSN=Inventory;"
objRecordset.CursorLocation = adUseClient
objRecordset.Open "SELECT * FROM Hardware" , objConnection, _
    adOpenStatic, adLockOptimistic
strSearchCriteria = "ComputerName = 'WebServer'"
objRecordSet.Find strSearchCriteria
objRecordset.Delete
objRecordset.Close
objConnection.Close

