On Error Resume Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_PerfFormattedData_ASPNET_ASPNETApplications",,48)
For Each objItem in colItems
    Wscript.Echo "AnonymousRequests: " & objItem.AnonymousRequests
    Wscript.Echo "AnonymousRequestsPerSec: " & objItem.AnonymousRequestsPerSec
    Wscript.Echo "ApplicationLifetimeEvents: " & objItem.ApplicationLifetimeEvents
    Wscript.Echo "ApplicationLifetimeEventsPerSec: " & objItem.ApplicationLifetimeEventsPerSec
    Wscript.Echo "AuditFailureEventsRaised: " & objItem.AuditFailureEventsRaised
    Wscript.Echo "AuditSuccessEventsRaised: " & objItem.AuditSuccessEventsRaised
    Wscript.Echo "CacheAPIEntries: " & objItem.CacheAPIEntries
    Wscript.Echo "CacheAPIHitRatio: " & objItem.CacheAPIHitRatio
    Wscript.Echo "CacheAPIHits: " & objItem.CacheAPIHits
    Wscript.Echo "CacheAPIMisses: " & objItem.CacheAPIMisses
    Wscript.Echo "CacheAPITurnoverRate: " & objItem.CacheAPITurnoverRate
    Wscript.Echo "CacheTotalEntries: " & objItem.CacheTotalEntries
    Wscript.Echo "CacheTotalHitRatio: " & objItem.CacheTotalHitRatio
    Wscript.Echo "CacheTotalHits: " & objItem.CacheTotalHits
    Wscript.Echo "CacheTotalMisses: " & objItem.CacheTotalMisses
    Wscript.Echo "CacheTotalTurnoverRate: " & objItem.CacheTotalTurnoverRate
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "CompilationsTotal: " & objItem.CompilationsTotal
    Wscript.Echo "DebuggingRequests: " & objItem.DebuggingRequests
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "ErrorEventsRaised: " & objItem.ErrorEventsRaised
    Wscript.Echo "ErrorEventsRaisedPerSec: " & objItem.ErrorEventsRaisedPerSec
    Wscript.Echo "ErrorsDuringCompilation: " & objItem.ErrorsDuringCompilation
    Wscript.Echo "ErrorsDuringExecution: " & objItem.ErrorsDuringExecution
    Wscript.Echo "ErrorsDuringPreprocessing: " & objItem.ErrorsDuringPreprocessing
    Wscript.Echo "ErrorsTotal: " & objItem.ErrorsTotal
    Wscript.Echo "ErrorsTotalPerSec: " & objItem.ErrorsTotalPerSec
    Wscript.Echo "ErrorsUnhandledDuringExecution: " & objItem.ErrorsUnhandledDuringExecution
    Wscript.Echo "ErrorsUnhandledDuringExecutionPerSec: " & objItem.ErrorsUnhandledDuringExecutionPerSec
    Wscript.Echo "EventsRaised: " & objItem.EventsRaised
    Wscript.Echo "EventsRaisedPerSec: " & objItem.EventsRaisedPerSec
    Wscript.Echo "FormsAuthenticationFailure: " & objItem.FormsAuthenticationFailure
    Wscript.Echo "FormsAuthenticationSuccess: " & objItem.FormsAuthenticationSuccess
    Wscript.Echo "Frequency_Object: " & objItem.Frequency_Object
    Wscript.Echo "Frequency_PerfTime: " & objItem.Frequency_PerfTime
    Wscript.Echo "Frequency_Sys100NS: " & objItem.Frequency_Sys100NS
    Wscript.Echo "InfrastructureErrorEventsRaised: " & objItem.InfrastructureErrorEventsRaised
    Wscript.Echo "InfrastructureErrorEventsRaisedPerSec: " & objItem.InfrastructureErrorEventsRaisedPerSec
    Wscript.Echo "MembershipAuthenticationFailure: " & objItem.MembershipAuthenticationFailure
    Wscript.Echo "MembershipAuthenticationSuccess: " & objItem.MembershipAuthenticationSuccess
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "OutputCacheEntries: " & objItem.OutputCacheEntries
    Wscript.Echo "OutputCacheHitRatio: " & objItem.OutputCacheHitRatio
    Wscript.Echo "OutputCacheHits: " & objItem.OutputCacheHits
    Wscript.Echo "OutputCacheMisses: " & objItem.OutputCacheMisses
    Wscript.Echo "OutputCacheTurnoverRate: " & objItem.OutputCacheTurnoverRate
    Wscript.Echo "PipelineInstanceCount: " & objItem.PipelineInstanceCount
    Wscript.Echo "RequestBytesInTotal: " & objItem.RequestBytesInTotal
    Wscript.Echo "RequestBytesOutTotal: " & objItem.RequestBytesOutTotal
    Wscript.Echo "RequestErrorEventsRaised: " & objItem.RequestErrorEventsRaised
    Wscript.Echo "RequestErrorEventsRaisedPerSec: " & objItem.RequestErrorEventsRaisedPerSec
    Wscript.Echo "RequestEventsRaised: " & objItem.RequestEventsRaised
    Wscript.Echo "RequestEventsRaisedPerSec: " & objItem.RequestEventsRaisedPerSec
    Wscript.Echo "RequestExecutionTime: " & objItem.RequestExecutionTime
    Wscript.Echo "RequestsDisconnected: " & objItem.RequestsDisconnected
    Wscript.Echo "RequestsExecuting: " & objItem.RequestsExecuting
    Wscript.Echo "RequestsFailed: " & objItem.RequestsFailed
    Wscript.Echo "RequestsInApplicationQueue: " & objItem.RequestsInApplicationQueue
    Wscript.Echo "RequestsNotAuthorized: " & objItem.RequestsNotAuthorized
    Wscript.Echo "RequestsNotFound: " & objItem.RequestsNotFound
    Wscript.Echo "RequestsPerSec: " & objItem.RequestsPerSec
    Wscript.Echo "RequestsRejected: " & objItem.RequestsRejected
    Wscript.Echo "RequestsSucceeded: " & objItem.RequestsSucceeded
    Wscript.Echo "RequestsTimedOut: " & objItem.RequestsTimedOut
    Wscript.Echo "RequestsTotal: " & objItem.RequestsTotal
    Wscript.Echo "RequestWaitTime: " & objItem.RequestWaitTime
    Wscript.Echo "SessionsAbandoned: " & objItem.SessionsAbandoned
    Wscript.Echo "SessionsActive: " & objItem.SessionsActive
    Wscript.Echo "SessionSQLServerconnectionstotal: " & objItem.SessionSQLServerconnectionstotal
    Wscript.Echo "SessionStateServerconnectionstotal: " & objItem.SessionStateServerconnectionstotal
    Wscript.Echo "SessionsTimedOut: " & objItem.SessionsTimedOut
    Wscript.Echo "SessionsTotal: " & objItem.SessionsTotal
    Wscript.Echo "Timestamp_Object: " & objItem.Timestamp_Object
    Wscript.Echo "Timestamp_PerfTime: " & objItem.Timestamp_PerfTime
    Wscript.Echo "Timestamp_Sys100NS: " & objItem.Timestamp_Sys100NS
    Wscript.Echo "TransactionsAborted: " & objItem.TransactionsAborted
    Wscript.Echo "TransactionsCommitted: " & objItem.TransactionsCommitted
    Wscript.Echo "TransactionsPending: " & objItem.TransactionsPending
    Wscript.Echo "TransactionsPerSec: " & objItem.TransactionsPerSec
    Wscript.Echo "TransactionsTotal: " & objItem.TransactionsTotal
    Wscript.Echo "ViewstateMACValidationFailure: " & objItem.ViewstateMACValidationFailure
Next

