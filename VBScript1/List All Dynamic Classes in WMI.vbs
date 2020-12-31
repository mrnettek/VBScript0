' Description: Lists all WMI Dynamic classes (including Association classes) defined in the root\cimv2 namespace.


strComputer = "."
 
Set objWMIService=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\root\cimv2")

Set colClasses = objWMIService.SubclassesOf()
 
For Each objClass in colClasses
    For Each objClassQualifier In objClass.Qualifiers_
        If LCase(objClassQualifier.Name) = "dynamic" Then
            WScript.Echo objClass.Path_.Class & ": " & _
            objClassQualifier.Name & "=" & _
            objClassQualifier.Value
        End If
    Next
Next

