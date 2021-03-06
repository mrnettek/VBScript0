' Description: Lists IIS application pool setting information.


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:{authenticationLevel=pktPrivacy}\\" _
        & strComputer & "\root\microsoftiisv2")

Set colItems = objWMIService.ExecQuery _
    ("Select * from IIsApplicationPoolSetting")

For Each objItem in colItems
    Wscript.Echo "Admin ACL Bin: " & objItem.AdminACLBin
    Wscript.Echo "Application Pool AutoStart: " & _
        objItem.AppPoolAutoStart
    Wscript.Echo "Application Pool Command: " & objItem.AppPoolCommand
    Wscript.Echo "Application Pool Identity Type: " & _
        objItem.AppPoolIdentityType
    Wscript.Echo "Application Pool Queue Length: " & _
        objItem.AppPoolQueueLength
    Wscript.Echo "Application Pool Recycle Configuration Change: " & _
        objItem.AppPoolRecycleConfigChange
    Wscript.Echo "Application Pool Recycle ISAPI Unhealthy: " & _
        objItem.AppPoolRecycleIsapiUnhealthy
    Wscript.Echo "Application Pool Recycle Memory: " & _
        objItem.AppPoolRecycleMemory
    Wscript.Echo "Application Pool Recycle On-Demand: " & _
        objItem.AppPoolRecycleOnDemand
    Wscript.Echo "Application Pool Recycle Private Memory: " & _
        objItem.AppPoolRecyclePrivateMemory
    Wscript.Echo "Application Pool Recycle Requests: " & _
        objItem.AppPoolRecycleRequests
    Wscript.Echo "Application Pool Recycle Schedule: " & _
        objItem.AppPoolRecycleSchedule
    Wscript.Echo "Application Pool Recycle Time: " & _
        objItem.AppPoolRecycleTime
    Wscript.Echo "Application Pool State: " & objItem.AppPoolState
    Wscript.Echo "AutoShutdown Application Pool Exe: " & _
        objItem.AutoShutdownAppPoolExe
    Wscript.Echo "AutoShutdown Application Pool Parameters: " & _
        objItem.AutoShutdownAppPoolParams
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "CPU Action: " & objItem.CPUAction
    Wscript.Echo "CPU Limit: " & objItem.CPULimit
    Wscript.Echo "CPU Reset Interval: " & objItem.CPUResetInterval
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Disallow Overlapping Rotation: " & _
        objItem.DisallowOverlappingRotation
    Wscript.Echo "Disallow Rotation On Configuration Change: " & _
        objItem.DisallowRotationOnConfigChange
    Wscript.Echo "Idle Timeout: " & objItem.IdleTimeout
    Wscript.Echo "Load Balancer Capabilities: " & _
        objItem.LoadBalancerCapabilities
    Wscript.Echo "Log Event On Recycle: " & objItem.LogEventOnRecycle
    Wscript.Echo "Logon Method: " & objItem.LogonMethod
    Wscript.Echo "Maximum Processes: " & objItem.MaxProcesses
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "Orphan Action Exe: " & objItem.OrphanActionExe
    Wscript.Echo "Orphan Action Parameters: " & objItem.OrphanActionParams
    Wscript.Echo "Orphan Worker Process: " & objItem.OrphanWorkerProcess
    Wscript.Echo "Periodic Restart Memory: " & objItem.PeriodicRestartMemory
    Wscript.Echo "Periodic Restart Private Memory: " & _
        objItem.PeriodicRestartPrivateMemory
    Wscript.Echo "Periodic Restart Requests: " & _
        objItem.PeriodicRestartRequests
    For Each strSchedule in objItem.PeriodicRestartSchedule
        Wscript.Echo "Periodic Restart Schedule: " & strSchedule
    Next
    Wscript.Echo "Periodic Restart Time: " & objItem.PeriodicRestartTime
    Wscript.Echo "Pinging Enabled: " & objItem.PingingEnabled
    Wscript.Echo "Ping Interval: " & objItem.PingInterval
    Wscript.Echo "Ping Response Time: " & objItem.PingResponseTime
    Wscript.Echo "Rapid Fail Protection: " & objItem.RapidFailProtection
    Wscript.Echo "Rapid Fail Protection Interval: " & _
        objItem.RapidFailProtectionInterval
    Wscript.Echo "Rapid Fail Protection Maximum Crashes: " & _
        objItem.RapidFailProtectionMaxCrashes
    Wscript.Echo "Setting ID: " & objItem.SettingID
    Wscript.Echo "Shutdown Time Limit: " & objItem.ShutdownTimeLimit
    Wscript.Echo "SMP Affinitized: " & objItem.SMPAffinitized
    Wscript.Echo "SMP Processor Affinity Mask: " & _
        objItem.SMPProcessorAffinityMask
    Wscript.Echo "Startup Time Limit: " & objItem.StartupTimeLimit
    Wscript.Echo "WAM User Name: " & objItem.WAMUserName
    Wscript.Echo "WAM User Password: " & objItem.WAMUserPass
    Wscript.Echo "Win32 Error: " & objItem.Win32Error
Next

