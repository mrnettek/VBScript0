' Description: Lists Active Directory sites.


Set objRootDSE = GetObject("LDAP://RootDSE")
strConfigurationNC = objRootDSE.Get("configurationNamingContext")
 
strSitesContainer = "LDAP://cn=Sites," & strConfigurationNC
Set objSitesContainer = GetObject(strSitesContainer)
objSitesContainer.Filter = Array("site")
 
For Each objSite In objSitesContainer
    WScript.Echo "Name: " & objSite.Name
Next

