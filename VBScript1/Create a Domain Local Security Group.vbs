' Description: Creates a domain local Active Directory security group named DB-Servers.


Const ADS_GROUP_TYPE_LOCAL_GROUP = &h4
Const ADS_GROUP_TYPE_SECURITY_ENABLED = &h80000000

Set objOU = GetObject("LDAP://cn=Computers,dc=NA,dc=fabrikam,dc=com")
Set objGroup = objOU.Create("Group", "cn=DB-Servers")

objGroup.Put "sAMAccountName", "DBServers"
objGroup.Put "groupType", ADS_GROUP_TYPE_LOCAL_GROUP Or _
    ADS_GROUP_TYPE_SECURITY_ENABLED
objGroup.SetInfo

