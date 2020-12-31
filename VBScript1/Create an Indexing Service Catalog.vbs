' Description: Adds an Indexing Service catalog named Script Catalog (with a catalog location of C:\Scripts) to the local computer.


On Error Resume Next

Set objAdminIS = CreateObject("Microsoft.ISAdm")
objAdminIS.Stop()

Set objCatalog = objAdminIS.AddCatalog("Script Catalog","c:\scripts")
objAdminIS.Start()

