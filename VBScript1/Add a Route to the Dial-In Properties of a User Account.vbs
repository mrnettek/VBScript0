' Description: Appends a new route to the Dial-In properties of a user account in Active Directory. This operation adds the new route without deleting any existing routes.


Const ADS_PROPERTY_APPEND = 3 
 
Set objUser = GetObject _
   ("LDAP://cn=MyerKen,ou=Management,dc=NA,dc=fabrikam,dc=com") 
objUser.PutEx ADS_PROPERTY_APPEND, _
    "msRASSavedFramedRoute", _
        Array("128.168.0.0/15 0.0.0.0 5") 
objUser.PutEx ADS_PROPERTY_APPEND, _
    "msRADIUSFramedRoute", _
        Array("128.168.0.0/15 0.0.0.0 5")
objUser.SetInfo

