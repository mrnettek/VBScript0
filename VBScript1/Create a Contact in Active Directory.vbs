' Description: Creates a contact account named MyerKen in the Management organizational unit in a hypothetical domain named fabrikam.com.


Set objOU = GetObject("LDAP://OU=management,dc=fabrikam,dc=com")

Set objUser = objOU.Create("contact", "cn=MyerKen")
objUser.SetInfo

