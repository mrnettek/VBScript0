' Description: Returns a list of all the files in the Scripts folder. If the computer has more than one scripts folder (for example, C:\Scripts and D:\Scripts), files will be returned from each of these folders.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colFiles = objWMIService. _
    ExecQuery("Select * from CIM_DataFile where Path = '\\Scripts\\'")

For Each objFile in colFiles
    Wscript.Echo objFile.Name 
Next

