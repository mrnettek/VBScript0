' Description: Creates a new Web site named Test Site.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set objWebService = objWMIService.ExecQuery _
    ("Select * From IISWebService")

arrBindings = Array(0)
Set arrBindings(0) = _
    objWMIService.Get("ServerBinding").SpawnInstance_()
arrBindings(0).IP = "192.168.1.1"
arrBindings(0).Port = "8383"
arrBindings(0).Hostname = "atl-ws-01"

For Each objItem in objWebService
    objItem.CreateNewSite "Test Site", arrBindings, _
        "c:\inetpub\wwwroot"
Next

