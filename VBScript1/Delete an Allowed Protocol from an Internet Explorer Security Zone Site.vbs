' Description: Deletes the http protocol from the Finance site in an Internet Explorer security zone.


On Error Resume Next

Const HKEY_CURRENT_USER = &H80000001

strComputer = "."

Set objReg = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & _
        "\root\default:StdRegProv")

strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Internet Settings\" _
    & "ZoneMap\ESCDomains\Finance"
strDWORDValueName = "http"

objReg.DeleteValue HKEY_CURRENT_USER,strKeyPath,strDWORDValueName

