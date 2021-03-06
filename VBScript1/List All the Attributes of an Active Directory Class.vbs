' Description: Returns all the attributes associated with the Computer class in Active Directory.


Set objSchemaComputer = GetObject("LDAP://schema/computer")
 
WScript.Echo "Mandatory (Must-Contain) attributes"
For Each strAttribute in objSchemaComputer.MandatoryProperties
    WScript.Echo strAttribute
Next
 
WScript.Echo VbCrLf & "Optional (May-Contain) attributes"
For Each strAttribute in objSchemaComputer.OptionalProperties
    WScript.Echo strAttribute
Next

