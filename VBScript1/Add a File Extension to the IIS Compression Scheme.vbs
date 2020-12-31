' Description: Adds the file extension hta to the GZip compression scheme in the IIS metabase.


Const ADS_PROPERTY_UPDATE = 2
 
strComputer = "LocalHost"
Set objIIS = GetObject _
    ("IIS://" & strComputer & "/W3SVC/Filters/Compression/gzip")
arrExtensions = objIIS.HcFileExtensions
i = Ubound(arrExtensions)
i = i + 1
 
Redim Preserve arrExtensions(i)
arrExtensions(i) = "hta"
 
objIIS.PutEx ADS_PROPERTY_UPDATE, "HcFileExtensions", arrExtensions
objIIS.SetInfo

