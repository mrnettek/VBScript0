' Description: Deletes a group named atl-users from the HR organizational unit in the domain fabrikam.com.


Set objOU = GetObject("LDAP://ou=hr,dc=fabrikam,dc=com")

objOU.Delete "group", "cn=atl-users"

