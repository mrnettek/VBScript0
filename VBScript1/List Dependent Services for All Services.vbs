' Description: Enumerates dependent services for all the services installed on a computer and writes that information to a text file.


Const ForAppending = 8
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objLogFile = _
     objFSO.OpenTextFile("c:\scripts\service_dependencies.csv", _
         ForAppending, True)
objLogFile.Write("Service Dependencies") 
objLogFile.Writeline

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colListOfServices = objWMIService.ExecQuery _
    ("Select * from Win32_Service")
 
For Each objService in colListofServices
    objServiceRegistryName = objService.Name
    objServiceDisplayName = objService.DisplayName
 
Set colServiceList = objWMIService.ExecQuery("Associators of " _
   & "{Win32_Service.Name='" & objServiceRegistryName & "'} Where AssocClass=Win32_DependentService Role=Antecedent" )
 
 
 If colServiceList.Count = 0 then
        objLogFile.Write(objServiceDisplayName) & ", None"
        objLogFile.Writeline
    Else
        For Each objDependentService in colServiceList         
            objLogFile.Write(objServiceDisplayName) & ","
            objLogFile.Write(objDependentService.DisplayName)  
        Next 
        objLogFile.WriteLine
    End If
Next
objLogFile.Close

