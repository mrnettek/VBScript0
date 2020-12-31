' Description: Reports the path to the Program Files folder, and then lists any items found in that folder. For Windows NT 4.0 and Windows 98, this script requires Windows Script Host 5.1 and Internet Explorer 4.0 or later.


Const PROGRAM_FILES = &H26&

Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.Namespace(PROGRAM_FILES)
Set objFolderItem = objFolder.Self
Wscript.Echo objFolderItem.Path

Set colItems = objFolder.Items
For Each objItem in colItems
    Wscript.Echo objItem.Name
Next

