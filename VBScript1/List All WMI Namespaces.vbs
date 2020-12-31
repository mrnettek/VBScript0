' Description: Lists all WMI namespace on a computer.


strComputer = "."
Call EnumNameSpaces("root")
 
Sub EnumNameSpaces(strNameSpace)
    WScript.Echo strNameSpace
    Set objWMIService=GetObject _
        ("winmgmts:{impersonationLevel=impersonate}\\" & _ 
            strComputer & "\" & strNameSpace)

    Set colNameSpaces = objWMIService.InstancesOf("__NAMESPACE")

    For Each objNameSpace In colNameSpaces
        Call EnumNameSpaces(strNameSpace & "\" & objNameSpace.Name)
    Next
End Sub

