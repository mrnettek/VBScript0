' Description: Creates a new organizational unit (OU2) in an existing organizational unit (OU1).


Set objOU1 = GetObject("LDAP://ou=OU1,dc=na,dc=fabrikam,dc=com")

Set objOU2 = objOU1.Create("organizationalUnit", "ou=OU2")
objOU2.SetInfo

