' Description: Clears the Terminal Services userParameters attribute for the MyerKen Active Directory user account.


Const ADS_PROPERTY_CLEAR = 1 
 
Set objUser = GetObject _
   ("LDAP://cn=MyerKen,ou=Management,dc=NA,dc=fabrikam,dc=com") 

objUser.PutEx ADS_PROPERTY_CLEAR, "userParameters", 0
objUser.SetInfo

