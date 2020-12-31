' Description: Removes all the Group Policy links assigned to the Sales OU in Active Directory.


Const ADS_PROPERTY_CLEAR = 1 
 
Set objContainer = GetObject _
    ("LDAP://ou=Sales,dc=NA,dc=fabrikam,dc=com")

objContainer.PutEx ADS_PROPERTY_CLEAR, "gPLink", 0
objContainer.PutEx ADS_PROPERTY_CLEAR, "gPOptions", 0
objContainer.SetInfo

