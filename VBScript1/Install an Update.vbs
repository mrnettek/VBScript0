' Description: Installs update ac94db3b-e1a8-4e92-9fd0-e86f355e6a44.


Set objCollection = CreateObject("Microsoft.Update.UpdateColl")

Set objSearcher = CreateObject("Microsoft.Update.Searcher")
Set objResults = objSearcher.Search _
    ("UpdateID='ac94db3b-e1a8-4e92-9fd0-e86f355e6a44'")
Set colUpdates = objResults.Updates
objCollection.Add(colUpdates.Item(0))

Set objInstaller = CreateObject("Microsoft.Update.Installer")
objInstaller.Updates = objCollection
Set objInstallResults = objInstaller.Install
Wscript.Echo objInstallResults.Exception
Wscript.Echo objInstallResults.RebootRequired
Wscript.Echo objInstallResults.ResultCode

