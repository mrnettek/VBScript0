' Description: Saves an IIS history file.


strComputer = "."

Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set objComputer = _
    objWMIService.Get("IIsComputer.Name='LM'")

objComputer.SaveData

