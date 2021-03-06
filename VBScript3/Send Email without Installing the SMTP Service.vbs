' Description: Demonstration script that uses CDO to send email from a computer where the SMTP Service has not been installed. Replace the name smarthost with the name of your SMTP server.


Set objEmail = CreateObject("CDO.Message")

objEmail.From = "admin1@fabrikam.com"
objEmail.To = "admin2@fabrikam.com"
objEmail.Subject = "Server down" 
objEmail.Textbody = "Server1 is no longer accessible over the network."
objEmail.Configuration.Fields.Item _
    ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
objEmail.Configuration.Fields.Item _
    ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = _
        "smarthost" 
objEmail.Configuration.Fields.Item _
    ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
objEmail.Configuration.Fields.Update
objEmail.Send

