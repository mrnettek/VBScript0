' Description: Lists the class qualifiers for a specified WMI class.


strComputer = "."
strNameSpace = "root\cimv2"
strClass = "Win32_Service"
 
Set objClass = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\" & strNameSpace & ":" & strClass)
 
WScript.Echo strClass & " Class Qualifiers"
WScript.Echo "------------------------------"
 
For Each objClassQualifier In objClass.Qualifiers_
    If VarType(objClassQualifier.Value) = (vbVariant + vbArray) Then
        strQualifier = objClassQualifier.Name & " = " & _
            Join(objClassQualifier.Value, ",")
    Else
        strQualifier = objClassQualifier.Name & " = " & _
            objClassQualifier.Value
    End If
    WScript.Echo strQualifier
    strQualifier = ""
Next

