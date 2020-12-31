' Description: Creates a new Dfs node for a shared folder named Scripts.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set objDfsNode = objWMIService.Get("Win32_DfsNode")

errReturn = objDfsNode.Create _
    ("\\atl-dc-02\Scripts","\\atl-dc-02","Scripts", _
        "New Dfs node for shared scripts.")

