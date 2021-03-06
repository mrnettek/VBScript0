' Description: Creates a new out-of-process application as part of the MSSharePointAppPool application pool.


Const OUT_OF_PROCESS = 1

Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * From IIsWebDirectory Where Name = " & _
        "'W3SVC/2142295254/root/aspnet_client_folder'")

For Each objItem in colItems
   objItem.AppCreate3 OUT_OF_PROCESS,"MSSharePointAppPool", False
Next

