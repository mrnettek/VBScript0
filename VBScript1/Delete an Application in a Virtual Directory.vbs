' Description: Deletes the application found in the virtual Web directoryW3SVC/1/ROOT/tsweb.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * From IIsWebVirtualDir Where Name = " & _
        "'W3SVC/1/ROOT/tsweb'")

For Each objItem in colItems
   objItem.AppDelete(True)
Next

