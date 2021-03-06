' Description: Enables IP security for a network adapter. In this script, all TCP and UDP ports as well as all IP protocols are allowed; hence the value 0 is passed to the EnableIPSec method in each case. If only specific ports or protocols are allowed, these should be passed in the form of arrays.


On Error Resume Next
 
Const ALLOW_ALL = 0
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colNetCards = objWMIService.ExecQuery _
    ("Select * From Win32_NetworkAdapterConfiguration Where IPEnabled = True")

For Each objNetCard in colNetCards
    arrPermittedTCPPorts = Array(ALLOW_ALL)
    arrPermittedUDPPorts = Array(ALLOW_ALL)
    arrPermittedIPProtocols = Array(ALLOW_ALL)
    objNetCard.EnableIPSec arrPermittedTCPPorts, arrPermittedUDPPorts, _
        arrPermittedIPProtocols
Next

