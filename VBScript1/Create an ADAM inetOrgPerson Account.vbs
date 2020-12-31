' Description: Creates a new ADAM inetOrgPerson account named Syedabbas.


On Error Resume Next

Set objOU = GetObject("LDAP://localhost:389/ou=Accounting,dc=fabrikam,dc=com")
Set objUser = objOU.Create("inetOrgPerson", "cn=syedabbas")
objUser.Put "displayName", "Syed Abbas"  
objUser.SetInfo

