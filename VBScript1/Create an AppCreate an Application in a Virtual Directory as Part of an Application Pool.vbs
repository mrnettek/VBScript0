' Description: Creates a new virtual directory application ad part of the MSSharePointAppPool application pool.


Const OUT_OF_PROCESS = 1

strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * From IIsWebVirtualDir Where Name = " & _
        "'W3SVC/1/ROOT/tsweb'")

For Each objItem in colItems
   objItem.AppCreate3 OUT_OF_PROCESS, "MSSharePointAppPool", _
       False
Next

