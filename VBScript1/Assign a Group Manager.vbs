' Description: Assigns user MyerKen as the manager of an Active Directory security group named Scientists.


Set objGroup = GetObject _
  ("LDAP://cn=Scientists,ou=R&D,dc=NA,dc=fabrikam,dc=com")
 
objGroup.Put "managedBy", "cn=MyerKen,ou=Management,dc=NA,dc=fabrikam,dc=com"
objGroup.SetInfo

