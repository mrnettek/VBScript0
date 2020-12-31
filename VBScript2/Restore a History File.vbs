' Description: Restore an IIS history file.


Const MAJOR_VERSION = 257
Const MINOR_VERSION = 0

strComputer = "."

Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set objComputer = _
    objWMIService.Get("IIsComputer.Name='LM'")

objComputer.RestoreHistory _
    "C:\WINDOWS\System32\Inetsrv\History\", _
        MAJOR_VERSION, MINOR_VERSION, 0

