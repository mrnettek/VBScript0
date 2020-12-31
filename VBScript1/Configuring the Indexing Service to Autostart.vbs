' Description: Configures the Indexing Service on the local computer to automatically start each time the computer starts. To configure the Indexing Service for manual start, set the parameter passed to the EnableCI method to False rather than True. Manual start is the default setting for the Indexing Service.


On Error Resume Next

Set objAdminIS = CreateObject("Microsoft.ISAdm")
objAdminIS.EnableCI(True)

