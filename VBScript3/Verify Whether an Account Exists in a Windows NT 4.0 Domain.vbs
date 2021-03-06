' Description: Checks to see if a user account (kenmyer) exists in a Windows NT 4.0 domain named Fabrikam.


strUserName = "kenmyer"
Set objDomain = GetObject("WinNT://fabrikam")
objDomain.Filter = Array("user")
intFound = 0

For Each User In objDomain
    If lcase(User.Name) = lcase(strUserName) Then
        intFound = 1   
    End If    
Next

If intFound = 1 Then
    WScript.Echo "The " & strUserName & " account already exists."
Else
    WScript.Echo "The " & strUserName & " account does not exist in the domain."
End If

