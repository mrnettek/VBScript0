' Description: Configures the MyerKen Active Directory user account so that the user can log on at any time on any day of the week.


Const ADS_PROPERTY_CLEAR = 1 

Set objUser = GetObject _
  ("LDAP://cn=MyerKen,ou=Management,dc=NA,dc=fabrikam,dc=com")
 
objUser.PutEx ADS_PROPERTY_CLEAR, "logonHours", 0
objUser.SetInfo

