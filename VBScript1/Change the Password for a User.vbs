' Description: Changes the password for a user. Requires you to know the user's previous password.


Set objUser = GetObject _
    ("LDAP://cn=myerken,ou=management,dc=fabrikam,dc=com")

objUser.ChangePassword "i5A2sj*!", "jl3R86df"

