' Description: Uses the Shell object to copy the folder C:\Scripts to D:\Archives. Displays the Copying Files progress dialog as the folder is being copied.


Const FOF_CREATEPROGRESSDLG = &H0&

ParentFolder = "D:\Archive" 
Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.NameSpace(ParentFolder) 
objFolder.CopyHere "C:\Scripts", FOF_CREATEPROGRESSDLG

