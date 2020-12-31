' Description: Enables aging of all records (except name server and start of authority records) in the DNS zone accounting.fabrikam.com.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & _
        "\root\MicrosoftDNS")

Set colItems = objWMIService.ExecQuery _
    ("Select * from MicrosoftDNS_Zone Where Name = 'accounting.fabrikam.com'")

For Each objItem in colItems
    errResult = objItem.AgeAllRecords(,1)
Next

