' Description: HTML code that displays a confirmation box on a Web page or HTA and then indicates which button the user clicked.


Sub RunScript
    blnAnswer = window.confirm("Are you sure you want to continue?")
    If blnAnswer Then
        Msgbox "You clicked the OK button"
    Else
        Msgbox "You clicked the Cancel button."
    End If
End Sub

