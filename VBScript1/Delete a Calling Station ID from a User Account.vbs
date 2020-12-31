' Description: Removes a specific calling station ID from the MyerKen Active Directory user account. This operation only removes the specified calling station ID; no other IDs are deleted.


Const ADS_PROPERTY_DELETE = 4 
 
Set objUser = GetObject _
    ("LDAP://cn=MyerKen,ou=Management,dc=NA,dc=fabrikam,dc=com") 

objUser.PutEx ADS_PROPERTY_DELETE, _
    "msNPSavedCallingStationID", Array("555-0111")
objUser.PutEx ADS_PROPERTY_DELETE, _
    "msNPCallingStationID", Array("555-0111")
objUser.SetInfo

