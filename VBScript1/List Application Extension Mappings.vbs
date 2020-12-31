' Description: Lists IIS application extension mappings.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from IIsWebServerSetting")

For Each objItem in colItems
    For i = 0 to Ubound(objItem.ScriptMaps)
        Wscript.Echo "Extension: " & objItem.ScriptMaps(i).Extensions
        Wscript.Echo "Included Verbs: " & _
            objItem.ScriptMaps(i).IncludedVerbs
        Wscript.Echo "Script Processor: " & _
            objItem.ScriptMaps(i).ScriptProcessor
        Wscript.Echo
    Next
Next

