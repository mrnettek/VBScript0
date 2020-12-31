' Description: Removes a user named TestUser from the ADAM group Accountants.


On Error Resume Next

Const ADS_PROPERTY_DELETE = 4 

Set objGroup = GetObject _
    ("LDAP://localhost:389/cn=Accountants,ou=Accounting,dc=fabrikam,dc=com")

objGroup.PutEx ADS_PROPERTY_DELETE, "member", Array("cn=TestUser,ou=Accounting,dc=fabrikam,dc=com")
objGroup.SetInfo

