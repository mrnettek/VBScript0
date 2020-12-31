' Description: Copies the allowed logon hours from a template account (userTemplate) and assigns them to the MyerKen Active Directory user account. The MyerKen account will thus have the same logon hour restrictions as those assigned to the userTemplate account.


On Error Resume Next

Set objUserTemplate = _
    GetObject("LDAP://cn=userTemplate,OU=Management,dc=NA,dc=fabrikam,dc=com")
arrLogonHours = objUserTemplate.Get("logonHours")
 
Set objUser = _
    GetObject("LDAP://cn=MyerKen,OU=Management,dc=NA,dc=fabrikam,dc=com")
objUser.Put "logonHours", arrLogonHours
objUser.SetInfo

