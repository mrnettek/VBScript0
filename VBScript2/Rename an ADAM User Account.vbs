' Description: Renames the ADAM user account Kimabercrombie to Dylanmiller.


On Error Resume Next

Set objOU = GetObject("LDAP://localhost:389/ou=Accounting,dc=fabrikam,dc=com")

objOU.MoveHere _
   "LDAP://cn=kimabercrombie, ou=Accounting,dc=fabrikam,dc=com", _
        "cn=dylanmiller"

