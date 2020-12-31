' Description: Returns all instances of the Web service, FTP service, NNTP service, and POP3 service classes on a server.


strComputer = "LocalHost"
Set objIIS = GetObject("IIS://" & strComputer & "/W3SVC")

For Each objItem in objIIS
    If objItem.class = "IIsWebServer" Then
        Wscript.Echo objItem.Name
    End If
Next
 
Wscript.Echo
 
Set objIIS = GetObject("IIS://" & strComputer & "/MSFTPSVC")
For Each objItem in objIIS
    If objItem.class = "IIsFtpServer" Then
        Wscript.Echo objItem.Name
    End If
Next
 
Wscript.Echo
 
Set objIIS = GetObject("IIS://" & strComputer & "/NNTPSVC")
For Each objItem in objIIS
    If objItem.class = "IIsNntpServer" Then
        Wscript.Echo objItem.Name
    End If
Next
 
Wscript.Echo
 
Set objIIS = GetObject("IIS://" & strComputer & "/SMTPSVC")
For Each objItem in objIIS
    If objItem.class = "IIsSmtpServer" Then
        Wscript.Echo objItem.Name
    End If
Next

