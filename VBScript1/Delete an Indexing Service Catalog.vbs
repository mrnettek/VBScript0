' Description: Removes an Indexing Service catalog named Script Catalog from the local computer.


On Error Resume Next

Set objAdminIS = CreateObject("Microsoft.ISAdm")
objAdminIS.Stop()
errResult = objAdminIS.RemoveCatalog("Script Catalog", True)
objAdminIS.Start()

