' Description: Restores an IIS metabase backup named ScriptedBackup using a password of er$3qld9o.


Const MD_BACKUP_HIGHEST_VERSION = &HFFFFFFFE 

strComputer = "."

Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set objComputer = _
    objWMIService.Get("IIsComputer.Name='LM'")

objComputer.RestoreWithPassword _
    "ScriptedBackup", MD_BACKUP_HIGHEST_VERSION, 0, _
         "er$3qld9o"

