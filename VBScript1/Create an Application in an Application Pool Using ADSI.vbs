' Description: Creates an out-of-process Web application in the W3SVC/2142295254/root/aspnet_client_folder directory and adds it to the MSSharePointAppPool application pool.


Const OUT_OF_PROCESS = 1
 
strComputer = "LocalHost"
 
Set objIIS = GetObject _
    ("IIS://" & strComputer & "/W3SVC/2142295254/root/aspnet_client_folder")
objIIS.AppCreate3 OUT_OF_PROCESS, "MSSharePointAppPool", False

