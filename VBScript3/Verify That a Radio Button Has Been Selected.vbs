' Description: Sample HTML function that indicates whether or  not a radio button has been selected.


Sub RunScript
    If UserOption(0).Checked Then
        Msgbox "Option 1 was selected."
    End If
    If UserOption(1).Checked Then
        Msgbox "Option 2 was selected."
    End If
    If UserOption(2).Checked Then
        Msgbox "Option 3 was selected."
    End If
End Sub

