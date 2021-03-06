' Description: Demonstration script that allows you to drag a text file (consisting of server names) onto the script icon in Windows Explorer. The script then opens the text file, then retrieves service information from each on the servers in the file.


Const ForReading = 1
Set objArgs = WScript.Arguments

Set objDictionary = CreateObject("Scripting.Dictionary")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile(objArgs(0), ForReading)
i = 0
 
Do While objTextFile.AtEndOfStream <> True
  strNextLine = objTextFile.Readline
  objDictionary.Add i, strNextLine
  i = i + 1
Loop
 
For Each objItem in objDictionary
  Set colServices = GetObject("winmgmts://" & objDictionary.Item(objItem) _
      & "").ExecQuery("Select * from Win32_Service")
  Wscript.Echo colServices.Count
Next

