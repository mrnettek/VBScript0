' Description: Installs a hypothetical software program (using a Windows Installer package) on a local computer.


Const ALL_USERS = True

Set objService = GetObject("winmgmts:")
Set objSoftware = objService.Get("Win32_Product")
errReturn = objSoftware.Install("c:\scripts\database.msi", , ALL_USERS)

