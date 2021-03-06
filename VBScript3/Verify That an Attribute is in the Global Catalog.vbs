' Description: Determines whether or not a specified attribute (given-name) is included in the Active Directory global catalog.


strAttributeName = "cn=given-name"
 
Set objSchemaAttribute = GetObject _
    ("LDAP://" & strAttributeName & _
        ",cn=schema,cn=configuration,dc=fabrikam,dc=com") 
 
blnInGC = objSchemaAttribute.Get("isMemberOfPartialAttributeSet")
 
If blnInGC Then
    WScript.Echo "The " & strAttributeName & _
        " attribute is replicated to the Global Catalog."
Else
    WScript.Echo "The " & strAttributeName & _
        " attribute is not replicated to the Global Catalog."
End If

