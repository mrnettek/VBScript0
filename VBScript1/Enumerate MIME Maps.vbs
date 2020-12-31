' Description: Returns the MIME Maps on a server.


strComputer = "LocalHost"
Set objIIS = GetObject("IIS://" & strComputer & "/MimeMap")
arrMaps = objIIS.GetEx("MimeMap")
 
For i = 0 to Ubound(arrMaps)
    Wscript.Echo "Extension: " & arrMaps(i).Extension
    Wscript.Echo "Type: " & arrMaps(i).MimeType
    Wscript.Echo 
Next

