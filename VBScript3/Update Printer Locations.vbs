' Description: Uses ADSI to update the location attribute for all printers in a specified OU.


Set objOU = GetObject("LDAP://OU=Finance, DC=fabrikam, DC=com")
objOU.Filter = Array("printqueue")

For Each objPrintQueue In objOU
    strNewLocation = "Redmond/" & objPrintQueue.Location
    objPrintQueue.Put "Location" , strNewLocation
    objPrintQueue.SetInfo
Next

