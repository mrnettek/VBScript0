' Description: Uses the Shell object to return extended properties for all the files in the folder C:\Scripts.


Dim arrHeaders(34)

Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.Namespace("C:\Scripts")

For i = 0 to 33
    arrHeaders(i) = objFolder.GetDetailsOf(objFolder.Items, i)
Next

For Each strFileName in objFolder.Items
    For i = 0 to 33
        Wscript.Echo i & vbtab & arrHeaders(i) _
            & ": " & objFolder.GetDetailsOf(strFileName, i) 
    Next
Next

