' Description: Deletes the site Contoso.com from an Internet Explorer security zone.


On Error Resume Next

Const HKEY_CURRENT_USER = &H80000001

strComputer = "."
Set objReg = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & _
        "\root\default:StdRegProv")

strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Internet Settings\" _
    & "ZoneMap\ESCDomains\Contoso.com"
objReg.DeleteKey HKEY_CURRENT_USER, strKeyPath

