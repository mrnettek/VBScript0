' Description: Demonstration script that displays formatted data in a Microsoft Word document.


Set objWord = CreateObject("Word.Application")

objWord.Visible = True
Set objDoc = objWord.Documents.Add()
Set objSelection = objWord.Selection

objSelection.Font.Name = "Arial"
objSelection.Font.Size = "18"
objSelection.TypeText "Network Adapter Report"
objSelection.TypeParagraph()

objSelection.Font.Size = "14"
objSelection.TypeText "" & Date()
objSelection.TypeParagraph()

