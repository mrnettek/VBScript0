' Description: Renames the My Computer icon on the local computer, giving it the same name as the computer itself.


Const MY_COMPUTER = &H11&

Set objNetwork = CreateObject("Wscript.Network")
objComputerName = objNetwork.ComputerName
Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.Namespace(MY_COMPUTER) 
Set objFolderItem = objFolder.Self
objFolderItem.Name = objComputerName

