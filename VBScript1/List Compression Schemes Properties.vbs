' Description: Returns information about compression schemes settings for a computer running IIS 6.0.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from IIsCompressionSchemesSetting")

For Each objItem in colItems
    Wscript.Echo "Hc Compression Directory: " & _
        objItem.HcCompressionDirectory
    Wscript.Echo "Hc Do Dynamic Compression: " & _
        objItem.HcDoDynamicCompression
    Wscript.Echo "Hc Do Static Compression: " & _
        objItem.HcDoStaticCompression
    Wscript.Echo "Hc Maximum Disk Space Usage: " & _
        objItem.HcMaxDiskSpaceUsage
Next

