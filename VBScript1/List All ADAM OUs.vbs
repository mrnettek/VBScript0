' Description: Lists all the OUs in an ADAM domain.


On Error Resume Next

Set objDomain = GetObject("LDAP://localhost:389/dc=fabrikam,dc=com")
objDomain.Filter = Array("organizationalUnit")

For Each objOU in objDomain
    strNames = strNames & objOU.Name & vbcrlf
    ShowOUS objOU.AdsPath
Next

Sub ShowOUs(OUName)
    Set objNextOU = GetObject(OUname)
    objNextOU.Filter = Array("organizationalUnit")
    For Each objSubOU in objNextOU
        strNames = strNames & "     " & objSubOU.Name & vbcrlf
        ShowOUS objSubOU.AdsPath
    Next
End Sub

Wscript.Echo strNames

