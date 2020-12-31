' Description: Creates a new ADAM user account named Gailerickson.


On Error Resume Next

Set objOU = GetObject("LDAP://localhost:389/ou=Accounting,dc=fabrikam,dc=com")
Set objUser = objOU.Create("user", "cn=gailerickson")
objUser.Put "displayName", "Gail Erickson"  
objUser.Put "userPrincipalName", "gailerickson@fabrikam.com"
objUser.SetInfo

