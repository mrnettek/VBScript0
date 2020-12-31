On Error Resume Next

Const ppAdvanceOnTime = 2
Const ppShowTypeKiosk = 3
Const ppSlideShowDone = 5

Set objPPT = CreateObject("PowerPoint.Application")
objPPT.Visible = True

Set objPresentation = objPPT.Presentations.Open("C:\Scripts\Test.ppt")

objPresentation.Slides.Range.SlideShowTransition.AdvanceOnTime = TRUE
objPresentation.SlideShowSettings.AdvanceMode = ppAdvanceOnTime 
objPresentation.SlideShowSettings.ShowType = ppShowTypeKiosk

objPresentation.SlideShowSettings.StartingSlide = 1
objPresentation.SlideShowSettings.EndingSlide = objPresentation.Slides.Count

Set objSlideShow = objPresentation.SlideShowSettings.Run.View

Do Until objSlideShow.State = ppSlideShowDone
    If Err <> 0 Then
        Exit Do
    End If
Loop
objPresentation.Saved = True
objPresentation.Close
objPPT.Quit
  


