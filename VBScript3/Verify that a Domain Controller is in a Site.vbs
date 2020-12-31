' Description: Checks to see if a domain controller is in a specific Active Directory site.


strDcName = "atl-dc-01"
strSiteName = "ga-atl-sales"
 
Set objADSysInfo = CreateObject("ADSystemInfo")
strDcSiteName = objADSysInfo.GetDCSiteName(strDcName)
 
If UCase(strSiteName) = UCase(strDcSiteName) Then
    WScript.Echo "TRUE: " & strDcName & " is in site " & strSiteName
Else
    WScript.Echo "FALSE: " & strDcName & " is NOT in site " & strSiteName
End If

