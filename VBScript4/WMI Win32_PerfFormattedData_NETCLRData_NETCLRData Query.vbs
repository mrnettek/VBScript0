On Error Resume Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_PerfFormattedData_NETCLRData_NETCLRData",,48)
For Each objItem in colItems
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Frequency_Object: " & objItem.Frequency_Object
    Wscript.Echo "Frequency_PerfTime: " & objItem.Frequency_PerfTime
    Wscript.Echo "Frequency_Sys100NS: " & objItem.Frequency_Sys100NS
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "SqlClientCurrentNumberconnectionpools: " & objItem.SqlClientCurrentNumberconnectionpools
    Wscript.Echo "SqlClientCurrentNumberpooledandnonpooledconnections: " & objItem.SqlClientCurrentNumberpooledandnonpooledconnections
    Wscript.Echo "SqlClientCurrentNumberpooledconnections: " & objItem.SqlClientCurrentNumberpooledconnections
    Wscript.Echo "SqlClientPeakNumberpooledconnections: " & objItem.SqlClientPeakNumberpooledconnections
    Wscript.Echo "SqlClientTotalNumberfailedcommands: " & objItem.SqlClientTotalNumberfailedcommands
    Wscript.Echo "SqlClientTotalNumberfailedconnects: " & objItem.SqlClientTotalNumberfailedconnects
    Wscript.Echo "Timestamp_Object: " & objItem.Timestamp_Object
    Wscript.Echo "Timestamp_PerfTime: " & objItem.Timestamp_PerfTime
    Wscript.Echo "Timestamp_Sys100NS: " & objItem.Timestamp_Sys100NS
Next
