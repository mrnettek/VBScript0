' Description: Removes a specified value (2224) from the postOfficeBox attribute of the MyerKen Active Directory user account. This operation removes only the specified post office box; other entries will not be deleted.


Const ADS_PROPERTY_DELETE = 4 
 
Set objUser = GetObject _
   ("LDAP://cn=MyerKen,ou=Management,dc=NA,dc=fabrikam,dc=com") 
 
objUser.PutEx ADS_PROPERTY_DELETE, "postOfficeBox", Array("2224")
objUser.SetInfo

