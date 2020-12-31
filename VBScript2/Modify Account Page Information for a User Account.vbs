' Description: Configures basic account information for the MyerKen Active Directory user account.


Set objUser = GetObject _
  ("LDAP://cn=MyerKen,ou=Management,dc=NA,dc=fabrikam,dc=com")
 
objUser.Put "userPrincipalName", "MyerKen@fabrikam.com"
objUser.Put "sAMAccountName", "MyerKen01"
objUser.Put "userWorkstations","wks1,wks2,wks3"
objUser.SetInfo

