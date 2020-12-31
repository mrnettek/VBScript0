' Description: Deletes a published folder named FinanceShare from Active Directory. This does not delete the share itself, it simply removes it from Active Directory.


Set objContainer = GetObject("LDAP://CN=FinanceShare, " _
    & "OU=Finance, DC=fabrikam, DC=com")

objContainer.DeleteObject (0)

