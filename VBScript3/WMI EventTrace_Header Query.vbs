On Error Resume Next

Const wbemFlagReturnImmediately = &h10
Const wbemFlagForwardOnly = &h20

arrComputers = Array(".")
For Each strComputer In arrComputers
   WScript.Echo
   WScript.Echo "=========================================="
   WScript.Echo "Computer: " & strComputer
   WScript.Echo "=========================================="

   Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\WMI")
   Set colItems = objWMIService.ExecQuery("SELECT * FROM EventTrace_Header", "WQL", _
                                          wbemFlagReturnImmediately + wbemFlagForwardOnly)

   For Each objItem In colItems
      WScript.Echo "BootTime: " & objItem.BootTime
      WScript.Echo "BufferSize: " & objItem.BufferSize
      WScript.Echo "BuffersLost: " & objItem.BuffersLost
      WScript.Echo "BuffersWritten: " & objItem.BuffersWritten
      WScript.Echo "CPUSpeed: " & objItem.CPUSpeed
      WScript.Echo "EndTime: " & objItem.EndTime
      strEventGuid = Join(objItem.EventGuid, ",")
         WScript.Echo "EventGuid: " & strEventGuid
      WScript.Echo "EventSize: " & objItem.EventSize
      WScript.Echo "EventsLost: " & objItem.EventsLost
      WScript.Echo "EventType: " & objItem.EventType
      WScript.Echo "Flags: " & objItem.Flags
      WScript.Echo "InstanceId: " & objItem.InstanceId
      WScript.Echo "KernelTime: " & objItem.KernelTime
      WScript.Echo "LogFileMode: " & objItem.LogFileMode
      WScript.Echo "LogFileName: " & objItem.LogFileName
      WScript.Echo "LoggerName: " & objItem.LoggerName
      WScript.Echo "MaxFileSize: " & objItem.MaxFileSize
      WScript.Echo "MofData: " & objItem.MofData
      WScript.Echo "MofLength: " & objItem.MofLength
      WScript.Echo "NumberOfProcessors: " & objItem.NumberOfProcessors
      strParentGuid = Join(objItem.ParentGuid, ",")
         WScript.Echo "ParentGuid: " & strParentGuid
      WScript.Echo "ParentInstanceId: " & objItem.ParentInstanceId
      WScript.Echo "PerfFreq: " & objItem.PerfFreq
      WScript.Echo "PointerSize: " & objItem.PointerSize
      WScript.Echo "ProviderVersion: " & objItem.ProviderVersion
      WScript.Echo "ReservedFlags: " & objItem.ReservedFlags
      WScript.Echo "ReservedHeaderField: " & objItem.ReservedHeaderField
      WScript.Echo "StartBuffers: " & objItem.StartBuffers
      WScript.Echo "StartTime: " & objItem.StartTime
      WScript.Echo "ThreadId: " & objItem.ThreadId
      WScript.Echo "TimerResolution: " & objItem.TimerResolution
      WScript.Echo "TimeStamp: " & objItem.TimeStamp
      strTimeZoneInformation = Join(objItem.TimeZoneInformation, ",")
         WScript.Echo "TimeZoneInformation: " & strTimeZoneInformation
      WScript.Echo "TraceLevel: " & objItem.TraceLevel
      WScript.Echo "TraceVersion: " & objItem.TraceVersion
      WScript.Echo "UserTime: " & objItem.UserTime
      WScript.Echo "Version: " & objItem.Version
      WScript.Echo
   Next
Next

