' Description: Creates an out-of-process application in virtual Web directory W3SVC/1/ROOT/tsweb.


Const OUT_OF_PROCESS = 1

Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * From IIsWebVirtualDir Where Name = " & _
        "'W3SVC/1/ROOT/tsweb'")

For Each objItem in colItems
   objItem.AppCreate2(OUT_OF_PROCESS)
Next

