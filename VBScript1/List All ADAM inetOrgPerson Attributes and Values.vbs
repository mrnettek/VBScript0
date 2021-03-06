' Description: Lists all the attributes and values for an ADAM inetOrgPersonAccount named Syedabbas.


On Error Resume Next

Set objUser = GetObject _
    ("LDAP://localhost:389/cn=syedabbas,ou=Accounting,dc=fabrikam,dc=com")
Set objUserProperties = GetObject("LDAP://localhost:389/schema/inetOrgPerson")

For Each strAttribute in objUserProperties.MandatoryProperties
    strValues = objUser.GetEx(strAttribute)
    For Each strItem in strValues
        Wscript.Echo strAttribute & " -- " & strItem
    Next
Next

For Each strAttribute in objUserProperties.OptionalProperties
    strValues = objUser.GetEx(strAttribute)
    If Err = 0 Then
        For Each strItem in strValues
            Wscript.Echo strAttribute & " -- " & strItem
        Next
    Else
        Wscript.Echo strAttribute & " --  No value set"
        Err.Clear
    End If
Next

