' Description: Removes the manager entry for the Active Directory security group named Scientists. When this script is run, the group will no longer have an assigned manager.


Const ADS_PROPERTY_CLEAR = 1 
 
Set objGroup = GetObject _
   ("LDAP://cn=Scientists,ou=R&D,dc=NA,dc=fabrikam,dc=com")

objGroup.PutEx ADS_PROPERTY_CLEAR, "managedBy", 0
objGroup.SetInfo

