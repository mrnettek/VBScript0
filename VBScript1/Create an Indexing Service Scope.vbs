' Description: Adds a scope named Script Scope (with the path C:\Scripts) to an Indexing Service catalog named Script Catalog on the local computer.


On Error Resume Next

Set objAdminIS = CreateObject("Microsoft.ISAdm")
Set objCatalog = objAdminIS.GetCatalogByName("Script Catalog")
Set objScope = objCatalog.AddScope("c:\scripts\Indexing Server", False)
objScope.Alias = "Script scope"
objScope.Path = "c:\scripts"

