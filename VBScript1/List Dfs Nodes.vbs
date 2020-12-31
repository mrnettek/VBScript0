' Description: Lists all the Dfs nodes on a computer.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colDfsNodes = objWMIService.ExecQuery _
    ("Select * from Win32_DFSNode")

For each objDfsNode in colDfsNodes
    Wscript.Echo "Caption: " & objDfsNode.Caption     
    Wscript.Echo "Description: " & objDfsNode.Description    
    Wscript.Echo "Install Date: " & objDfsNode.InstallDate
    Wscript.Echo "Name: " & objDfsNode.Name   
    Wscript.Echo "Root: " & objDfsNode.Root   
    Wscript.Echo "State: " & objDfsNode.State 
    Wscript.Echo "Status: " & objDfsNode.Status       
    Wscript.Echo "Timeout: " & objDfsNode.Timeout     
Next

