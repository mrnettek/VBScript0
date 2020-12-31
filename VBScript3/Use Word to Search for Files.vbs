' Description: Demonstration script that uses Microsoft Word to locate all the .mp3 files stored on drive C of the local computer.


Set objWord = CreateObject("Word.Application")
Set objDoc = objWord.Documents.Add()

objWord.FileSearch.FileName = "*.mp3"
objWord.FileSearch.LookIn = "C:\"
objWord.FileSearch.SearchSubfolders = True
objWord.FileSearch.Execute

For Each objFile in objWord.FileSearch.FoundFiles
    Wscript.Echo objFile
Next

objWord.Quit

